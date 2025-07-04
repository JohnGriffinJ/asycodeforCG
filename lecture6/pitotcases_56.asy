
size(300);
import olympiad;
import geometry; 
real r=1.5;

point O = (0,0); 
// dot("$A$", O,W);
point A = (Cos(30), Sin(30)); 
// dot("$A$", A, NW); 
point Y = (Cos(-30), Sin(-30)); 
dot("$B$", Y);

point X = dir(30);  
dot("$D$", X); 
point C = .5*dir(-30); 
// dot("$B$", C, SW); 

line l1 = line(O, X);
draw(l1);
line l2 = line(O, Y);
draw(l2);

triangle t = triangle(A,O,C);

drawline(t);
point I = incenter(t); 
//dot("$I_1$", I);
real r = inradius(t);
circle c = circle(I, r); 
// draw(c);

point T1 = I + r*dir(30);

line[] tang1 = tangents(c, T1);
draw(tang1[0]);
point D = intersectionpoint(tang1[0], line(A,C)); 
// dot("$C$", D);
point E = intersectionpoint(tang1[0], l1); 
// dot("$D$", E);


line s1 = bisector(l1, line(A,C), sharp = false); 
//draw(s1);
line s2 = bisector(line(C,D), line(E,D), sharp = false);
//draw(s2);

point I2 = intersectionpoint(s2,s1); 
dot("$I_2$", I2); 

point AD_foot = foot(I2, A, D); 
real r2 = length(AD_foot - I2);

circle c2 = circle(I2, r2);
draw(c2, black);


// draw(O--E--D, red+linewidth(1.3));
// draw(O--C--D, blue+linewidth(1.3));


// draw(O--E, red+linewidth(1.3)); 
// draw(D--C, red+linewidth(1.3));
// draw(E--D, blue+linewidth(1.3));
// draw(O--C, blue+linewidth(1.3)); 

// draw(O--X, red+linewidth(1.3)); 
// draw(X--D, red+linewidth(1.3));
// draw(D--Y, blue+linewidth(1.3)); 
// draw(Y--O, blue+linewidth(1.3)); 

point C_0 = intersectionpoint(line(Y,D), l1); 
dot("$C$", C_0);
point A_0 = intersectionpoint(line(X,D), l2); 
dot("$A$", A_0); 

draw(A_0 -- Y, blue+linewidth(1.3)); 
draw(A_0 -- X, red+linewidth(1.3)); 
draw(Y--C_0, blue+linewidth(1.3)); 
draw(C_0 -- X, red+linewidth(1.3)); 



