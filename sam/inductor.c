/*
 *  inductor.c -- find L for given pulse width and capacitance
 *
 *       L = (T * T)/(9 * C)
 *
 *     compile with:  cc -o inductor inductor.c -lm
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
    *  This program finds the inductance of a coil, given    *\n \
    *  a pulse duration and capacitance).                    *\n \
    **********************************************************\n");

  printf("\nEnter capacitance (uF): ");
  scanf("%e", &C);
  printf("Enter pulse duration (us): ");
  scanf("%e", &T);

  L = (T * T * 1e-12) / (9 * (C * 1e-6));
  printf("\nInductor = %.2f uH.\n\n", L * 1e6);

}
