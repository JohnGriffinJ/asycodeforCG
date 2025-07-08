

import geometry; 
import olympiad; 

point P = dir(-120); 
point Q = dir(-60); 
point O = (0,0); 

circle c = circle(O, 1); 
draw(c); 
dot("$O$", (0,0), N); 

dot(P); 
dot(Q); 

draw(O--P); 
draw(O--Q); 

point M1 = dir(20); 
point M2 = dir(170); 

draw(M1 -- P); 
draw(M1 -- Q); 

draw(M2 -- P); 
draw(M2 -- Q); 

markangle("$\alpha$", P,M1, Q, red); 
markangle("$\alpha$", P,M2,Q, red); 
markangle("$2\alpha$", P,O,Q, red, radius = .5cm); 
