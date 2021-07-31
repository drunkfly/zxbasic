#ifndef EDITOR_H
#define EDITOR_H

#include <stdio.h>
#include <string.h>

#ifndef _WIN32
#include <arch/zx.h>
#endif

typedef unsigned char byte;
typedef unsigned short word;

#define SCREEN_WIDTH 64
#define CODEVIEW_HEIGHT 23
#define INPUT_Y 24

enum {
	ENTER = 0x13,
	EDIT = 0x80,
	DELETE = 0x81,
	LEFT = 0x82,
	RIGHT = 0x83,
	UP = 0x84,
	DOWN = 0x85,
	LESSEQ = 0x86,
	GREQ = 0x87,
	NOTEQ = 0x88,
	BREAK = 0x89,
};

typedef struct Line {
	word number;
	char* text;
} Line;

extern Line* lines;
extern word lineCount;

extern char inputBuf[257];
extern byte lineLength;

extern word lastEnteredLineNumber;

#ifndef _WIN32
__sfr __banked __at 0x00fe port00FE;
#endif

void gotoxy(byte x, byte y);

word extractLineNumber(const char** line);
void setLine(const char* line);
void initLines();

void input();
byte readKey();

#endif
