
import olympiad;
import geometry;

size(250);

// Define circle
pair O = (0, 0);
real R = 3;
draw(circle(O, R));

// Generate 5 vertices evenly spaced on the circle
int n = 5;
pair[] P;
for (int i = 0; i < n; ++i)
  P[i] = O + R * dir(90 + i * 360/n); // Starts at top (90°)

// Draw the regular pentagon
for (int i = 0; i < n; ++i)
  draw(P[i]--P[(i+1)%n]);

// Label vertices A–E
label("$A$", P[0], N);
label("$B$", P[1], dir(135));
label("$C$", P[2], dir(-54));
label("$D$", P[3], dir(-126));
label("$E$", P[4], dir(45));

dot(P[0], red+5bp);
dot(P[1], red+5bp);
dot(P[2], red+5bp);
dot(P[4], red+5bp);

label("$1$", midpoint(P[0]--P[1]),NW);
label("$d$", midpoint(P[0]--P[2]),NW);

draw(P[0] -- P[2] -- P[4] -- P[1] -- P[3]--P[0]);
