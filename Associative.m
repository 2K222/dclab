clc;
clear all;
close all;
xn=input('Enter the x(n) sequence');
h1=input('Enter the h1(n) sequence');
h2=input('Enter the h2(n) sequence');
y1=conv(h1,h2);
LHS=conv(xn,y1);
disp('LHS=');
disp(LHS);
y2=conv(xn,h1);
RHS=conv(y2,h2);
disp('RHS=');
disp(RHS);
L=length(xn);
n=0:1:L-1;
subplot(3,2,1);
stem(n,xn);
xlabel('Time index');
ylabel('Amplitude');
title('Input x(n)sequence');
M=length(h1);
n1=0:1:M-1;
subplot(3,2,2);
stem(n1,h1);
xlabel('Time index');
ylabel('Amplitude');
title('Input h1(n) sequence');
P=length(h2);
n2=0:1:P-1;
subplot(3,2,3);
stem(n2,h2);
xlabel('Time index');
ylabel('Amplitude');
title('Input h2(n) sequence');
Q=length(LHS);
n3=0:1:Q-1;
subplot(3,2,4);
stem(n3,LHS);
xlabel('Time index');
ylabel('Amplitude');
title('LHS sequence');
R=length(RHS);
n4=0:1:R-1;
subplot(3,2,5);
stem(n4,RHS);
xlabel('Time index');
ylabel('Amplitude');
title('RHS sequence');
