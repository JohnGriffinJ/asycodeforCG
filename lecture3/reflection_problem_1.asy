[asy]

size(300); 
import geometry; 

point A = (0,2); 
point B = (2,1); 

dot("$A$", A); 
dot("$B$", B); 


line l = line((0,0), (1,0)); 
draw(l); 

point P = (.5,0); 
dot("$P$", P,S); 

transform reflect=reflect(l);
point Bp=reflect*B;
draw(segment(B,Bp), dashed, StickIntervalMarker(2,1,black));
markrightangle(B, intersectionpoint(line(B,Bp), l), P);

draw(A--Bp, red); 
draw(A--P, blue); 
draw(B--P, blue); 
draw(Bp--P, blue+dashed); 

point P0 = intersectionpoint(line(A,Bp), l); 
dot("$P_0$", P0, NE,  red); 





dot("$B'$", Bp); 

addMargins(20mm,20mm);




[/asy]
