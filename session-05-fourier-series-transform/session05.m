%% Session 5 - Fourier Series and Fourier Transform
% Signals and Systems Lab - OUSL
% Requires the Symbolic Math Toolbox for fourier/ifourier.

%% 1. Triangular wave Fourier series (truncated)
A = 10; T = 2; w0 = 2*pi/T;
t = -2*T:0.001:2*T;

for N = [3 5 10]
    Xt = A/2 * ones(size(t));
    for n = 1:N
        Xt = Xt - (4*A/pi^2) * (1/(2*n-1)^2) * cos((2*n-1)*w0*t);
    end
    figure; plot(t, Xt);
    title(sprintf('Triangular wave, truncated at N=%d', N));
end

%% 2. Square wave Fourier series (truncated)
for N = [2 5]
    Xt = zeros(size(t));
    for n = 1:N
        Xt = Xt + (4*A/pi^2) * (1/(2*n-1)) * sin((2*n-1)*w0*t);
    end
    figure; plot(t, Xt);
    title(sprintf('Square wave, truncated at N=%d', N));
end

%% 3. Exponential Fourier series line spectrum for f(t) = t, -1<t<1
n3 = -10:10;
Cn = zeros(size(n3));
for i = 1:length(n3)
    nn = n3(i);
    if nn == 0
        Cn(i) = 0;
    else
        Cn(i) = (-1)^nn * (1i / (nn*pi));
    end
end
figure; stem(n3, abs(Cn)); title('Magnitude line spectrum');
figure; stem(n3, angle(Cn)); title('Phase line spectrum');

%% 4. Fourier transform via symbolic toolbox
syms t s w
Xt4 = heaviside(t-2) - exp(-2*t)*heaviside(t);
Xw4 = fourier(Xt4, t, w);
Xw4 = pretty(simplify(Xw4))

%% 5. Inverse Fourier transform
Xw5 = 2*1i*w / (1 + 1i*w);
xt5 = ifourier(Xw5, w, t)

%% 6. Magnitude and phase plot of H(jw)
num6 = [100 0 0];
den6 = [1 25 50 400 6000];
sys6 = tf(num6, den6);
figure; bode(sys6); title('H(j\omega) magnitude & phase');
