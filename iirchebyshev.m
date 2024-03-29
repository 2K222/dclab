clc;
clear all;
close all;
ap=input('Enter the passband attenuation');
as=input('Enter the stopband attenuation');
wp=input('Enter the passband frequency');
ws=input('Enter the stopband frequency');
wsp=input('Enter the sampling frequency');
op=2*pi*wp/wsp;
os=2*pi*ws/wsp;
pop=2*tan(op/2);
pos=2*tan(os/2);
[N,wc]=cheb1ord(pop,pos,ap,as,'s');
[b,a]=cheby1(N,ap,wc,'s');
fs=1;
[nr,dr]=bilinear(b,a,fs);
[m,freq1]=freqz(nr,dr,128);
mag=20*log10(abs(m));
plot(wsp*freq1/(2*pi),mag);
title('Frequency response');