
close all;
clear all;
clc;

ti = 2;
Fs = 44100;
v = audiorecorder(Fs, 24, 1);
v.StartFcn = 'disp(''   iniciando grabaci?n'')';
v.StopFcn = 'disp(''   terminando grabaci?n'')';

input ('Presione enter para grabar la primera senal'); 
recordblocking(v, ti)
y = v.getaudiodata();
wavwrite (y,Fs,'grabacion1'); 
which 'grabacion1.wav'
input ('Señal capturada');

input ('Presione enter para grabar la se?al');
recordblocking(v, ti);
x = v.getaudiodata();
wavwrite (x,Fs,'grabacion2');
which 'grabacion2.wav'
input ('Se?al capturada');

%% 4. Verificar audio

input ('Presione enter para escuchar la primera grabacion');
sound(y,Fs);

input('Presione enter para escuchar la segunda grabacion'); 
sound(x,Fs);

close all;
clear all;

s = audioread('grabacion1.wav');
g = audioread('grabacion2.wav');

s = normalizar(s(1:50000));
voz1 = abs(fft (s));
voz1 = voz1.*conj (voz1);
voz1f = voz1 (1:100);
voz1fn = voz1f/sqrt(sum (abs (voz1f).^2));

g = normalizar(g(1:50000));
voz2 = abs(fft (g));
voz2 = voz2.*conj (voz2); 
voz2f = voz2 (1:100);
voz2fn = voz2f/sqrt(sum (abs (voz2f).^2)); 
n0 = audioread('0.wav');
n1 = audioread('1.wav');
n2 = audioread('2.wav');
n3 = audioread('3.wav');
n4 = audioread('4.wav');
n5 = audioread('5.wav');
n6 = audioread('6.wav');
n7 = audioread('7.wav');
n8 = audioread('8.wav');
n9 = audioread('9.wav');
por = audioread('asterisco.wav');
num = audioread('numeral.wav');
n0 = normalizar(n0(1:50000));
n0c = abs(fft (n0)); 
n0c = n0c.*conj (n0c);
n0cf = n0c (1:100);
n0cfn = n0cf/sqrt(sum (abs (n0cf).^2));
n1 = normalizar(n1(1:50000));
n1c = abs(fft (n1));
n1c = n1c.*conj (n1c);
n1cf = n1c (1:100);
n1cfn = n1cf/sqrt(sum (abs (n1cf).^2));
n2 = normalizar(n2(1:50000));
n2c = abs(fft (n2));
n2c = n2c.*conj (n2c); 
n2cf = n2c (1:100);
n2cfn = n2cf/sqrt(sum (abs (n2cf).^2));
n3 = normalizar(n3(1:50000));
n3c = abs(fft (n3));
n3c = n3c.*conj (n3c);
n3cf = n3c (1:100);
n3cfn = n3cf/sqrt(sum (abs (n3cf).^2));
n4 = normalizar(n4(1:50000));
n4c = abs(fft (n4));
n4c = n4c.*conj (n4c);
n4cf = n4c (1:100); 
n4cfn = n4cf/sqrt(sum (abs (n4cf).^2)); 
n5 = normalizar(n5(1:50000));
n5c = abs(fft (n5));
n5c = n5c.*conj (n5c);
n5cf = n5c (1:100);
n5cfn = n5cf/sqrt(sum (abs (n5cf).^2));

n6 = normalizar(n6(1:50000));
n6c = abs(fft (n6));
n6c = n6c.*conj (n6c); 
n6cf = n6c (1:100);
n6cfn = n6cf/sqrt(sum (abs (n6cf).^2));

n7 = normalizar(n7(1:50000));
n7c = abs(fft (n7));
n7c = n7c.*conj (n7c); 
n7cf = n7c (1:100);
n7cfn = n7cf/sqrt(sum (abs (n7cf).^2));

n8 = normalizar(n8(1:50000));
n8c = abs(fft (n8)); 
n8c = n8c.*conj (n8c);
n8cf = n8c (1:100);
n8cfn = n8cf/sqrt(sum (abs (n8cf).^2));

n9 = normalizar(n9(1:50000));
n9c = abs(fft (n9));
n9c = n9c.*conj (n9c);
n9cf = n9c (1:100); 
n9cfn = n9cf/sqrt(sum (abs (n9cf).^2));
por = normalizar(por(1:50000));
porc = abs(fft (por));
porc = porc.*conj (porc);
porcf = porc (1:100);
porcfn = porcf/sqrt(sum (abs (porcf).^2));

num = normalizar(num(1:50000));
numc = abs(fft (num));
numc = numc.*conj (numc);
numcf = numc (1:100);
numcfn = numcf/sqrt(sum (abs (numcf).^2)); 
disp(mean(abs(voz1 - voz2)))
disp(corr(voz1,voz2))
disp('0')
error(1) = mean(abs(voz2 - n0c));
disp(error(1))
disp('1')
error(2) = mean(abs(voz2 - n1c));
disp(error(2))
disp('2')
error(3) = mean(abs(voz2 - n2c));
disp(error(3))
disp('3')
error(4) = mean(abs(voz2 - n3c));
disp(error(4))
disp('4')
error(5) = mean(abs(voz2 - n4c));
disp(error(5))
disp('5')
error(6) = mean(abs(voz2 - n5c));
disp(error(6))
disp('6')
error(7) = mean(abs(voz2 - n6c));
disp(error(7))
disp('7')
error(8) = mean(abs(voz2 - n7c));
disp(error(8))
disp('8')
error(9) = mean(abs(voz2 - n8c));
disp(error(9))
disp('9')
error(10) = mean(abs(voz2 - n9c));
disp(error(10))

min_error = min(error);

switch min_error
    
   case error(1) 
        disp('tecla: cero')
   case error(2)
        disp('tecla: uno')
   case error(3)
        disp('tecla: dos')
   case error(4)
        disp('tecla: tres')
   case error(5)
        disp('tecla: cuatro')
   case error(6)
        disp('tecla: cinco')
   case error(7)
        disp('tecla: seis')
   case error(8)
        disp('tecla: siete')
   case error(9)
        disp('tecla: ocho')
   case error(10)
        disp('tecla: nueve')
end
