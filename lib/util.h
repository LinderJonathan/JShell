#include "global.h"


typedef struct builtIn {
	const char *name;
	int (*func)(char *args[]);
} builtIn;

extern builtIn builtIns[];

int builtInJcd(char *args[]);
int builtInJexit(char *args[]);
void parseArgs(char *args[], char inputBuff[]);