[asy]

import geometry; 
import olympiad; 

point P = dir(-120); 
point Q = dir(-60); 
point O = (0,0); 

circle c = circle(O, 1); 
draw(c); 
dot("$O$", (0,0), N); 

dot("$B$", P, SW); 
dot("$C$", Q, SE); 

draw(O--P); 
draw(O--Q); 

point M1 = dir(20); 
dot("$A$", M1, NE); 
point M2 = dir(170); 

draw(M1 -- P); 
draw(M1 -- Q); 

// draw(M2 -- P); 
// draw(M2 -- Q); 
draw(P--Q); 

markangle("$\alpha$", P,M1, Q, red); 
//markangle("$\alpha$", P,M2,Q, red); 
markangle("$\beta$", P,O,Q, red, radius = .5cm); 

draw(O--M1, blue+dotted); 
markangle("$x$", M1,P,O, blue); 
markangle("$y$", O,M1, P, blue, radius = .75cm);
markangle("$z$", M1,Q,O,blue); 


[/asy]
