 function dydl = PbSring3(l,y)
dydl = zeros(5,1);
mu_max=0.4; K_m = 0.4; K1=1.8; K2 = 0.5; K3=0.5; U=0.08;W0=0.5;k=0.2; K_c=6; alpha=6; beta=2.5; delta=0.02; 
gamma1=0.1; gamma2=0.1; gamma3=0.1; gamma4=0.1; gamma5=0.1; m=2; n=2; p=2; Y_XM=40;
X = y(1);
Y = y(2);
Z = y(3);
W = y(4);
V = y(5);

mu = mu_max*Z/(K_m+Z)/(1+(W/K1)^m)*(1-X/K_c);
dydl(1) = (mu*X-gamma1*X)/U;
dydl(2) = (alpha*X/(1+(Z/K2)^n)-beta*X*Y/(K3+Y)*(2*X/K_c)^p -k*W*Y-gamma2*Y)/U;
dydl(3) = (delta*X + beta*X*Y/(K3+Y)*(2*X/K_c)^p - mu*X/Y_XM - gamma3*Z)/U;
dydl(4) = (W0-k*W*Y-gamma4*W)/U;
dydl(5) = (k*W*Y-gamma5*V)/U;
end