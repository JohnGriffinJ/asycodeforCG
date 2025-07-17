

size(300); 
import olympiad; 
import geometry; 

point A = dir(100); 
point B = dir(200); 
point C = dir(-30); 


dot("$A$", A, N); 
dot("$B$", B, SE); 
dot("$C$", C, S); 

draw(line(A,false, B,false)); 
draw(line(B,false,C,false)); 
draw(line(A,false, C,false)); 


point A1 = C + -.4*(C-B); 
dot("$A_1$", A1, NW, red); 
point B1 = C + -.4*(C-A); 
dot("$B_1$", B1, N, red); 
draw(B--B1, red); 
draw(line(A,false,A1,false), red); 
point P = intersectionpoint(line(B,B1), line(A,A1)); 
point C1 = intersectionpoint(line(A,B), line(C,P)); 
dot("$C_1$", C1, NW, red); 
draw(C--C1, red); 
dot("$P$", P, SW, blue); 


addMargins(10mm,10mm);

