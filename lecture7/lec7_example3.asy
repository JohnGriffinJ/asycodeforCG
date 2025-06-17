size(300); 
import olympiad; 
import geometry; 

point A1 = dir(60);
point A2 = dir(30);  
point A3 = dir(0);  
point A4 = dir(-30); 
point A5 = dir(-60); 
point A6 = dir(-90); 
point A7 = dir(-120); 
point A8 = dir(-150); 
point A9 = dir(-180); 
point A10 = dir(-210); 
point A11 = dir(-240); 
point A12 = dir(-270); 

dot("$A_1$", A1,dir(60) ); 
dot("$A_2$", A2,dir(30) ); 
dot("$A_3$", A3, dir(0)); 
dot("$A_4$", A4, dir(-30) ); 
dot("$A_5$", A5,dir(-60) ); 


dot("$A_6$", A6, dir(-90)); 
dot("$A_7$", A7, dir(-120));
dot("$A_8$", A8, dir(-150)); 
dot("$A_9$", A9, dir(-180)); 
dot("$A_{10}$", A10, dir(-210)); 
dot("$A_{11}$", A11, dir(-240)); 
dot("$A_{12}$", A12, dir(-270)); 

point O = (0,0); 

circle c = circle(O, 1); 
draw(c);

draw(A1--A6, red+dashed); 
draw(A2--A9, red+dashed); 
draw(A3--A11, red+dashed); 
