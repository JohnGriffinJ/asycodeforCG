
size(300); 
import olympiad; 
import geometry; 

point A = (-1.55, -1.8); dot("$A$", A); 
point B = (2.16, -1.92); dot("$B$", B); 
point C = (3.76, 1.72);  dot("$C$", C);
point D = (-2.95, 1.84); dot("$D$", D); 

point P = (0.31, 0.19);  dot("$P$", P); 

draw(A--B--C--D--cycle); 
draw(P--A); 
draw(P--B); 
draw(P--C); 
draw(P--D); 

markangle("$\alpha$", line(D,A), line(D,P)); 
markangle("$\beta$", line(C,P), line(C,B)); 
markangle("$\alpha+\beta$", line(P,A), line(P,B)); 



