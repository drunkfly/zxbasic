#include "editor.h"

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
	word n = 0;

	while (p < end) {
		gotoxy(1, ++n);
		printf("%u ", p->number);

		next = p + 1;
		byte len = (byte)(next->text - p->text);
		const char* str = p->text;

		while (len-- > 0)
			putc(*str++, stdout);

		++p;
	}
}

int main()
{
	initLines();

	for (;;) {
		drawLines();
		input();
	}
}
