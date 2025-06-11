//Heron's formula Alt proof

import olympiad;
import geometry;

size(300);

// Define triangle vertices (AB is horizontal)
pair B = (7, 4);
pair A = (0, 0);
pair C = (5, 0);
line AC=line(A, false, C);
draw(AC, dashed);
line AB = line(A, false, B);
draw(AB, dashed);

// Draw triangle
draw(A--B--C--cycle);


// Incenter and incircle
pair I = incenter(A, B, C);
real r_in = inradius(A, B, C);
draw(circle(I, r_in), red);
dot(I, red); label("$I$", I, NE);

// A-excenter and A-excircle
pair I_A = excenter(B,C,A);
real r_ex = exradius(B,C,A);
draw(circle(I_A, r_ex), blue);
dot(I_A, blue); label("$I_A$", I_A, NW);
line AI = line(A, false, I);
draw(AI, blue+dashed);
draw(I--foot(I,A,C), orange);
draw(I_A--foot(I_A, C, (8,0)), orange);
draw(rightanglemark(I, foot(I,A,C), A));
draw(rightanglemark(I_A, foot(I_A, C, (8,0)),C));
draw(I--C, green);
draw(C--I_A, green);
pair F = foot(I,A,C);
pair F_0 = foot(I_A, C, (8,0));
dot("$F$", F,S);
dot("$F'$", F_0, S);

// Label triangle vertices
dot("$A$", A, N);
dot("$B$", B, NW);
dot("$C$", C, SE);

