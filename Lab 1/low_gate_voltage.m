n = 1;
Vtn = 570e-3; %V
Vtp = 710e-3; %V
Lambda = 0.16e-3; %m/V
Bn = 190e-6; % A/V^2;
Bp = 55e-6; % A/V^2;
VT = 26e-3; %V
Vdd=3.3; %V
Is = 2*n*Bn*(VT^2); % A
Vd = 0:0.1:3.3; %V
Vg=0.1;
Vs = 0;
Early = (1 + Lambda * Vd); %Channel-length modulation
iF = (Is*(log(1+exp((Vg-Vtn-n*Vs)/(2*n*VT)))).^2).*Early;
iR = (Is*(log(1+exp((Vg-Vtn-n*Vd)/(2*n*VT)))).^2).*Early;
iD = iF - iR;
plot(Vd,iD); %plots with logarithmic y-axis
ylabel('I_D');
xlabel('V_D_S');
title('Plot of i_D vs v_D_S with v_G_S < V_t_n');