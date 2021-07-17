#ifndef EDITOR_H
#define EDITOR_H

#include <stdio.h>
#include <string.h>

typedef unsigned char byte;
typedef unsigned short word;

#define SCREEN_WIDTH 64
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

void gotoxy(byte x, byte y);

word extractLineNumber(const char** line);
void setLine(const char* line);
void initLines();

void input();
byte readKey();

#endif
