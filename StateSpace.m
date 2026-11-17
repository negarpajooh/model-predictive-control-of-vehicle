function [As,Bs,Cs,Ds]=StateSpace(params,Cf,Cr)
m=params.m;
vx=params.vx;
lf=params.lf;
lr=params.lr;
Iz=params.Iz;
G0=params.G0;
%%
As=zeros(2);
Bu=zeros(2,1);
Bd=zeros(2,1);
Cs=eye(2);

%
As(1,1)=(Cf+Cr)/(m*vx);
As(1,2)=((lf*Cf-lr*Cr)/(m*vx))-vx;
As(2,1)=(lf*Cf-lr*Cr)/(Iz*vx);
As(2,2)=(lf*lf*Cf+lr*lr*Cr)/(Iz*vx);
%
Bu(1,1)=-Cf/m;
Bu(2,1)=-(lf*Cf)/Iz;
%
Bd(2,1)=2*pi*sqrt(G0*vx);
%
Bs=[Bu,Bd];
Ds=zeros(size(Bs,2),size(Cs,1));
%%
As=[-3.785 -19.167
    0.469 0.976];
Bs=[34.409;27.686];
Cs=ones(2);
Ds=zeros(2,1);
end