#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "utils.h"

typedef struct{
	char index;
	int avalue;
	short shortvalue;
	char space;
	short sarray[2];
	int anothervalue;
}bigone;

int main(){
	bigone x = {7, -512, 127, 32, {0x123, 0x456}, 4096};
	while(1);
}


