    clc
clear
%En mimimetros
fa=150
fp=75
La=90
Lb=280+10

%fA Longitud de lado de plataforma fija 
%fP Longitud de lado de plataforma móvil 
%La Longitud del brazo del Robot 
%Lb Longitud del antebrazo del Robot
%Coordenadas de finales 
Py=15
Px=250
Pz=-150

wP =sqrt(3)/6*fp; 
vP =sqrt(3)/3*fp;

wA =sqrt(3)/6*fa;
vA =sqrt(3)/3*fa;

c =wA - vP;
d =fp/2 - sqrt(3)/2*wA;
e =wP - wA/2;

L1=2*La*(Py + c);
M1=2*Pz*La;
N1=Px^2 + Py^2 + Pz^2 + c^2 + La^2 + 2*c*Py - Lb^2;

L2=-La*(sqrt(3)*(Px + d) + Py + e);
M2=2*Pz*La;
N2=Px^2 + Py^2 + Pz^2 + d^2 + e^2 + La^2 + 2*d*Px + 2*e*Py - Lb^2;

L3 = -La*(sqrt(3)*(Px - d) - Py - e);
M3 = 2*Pz*La; 
N3 = Px^2 + Py^2 + Pz^2 + d^2 + e^2 + La^2 -2*d*Px + 2*e*Py - Lb^2;

t1=(-M1-sqrt(L1^2+M1^2-N1^2))/(N1-L1);
t2=(-M2-sqrt(L2^2+M2^2-N2^2))/(N2-L2);
t3=(-M3-sqrt(L3^2+M3^2-N3^2))/(N3-L3);

q1=2*atan(t1);
q2=2*atan(t2);
q3=2*atan(t3);

r1=q1
r=q2
r2=q3