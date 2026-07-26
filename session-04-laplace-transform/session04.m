%% Session 4 - Laplace Transformation
% Signals and Systems Lab - OUSL
% Requires the Symbolic Math Toolbox (MATLAB) for laplace/ilaplace,
% and the Control System Toolbox for step/impulse/bode.

syms t s

%% 1. Forward Laplace transforms
Xt = 2*dirac(t) + exp(-3*t);
Xs = laplace(Xt, t, s);
Xs = simplify(Xs)

Yt = heaviside(t-1) - 2*exp(-t);
Ys = laplace(Yt, t, s);
Ys = simplify(Ys)

%% 2. Inverse Laplace transform
Gs = (10*s^2 + 4) / (s*(s+1)*(s+2)^2);
Gt = ilaplace(Gs, s, t)

%% 3. Step and impulse response
num = [1 1];
den = [1 5 6];
sys = tf(num, den);

figure; step(sys); title('Step response of H(s) = (s+1)/(s^2+5s+6)');
figure; impulse(sys); title('Impulse response of H(s) = (s+1)/(s^2+5s+6)');
% Comment on the response here once observed.

%% 4. Poles and zeros
% (a) (S-2) / ((S+1)^2 + 9)
num_a = [1 -2];
den_a = conv([1 1], [1 1]) + [0 0 9];  % expand (S+1)^2 + 9 manually if needed
% Simpler: define den directly as a polynomial
den_a = [1 2 10];  % (S+1)^2 + 9 = S^2 + 2S + 10
zeros_a = roots(num_a)
poles_a = roots(den_a)

% (b) (S^2+2S+5) / (S*(S^2+4S+13))
num_b = [1 2 5];
den_b = conv([1 0], [1 4 13]);
zeros_b = roots(num_b)
poles_b = roots(den_b)

% (c) (S^2+10S+5) / (S^3+4S^2+10S+6)
num_c = [1 10 5];
den_c = [1 4 10 6];
zeros_c = roots(num_c)
poles_c = roots(den_c)

%% 5. Bode plots
% (a) H(s) = S(S+10) / ((S+20)(S+50))
num_5a = conv([1 0], [1 10]);
den_5a = conv([1 20], [1 50]);
sys_5a = tf(num_5a, den_5a);
figure; bode(sys_5a); title('Bode: S(S+10) / ((S+20)(S+50))');

% (b) H(s) = (S+1) / ((S+2)(S^2+22.5S+16))
num_5b = [1 1];
den_5b = conv([1 2], [1 22.5 16]);
sys_5b = tf(num_5b, den_5b);
figure; bode(sys_5b); title('Bode: (S+1) / ((S+2)(S^2+22.5S+16))');
% Comment on stability from the Bode plot / pole locations here.
