/* 
 *  pulse.c -- find pulse duration for a given cap and coil
 *
 *     T = 3 * sqrt(L * C) 
 *
 *     compile with:  cc -o pulse pulse.c -lm
 *
 *  Copyright (c) 2000, Eddie Kovelan and Sam Goldwasser
 */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

main()
{
  float T, L, C;

  printf("\n \
    **********************************************************\n \
    *  This program finds the pulse duration of a series LC  *\n \
    *  assuming critical damping.                            *\n \
    **********************************************************\n");

  printf("\nEnter capacitance (uF): ");
  scanf("%e", &C);
  printf("Enter inductance (uH): ");
  scanf("%e", &L);

  T = 3 * sqrt((L * 1e-06) * (C * 1e-06));
  printf("\nPulse Time = %.9f seconds  -or-  %.3f us.\n\n", T, T * 1e6);

}
