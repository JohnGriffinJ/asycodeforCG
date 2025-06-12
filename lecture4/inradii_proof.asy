

import olympiad;
import geometry;

size(250);

// Define circle center and radius
pair O = (0, 0);
real R = 4;
draw(circle(O, R));

// Define four points on the circle (in counter-clockwise order)
pair A = dir(140) * R;
pair D = dir(40) * R;
pair C = dir(-20) * R;
pair B = dir(-100) * R;

// Draw the quadrilateral
draw(A--B--C--D--cycle);
draw(A--C); 
draw(D--B);

// Compute the incenter and inradius
pair I_ABD = incenter(A, B, D);
real r_ABD = inradius(A, B, D);

// Draw the incircle
draw(circle(I_ABD, r_ABD),red);

// Compute the incenter and inradius
pair I_BDC = incenter(B, D, C);
real r_BDC = inradius(B, D, C);

// Draw the incircle
draw(circle(I_BDC, r_BDC), red);

// Compute the incenter and inradius
pair I_ABC = incenter(A, B, C);
real r_ABC = inradius(A, B, C);

// Draw the incircle
draw(circle(I_ABC, r_ABC),blue);

// Compute the incenter and inradius
pair I_ADC = incenter(A, D, C);
real r_ADC = inradius(A, D, C);

// Draw the incircle
draw(circle(I_ADC, r_ADC), blue);

// Mark the incenter
// dot("$I_ABD$", I_ABD, dir(90));


// Mark the center
dot("$O$", O, S);

// Label vertices
dot("$A$", A, NW);
dot("$B$", B, S);
dot("$C$", C, SE);
dot("$D$", D, N);

draw("$x$", foot(O,A,B)--O, orange);
draw("$y$", foot(O,B,C)--O, orange);
draw("$z$", foot(O,C,D)--O, orange);
draw("$w$", foot(O,A,D)--O, orange);
draw("$u$", foot(O,B,D)--O, orange);
draw("$s$", foot(O,A,C)--O, orange);

