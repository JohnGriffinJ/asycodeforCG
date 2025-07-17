
size(400); 
import geometry; 

point A = dir(120); 
point B = dir(210); 
point C = dir(-30); 

triangle t=triangle(A,B,C);
drawline(t, linewidth(bp));
label(t,alignFactor=4);

triangle t_intouch = intouch(t); 
circle c_I = incircle(t); 
draw(c_I, blue); 


dot(t_intouch,red); 

label("$A_1$", "$B_1$", "$C_1$", t_intouch, red); 

draw(A--t_intouch.A, red); 
draw(B--t_intouch.B, red); 
draw(C--t_intouch.C, red); 

point Ge = gergonne(t);

dot("$G_e$", Ge, dir(190)); 


