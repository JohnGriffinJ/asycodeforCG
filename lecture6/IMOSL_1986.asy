size(300);
import olympiad;
import geometry;

// Triangle vertices
point A = dir(110);
point B = dir(210);
point C = dir(-10);
draw(A--B--C--cycle);

// Use intersection of angle bisectors for concurrency (this point often makes quadrilaterals tangential)
point I = (-.14, .14);
dot("$I$", I, dir(90));

// Points where cevians hit the opposite sides
point D = extension(A, I, B, C);
point E = extension(B, I, C, A);
point F = extension(C, I, A, B);

// Draw cevians
draw(A--D, dashed+blue);
draw(B--E, dashed+blue);
draw(C--F, dashed+blue);

line aux1 = bisector(line(A,I), line(C,I), sharp =false);
//draw(aux1);
line aux2 = bisector(line(I,C), line(A,B), sharp = false);
//draw(aux2);
point I1 = intersectionpoint(aux1, aux2); 
real r1 = length(foot(I1, I, F) - I1);
circle c1 = circle(I1, r1); 
draw(c1);

line aux3 = bisector(line(I,E), line(I,D), sharp = false); 
// draw(aux3); 
line aux4 = bisector(line(D,I), line(B,C), sharp = false);
// draw(aux4);
point I2 = intersectionpoint(aux3, aux4); 
real r2 = length(foot(I2, I, E) - I2); 
circle c2 = circle(I2, r2); 
draw(c2);



// Mark triangle points
dot("$A$", A, dir(110));
dot("$B$", B, dir(210));
dot("$C$", C, dir(-10));
dot("$D$", D, dir(0));
dot("$E$", E, dir(150));
dot("$F$", F, dir(-90));



