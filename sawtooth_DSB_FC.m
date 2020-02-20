function sawtooth_DSB_FC(Ac,fc);
t = 0:0.000001:0.001;
m = sawtooth(2*pi*10000*t);c = cos(2*pi*fc*t);   % Pre-defined function for sawtooth wave
u = m.*c + Ac*c;          % COnventional AM
subplot(2,1,1);
plot(t,m);
xlabel("Time (t)");ylabel("m(t)");
title("Sawtooth Message Signal");
subplot(2,1,2);
plot(t,u);
xlabel("Time (t)");ylabel("u(t)");
title("Modulated DSB-FC Signal");
sgtitle("Fig: 5} (f)");
end