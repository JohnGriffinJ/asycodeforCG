   import olympiad;
size(250);

// Triangle vertices
pair A = (0,0);
pair B = (5,0);
pair C = (2,4);

// Draw triangle
draw(A--B--C--cycle);

// Arbitrary point P
pair P = (3,1);

// Draw perpendiculars from P to sides (extended)
pair footAB = foot(P, A, B);
pair footBC = foot(P, B, C);
pair footCA = foot(P, C, A);

draw(P--footAB, blue+dashed);
draw(P--footBC, blue+dashed);
draw(P--footCA, blue+dashed);

// Draw triangle sides again (for clarity)
draw(A--B--C--cycle, black+1);

// Mark points
dot("$A$", A, SW);
dot("$B$", B, SE);
dot("$C$", C, N);
dot("$P$", P, dir(45));
dot("$X$", footAB,S);
dot("$Y$", footBC,NE);
dot("$Z$", footCA,NW);
