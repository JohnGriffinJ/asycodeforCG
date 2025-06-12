
import olympiad;

size(250);

// Define four arbitrary points (in counter-clockwise order)
pair A = (1, 1);
pair B = (4, 2);
pair C = (3.5, 5);
pair D = (0, 4);
pair X = (1.76,3);

// Draw the quadrilateral
draw(A--B--C--D--cycle);

// Draw diagonals
draw(A--C, dashed);
draw(B--D, dashed);

// Label the vertices
dot("$A$", A, SW);
dot("$B$", B, SE);
dot("$C$", C, NE);
dot("$D$", D, NW);
dot("$X$", X, NW);
draw(A--X--B, red);
