[asy]

size(300); 
import geometry;

point O = (0,0); 

circle c = circle(O,1); 

draw(c); 
point P = dir(-40); 

line l = tangent(c,P); 


draw(l); 

dot("$O$", O,NW); 

dot("$P$", P); 
draw(O--P); 
vector w=-P; 
vector w0 = rotate(-90)*w;
//show("$\vec{w}$", w0, linewidth(bp), Arrow(3mm));
point Q = P + w0; 
// dot("$Q$", Q); 
markrightangle(Q,P,O); 


addMargins(20mm,20mm);



[/asy]
