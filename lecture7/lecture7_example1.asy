size(300); 
import olympiad; 
import geometry; 

point A = (-2, -0.03);
point B = (0.04, 4.3); 
point C = (2.62, -2.42); 
point D = (-3.19, 3.43); 
point E = (3.97, 3.54); 

// dot("$A$", A); 
// dot("$B$", B); 
// dot("$C$", C); 
// dot("$D$", D); 
// dot("$E$", E); 

draw(A--B--C--D--E--A); 

markangle("$\alpha$", line(A,E), line(A,B)); 
markangle("$\beta$", line(B,A), line(B,C), radius = .5cm); 
markangle("$\gamma$", line(C,B), line(C,D)); 
markangle("$\delta$", line(D,C), line(D,E)); 
markangle("$\mu$", line(E,D), line(E,A)); 
