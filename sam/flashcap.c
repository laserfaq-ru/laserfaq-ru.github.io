/* 
 * flashcap.c -- find C (uF value) for a flashlamp.
 *
 *            2 * E
 *      C =  -------
 *            V * V
 *
 *    compile with:  cc -o flashcap flashcap.c -lm
 *
 *  Copyright (c) 2000, Eddie Kovelan and Sam Goldwasser
 */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

main()
{
  float C, E, V;

  printf("\n \
   **********************************************************\n \
   *  This program finds the required capacitor value (uF)  *\n \
   *  for a flashlamp given the voltage (V) and energy (J). *\n \
   **********************************************************\n");

  printf("\nEnter Energy (J): ");
  scanf("%f", &E);
  printf("Enter Voltage (V): ");
  scanf("%f", &V);

  E = E * 1000000.0;    /* because cap is in uf */
  V = (V * V);
  C = 2 * E / V;

  printf("\nCapacitor:  %4.3f  uF.\n\n", C);
}
