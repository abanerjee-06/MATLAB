function generate_AM(Am,fm,Ac,fc);
t = 0:0.000001:0.001;            % Basically this is creating the message and carrier
m = Am*cos(2*pi*fm*t);           % signals and generating their waveform. AM in 
c = Ac*cos(2*pi*fc*t);           % generate_DSB function
subplot(2,1,1);
plot(t,m);
xlabel("Time (t)");ylabel("m(t)");
title("Message Signal");
subplot(2,1,2);
plot(t,c);
xlabel("Time (t)");ylabel("c(t)");
title("Carrier Signal");
sgtitle("Fig: 5} (a)");
end