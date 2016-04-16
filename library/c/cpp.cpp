%-12.4f	floating point number with a minimum of 12 characters,
			4 decimal places, and left justified.

sprintf(conneclptDate, "%02d-%02d%-4d", dia, mes, anio);
time_t:	"%lld", (long long int)foo

c	Character	a
d	Signed decimal integer	392
e	Scientific notation (mantise/exponent) using e character	3.9265e+2
E	Scientific notation (mantise/exponent) using E character	3.9265E+2
f	Decimal floating point	392.65
g	Use the shorter of %e or %f	392.65
G	Use the shorter of %E or %f	392.65
o	Signed octal	610
s	String of characters	sample
u	Unsigned decimal integer	7235
x	Unsigned hexadecimal integer	7fa
X	Unsigned hexadecimal integer (capital letters)	7FA
p	Pointer address	B800:0000
n	Nothing printed. The argument must be a pointer to a signed int, where the number of characters written so far is stored.	
%	A % followed by another % character will write % to stdout.

width	description
(number)	Minimum number of characters to be printed.
*	An additional integer value argument preceding the argument that has to be formatted.


.precision	description
.number	For integer specifiers (d, i, o, u, x, X): specifies the minimum 
number of digits to be written. If the value to be written is shorter than 
this number, the result is padded with leading zeros. 

The value is not truncated even if the result is longer. A precision of 0 means that no character is written for the value 0.
For e, E and f specifiers: this is the number of digits to be printed after the decimal point.
For g and G specifiers: This is the maximum number of significant digits to be printed.
For s: this is the maximum number of characters to be printed. By default all characters are printed until the ending null character is encountered.
For c type: it has no effect.
When no precision is specified, the default is 1. If the period is specified without an explicit value for precision, 0 is assumed.
.*	The precision is not specified in the format string, but as an additional integer value argument preceding the argument that has to be formatted.


length	description
h	short int or unsigned short int (i, d, o, u, x and X).
l	long int or unsigned long int for (i, d, o, u, x and X), example: "%ld";
	and as a wide character or wide character string for specifiers c and s.
L	The argument is interpreted as a long double 
	(only applies to floating point specifiers: e, E, f, g and G). 
	
/* Variable externa */

//Header File: Exercise.h
using namespace System;
double Number = 2148.52;

//Source  File: Exercise.cpp
#include "Exercise.h"
using namespace System;

int main()
{
	extern double Number;
	Console::WriteLine(L"Number: {0}", Number);
	Console::WriteLine();
	return 0;
}


/* 
system example : DIR 
int system ( const char * command );
*/
#include <stdio.h>
#include <stdlib.h>

int main ()
{
  int i;
  printf ("Checking if processor is available...");
  if (system(NULL)) puts ("Ok");
    else exit (1);
  printf ("Executing command DIR...\n");
  i=system ("dir");
  printf ("The value returned was: %d.\n",i);
  return 0;
}

/* 
system example : LS
int system ( const char * command );
*/
#include <sys/types.h>
#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>

int main( int argc, char **argv ) {
    pid_t child = 0;
    child = fork();
    if (child < 0) {
        fprintf( stderr, "process failed to fork\n" );
        return 1;
    }
    if (child == 0) {
        wait(NULL);
    }
    else {
        execl( "/bin/ls", "ls")
    }
    return 0;
}


/******************************/
/* escribir archivo con fputs */
/******************************/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void)
{
  char str[80];
  FILE *fp;

  if( (fp = fopen("TEST", "w"))==NULL ) {
    printf("Cannot open file.\n");
    exit(1);
  }

  do {
    printf("Enter a string (CR to quit):\n");
    gets(str);
    strcat(str, "\n");  /* add a newline */
    fputs(str, fp);
  } while(*str!='\n');

  return 0;
}


/* escribir archivo con fprintf */
#include <stdio.h>
#include <stdlib.h>

int main(void)
{
  FILE *fp;

  if((fp=fopen("test", "wb"))==NULL) {
    printf("Cannot open file.\n");
    exit(1);
  }

  fprintf(fp, "this is a test %d %f", 10, 20.01);
  fclose(fp);

  return 0;
}


/* escribir array en file con fwrite*/
#include <stdio.h>
#include <stdlib.h>

int main(void)
{
  FILE *fp;
  float floatValue[5] = { 1.1F, 2.2F, 3.3F, 4.4F, 5.5F };
  int i;

  if((fp=fopen("test", "wb"))==NULL) {
    printf("Cannot open file.\n");
  }

  if(fwrite(floatValue, sizeof(float), 5, fp) != 5)
    printf("File read error.");
  fclose(fp);

  /* read the values */
  if((fp=fopen("test", "rb"))==NULL) {
    printf("Cannot open file.\n");
  }

  if(fread(floatValue, sizeof(float), 5, fp) != 5) {
    if(feof(fp))
       printf("Premature end of file.");
    else
       printf("File read error.");
  }
  fclose(fp);

  for(i=0; i<5; i++)
    printf("%f ", floatValue[i]);

  return 0;
}
