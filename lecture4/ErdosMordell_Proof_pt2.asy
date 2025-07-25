

import olympiad;
import geometry;

size(300); 

point B = (0,0); 
point A = (1,4); 
point C = (5,0); 

triangle t = triangle(A,B,C);
draw(t); 
label(t);

point P = .5*A + .3*B + .3*C;
dot("$P$", P); 
//draw(P--A, blue); 
draw(P--B, blue); 
draw(P--C, blue); 

transform projBC = projection(B,C);
transform projAC = projection(A,C); 
transform projAB = projection(A,B); 

point Pa = projBC*P; 
point Pb = projAC*P; 
point Pc = projAB*P; 


draw("$p_a$", Pa--P, red+dashed);
draw("$p_b$", Pb--P, red+dashed); 
draw("$p_c$", Pc--P, red+dashed); 

markrightangle(P,Pa,B); 
markrightangle(A,Pb,P); 
markrightangle(P,Pc,A); 

line l = bisector(t.VA); 
draw(l, dashed+purple); 

transform reflectL = reflect(l); 
point P0 = reflectL*P;
dot("$P'$", P0,SW); 

point P0c = projAB*P0; 
point P0b = projAC*P0; 

dot("$F'$", P0c,W); 
dot("$E'$", P0b,NE); 
draw("$p_c'$", P0--P0c, orange + dashed); 
draw("$p_b'$", P0--P0b, orange + dashed); 

markrightangle(P0, P0c, A); 
markrightangle(A,P0b, P0);

draw(segment(P,P0), grey, StickIntervalMarker(2,2,grey));
draw(segment(P,A), StickIntervalMarker(1,1)); 
draw(segment(P0,A), StickIntervalMarker(1,1)); 

