%% Session 3 - Convolution
% Signals and Systems Lab - OUSL

%% 1. Convolve two sequences
X1 = [0.2 1.2 2.5 3.2 3.3 8.4];
X2 = [1.0 3.2 3.8 4.2 0.8];
y = conv(X1, X2)

%% 2. Deconvolution - find h[n] given X[n] and Y[n]
Xn = [3 0 2 6];
Yn = [6 10 23 26];
hn = deconv(Yn, Xn)

%% 3. Continuous-time impulse response
t = 0:0.01:20;
h = 0.25 * (exp(-2*t) - exp(-t));

x_cos = cos(t) .* (t >= 0);
x_sin = sin(t) .* (t >= 0);

y_cos = conv(h, x_cos) * (t(2)-t(1));   % scale by dt to approximate the integral
y_sin = conv(h, x_sin) * (t(2)-t(1));

t_out = 0:0.01:(2*max(t));

figure; plot(t_out, y_cos(1:length(t_out)));
xlabel('Time(s)'); ylabel('response.y(t)');
title('Response to cos(t)u(t)');

figure; plot(t_out, y_sin(1:length(t_out)));
xlabel('Time(s)'); ylabel('response.y(t)');
title('Response to sin(t)u(t)');

%% 4. Discrete LTI system, h[n] = (0.6)^n u[n]
n = 0:30;
h_d = (0.6).^n;

x_step = ones(size(n));               % U[n]
x_cos_d = cos(n*pi/6);                % Cos(n*pi/6)*U[n]

y_step = conv(h_d, x_step);
y_cos_d = conv(h_d, x_cos_d);

figure; stem(0:length(y_step)-1, y_step);
title('Response to U[n]');

figure; stem(0:length(y_cos_d)-1, y_cos_d);
title('Response to Cos(n\pi/6)U[n]');
