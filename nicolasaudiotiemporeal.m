%% TRABAJO NOTA 2 - DMTF
%%
% 
%% Nicolas Arrieta

%% 1. Inicio de Programa
close all;
clear all;
clc;
for n = 1:5
frecuencia = 45000; 
audiorecorder=audiorecorder(45000,8,1);
recordblocking(audiorecorder,0.4);
ejey=getaudiodata(audiorecorder)';
tiempo = length(ejey)/frecuencia;
ejex = 0: 1/frecuencia:tiempo;
plot(ejex(2:end),ejey);
end