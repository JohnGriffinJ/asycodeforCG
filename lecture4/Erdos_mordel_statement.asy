

import olympiad;
import geometry;

size(250);

// Define triangle vertices
pair C = (0, 4);      // Top vertex
pair A = (-3, 0);     // Left base vertex
pair B = (3, 0);      // Right base vertex

// Draw triangle
draw(A--B--C--cycle);

// Define an interior point P (e.g., a weighted average of A, B, and C)
pair P = 0.3*A + 0.3*B + 0.4*C;

// Draw point P
dot("$P$", P, dir(45));

// Mark triangle vertices
dot("$A$", A, SW);
dot("$B$", B, SE);
dot("$C$", C, N);

pair X = foot(P,A,B); 
pair Y = foot(P,B,C);
pair Z = foot(P,A,C);

label("$c$", midpoint(A--B),S);
label("$a$", midpoint(B--C),NE); 
label("$b$", midpoint(A--C),NW); 

draw(rightanglemark(B,X,P));
draw(rightanglemark(P,Y,B));
draw(rightanglemark(P,Z,C));



draw(P--X, red);
draw(P--Y, red);
draw(P--Z, red);

draw(P--A, blue);
draw(P--B, blue);
draw(P--C, blue);

label("$p_c$", midpoint(P--X),W);
label("$p_a$", midpoint(P--Y),NW);
label("$p_b$", midpoint(P--Z),SW);


