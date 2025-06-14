

size(300);
import olympiad; // for intersectionpoint()
import geometry;

// 1. Circle center and radius
point O = (0, 0);
real r = 1;
circle c = circle(O, r);
draw(c);

// 2. Points of tangency (on circle, adjustable)
point T1 = r * dir(30);
point T2 = r * dir(100);
point T3 = r * dir(210);
point T4 = r * dir(300);

line[] tang1 = tangents(c, T1);
line[] tang2 = tangents(c,T2);
line[] tang3 = tangents(c,T3);
line[] tang4 = tangents(c,T4);

// draw(tang1);
// draw(tang2);
// draw(tang3);
// draw(tang4);

point A = intersectionpoint(tang1[0], tang2[0]); dot("$A$", A,NE);
point B = intersectionpoint(tang2[0], tang3[0]); dot("$B$", B,SW);
point C = intersectionpoint(tang3[0], tang4[0]); dot("$C$", C,W);
point D = intersectionpoint(tang4[0], tang1[0]); dot("$D$", D);

draw(A--B, red+linewidth(1.3));
draw(D--C, red+linewidth(1.3));
draw(B--C, blue+linewidth(1.3));
draw(A--D, blue+linewidth(1.3));



