zeros = [];
poles = [0 -1 -2];
gain = 1;
G = zpk(zeros,poles,gain)
bode(G); 
[M,P,w]=bode(G)
[Gm,Pm,Wcp,Wcg]=margin(G)
Gm=20*log10(Gm)
T=feedback(G,1)
figure
bode(T);
figure
nichols(G)