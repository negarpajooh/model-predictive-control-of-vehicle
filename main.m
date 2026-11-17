clear
clc
close all
format long
global Ap Bp Cp Dp
%%
lr=1;lf=.5;m=1818.2;g=10;a0=1.5;a1=0;a2=1050;a3=1200;a4=7;
a5=0;a6=0.2;alfa_r=pi/4;alfa_f=pi/4;betta=pi/2;
vx=3;G0=9.2e-3;
Iz=3885;
%%
params.lr=lr;params.lf=lf;params.m=m;params.g=g;params.a0=a0;
params.a1=a1;params.a2=a2;params.a3=a3;params.a4=a4;
params.a5=a5;params.a6=a6;params.alfa_r=alfa_r;
params.alfa_f=alfa_f;params.Iz=Iz;params.betta=betta;
params.vx=vx;params.G0=G0;
%%
[Fzf,Fzr]=Fz(params);
[Cf,Df,Bf,Ef]=CDBE(params,Fzf);
[Cr,Dr,Br,Er]=CDBE(params,Fzr);
%%
Cf=Fy1(alfa_f,Bf,Cf,Df,Ef);
Cr=Fy1(alfa_r,Br,Cr,Dr,Er);
%% A B C D
[Ap,Bp,Cp,Dp]=StateSpace(params,Cf,Cr);
sys=ss(Ap,Bp,Cp,Dp);
%% ctrb  obsv
zCtrl=ctrb(Ap,Bp);
zObsv=obsv(Ap,Cp);
%
RankAp=rank(Ap);
RankCtrl=rank(zCtrl);
RankObsv=rank(zObsv);
%
mpctool
