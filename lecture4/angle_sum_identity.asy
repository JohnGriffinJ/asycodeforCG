
import olympiad;
import geometry;

size(250);

// Define circle
pair O = (0, 0);
real R = 5;
draw(circle(O, R));

// Define points on the circle corresponding to desired angles
// Start at top left (A), and go counterclockwise
pair A = dir(135) * R; // ∠A = 90°
pair B = dir(225) * R; // ∠B = 110°
pair C = dir(315) * R; // ∠C = 90°
pair D = dir(20) * R;  // ∠D = 70° (since 110 + 70 = 180)

// Draw the quadrilateral
draw(A--B--C--D--cycle);

// Label the points
dot("$A$", A, NW);
dot("$B$", B, SW);
dot("$C$", C, SE);
dot("$D$", D, NE);

// Optional: mark right angles at A and C
draw(rightanglemark(C, B, A));
draw(rightanglemark(A,D,C));

draw(A--C);
draw(B--D);


markangle(B,A,C, radius=15);
markangle(C,A,D, radius=20);

label("$\alpha$", A + 1 * dir(-60));
label("$\beta$", A + 1.3 * dir(-30));

