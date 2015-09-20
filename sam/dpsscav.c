/* 
 *   dpsscav.c -- Compute spot sizes and beam waist locations for TEM00 mode
 *                for YAG and vanadate DPSS laser cavities having planar
 *                mirror on vanadate rear surface.
 *
 *   Equations from "Solid State Laser Engineering", by Koechner, 5th edition
 *
 *         compile with:  cc -o dpsscav dpsscav.c -lm
 *
 *  Copyright (c) 2001, Sam Goldwasser
 */

#include <stdio.h>
#include <stdlib.h>
#include <math.h> 

main()
  {
  float L, r1, r2, w1, w2, lambda, decr;
  int count,n;

  printf("\n \
    ***********************************************************\n \
    *  This program calculates the spot size in the vanadate  *\n \
    *  and at the OC mirror for a set of cavity lengths.      *\n \
    *  Assumes planar HR and wavelength of 1,064 nm.          *\n \
    ***********************************************************\n");

  printf("\nEnter RoC for OC mirror (mm) (0 for planar): ");
  scanf("%f", &r2);
  printf("Enter maximum cavity length (mm): ");
  scanf("%f", &L);
  printf("Enter cavity length decrement: ");
  scanf("%f", &decr);
  printf("Enter number of iterations: ");
  scanf("%d", &n);

  count=1;
  r1=1E8;          /* Planar mirror has large RoC */
  r2=r2/1000;      /* Convert to meters */
  L=L/1000;
  lambda=1064/1E9; /* Fixed wavelength for YAG and vanadate */

  printf ("\n Case      L       Spot Size at HR  Spot Size at OC\n");
  printf ("----------------------------------------------------\n");

  for (count=1;count<=n;count+=1)
    {
    printf (" %3d  %7.2f mm",count,L*1000);

    /* Check for stability */

    if(r2 == 0) r2=1E8; /* planar mirror, make RoC large */

    if(fabs(L-r2)<1E-6) L = r2; /* Set equal if almost equal due to roundoff */
    if(L > r2) printf("          Unstable Resonator\n");
    else

    /* Calculation of spot sizes */

      {
      w1 = 2*sqrt(sqrt((lambda*r1/3.141592643)*(lambda*r1/3.141592643)* \
           ((r2-L)/(r1-L))*(L/(r1+r2-L))));

      printf("    %8.2f um", w1*1E6);

      if(fabs(r2-L)>1E-8) /* Special case of hemispherical resonator */
        {
        w2 = 2*sqrt(sqrt((lambda*r2/3.141592643)*(lambda*r2/3.141592643)* \
             ((r1-L)/(r2-L))*(L/(r1+r2-L))));

        printf("      %8.2f um\n", w2*1E6);
        }
      else printf("        Undefined\n");
      }
      L = L-(decr/1000);
    }
  }
