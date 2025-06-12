import olympiad;
import geometry;

size(250);

// Define circle center and radius
pair O = (0, 0);
real R = 4;

// Draw the circle
draw(circle(O, R));

// Define points on the circle
pair A = dir(90) * R;          // Top point
pair B = dir(210) * R;         // Lower left
pair C = dir(-10) * R;         // Lower right

// Triangle is acute: angles will be < 90° due to spacing

// Draw triangle
draw(A--B--C--cycle);

// Mark the center
dot("$O$", O, N);

// Label triangle vertices
dot("$A$", A, N);
dot("$B$", B, SW);
dot("$C$", C, SE);

pair M = foot(O, A,B); 
pair K = foot(O, B,C);
pair L = foot(O,A,C);

dot("$M$", M, NW);
dot("$K$", K, S);
dot("$L$", L, NE);

draw("$z$", O--M, dashed +red);
draw("$x$", O--K, dashed+red);
draw("$y$", O--L, dashed + red);


