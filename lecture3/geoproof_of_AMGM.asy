// geo proof of AM GM

import olympiad;
import geometry;

size(250);

// Define diameter endpoints
pair A = (0, 0);
pair B = (6, 0);
pair O = midpoint(A--B); // Center of the semicircle

// Define point C on the semicircle (choose angle or x-coordinate)
pair C = O + dir(120) * length(O - A); // Point on the semicircle arc

// Draw semicircle
path semicircle = arc(O, length(O - A), 0, 180);
draw(semicircle);
draw(A--B); // Diameter

// Draw triangle
draw(A--C--B--cycle);

draw("$h$", C--foot(C,A,B), red);
dot("$D$", foot(C,A,B), S);
draw("$a$", A--foot(C,A,B));
draw("$b$", foot(C,A,B) -- B);

// Label points
dot("$A$", A, SW);
dot("$B$", B, SE);
dot("$C$", C, N);


// Optional: indicate right angle at C
draw(rightanglemark(A, C, B, 15));
