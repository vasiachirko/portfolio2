Fs = 16000            % Sampling frequency                    
T = 1/Fs             % Sampling period       
L = 4000;             % Length of signal
t = (0:L-1)*T;        % Time vector
%S(L) = 0
%S(700) = 1000% data-data1%0.7*sin(2*pi*50*t) + sin(2*pi*120*t);2574 1587
S = data 
% X = S + 2*randn(size(t));
% 
% plot(1000*t(1:50),X(1:50))
% title('Signal Corrupted with Zero-Mean Random Noise')
% xlabel('t (milliseconds)')
% ylabel('X(t)')

Y = fft(S);

P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);

f = Fs*(0:(L/2))/L;

plot(f,P1) 
title('Single-Sided Amplitude Spectrum of X(t)')
xlabel('f (Hz)')
ylabel('|P1(f)|')
%axis([120 3000 -0.0001 0.004])

%max1 = max(P1(100:500));
% for i = (100:500)
%     if P1(i) == max1 & max1 > 10^-5 
%         %imax = i
%     end
% end
% max1
% imax