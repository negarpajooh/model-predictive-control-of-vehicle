function [C,D,B,E]=CDBE(params,Fz)
a0=params.a0;a1=params.a1;a2=params.a2;a3=params.a3;
a4=params.a4;a5=params.a5;a6=params.a6;   
C=a0;
D=a1*Fz*Fz+a2*Fz;
B=a3*sin(2*atan(Fz/a4));
B=B/(C*D);
E=a5*Fz+a6;
end