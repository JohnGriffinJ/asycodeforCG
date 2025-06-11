//ravi sub

    import olympiad;
import geometry;

size(300);

// Triangle vertices
pair B = (0,0);
pair C = (6,0);
pair A = (2,4);

// Draw triangle
draw(A--B--C--cycle);

// Compute incenter and inradius using olympiad
pair I = incenter(A,B,C);
real r = inradius(A,B,C);

// Draw incircle
draw(circle(I,r), blue);

// Now compute tangent points as the foot of perpendiculars from I to each side
pair D = foot(I, B, C); // tangent point on BC
pair E = foot(I, A, C); // tangent point on AC
pair F = foot(I, A, B); // tangent point on AB

// Draw tangent points
dot(D, red);
dot(E, red);
dot(F, red);

draw("$x$", A--E, green);
draw("$x$", A--F, green);
draw("$y$", B--F, red);
draw("$y$", B--D, red);
draw("$z$", C--D, blue);
draw("$z$", C--E, blue);

// Label tangent points
label("$D$", D, dir(-90));
label("$E$", E, NE);
label("$F$", F, NW);

// Mark vertices and incenter
dot("$A$", A, N);
dot("$B$", B, SW);
dot("$C$", C, SE);
dot("$I$", I, dir(270));
