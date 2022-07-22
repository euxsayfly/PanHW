prediction_model=LTISystem('A',[1 1;0 1],'B',[1;0.5]);
prediction_model.x.min=[-5,-5];
prediction_model.x.max=[5,5];
prediction_model.u.min=-1;
prediction_model.u.max=1;
prediction_model.x.penalty=QuadFunction([1 0;0 1]);
prediction_model.u.penalty=QuadFunction(1);
N=4;
mpc=MPCController(prediction_model,N);
simulation_model=LTISystem('A',[1 1;0.2 1],'B',[1;0.8]);
loop=ClosedLoop(mpc,simulation_model);
x0=[4;0];
Nsim=20;
data=loop.simulate(x0,Nsim);
plot(data.X')