

size(300); 
import olympiad; 
import geometry; 

point A = dir(100); 
point B = dir(200); 
point C = dir(-30); 
point P = dir(0); 

dot("$A$", A, N); 
dot("$B$", B, SW); 
dot("$C$", C, SE); 

draw(A--B--C--cycle); 

point D = B + .25*(C-B); 
dot("$D$", D,S); 
point E = C+.4*(A-C); 
dot("$E$", E); 
point F = A + .6*(B-A); 
dot("$F$", F,NW);

circle c1 = circumcircle(A,F,E); 
circle c2 = circumcircle(B,D,F); 
draw(c1, red); 
draw(c2, red); 

circle c3 = circumcircle(D,C,E); 
draw(c3, red+dashed); 



