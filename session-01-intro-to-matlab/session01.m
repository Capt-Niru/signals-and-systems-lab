%% Session 1 - Introduction to MATLAB
% Signals and Systems Lab - OUSL

%% 1. Creating vectors
A = [1 0 4 5 3 9 0 2];
a = [4 5 0 2 0 0 7 1];   % note: MATLAB is case-sensitive, A ~= a

B = [A a]
C = [a, A]

D = zeros(1,50);
E = ones(1,100);
F = 1:30
G = 25:-3:1
H = 0:0.2:2.0

%% 2. Operating with vectors
V1 = [1 2 3 4 5 6 7 8 9 0];
V2 = [0.3 1.2 0.5 2.1 0.1 0.4 3.6 4.2 1.7 0.9];
V3 = [4 4 4 4 3 3 2 2 2 1];

% (a) sums
sum(V1); sum(V2); sum(V3);

% (b) 5th element of each
V1(5); V2(5); V3(5);

% (c) out-of-range indexing (uncomment to see the errors)
% V1(0)
% V1(11)

% (d) sub-vectors
V4 = V2(1:5)
V5 = V2(end-4:end)

% (e) omit / replace an element
V6 = V2; V6(6) = [];
V7 = V2; V7(7) = 1.4;

% (f) odd-position elements
V8 = V2([1 3 5 7 9])

% (g) misc operations - step through and note results
9 - V1
V1 * 5
V1 + V2
V1 - V3
V1 .* V2
% V1 * V2   % dimension mismatch - uncomment to see the error
V1 .^ 2
V1 .^ V3
% V1 ^ V3   % invalid for non-square use - uncomment to see the error
V1 == V3
V1 > 6
V1 > V3
V3 - (V1 > 2)
(V1 > 2) & (V1 < 6)
(V1 > 2) | (V1 < 6)
any(V1)
all(V1)
