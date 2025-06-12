

import olympiad;
import geometry;

size(250);

// Define triangle vertices
pair A = (0, 4);      // Top vertex
pair B = (-3, 0);     // Left base vertex
pair C = (3, 0);      // Right base vertex

// Draw triangle
draw(A--B--C--cycle);

// Define an interior point P (e.g., a weighted average of A, B, and C)
pair P = 0.3*A + 0.3*B + 0.4*C;

// Draw point P
dot("$P$", P, dir(45));

// Mark triangle vertices
dot("$A$", A, N);
dot("$B$", B, SW);
dot("$C$", C, SE);

pair X = foot(P,A,B); 
pair Y = foot(P,B,C);
pair Z = foot(P,A,C);

label("$c$", midpoint(A--B),NW);
label("$a$", midpoint(B--C),S); 
label("$b$", midpoint(A--C),NE); 

draw(rightanglemark(B,X,P));
draw(rightanglemark(P,Y,B));
draw(rightanglemark(P,Z,C));



draw(P--X, red);
draw(P--Y, red);
draw(P--Z, red);

draw(P--A, blue);
draw(P--B, blue);
draw(P--C, blue);

label("$p_c$", midpoint(P--X),SW);
label("$p_a$", midpoint(P--Y),W);
label("$p_b$", midpoint(P--Z),NW);


