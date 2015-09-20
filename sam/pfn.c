/*
 * pfn.c -- calculate capacitance, voltage, and inductance for a PFN.
 *
 *             compile:   cc -o pfn pfn.c -lm
 *
 *  Copyright (c) 2000, Eddie Kovelan and Sam Goldwasser
 *
 *  25-Jul-2005 (SMG): Cleaned up to make variable definitions clearer.
 */

#include <stdio.h>
#include <math.h>

main()
{
  float C, L, V, a, Eo, T, t, Ko;

  printf("\n \
    ************************************************************\n \
    *  This program finds a capacitor (uF), voltage (V),       *\n \
    *  and inductor (uH) for a given energy (J), pulse         *\n \
    *  duration (us), and flashlamp impedance Ko (ohms-A^.5):  *\n \
    ************************************************************\n");

  /* Eo = 10.0; */      /* Energy (Joules)               */ 
  /* t = 500.0;*/       /* Pulse Duration in (us)        */
  /* Ko =  13.0;*/      /* Lamp Impedance (ohms-A^.5)    */

  printf("\nEnter Energy (J): ");
  scanf("%f", &Eo);
  printf("Enter Pulse Duration (us): ");
  scanf("%f", &t);
  printf("Enter Lamp Impedance Ko (ohms-A^.5): ");
  scanf("%f", &Ko);

  a = 0.8;  /* Critically damped system */
  T = t/3;  /* T is circuit time constant */

  C = cbrt((2 * pow(a,4.0) * Eo * ((T * 1e-6) * (T * 1e-6)) / pow(Ko,4.0))); 
  L = (((T * 1e-6) * (T * 1e-6)) / (C * 1e-6));
  V = sqrt((2 * Eo) / C); 

  printf("\n");
  printf("C = %.9f F  -or-  %.3f uF\n", C, C * 1e6);
  printf("V = %.3f volts\n", V);
  printf("L = %.3f uH\n\n", L);
}
