   import olympiad;
        import geometry;
        size(200); 
        pair C = (3,0); 
        pair D = (-3.5,0);
        pair A = (0,4);
        pair B = (-1,0);
        draw(A--B--C--cycle);
        draw(A--D);
        draw(D--B,dashed);

        label("$A$", A, N);
        label("$B$", B, S);
        label("$C$", C, S);
        label("$D$", D, S);

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

markAngleLabel(D,A,B, "$\alpha_1$");
markAngleLabel(D,A,C,1, "$\alpha_2$");
