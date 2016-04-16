/*
 * Pointers
 *
 */

int *ptrID, ID;
ID = 8;
ptrID = &ID;

int *ptr = malloc(sizeof (int)); //not parsed
int *ptr; ptr=(int *)malloc((size_t)10 * sizeof (int)); //parsed
free(ptr);
ptr = NULL; /*is safe (it does nothing).*/

struct node *myNode;
myNode = (struct node *) malloc(sizeof(struct node));
/*  (*pz).a   ==  pz->a */

/*
 * funciones con estructuras y punteros
 * 
 * */
struct x {int a; int b; int c;} ;
void function(struct x *);

main() {
  struct x z, *pz; /* z == type struct x
                   * pz == a pointer to type struct x*/
  pz = &z;   /* put the address of 'z' into 'pz' */
  z.a = 10;  /* initialize z.a		    */
  z.a++;     /* Increment z.a		    */

  printf(" first member before the function call %d \n", pz->a);
  function(pz);  /* Call 'function' passing the * pointer 'pz' */

  printf(" first member after the function call %d \n", pz->a);
  printf(" first member after the function call %d \n", (*pz).a);
  printf(" first member after the function call %d \n", z.a);
}

void function(struct x *pz) {
  printf(" first member inside the function %d \n", pz->a);
  pz->a++;
}

######################################################
##      funciones con estructuras sin punteros      ##
######################################################

#include <stdio.h>
#include <stdlib.h>

struct x {int a; int b; int c;};
void function(struct x);

void function( struct x z){
    printf(" first member %d \n", z.a);
}

main(){
     struct x z;
     z.a = 10;
     z.a++;
     function(z);
}

######################################################
##          ejemplo de punters y funciones          ##
######################################################

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define TALLA 10

void selecciona_pares(int a[], int talla, int * pares[], int * numpares)
{
  int i, j;

  *numpares = 0;
  for (i=0; i<talla; i++)
  if (a[i] % 2 == 0)
  (*numpares)++;

  *pares = malloc(*numpares * sizeof(int) );

  j = 0;
  for (i=0; i<talla; i++)
  if (a[i] % 2 == 0)
  (*pares)[j++] = a[i];
}

int main(void)
{
  int vector[TALLA], i;
  int * seleccion , seleccionados;

  srand(time(0));
  for (i=0; i<TALLA; i++)
  vector[i] = rand();

  selecciona_pares(vector, TALLA, &seleccion , &seleccionados);

  for (i=0; i<seleccionados; i++)
  printf ("%d\n", seleccion[i]);

  free(seleccion);
  seleccion = NULL;

  return 0;
}
