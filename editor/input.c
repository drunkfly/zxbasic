#include "editor.h"

char inputBuf[257] = {0};
byte linePos;
byte lineOff;
byte lineLength;

byte capsLock = 0;
byte blink = 0;

#ifndef _WIN32
//__sfr __banked __at 0x00fe port00FE;
__sfr __banked __at 0xfefe portFEFE;
__sfr __banked __at 0xfdfe portFDFE;
__sfr __banked __at 0xfbfe portFBFE;
__sfr __banked __at 0xf7fe portF7FE;
__sfr __banked __at 0xeffe portEFFE;
__sfr __banked __at 0xdffe portDFFE;
__sfr __banked __at 0xbffe portBFFE;
__sfr __banked __at 0x7ffe port7FFE;
#else
byte port00FE;
byte portFEFE;
byte portFDFE;
byte portFBFE;
byte portF7FE;
byte portEFFE;
byte portDFFE;
byte portBFFE;
byte port7FFE;
#endif

void moveCursorLeft()
{
	if (linePos > 0)
		--linePos;
	else if (lineOff > 0)
		--lineOff;
}

void moveCursorRight()
{
	if (linePos < (SCREEN_WIDTH-1))
		++linePos;
	else
		++lineOff;
}

void drawCursor()
{
	gotoxy(linePos + 1, INPUT_Y);
	if ((blink & 15) < 8)
		putc('I', stdout);
	else {
		byte pos = linePos + lineOff;
		putc((pos < lineLength ? inputBuf[pos++] : ' '), stdout);
	}
}

void addChar(char ch)
{
	byte pos = lineOff + linePos;
	if (pos < 255) {
		if (pos != lineLength) {
			memmove(&inputBuf[pos + 1],
				&inputBuf[pos], lineLength - pos);
		}
		inputBuf[pos] = ch;
		lineLength++;
		moveCursorRight();
	}
}

void input()
{
	byte i, pos, key;

	if (lineLength < SCREEN_WIDTH) {
		lineOff = 0;
		linePos = lineLength;
	} else {
		lineOff = lineLength - SCREEN_WIDTH + 1;
		linePos = SCREEN_WIDTH - 1;
	}

	for (;;) {
		gotoxy(1, INPUT_Y);
		pos = lineOff;
		for (i = 0; pos < lineLength && i < SCREEN_WIDTH; i++)
			putc(inputBuf[pos++], stdout);
		for (; i < SCREEN_WIDTH; i++)
			putc(' ', stdout);

		for (;;) {
			drawCursor();

			key = readKey();
			if (key != 0) {
			  #ifndef _WIN32
				while ((port00FE & 0x1f) != 0x1f) {
			   		__asm
   					halt
			   		__endasm;
	   				blink++;
   					drawCursor();
				}
			  #endif	
				break;
			}

		  #ifndef _WIN32
		   	__asm
	   		halt
   			__endasm;
   		  #endif	
	   		blink++;
		   	drawCursor();
		}

		switch (key) {
			case ENTER:
				inputBuf[lineLength] = 0;
				setLine(inputBuf);
				return;

			case BREAK:
				return;

			case UP:
			case DOWN:
				break;

			case LESSEQ:
				addChar('<');
				addChar('=');
				break;

			case GREQ:
				addChar('>');
				addChar('=');
				break;

			case NOTEQ:
				addChar('<');
				addChar('>');
				break;

			case LEFT:
				pos = lineOff + linePos;
				if (pos > 0)
					moveCursorLeft();
				break;

			case RIGHT:
				pos = lineOff + linePos;
				if (pos < lineLength)
					moveCursorRight();
				break;

			case DELETE:
				pos = lineOff + linePos;
				if (pos > 0) {
					if (pos != lineLength) {
						memmove(&inputBuf[pos],
							&inputBuf[pos + 1], lineLength - pos - 1);
					}
					lineLength--;
					moveCursorLeft();
				}
				break;

			default:
				addChar(key);
				break;
		} 
	}
}

byte readKey()
{
	byte b1 = ~portFEFE;
	byte b2 = ~portFDFE;
	byte b3 = ~portFBFE;
	byte b4 = ~portF7FE;
	byte b5 = ~portEFFE;
	byte b6 = ~portDFFE;
	byte b7 = ~portBFFE;
	byte b8 = ~port7FFE;

	byte shift = capsLock || (b1 & 1);
	byte sym = b8 & 2;

	if (sym == 0) {
		if (b1 &  2) return (shift ? 'Z' : 'z');
		if (b1 &  4) return (shift ? 'X' : 'x');
		if (b1 &  8) return (shift ? 'C' : 'c');
		if (b1 & 16) return (shift ? 'V' : 'v');
		if (b2 &  1) return (shift ? 'A' : 'a');
		if (b2 &  2) return (shift ? 'S' : 's');
		if (b2 &  4) return (shift ? 'D' : 'd');
		if (b2 &  8) return (shift ? 'F' : 'f');
		if (b2 & 16) return (shift ? 'G' : 'g');
		if (b3 &  1) return (shift ? 'Q' : 'q');
		if (b3 &  2) return (shift ? 'W' : 'w');
		if (b3 &  4) return (shift ? 'E' : 'e');
		if (b3 &  8) return (shift ? 'R' : 'r');
		if (b3 & 16) return (shift ? 'T' : 't');
		if (b4 &  1) return (shift ? EDIT : '1');
		if (b4 &  2) {
			if (shift)
				capsLock = !capsLock;
			else
				return '2';
		}
		if (b4 &  4) return (shift ? 0 : '3');
		if (b4 &  8) return (shift ? 0 : '4');
		if (b4 & 16) return (shift ? LEFT : '5');
		if (b5 &  1) return (shift ? DELETE : '0');
		if (b5 &  2) return (shift ? 0 : '9');
		if (b5 &  4) return (shift ? RIGHT : '8');
		if (b5 &  8) return (shift ? UP : '7');
		if (b5 & 16) return (shift ? DOWN : '6');
		if (b6 &  1) return (shift ? 'P' : 'p');
		if (b6 &  2) return (shift ? 'O' : 'o');
		if (b6 &  4) return (shift ? 'I' : 'i');
		if (b6 &  8) return (shift ? 'U' : 'u');
		if (b6 & 16) return (shift ? 'Y' : 'y');
		if (b7 &  1) return ENTER;
		if (b7 &  2) return (shift ? 'L' : 'l');
		if (b7 &  4) return (shift ? 'K' : 'k');
		if (b7 &  8) return (shift ? 'J' : 'j');
		if (b7 & 16) return (shift ? 'H' : 'h');
		if (b8 &  1) return (shift ? BREAK : ' ');
		if (b8 &  4) return (shift ? 'M' : 'm');
		if (b8 &  8) return (shift ? 'N' : 'n');
		if (b8 & 16) return (shift ? 'B' : 'b');
	} else {
		if (b1 &  2) return (shift ? 0 : ':');
		if (b1 &  8) return (shift ? 0 : '?');
		if (b1 & 16) return (shift ? 0 : '/');
		if (b3 &  1) return (shift ? 0 : LESSEQ);
		if (b3 &  2) return (shift ? 0 : NOTEQ);
		if (b3 &  4) return (shift ? 0 : GREQ);
		if (b3 &  8) return (shift ? 0 : '<');
		if (b3 & 16) return (shift ? 0 : '>');
		if (b4 &  1) return (shift ? 0 : '!');
		if (b4 &  2) return (shift ? 0 : '@');
		if (b4 &  4) return (shift ? 0 : '#');
		if (b4 &  8) return (shift ? 0 : '$');
		if (b4 & 16) return (shift ? 0 : '%');
		if (b5 &  1) return (shift ? 0 : '_');
		if (b5 &  2) return (shift ? 0 : ')');
		if (b5 &  4) return (shift ? 0 : '(');
		if (b5 &  8) return (shift ? 0 : ',');
		if (b5 & 16) return (shift ? 0 : '&');
		if (b6 &  1) return (shift ? 0 : '"');
		if (b6 &  2) return (shift ? 0 : ';');
		if (b7 &  2) return (shift ? 0 : '=');
		if (b7 &  4) return (shift ? 0 : '+');
		if (b7 &  8) return (shift ? 0 : '-');
		if (b8 &  4) return (shift ? 0 : '.');
		if (b8 &  8) return (shift ? 0 : ',');
		if (b8 & 16) return (shift ? 0 : '*');
	}

	return 0;
}
