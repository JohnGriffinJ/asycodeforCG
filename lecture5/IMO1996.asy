

import olympiad;
import geometry;

size(300);

// Define six points manually, ensuring opposite sides are parallel
pair A = (-6.86,1.12);
pair B = (-6.3,0);
pair C = (-0.5,0);
pair D = (-0.25,.5);
pair E = (-1,2);
pair F = (-6.42,2);

// Draw the hexagon
draw(A--B--C--D--E--F--cycle);

line A_l = line(A, foot(A,B,C));
draw(A_l, dashed+red);
line EF = line(F, false, foot(F,A, A+(0,1) ));
draw(EF, dashed + red);
line CB = line(B, false, foot(B,A,A - (0,1) ));
draw(CB, dashed + red);
line D_l = line(D, foot(D,B,C));
draw(D_l, dashed + red);
line FE = line(E, false,  foot(E,D,D+(0,2) )); 
draw(FE, dashed + red);
line BC = line(C, false, foot(C,D, D-(0,2) ));
draw(BC, dashed+red);

// Label the vertices
dot("$A$", A, W);
dot("$B$", B, S);
dot("$C$", C, S);
dot("$D$", D, SE);
dot("$E$", E, NE);
dot("$F$", F, NW);

label("$a$", midpoint(A--B), SW);
label("$b$", midpoint(B--C), S);
label("$c$", midpoint(C--D), SE); 
label("$d$", midpoint(D--E), NE); 
label("$e$", midpoint(E--F), N);
label("$f$", midpoint(F--A), NW); 

draw(B--D, blue+dashed);
draw(D--F, blue+dashed);
draw(B--F, blue+dashed);

dot("$B'$", B - (.55,0), SW);
dot("$F'$", F - (.435,0), NW);
dot("$E'$", E + (.75,0),NE);
dot("$C'$", C + (.25,0), SE);

draw(rightanglemark(B,B - (.55,0), A));
draw(rightanglemark(A,F - (.435,0), F));
draw(rightanglemark(E, E + (.75,0), D));
draw(rightanglemark(D, C + (.25,0), C, s=5));



