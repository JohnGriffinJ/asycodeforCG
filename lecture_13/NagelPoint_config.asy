
size(400); 
import geometry; 

point A = dir(120); 
point B = dir(210); 
point C = dir(-30); 

triangle t=triangle(A,B,C);
drawline(t, linewidth(bp));
label(t,alignFactor=4);
draw(excircle(t.AB), bp+0.8blue);
draw(excircle(t.BC), bp+0.8blue);
draw(excircle(t.AC), bp+0.8blue);

triangle t_extouch = extouch(t); 
triangle t_intouch = intouch(t); 
circle c_I = incircle(t); 
draw(c_I, red); 

dot(t_extouch, blue); 
dot(t_intouch,red); 

label("$A_1$", "$B_1$", "$C_1$", t_extouch, blue); 
label("$A_2$", "$B_2$", "$C_2$", t_intouch, red); 

draw(A--t_extouch.A, red); 
draw(B--t_extouch.B,red); 
draw(C--t_extouch.C, red); 

dot("$N$", intersectionpoint(line(A,t_extouch.A), line(B,t_extouch.B)), W); 
