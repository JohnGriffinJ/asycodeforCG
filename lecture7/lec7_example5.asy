

size(300); 
import olympiad; 
import geometry; 

point A = dir(100); 
point B = dir(200); 
point C = dir(-30); 
point P = dir(0); 

dot("$A$", A); 
dot("$B$", B); 
dot("$C$", C, S); 
dot("$P$", P); 


circle c = circle(A,B,C); 
draw(c); 
draw(A--B--C--cycle); 

draw(P -- foot(P,A,B), blue ); 
draw(P -- foot(P,B,C), blue ); 
draw(P -- foot(P,A,C), blue ); 
dot(foot(P,A,B)); 
dot(foot(P,B,C)); 
dot(foot(P,A,C)); 
draw(line(B,false, C)); 

markrightangle(P, foot(P,A,B), A); 
markrightangle(P, foot(P,A,C), A); 
markrightangle(P,foot(P,B,C), C); 

draw(line(foot(P,A,B), foot(P,B,C) ), red+dashed); 




