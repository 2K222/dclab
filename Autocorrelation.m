clc;
clear all;
close all;
xn=input('Enter the x(n) sequence');
yn=xcorr(xn,xn);
disp('auto correlation of x(n)');
disp(yn);
L=length(xn);
n=0:1:L-1;
subplot(2,1,1);
stem(n,xn);
xlabel('Time index');
ylabel('Amplitude');
title('Input x(n)sequence');
M=length(yn);
n1=0:1:M-1;
subplot(2,1,2);
stem(n1,yn);
xlabel('Time index');
ylabel('Amplitude');
title('Output y(n) sequence');