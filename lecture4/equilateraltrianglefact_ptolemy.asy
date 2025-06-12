

import olympiad;
import geometry;

size(250);

// Define circle center and radius
pair O = (0, 0);
real R = 3;

// Draw the circle
draw(circle(O, R));

// Define the 3 vertices of the equilateral triangle
pair A = dir(90) * R;           // Top of the circle
pair B = dir(210) * R;
pair C = dir(-30) * R;
pair P = dir(-115)*R;

// Draw the triangle
draw(A--B--C--cycle);

// Label the vertices
dot("$A$", A, N);
dot("$B$", B, SW);
dot("$C$", C, SE);
dot("$P$", P, S);

draw(P--A, red);
draw(P--B, blue);
draw(P--C, green);
