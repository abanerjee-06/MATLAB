function generate_FM(Am,fm,Ac,fc,kf);
t = 0:1/(fc*10):3/fm;
m = Am*cos(2*pi*fm*t);
c = Ac*cos(2*pi*fc*t);
u = Ac*cos(2*pi*fc*t+(kf/fm)*sin(2*pi*fm*t));   % Integrated message and directly put the FM 
subplot(3,1,1);                               % waveform for plotting
plot(t,m);
xlabel("Time(t)");ylabel("m(t)");
title("Message Signal");
subplot(3,1,2);
plot(t,c);
xlabel("Time(t)");ylabel("c(t)");
title("Carrier Signal");
subplot(3,1,3);
plot(t,u);
xlabel("Time(t)");ylabel("u(t)");
title("FM Signal Waveform");
sgtitle("Fig: 6} (a)");
end