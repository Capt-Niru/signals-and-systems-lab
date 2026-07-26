%% Session 2 - Basic Plotting of Signals
% Signals and Systems Lab - OUSL

%% 1. Plotting continuous-time signals - effect of sampling interval
t = 0:2*pi;        figure; plot(t, sin(t)); title('Coarse: 0:2*pi');
t = 0:0.2:2*pi;     figure; plot(t, sin(t)); title('Medium: 0:0.2:2*pi');
t = 0:0.02:2*pi;    figure; plot(t, sin(t));
title('My Favorite Function');
xlabel('t (Seconds)');
ylabel('y(t)');
axis([0 2*pi -1.2 1.2]);

% Two plots on the same axis
t = 0:0.2:2*pi;
figure; plot(t, sin(t), t, sin(2*t));
title('Overlaid signals');

% Markers only, no connecting line
figure; plot(t, sin(t), '.');

% What does 'r.' do? (red markers)
figure; plot(t, sin(t), t, sin(t), 'r.');

%% 2a. Damped sinusoid sum
t = 0:0.01:20;
X = 10*exp(-0.5*t).*sin(4*pi*t) + 20*exp(-t).*sin(2*pi*t);
figure; plot(t, X);
xlabel('t(s)'); ylabel('Signal X(t)');
title('X(t) = 10e^{-0.5t}sin(4\pi t) + 20e^{-t}sin(2\pi t)');

%% 2b. Step function starting at t = 1
t = -5:0.01:10;
step_signal = (t >= 1);
figure; plot(t, step_signal);
title('Step function starting at t = 1');
xlabel('t (s)'); ylabel('u(t-1)');

%% 2c. Decaying cosine
t = 0:0.01:20;
X2 = exp(-0.2*t) .* cos(0.5*t + 1.2);
figure; plot(t, X2);
title('X(t) = e^{-0.2t}cos(0.5t + 1.2), 0<t<20s');

%% 3. Plotting discrete-time signals
% (a) Piecewise-defined X(n)
n = 0:4;
Xn = zeros(size(n));
Xn(n==0) = 1;
Xn(n==1) = 3;
Xn(n==3) = -2;
Xn(n==4) = 2;
figure; stem(n, Xn);
title('Piecewise X(n)');

% (b) f(n) = A*alpha^n, A=5, alpha=-0.6
n2 = 0:15;
A = 5; alpha = -0.6;
fn = A * alpha.^n2;
figure; stem(n2, fn);
title('f(n) = 5*(-0.6)^n');
