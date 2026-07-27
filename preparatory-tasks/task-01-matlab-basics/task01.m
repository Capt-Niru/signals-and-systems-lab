%% Preparatory Task 1 
% Signals and Systems Lab - OUSL
% Run each section (Ctrl+Enter) and note down the results/explanations.

%% 1. Indexing a matrix
 
a = [1 4 2 4; 7 5 9 2; -5 7 -2 0];

a(2, 3)
a(2, :)
a(6)
a(3, 2:end)
a(1:2, 4:-1:2)
a([2 2], [2 3])
a > 5
sum(a)
a(:)
[a(1,:), a(2,:)]
[a(1,:); a(2,:)]
-----------------------------------done
%% 2. Logical comparisons
a2 = [5 2 3 5 8];
b2 = [9 2 5 0 8];
a2 == 5
a2 == b2

%% 3. zeros/ones concatenation
a3 = [zeros(3); ones(1,3)]
b3 = [zeros(3); ones(3,1)]

%% 4. Colon operator
n = 0:0.5:3.2

%% 5. Deleting an element
n2 = 2:7;
n2(2) = [];
n2

%% 6. Matrix operators: elementwise vs matrix
a6 = [3 4; 7 8];
b6 = [1 0; 0 1];
a6'
a6 - 1
a6 .* b6
a6 * b6
a6 | b6
a6 & b6
a6 .^ 2
a6 ^ 2

%% 7. plot vs stem
n7 = 0:7;
x7 = 2*n7 + 1;
figure; stem(n7, x7); title('stem(n,x)');
figure; plot(n7, x7); title('plot(n,x)');
y7 = (-1).^n7;
figure; plot(n7, x7, n7, y7); title('plot(n,x,n,y)');

%% 8. Convolution intuition
n8 = 0:10;
x8 = (n8 >= 1) - (n8 >= 5);
figure; stem(n8, x8); title('x8');
h8 = (n8 == 5);
y8 = conv(h8, x8);
figure; stem(0:20, y8); title('conv(h,x)');
z8 = conv(x8, x8);
figure; stem(0:20, z8); title('conv(x,x)');
