function FM_Demod(Am,fm,Ac,fc,kf);
t = 0:1/(fc*10):3/fm;             % Passing the received FM waveform through crude 
m = Am*cos(2*pi*fm*t);            % discriminator containing differentiator, envelope 
c = Ac*cos(2*pi*fc*t);            % detector and DC BLock
u = Ac*cos(2*pi*fc*t+(1000/fm)*sin(2*pi*fm*t));
u_d = diff(u);u_d = [u_d 0];    % Differentiation for getting rectified FM signal
ud1 = hilbert(u_d);             % Envelope Detection
m_r = abs(ud1) - mean(abs(ud1)); % DC BLock
subplot(2,1,1);
plot(t,u_d);
xlabel("Time (t)");ylabel("u_{diff} (t)");
title("Rectified FM signal");
subplot(2,1,2);
plot(t,m_r);
xlabel("Time (t)");ylabel("m_{recovered} (t)");
title("Recovered Message Signal");
sgtitle("Fig: 6} (b)");
figure;
subplot(2,2,1);
plot(abs(fftshift(fft(m))));
xlabel("Frequency (f)");ylabel("M(f)");
title('Spectrum of Message Signal');
subplot(2,2,2);
plot(abs(fftshift(fft(u))));
xlabel("Frequency(f)");ylabel("U(f)");
title("Spectrum of FM Signal");
subplot(2,2,3);
plot(abs(fftshift(fft(u_d))));
xlabel("Frequency(f)");ylabel("U_{rec} (f)");
title("Spectrum of FM Rectified Signal");
subplot(2,2,4);
plot(abs(fftshift(fft(m_r))));
xlabel("Frequency(f)");ylabel("M_{rec} (f)");
title("Spectrum of Recovered Signal");
sgtitle("Fig: 6} (c)");
end