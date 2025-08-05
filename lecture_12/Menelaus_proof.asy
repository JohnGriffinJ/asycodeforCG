
size(300); 
import olympiad; 
import geometry; 

point A = dir(100); 
point B = dir(200); 
point C = dir(-30); 


dot("$A$", A, N); 
dot("$B$", B, SE); 
dot("$C$", C, S); 

draw(line(A,B)); 
draw(line(B,C)); 
draw(line(A,C)); 


point A1 = C + -.3*(C-B); 
dot("$A_1$", A1, S, red); 
point B1 = C + -.1*(C-A); 
dot("$B_1$", B1, N, red); 

line m = line(A1,B1); 
draw(m,red); 

transform proj = projection(A1,B1); 

point C1 = intersectionpoint(m,line(A,B)); 
dot("$C_1$", C1, SE, red); 

point Bp = proj*B; 
point Cp = proj*C; 
point Ap = proj*A; 

dot("$A_p$", Ap, SW); 
dot("$B_p$", Bp, SE); 
dot("$C_p$", Cp, SE); 

draw(B--Bp, blue+dashed); 
draw(A--Ap, blue+dashed); 
draw(C--Cp, blue+dashed); 

markrightangle(B,Bp,C1); 
markrightangle(A,Ap,C1); 
markrightangle(C1,Cp,C); 






addMargins(10mm,10mm);

