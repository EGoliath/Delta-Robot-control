%t=0:0.01:3;
clc
clear
syms t
tin=0;
t2=0.4466;
t3=0.2472;
tf=0;

%Posición 1
tpin=0;
tp2=0;
tp3=0;
tpf=0;

tppin=0;
tpp2=0;
tpp3=0;
tppf=0;

tfinal=3;
p=[1 t t^2 t^3 t^4 t^5 t^6 t^7 t^8 t^9 t^10 t^11];
p_2=diff(p);
p_3=diff(p_2);

b=[tin
   t2
   t3
   tf
   tpin
   tp2
   tp3
   tpf
   tppin
   tpp2
   tpp3
   tppf];
A=[subs(p,0)
   subs(p,tfinal/3)
   subs(p,tfinal*2/3)
   subs(p,tfinal)
   subs(p_2,0)
   subs(p_2,tfinal/3)
   subs(p_2,tfinal*2/3)
   subs(p_2,tfinal)
   subs(p_3,0)
   subs(p_3,tfinal/3)
   subs(p_3,tfinal*2/3)
   subs(p_3,tfinal)];
x=inv(A)*b;

pos=(p*x');


