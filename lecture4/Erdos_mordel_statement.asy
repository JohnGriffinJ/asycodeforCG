[asy]



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
draw(P--A, blue); 
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




[/asy]
