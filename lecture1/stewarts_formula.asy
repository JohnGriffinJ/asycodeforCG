     import olympiad;
        import geometry;
        size(200); 
        pair B = (-2,0); 
        pair C = (5,0);
        pair A = (0,4);
        pair D = (1,0);
        draw("$c$", A--B);
        draw(B--C); 
        draw("$b$", C--A);
        draw("$d$", A--D);

        label("$A$", A, N);
        label("$B$", B, W);
        label("$C$", C, E);
        label("$D$", D, SW);

        // Draw angle at vertex O between points P and Q with radius and label
void markAngleLabel(pair P, pair O, pair Q, real radius=0.5, string labelText="") {
  real angle1 = degrees(dir(P - O));
  real angle2 = degrees(dir(Q - O));
  
  // Ensure angle2 > angle1 (go counterclockwise)
  if (angle2 < angle1) angle2 += 360;
  
  // Draw the arc of the angle
  draw(arc(O, radius, angle1, angle2));
  
  // Label position at midpoint of the arc, slightly outside radius
  pair labelPos = O + (radius + 0.2) * dir((angle1 + angle2)/2);
  
  if (labelText != "")
    label(labelText, labelPos);
}
draw("$n$", D + (0,-.5)-- C+ (0,-0.5), Bars);
draw("$m$", B - (0,0.9) -- D + (0,-0.9), Bars);
markAngleLabel(A,D,B,"$x$");
