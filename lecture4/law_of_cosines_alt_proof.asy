
import olympiad;
import geometry;

size(250);

// Define circle
pair O = (0, 0);
real R = 5;
draw(circle(O, R));

// Define four points on the circle (not symmetric!)
pair A = dir(150+50) * R;
pair D = dir(60+50) * R;
pair C = dir(-10+50) * R;
pair B = dir(-100+50) * R;

// Draw the trapezoid
draw(A--B--C--D--cycle);
draw("$a$", C--D);
draw("$c$", B--D);
draw("$c$", A--C);
label("$b$", midpoint(A--D), NW);
label("$b$", midpoint(B--C), NE);

// Label vertices
dot("$A$", A, NW);
dot("$B$", B, SW);
dot("$C$", C, SE);
dot("$D$", D, NE);

pair X = foot(D,A,B); 
pair X_0 = foot(C,A,B);

dot("$X$", X, S);
dot("$X'$", X_0, S);

draw(D--X, dashed + blue); 
draw(C--X_0, dashed +blue);


// Draw angle at A (between vectors AD and AB)
markangle(D, C,B, radius=20);

// Add label alpha near the angle

label("$\alpha$", C + 1.3*dir(215));

// Optional: center
// dot("$O$", O, S);
