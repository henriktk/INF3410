n = 1;
Vtn = 570e-3; %V
Vtp = 710e-3; %V
Lambda = 0.16e-3; %m/V
Bn = 190e-6; % A/V^2;
Bp = 55e-6; % A/V^2;
VT = 26e-3; %V
Vdd=3.3; %V
Is = 2*n*Bn*(VT^2); % A
Vd = Vdd; %V
Early = (1 + Lambda * Vd); %Channel-length modulation
Vg=0:0.01:3.3;
Vs = 0;
iF = (Is*(log(1+exp((Vg-Vtn-n*Vs)/(2*n*VT)))).^2)*Early;
iR = (Is*(log(1+exp((Vg-Vtn-n*Vd)/(2*n*VT)))).^2)*Early;
iD = iF - iR;
plot(Vg,iD); %plots with linear y-axis
ylabel('I_D');
xlabel('V_G_S');
title('Plot of i_D vs v_G_S with linear y-axis');