import olympiad;
size(190);

// Define the circle
pair O = (0,0);
real r = 3;
draw(circle(O,r));

// Define points on the circle (using angles)
pair A = O + r * dir(40);
pair B = O + r * dir(190);
pair C = O + r * dir(290);
pair B_pole = -B;

// Draw the triangle
draw(A--B--C--cycle);
draw(B--B_pole, red);
draw(B_pole--C, red);

// Label the vertices
label("$A$", A, dir(50));
label("$B$", B, dir(170));
label("$C$", C, dir(290));

real angleRadius = 0.5; // radius of angle marker arc
draw(anglemark(B,A,C));
draw(anglemark(B,B_pole,C));
draw(rightanglemark(B,C,B_pole));

// Label the sides
// label("$a$", midpoint(B--C), dir(-90));
// label("$b$", midpoint(C--A), dir(-30));
// label("$c$", midpoint(A--B), dir(90));

// Draw center for reference (optional)
dot(O);
label("$O$", O, SW);
