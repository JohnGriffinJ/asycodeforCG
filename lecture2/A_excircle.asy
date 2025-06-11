//A-excircle

import olympiad;
import geometry;

size(300);

// Triangle vertices
pair A = (2,5);
pair B = (0,0);
pair C = (6,0);

// Draw triangle
draw(A--B--C--cycle);

// A-excenter and exradius
pair I_A = excenter(B, C, A);
real r_A = exradius(B, C, A);

// Draw A-excircle
draw(circle(I_A, r_A), blue);

// Draw and label triangle
dot("$A$", A, N);
dot("$B$", B, SW);
dot("$C$", C, SE);
dot("$I_A$", I_A, dir(90));
dot(I_A, blue);

// Touch point on BC
pair D = foot(I_A, B, C);
dot("$D$", D, dir(-90));
draw(I_A--D, dashed+red);

// Extend AB and AC from A
real L = 5;
pair AB_ext = B + L * unit(B - A);
pair AC_ext = C + L * unit(C - A);

// Draw extended lines
draw(A--AB_ext, dashed+gray);
draw(A--AC_ext, dashed+gray);

// Tangent points
pair E = foot(I_A, A, AB_ext);
pair F = foot(I_A, A, AC_ext);

draw(I_A--E, dashed+red);
draw(I_A--F, dashed+red);

dot("$E$", E, NE);
dot("$F$", F, NW);





