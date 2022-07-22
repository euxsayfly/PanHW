clc,clear;
close all;
g11=poly2tfd([12.8],[16.7 1],0,1);
g12=poly2tfd([6.6],[10.9 1],0,7);
g21=poly2tfd([-18.9],[21 1],0,3);
g22=poly2tfd([-19.4],[14.4 1],0,3);
delt=3;
ny=2;
tfinal=90;
model=tfd2step(tfinal,delt,ny,g11,g12,g21,g22);
plant=model;
p=6;m=2;
ywt=[];uwt=[];
r=[1 1];
tend=30;
ulim=[-0.1 -0.1 0.55 0.5 0.1 100];
ylim=[];
[y,u,ym]=cmpc(plant,model,ywt,uwt,m,p,tend,r,ulim,ylim);
plotall(y,u,delt)