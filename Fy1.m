function Cstar=Fy1(alfa1,B,C,D,E)
%%
dphi2=B*(1-E)+(E/(B*B*alfa1*alfa1+1));
phi2=B*alfa1-E*(B*alfa1-atan(B*alfa1));
dphi1=(C/(phi2*phi2+1))*dphi2;
phi1=C*atan(B*alfa1-E*(B*alfa1-atan(B*alfa1)));
dFy=D*dphi1*cos(phi1);
Cstar=dFy;
end