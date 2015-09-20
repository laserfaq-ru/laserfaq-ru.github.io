/* 
 *   coil.c -- Air-core coil design program 
 *
 *         compile with:  cc -o coil coil.c -lm
 *
 *  Copyright (c) 2000, Eddie Kovelan and Sam Goldwasser
 */

#include <stdio.h>
#include <stdlib.h>
#include <math.h> 

main()
{
  /*
   *    L = inductance in microhenries, 
   *  RAD = radius (1/2 dia of coil), 
   *  NOT = Number Of Turns 
   */

  float L, RAD, length, NOT, imed;

  printf("\n \
    **********************************************************\n \
    *  This program finds the required number of turns for   *\n \
    *  an air-core inductor with specified inductance (uH),  *\n \
    *  radius (inches), and length (inches).                 *\n \
    **********************************************************\n");

  printf("\nEnter inductance (uH): ");
  scanf("%f", &L);
  printf("Enter radius of coil (inches): ");
  scanf("%f", &RAD);
  printf("Enter length of coil (inches): ");
  scanf("%f", &length);

  /* calculation of NOT (Number Of Turns) */
  imed = L * ((9 * RAD) + (10 * length)) / (RAD * RAD);
  NOT = sqrt(imed);

  printf("\nThe coil requires %f turns.\n\n", NOT);
}
