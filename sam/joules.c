/*
 * joules.c -- find joules (W-s) 
 *
 * Given a certain flashlamp voltage, tell how much energy in
 * Joules (W-s) is available from a certain uF value cap.
 *
 *            E = 1/2 * C * V(square root)
 *
 *    compile with:  cc -o joules joules.c -lm
 *
 *  Copyright (c) 2000, Eddie Kovelan and Sam Goldwasser
 */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

main()
{
  float E, C, V;

  printf("\n \
   ******************************************************************\n \
   *  This program finds the energy (J) stored in a capacitor (uF)  *\n \
   *  at a specified voltage (V).                                   *\n \
   ******************************************************************\n");

  printf("\nEnter voltage (V): ");
  scanf("%f", &V);
  printf("Enter capacitance (uF): ");
  scanf("%f", &C);

  E = (.5 * C * (V * V));

  printf("\nTotal energy in Joules (W-s) = %4.3f\n\n", E * 1e-6);

}
