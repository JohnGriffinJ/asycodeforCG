[asy]
size(300); 
import geometry; 

point O = (0,0); 
dot("$O$", O, N); 

circle c = circle(O, 1); 
draw(c); 


point A = (3,0); 
point X = dir(45); 

dot("$A$", A,N); 
dot("$X$", X,NE); 

line l = line(O,A); 
draw(l); 
point P[] = intersectionpoints(l,c); 
draw(A--X); 
draw(O--X); 
dot("$P$", P[1],NE); 
dot("$B$", P[0],NW); 




[/asy]
