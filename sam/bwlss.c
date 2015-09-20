/* 
 *   bwlss.c -- Compute beam waist location and spot sizes for TEM00 mode
 *
 *   Equations from "Solid State Laser Engineering", by Koechner, 5th edition
 *
 *         compile with:  cc -o bwlss bwlss.c -lm
 *
 *  Copyright (c) 2001, Sam Goldwasser
 */

#include <stdio.h>
#include <stdlib.h>
#include <math.h> 

main()
{
  /*
   *    L = Distance between mirrors in mm
   *    r1 = Mirror 1 RoC in mm
   *    r2 = Mirror 2 RoC in mm
   *    lambda = Wavelength in nm
   */

  float L, r1, r2, g1, g2, w0, z1, z2, w1, w2, lambda;

  printf("\n \
    ***********************************************************\n \
    *  This program calculates the beam waist location and    *\n \
    *  spot size; spot sizes at each mirror.                  *\n \
    ***********************************************************\n");

  printf("\nEnter RoC for mirror 1 (mm) (0 for planar): ");
  scanf("%f", &r1);
  printf("Enter RoC for mirror 2 (mm) (0 for planar): ");
  scanf("%f", &r2);
  printf("Enter distance between mirrors (mm): ");
  scanf("%f", &L);
  printf("Enter wavelength (nm): ");
  scanf("%f", &lambda);

  r1=r1/1000; /* Convert to meters */
  r2=r2/1000;
  L=L/1000;
  lambda=lambda/1E9;

  /* Calculation of g1, g2 parameters */

  if( r1 == 0 ){ g1 = 1; r1=1E8;} /* planar mirror */
  else { g1 = 1.0 - (L/r1); }

  printf("\ng1 = %1.3f.   ",g1);

  if( r2 == 0 ) {g2 = 1; r2=1E8;} /* planar mirror */
  else { g2 = 1.0 - (L/r2); }

  printf("g2 = %1.3f.\n",g2);

  if( g1*g2 < 0 || g1*g2 > 1 ) printf("\nUnstable resonator, aborting.\n");
  else if( g1 == 1 && g2 == 1 )
    { printf("\nPlane parallel resonator, beam waist and ");
      printf("spot sizes undefined, aborting.\n"); }
  else
    {    /* Calculation of beam waist location and spot sizes */

    w0 = 2*sqrt(sqrt((lambda/3.141592643)*(lambda/3.141592643)* \
         L*(r1-L)*(r2-L)*(r1+r2-L)/((r1+r2-(2*L))*(r1+r2-(2*L)))));

    printf("\nSpot diameter at beam waist = %4.2f um.\n", w0*1E6);

    z1 = (L*(r2-L))/(r1+r2-(2*L));

    printf("\nBeam waist location relative to mirror 1 = %4.2f mm.", z1*1E3); 

    z2 = z1 - L;

    printf("\nBeam waist location relative to mirror 2 = %4.2f mm.\n", z2*1E3);

    w1 = 2*sqrt(sqrt((lambda*r1/3.141592643)*(lambda*r1/3.141592643)* \
         ((r2-L)/(r1-L))*(L/(r1+r2-L))));

    printf("\nSpot diameter at mirror 1 = %4.2f um.\n", w1*1E6);

    w2 = 2*sqrt(sqrt((lambda*r2/3.141592643)*(lambda*r2/3.141592643)* \
         ((r1-L)/(r2-L))*(L/(r1+r2-L))));

    printf("Spot diameter at mirror 2 = %4.2f um.\n", w2*1E6);
  }
}
