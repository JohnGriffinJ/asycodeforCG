
size(300); 
import olympiad; 
import geometry; 

point A = (-3.08, -2.64); dot("$A$", A); 
point B = (4.03,-2.47); dot("$B$", B); 
point C = (2.77, 3.92);  dot("$C$", C);
point D = (-2.17,3.35); dot("$D$", D); 

point P = (0.19, 2.06);  dot("$P$", P); 

draw(A--B--C--D--cycle); 
draw(P--A); 
draw(P--B); 
draw(P--C); 
draw(P--D); 

line l1 = bisector(line(D,A), line(D,P)); 
draw(l1, blue+dashed); 
line l2 = bisector(line(C,P), line(C,B)); 
draw(l2, blue+dashed); 

line l3 = bisector(segment(A,B)); 
draw(l3, blue+dashed); 
point A0 = intersectionpoint(l3, line(A,B)); 
point A1 = intersectionpoint(l3,line(C,D)); 
markrightangle(A1,A0,A, 6); 
markangle(2, line(D,A), l1); 
markangle(2, l1, line(D,P), radius = 20);
markangle(1, l2, line(C,B), radius = 20); 
markangle(1, line(C,P), l2);
