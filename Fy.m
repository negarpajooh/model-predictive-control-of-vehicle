function Cstar=Fy(alfa1,B,C,D,E)
%%
syms alffa
Fy1=D*sin(C*atan(B*alffa-E*(B*alffa-atan(B*alffa))));
%%
CstarR1=diff(Fy1,alffa);
%
Cstar=subs(CstarR1,alffa,alfa1);
Cstar=double(Cstar);
% Cstar=vpa(Cstar);
end
