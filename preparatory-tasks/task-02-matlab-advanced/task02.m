%% Preparatory Task 2 - Indexing, Complex Numbers, Loops & Convolution
% Signals and Systems Lab - OUSL

%% 1. Indexing & reordering
a = [9 4 7 2; 1 6 3 5; 3 10 6 4];

a(2,3)
% a(0,2)      % invalid index - uncomment to see the error
% a(5)        % linear indexing - uncomment to test
a'
a(:, [2 2 2])
a(1:2:end, 1:2:end)
a(end:-1:1, :)
max(a)
b = a; b([2 3],[1 4]) = [11 22; 33 44]; b
b = a; b(:,2) = []; b
log10([1 10 100 0.1])

%% 2. More comparisons
a2 = [9 4 7 2 8];
a2(2)
a2(1,2)
a2 > 5
find(a2 > 5)
a2 * a2'          % use transpose for a valid inner product
[a2, a2]
[M, k] = min(a2); M, k
a2(1:end-1)
a2([1 1 1], :)

%% 3. Complex numbers
a3 = [1+1i, 1+2i, 3, 4, 5i];
k3 = find(imag(a3) == 0);
a3(k3)

%% 4. Building a vector with a loop
a4 = [];
for k = 5:-1:2
    a4 = [a4, k];
end
a4

%% 5. Convolution
a5 = [-2 3];
b5 = [4 2 -1];
conv(a5, b5)

%% 6. Sketching from a fragment
n6 = 2:0.5:4;
x6 = [3 1 2 0 3];
figure; plot(n6, x6); title('plot(n,x)');
figure; plot(x6); title('plot(x)');
figure; stem(n6, x6); title('stem(n,x)');
