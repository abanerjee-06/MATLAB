function coherent_demod_offset(Am,fm,fc);
t = 0:0.000001:0.001;
m = Am*cos(2*pi*fm*t);
u = m.*(cos(2*pi*fc*t));
u1 = u.*(2*(cos(2*pi*(fc+100)*t)));    % Doing coherent demodulation for three 
u2 = u.*(2*(cos(2*pi*(fc-100)*t+pi/4))); % different cases of frequency and phase offsets
u3 = u.*(2*(cos(2*pi*fc*t+pi/2)));
[b,a] = butter(6,2*fm/fc);          % Applying lowpass filter
v1 = filter(b,a,u1);
v2 = filter(b,a,u2);
v3 = filter(b,a,u3);
subplot(3,1,1);
plot(t,v1);
xlabel("Time(t)");ylabel("v_{1}(t)");
title(['Coherent Demodulation with Freq Offset = ',num2str(100),' and Phase Offset = ',num2str(0)]);
subplot(3,1,2);
plot(t,v2);
xlabel("Time(t)");ylabel("v_{2}(t)");
title(['Coherent Demodulation with Freq Offset = ',num2str(-100),' and Phase Offset = ',num2str(pi/4)]);
subplot(3,1,3);
plot(t,v3);
xlabel("Time(t)");ylabel("v_{3}(t)");
title(['Coherent Demodulation with Freq Offset = ',num2str(0),' and Phase Offset = ',num2str(pi/2)]);
sgtitle("Fig: 5} (d)");
end