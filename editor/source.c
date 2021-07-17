#include "editor.h"

//
//  [BASIC EDITOR]
//  C000
//  -----------------
//  Line number table:
//  [2:line number] [2:line address]
//
//
//  Lines
//  FFFF

#ifdef __WIN32__

Line linebuf[65536];
Line* lines = linebuf;

char databuf[16384];
char* lineData = databuf;
char* lineDataEnd = databuf + sizeof(databuf);

#else

Line* lines = (Line*)0xC000;
char* lineData = (char*)0xFFFF;
char* lineDataEnd = (char*)0xFFFF;

#endif

word lineCount = 0;

static void insertLineData(Line* line, const char* data)
{
	word len = strlen(data);

	const char* oldData = lineData;
	lineData -= len;

	if (line == lines)
		line->text = lineData;
	else {
		memmove(lineData, oldData, (line+1)->text - lineData);
		for (Line* p = lines; p != line; p++)
			p->text -= len;
		line->text = (line+1)->text - len;
	}

	memcpy(line->text, data, len);
}

static void removeLineData(Line* line)
{
	word len = (line+1)->text - line->text;

	const char* oldData = lineData;
	lineData += len;
	
	if (line != lines) {
		memmove(lineData, oldData, line->text - oldData);
		for (Line* p = lines; p != line; p++)
			p->text += len;
	}
}

word extractLineNumber(const char** line)
{
	const char* p = *line;
	word v = 0;
	while (*p >= '0' && *p <= '9') {
		v *= 10;
		v += *p++ - '0';
	}
	while (*p == ' ')
		++p;
	*line = p;
	return v;
}

Line* findLine(word number)
{
	if (lineCount == 0)
		return lines;

	word l = 0;
	word r = lineCount - 1;
	word m = 0;
	while (l <= r) {
		m = (l + r) >> 1;
		if (lines[m].number < number)
			l = m + 1;
		else if (lines[m].number > number)
			r = m - 1;
		else
			return &lines[m];
	}

	if (l < lineCount && lines[l].number < number)
		++l;

	return &lines[l];
}

void setLine(const char* text)
{
	word number = extractLineNumber(&text);

	Line* line = findLine(number);
	word lineIndex = line - lines;

	if (line->number == number) {
		removeLineData(line);
		if (*text == 0) {
			if (lineIndex < lineCount) {
				memmove(&lines[lineIndex],
					&lines[lineIndex + 1],
					sizeof(Line) * (lineCount - lineIndex));
			}
			--lineCount;
			return;
		}
	} else {
		if (*text == 0)
			return;

		if (lineIndex < lineCount) {
			memmove(&lines[lineIndex + 1],
				&lines[lineIndex], sizeof(Line) * (lineCount - lineIndex));
		}

		line->number = number;
		lineCount++;
		lines[lineCount].number = 0xFFFF;
		lines[lineCount].text = lineDataEnd;
	}

	insertLineData(line, text);
}

void initLines()
{
	lines->number = 0xFFFF;
	lines->text = lineDataEnd; 
}
