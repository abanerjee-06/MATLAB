function generate_DSB(Am,fm,fc);
t = 0:0.000001:0.001;
m = Am*cos(2*pi*fm*t);
c = cos(2*pi*fc*t);
u = m.*c;U = fft(u,2000);U = real(U);
[a,b] = envelope(u);      % Using pre-defined function for envelope
f = -0.5*length(U):0.5*length(U)-1;     % Basically apllying fftshift but by changing frequency axis
subplot(2,1,1);
plot(t,u);
xlabel("Time (t)");ylabel("u(t)");
title("DSB Signal in Time Domain");
hold on;plot(t,a,'r');plot(t,b,'m');hold off;
subplot(2,1,2);
plot(f,U(f+0.5*length(U)+1));
xlabel("Frequency (f)");ylabel("U(f)");
title("DSB Signal Spectrum");
sgtitle("Fig: 5} (b)");
end
