
size(300); 
import olympiad; 
import geometry; 

point A = (-0.64, 0.16); 
point B = (-2.02, -1.35); 
point C = (0.02, -1.24); 
point D = (0.46, -0.15); 

dot("$A$", A); 
dot("$B$", B); 
dot("$C$", C); 
dot("$D$", D); 

point E = intersectionpoint(line(A,B), line(C,D)); 
dot("$E$", E); 
point F = intersectionpoint(line(A,D), line(B,C)); 
dot("$F$", F); 

point G = (-1.1, -.35); 
point H = (-.97, -1.29); 

draw(A--B--C--D--cycle); 

draw(E--H); 
draw(F--G); 
draw(A--E); 
draw(D--E); 
draw(D--F); 
draw(C--F); 

line ax1 = bisector(line(A,D), line(A,B), sharp = false); 
// draw(ax1); 
line ax2 = bisector(line(F,G), line(A,B)); 
// draw(ax2); 
point I = intersectionpoint(ax1, ax2); 
dot("$I$", I); 
circle c1 = circle(I, length(I - foot(I,A,D))); 
draw(c1, blue); 

line ax3 = bisector(line(C,B), line(C,D), false);
//draw(ax3); 
line ax4 = bisector(line(E,H), line(B,C)); 
//draw(ax4); 
point J = intersectionpoint(ax3, ax4); 
dot("$J$", J); 
circle c2 = circle(J, length(J - foot(J, B,C))); 
draw(c2, blue); 

// point J = intersectionpoint(bisector(D,C,B), bisector(C,H, E)); 
// dot("$J$", J); 




