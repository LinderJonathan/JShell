#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<stdbool.h>

#include"jshell.h"

int main()
{
	printf(
		"##################################################\n"
		"############### WELCOME TO J-SHELL ###############\n"
		"##################################################\n"
		"\n"
	);

	bool shellRunning = true;
	while (shellRunning)
	{
		char inputBuff[MAX_INPUT_SIZE];
		scanf("%s", inputBuff);
		printf("%c", inputBuff[0]);
		shellRunning = false;
	}

	return 0;
}
