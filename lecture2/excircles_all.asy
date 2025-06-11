//All Excircles of a triangle

import olympiad;
import geometry;

size(300);

// Define triangle vertices (AB is horizontal)
pair B = (2, 4);
pair A = (0, 0);
pair C = (5, 0);
line AC=line(A, C);
draw(AC, dashed);
line AB = line(A, B);
draw(AB, dashed);
line BC = line(B,C);
draw(BC, dashed);

// Draw triangle
draw(A--B--C--cycle);


// Incenter and incircle
pair I = incenter(A, B, C);
real r_in = inradius(A, B, C);
draw(circle(I, r_in), red);
dot(I, red); label("$I$", I, NE);

// A-excenter and A-excircle
pair I_A = excenter(B,C,A);
real r_a = exradius(B,C,A);
pair I_B = excenter(C,A,B);
real r_b = exradius(C,A,B);
pair I_C = excenter(A,B,C);
real r_c = exradius(A,B,C);

draw(circle(I_A, r_a), blue);
dot(I_A, blue); label("$I_A$", I_A, N);
draw(circle(I_B, r_b), blue);
dot(I_B, blue); label("$I_B$", I_B, NW);
dot(I_C, blue); label("$I_C$", I_C, NW);

draw("$r_A$", I_A -- foot(I_A,B, B+(2,4)), dashed+orange);
draw("$r_A$", I_A -- foot(I_A,B,C), dashed+orange);
draw("$r_A$", I_A -- foot(I_A,C, C+ (4,0)), dashed+orange);

draw(circle(I_C, r_c), blue);



// Label triangle vertices
dot("$A$", A, N);
dot("$B$", B, NW);
dot("$C$", C, SE);
