clc;clear;
num=[1];den=[1 0.4 1];
g1=poly2tfd(num,den,0,0);
ny=1;delt=0.5;
pmod=tfd2mod(delt,ny,g1);
A=[1.597,-0.8187;1,0];
B=[0.5;0];
C=[0.2204 0.2145];
D=0;
minfo(1)=0.5;
umod=ss2mod(A,B,C,D,minfo(1));
ywt=[1];uwt=[0.2];
P=10;M=10;
r=[1];
tend=30;
ulim=[];ylim=[];
[y,u]=scmpc(pmod,umod,ywt,uwt,M,P,tend,r,ulim,ylim);
plotall(y,u,delt)
