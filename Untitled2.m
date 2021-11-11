%% AUDIO TIEMPO REAL
%%
% 
%% Nicolas Arrieta

%% 1. Inicio de Programa
close all;
clear all;
clc;
for n = 1:3
FS = 45000; 
G=audiorecorder(45000,8,1);
recordblocking(G,0.4);
y=getaudiodata(G)';
tiempo = length(y)/FS;
x = 0: 1/FS:tiempo;
plot(x(2:end),y);
end