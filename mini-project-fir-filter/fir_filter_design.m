%% Mini Project - Design of a FIR Digital Filter (Kaiser window method)
% Signals and Systems Lab - OUSL
% Fill in A, B, C from your own index number before running.

A = 0;  % TODO: first digit of index number
B = 0;  % TODO: second digit of index number
C = 0;  % TODO: third digit of index number

Ap  = 0.2 * A;              % max passband ripple (dB)
Aa  = 4 * B;                 % min stopband attenuation (dB)
wp1 = C*100 + 500;           % lower passband edge (rad/s)
wp2 = C*100 + 1000;          % upper passband edge (rad/s)
wa1 = C*100 + 200;           % lower stopband edge (rad/s)
wa2 = C*100 + 1200;          % upper stopband edge (rad/s)
ws  = 2 * (C*100 + 1600);    % sampling frequency (rad/s)

%% Design using Kaiser window (windowing method)
% Convert to normalized frequencies (0 to 1, where 1 = ws/2)
Fs = ws;                     % treat ws as the sampling rate for kaiserord
wp = [wp1 wp2];
wa = [wa1 wa2];

[n, Wn, beta, ftype] = kaiserord([wa1 wp1 wp2 wa2], [0 1 0], ...
    [10^(-Aa/20) (10^(Ap/20)-1)/(10^(Ap/20)+1) 10^(-Aa/20)], Fs);

b = fir1(n, Wn, ftype, kaiser(n+1, beta));

%% (a) Impulse response
figure; impz(b, 1);
title('Impulse response of the designed FIR band-pass filter');

%% (b) Magnitude response over -ws/2 to ws/2
[H, w] = freqz(b, 1, 1024, Fs);
figure; plot(w, 20*log10(abs(H)));
xlabel('Frequency (rad/s)'); ylabel('Magnitude (dB)');
title('Magnitude response, full range');

%% (c) Magnitude response zoomed into the passband
figure; plot(w, 20*log10(abs(H)));
xlim([wp1 wp2]);
xlabel('Frequency (rad/s)'); ylabel('Magnitude (dB)');
title('Magnitude response, passband zoom');

%% Optional: interactive view
% fvtool(b, 1);
