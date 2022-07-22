nvars=13;
lb=-99*ones(1,13);
ub=87*ones(1,13);
[x,y]=ga(@fitness,nvars,[],[],[],[],lb,ub,[],[])