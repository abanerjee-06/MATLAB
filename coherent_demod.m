function coherent_demod(Am,fm,fc);
t = 0:0.000001:0.001;
m = Am*cos(2*pi*fm*t);
u = m.*(cos(2*pi*fc*t));
u = u.*(2*(cos(2*pi*fc*t)));      % Applying coherent demodulation
[b,a] = butter(6,2*fm/fc);        % Creating low pass filter
v = filter(b,a,u);
subplot(2,1,1);
plot(t,m);
xlabel("Time(t)");ylabel("m(t)");
title("Original Message Signal");
subplot(2,1,2);
plot(t,v);
xlabel("Time(t)");ylabel("v(t)");
title("Signal after Coherent Demodulation");
sgtitle("Fig: 5} (c)");
end