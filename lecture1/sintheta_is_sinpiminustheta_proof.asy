      import geometry;
        import olympiad;
size(200);

void angleArc(pair P, pair O, pair Q, real radius=0.5, string labelText="", real labelOffset=0.2) {
  real theta1 = degrees(dir(P - O));
  real theta2 = degrees(dir(Q - O));
  
  // Ensure theta1 < theta2 (counterclockwise)
  // This logic allows angles > 0
  if (theta2 < theta1)
    theta2 += 360;

  // Draw arc
  draw(arc(O, radius, theta1, theta2));

  // Optional label
  if (labelText != "") {
    pair labelPos = O + (radius + labelOffset) * dir((theta1 + theta2)/2);
    label(labelText, labelPos);
  }
}

// Define center and radius
pair O = (0,0);
real r = 3;
pair A = O + r*dir(30);
pair B = O + r*dir(180-30);
pair Bp = O + r*dir(180);
pair Ap = O + r*dir(0);

dot(O);
// Draw semicircle from 0° to 180° (upper semicircle)
draw(arc(O, r, 0, 180));
label("$O$", O, SW);
label("$A$", A, NE);
label("$B$", B, NW);

// Optionally, draw diameter
draw(O + r * dir(0) -- O + r * dir(180));
draw(O--A);
draw(O--B);
draw(A--B, red);

angleArc(Ap,O,A,"$\theta$");
angleArc(B,O,Bp,"$\theta$");
