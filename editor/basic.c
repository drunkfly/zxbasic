#include "editor.h"

word programPos;
word programOff;

void gotoxy(byte x, byte y)
{
	#ifndef __WIN32__
	printf("\26%c%c", x, y);
	#endif
}

void drawLines()
{
	const Line* p = lines;
	const Line* end = lines + lineCount;
	const Line* next;
	byte line = 0;
	word idx = 0;

	for (; p < end; ++p, ++idx) {
		if (idx < programOff)
			continue;
		if (line >= CODEVIEW_HEIGHT)
			return;

		gotoxy(1, line + 1);
		printf("%u ", p->number);

		next = p + 1;
		byte len = (byte)(next->text - p->text);
		const char* str = p->text;

		byte w = SCREEN_WIDTH - 1;
		if (p->number < 10)
			w -= 1;
		else if (p->number < 100)
			w -= 2;
		else if (p->number < 1000)
			w -= 3;
		else if (p->number < 10000)
			w -= 4;
		else
			w -= 5;

		if (len > w)
			len = w;

		byte rem = w - len;

		while (len-- > 0)
			putc(*str++, stdout);

		if (rem & 1)
			putc(' ', stdout);

	  #ifndef _WIN32
	  	rem >>= 1;

		byte attr = (line == programPos
			? PAPER_BLACK | INK_WHITE
			: PAPER_WHITE | INK_BLACK);
		memset((void*)(0x5800 + (line << 5)), attr, (SCREEN_WIDTH >> 1) - rem);

		attr = (line == programPos
			? PAPER_BLACK | INK_BLACK
			: PAPER_WHITE | INK_WHITE);
		memset((void*)(0x5800 + (line << 5) + ((SCREEN_WIDTH >> 1) - rem)), attr, rem);
	  #endif

		++line;
	}

	memset((void*)(0x5800 + (line << 5)), PAPER_WHITE | INK_WHITE, 32);
}

void limitProgramPos()
{
	if (programOff + programPos >= lineCount) {
		if (programPos > 0)
			--programPos;
		else if (programOff > 0)
			--programOff;
	}
}

int main()
{
	initLines();

	setLine("10 CLS");
	setLine("20 LET X=1 : LET Y=1");
	setLine("30 LET A=1 : LET B=1");
	setLine("40 LET D=X : LET E=Y");
	setLine("50 LET X=X+A");
	setLine("60 IF X=30 THEN LET A=-1");
	setLine("70 IF X=1 THEN LET A=1");
	setLine("80 LET Y=Y+B");
	setLine("90 IF Y=20 THEN LET B=-1");
	setLine("100 IF Y=1 THEN LET B=1");
	setLine("110 PAUSE 1");
	setLine("120 PRINT CHR$(22),CHR$(E),CHR$(D),\" \"");
	setLine("130 PRINT CHR$(22),CHR$(Y),CHR$(X),\"X\"");
	setLine("140 GOTO 40");
	setLine("210 CLS");
	setLine("220 LET X=1 : LET Y=1");
	setLine("230 LET A=1 : LET B=1");
	setLine("240 LET D=X : LET E=Y");
	setLine("250 LET X=X+A");
	setLine("260 IF X=30 THEN LET A=-1");
	setLine("270 IF X=1 THEN LET A=1");
	setLine("280 LET Y=Y+B");
	setLine("290 IF Y=20 THEN LET B=-1");
	setLine("2100 IF Y=1 THEN LET B=1");
	setLine("2110 PAUSE 1");
	setLine("2120 PRINT CHR$(22),CHR$(E),CHR$(D),\" \"");
	setLine("2130 PRINT CHR$(22),CHR$(Y),CHR$(X),\"X\"");
	setLine("2140 GOTO 40");

	for (;;) {
		drawLines();

		byte key;
		do {
			key = readKey();
		} while (key == 0);

	  #ifndef _WIN32
		while ((port00FE & 0x1f) != 0x1f) {
			__asm
   			halt
			__endasm;
		}
	  #endif

		switch (key) {
			case ENTER: {
				lineLength = 0;
				input();
				memset((void*)(0x5800 + ((INPUT_Y - 1) << 5)), PAPER_WHITE | INK_WHITE, 32);

				const Line* p = lines, *end = p + lineCount;
				word idx = 0;
				for (; p < end; ++p, ++idx) {
					if (p->number == lastEnteredLineNumber) {
						if (idx < CODEVIEW_HEIGHT) {
							programOff = 0;
							programPos = idx;
						} else {
							programOff = idx - CODEVIEW_HEIGHT + 1;
							programPos = CODEVIEW_HEIGHT - 1;
						}
						break;
					}
				}

				limitProgramPos();
				break;
			}

			case UP:
				if (programPos > 0)
					--programPos;
				else if (programOff > 0)
					--programOff;
				break;

			case DOWN:
				if (programOff + programPos + 1 < lineCount) {
					if (programPos < (CODEVIEW_HEIGHT-1))
						++programPos;
					else
						++programOff;
				}
				break;

			case EDIT: {
				lineLength = 0;

				const Line* next, *p = lines, *end = p + lineCount;
				byte line = 0;
				word idx = 0;
				for (; p < end; ++p, ++idx) {
					if (idx < programOff)
						continue;
					if (line >= CODEVIEW_HEIGHT)
						break;
					if (line == programPos) {
						next = p + 1;
						byte len = next->text - p->text;
						byte off = sprintf(inputBuf, "%u ", p->number);
						memcpy(inputBuf + off, p->text, len);
						lineLength = len + off;
						break;
					}
					++line;
				}

				input();
				memset((void*)(0x5800 + ((INPUT_Y - 1) << 5)), PAPER_WHITE | INK_WHITE, 32);

				limitProgramPos();
				break;
			}

			case DELETE: {
				const Line *p = lines, *end = p + lineCount;
				byte line = 0;
				word idx = 0;
				for (; p < end; ++p, ++idx) {
					if (idx < programOff)
						continue;
					if (line >= CODEVIEW_HEIGHT)
						break;
					if (line == programPos) {
						sprintf(inputBuf, "%u", p->number);
						setLine(inputBuf);
						limitProgramPos();
						break;
					}
					++line;
				}

				break;
			}
		}
	}
}
