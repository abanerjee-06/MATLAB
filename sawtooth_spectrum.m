function sawtooth_spectrum(Ac,fc);
t = 0:0.000001:0.001;
m = sawtooth(2*pi*10000*t);c = cos(2*pi*fc*t);  % Pre-defined for sawtooth wave
v = m.*c;u = v + Ac*c;
V = fft(v);U = fft(u);   % Generating spectrum
subplot(2,1,1);
plot(1:length(V),V);
xlabel("Frequency (f)");ylabel("V(f)");
title("Spectrum of DSB-SC signal of Sawtooth Signal");
subplot(2,1,2);
plot(1:length(U),U);
xlabel("Frequency (f)");ylabel("U(f)");
title("Spectrum of DSB-FC signal of Sawtooth Signal");
sgtitle("Fig: 5} (g)");
end