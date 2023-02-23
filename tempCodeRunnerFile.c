#include <stdio.h>

int main() {
   int a, b;
   int *p1, *p2, sum;

   printf("Entrez le premier entier: ");
   scanf("%d", &a);

   printf("Entrez le deuxième entier: ");
   scanf("%d", &b);

   // Initialisez les pointeurs pour pointer vers les entiers a et b
   p1 = &a;
   p2 = &b;

   // Calculez la somme à l'aide des pointeurs
   sum = *p1 + *p2;

   printf("La somme de %d et %d est: %d", *p1, *p2, sum);

   return 0;
}
