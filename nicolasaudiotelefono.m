%% DETECCIÓN TECLA DTMF

%%
%  Jorge Monsalve Loaiza

%%  1. Limpieza
close all;
clear all;
clc;

%%  2. Establecemos variables
tiempo = 2; % Segundos a grabar %
Frec = 44100; % Frecuencia de grabado %
v = audiorecorder(Frec, 24, 1);
v.StartFcn = 'disp(''   iniciando grabación'')';
v.StopFcn = 'disp(''   terminando grabación'')';

%%  3. Grabación del microfono
input ('Para grabar la senal #1 presione [ENTER]');
recordblocking(v, tiempo)
y = v.getaudiodata();
wavwrite (y,Frec,'grabacion1'); % guarda el sonido en formato wav %
which 'grabacion1.wav'
input ('Señal capturada [ENTER] para continuar');

input ('Para grabar la senal #2 presione [ENTER]');
recordblocking(v, tiempo);
x = v.getaudiodata();
wavwrite (x,Frec,'grabacion2');% guarda el sonido en formato wav %
which 'grabacion2.wav'
input ('Señal capturada [ENTER] para continuar');

%%  4. Limpieza y variables
close all;
clear all;
s = audioread('grabacion1.wav');
g = audioread('grabacion2.wav');

%%  5. Normalización de los audios de grabación
s = normalizar(s(1:50000));
vozs = abs(fft (s)); % transformada de fourier %
vozs = vozs.*conj (vozs); % conjugado % 
vozsf = vozs (1:100); % Paso de las Frecuencias por encima de 100 HZ %
vozsfn = vozsf/sqrt(sum (abs (vozsf).^2)); % normalización del vector %

g = normalizar(g(1:50000));
vozg = abs(fft (g)); % transformada de fourier %
vozg = vozg.*conj (vozg); % conjugado % 
vozgf = vozg (1:100); % Paso de las Frecuencias por encima de 100 HZ %
vozgfn = vozgf/sqrt(sum (abs (vozgf).^2)); % normalización del vector %

%%  6. Cargar los audios de muestra
cero = audioread('0.wav');
uno = audioread('1.wav');
dos = audioread('2.wav');
tres = audioread('3.wav');
cuatro = audioread('4.wav');
cinco = audioread('5.wav');
seis = audioread('6.wav');
siete = audioread('7.wav');
ocho = audioread('8.wav');
nueve = audioread('9.wav');
por = audioread('asterisco.wav');
num = audioread('numeral.wav');

%%  7. Normalización de los audios de muestra

% normalizar 0
cero = normalizar(cero(1:50000));
voz0 = abs(fft (cero)); % transformada de fourier %
voz0 = voz0.*conj (voz0); % conjugado % 
voz0f = voz0 (1:100); % Paso de las Frecuencias por encima de 100 HZ %
voz0fn = voz0f/sqrt(sum (abs (voz0f).^2)); % normalización del vector %

% normalizar 1
uno = normalizar(uno(1:50000));
voz1 = abs(fft (uno)); % transformada de fourier %
voz1 = voz1.*conj (voz1); % conjugado % 
voz1f = voz1 (1:100); % Paso de las Frecuencias por encima de 100 HZ %
voz1fn = voz1f/sqrt(sum (abs (voz1f).^2)); % normalización del vector %

% normalizar 2
dos = normalizar(dos(1:50000));
voz2 = abs(fft (dos)); % transformada de fourier %
voz2 = voz2.*conj (voz2); % conjugado % 
voz2f = voz2 (1:100); % Paso de las Frecuencias por encima de 100 HZ %
voz2fn = voz2f/sqrt(sum (abs (voz2f).^2)); % normalización del vector %

% normalizar 3
tres = normalizar(tres(1:50000));
voz3 = abs(fft (tres)); % transformada de fourier %
voz3 = voz3.*conj (voz3); % conjugado % 
voz3f = voz3 (1:100); % Paso de las Frecuencias por encima de 100 HZ %
voz3fn = voz3f/sqrt(sum (abs (voz3f).^2)); % normalización del vector %

% normalizar 4
cuatro = normalizar(cuatro(1:50000));
voz4 = abs(fft (cuatro)); % transformada de fourier %
voz4 = voz4.*conj (voz4); % conjugado % 
voz4f = voz4 (1:100); % Paso de las Frecuencias por encima de 100 HZ %
voz4fn = voz4f/sqrt(sum (abs (voz4f).^2)); % normalización del vector %

% normalizar 5
cinco = normalizar(cinco(1:50000));
voz5 = abs(fft (cinco)); % transformada de fourier %
voz5 = voz5.*conj (voz5); % conjugado % 
voz5f = voz5 (1:100); % Paso de las Frecuencias por encima de 100 HZ %
voz5fn = voz5f/sqrt(sum (abs (voz5f).^2)); % normalización del vector %

% normalizar 6
seis = normalizar(seis(1:50000));
voz6 = abs(fft (seis)); % transformada de fourier %
voz6 = voz6.*conj (voz6); % conjugado % 
voz6f = voz6 (1:100); % Paso de las Frecuencias por encima de 100 HZ %
voz6fn = voz6f/sqrt(sum (abs (voz6f).^2)); % normalización del vector %

% normalizar 7
siete = normalizar(siete(1:50000));
voz7 = abs(fft (siete)); % transformada de fourier %
voz7 = voz7.*conj (voz7); % conjugado % 
voz7f = voz7 (1:100); % Paso de las Frecuencias por encima de 100 HZ %
voz7fn = voz7f/sqrt(sum (abs (voz7f).^2)); % normalización del vector %

% normalizar 8
ocho = normalizar(ocho(1:50000));
voz8 = abs(fft (ocho)); % transformada de fourier %
voz8 = voz8.*conj (voz8); % conjugado % 
voz8f = voz8 (1:100); % Paso de las Frecuencias por encima de 100 HZ %
voz8fn = voz8f/sqrt(sum (abs (voz8f).^2)); % normalización del vector %

% normalizar 9
nueve = normalizar(nueve(1:50000));
voz9 = abs(fft (nueve)); % transformada de fourier %
voz9 = voz9.*conj (voz9); % conjugado % 
voz9f = voz9 (1:100); % Paso de las Frecuencias por encima de 100 HZ %
voz9fn = voz9f/sqrt(sum (abs (voz9f).^2)); % normalización del vector %

% normalizar *
por = normalizar(por(1:50000));
vozpor = abs(fft (por)); % transformada de fourier %
vozpor = vozpor.*conj (vozpor); % conjugado % 
vozporf = vozpor (1:100); % Paso de las Frecuencias por encima de 100 HZ %
vozporfn = vozporf/sqrt(sum (abs (vozporf).^2)); % normalización del vector %

% normalizar #
num = normalizar(num(1:50000));
voznum = abs(fft (num)); % transformada de fourier %
voznum = voznum.*conj (voznum); % conjugado % 
voznumf = voznum (1:100); % Paso de las Frecuencias por encima de 100 HZ %
voznumfn = voznumf/sqrt(sum (abs (voznumf).^2)); % normalización del vector %

%%  8. Diferencias
disp('Diferencias fft')
disp(mean(abs(vozs-vozg)))
disp('Correlacion de Pearson')
disp(corr(vozs,vozg))
disp('Coeficiente de Error  cero:')
comp(1) = mean(abs(vozg-voz0));
disp(comp(1))
disp('Correlacion de Error  uno:')
comp(2) = mean(abs(vozg-voz1));
disp(comp(2))
disp('Correlacion de Error  dos:')
comp(3) = mean(abs(vozg-voz2));
disp(comp(3))
disp('Correlacion de Error  tres:')
comp(4) = mean(abs(vozg-voz3));
disp(comp(4))
disp('Correlacion de Error  cuatro:')
comp(5) = mean(abs(vozg-voz4));
disp(comp(5))
disp('Correlacion de Error  cinco:')
comp(6) = mean(abs(vozg-voz5));
disp(comp(6))
disp('Correlacion de Error  seis:')
comp(7) = mean(abs(vozg-voz6));
disp(comp(7))
disp('Correlacion de Error  siete:')
comp(8) = mean(abs(vozg-voz7));
disp(comp(8))
disp('Correlacion de Error  ocho:')
comp(9) = mean(abs(vozg-voz8));
disp(comp(9))
disp('Correlacion de Error  nueve:')
comp(10) = mean(abs(vozg-voz9));
disp(comp(10))
disp('Correlacion de Error  asterisco:')
comp(11) = mean(abs(vozg-vozpor));
disp(comp(11))
disp('Correlacion de Error  numeral:')
comp(12) = mean(abs(vozg-voznum));
disp(comp(12))
min_comp = min(comp);

%%  9. selección que tecla se marcó
switch min_comp
    case comp(1) 
         disp('tecla: cero')
    case comp(2)
         disp('tecla: uno')
    case comp(3)
         disp('tecla: dos')
    case comp(4)
         disp('tecla: tres')
    case comp(5)
         disp('tecla: cuatro')
    case comp(6) 
         disp('tecla: cinco')
    case comp(7)
         disp('tecla: seis')
    case comp(8)
         disp('tecla: siete')
    case comp(9)
         disp('tecla: ocho')
    case comp(10)
         disp('tecla: nueve')
    case comp(11) 
         disp('tecla: asterisco')
    case comp(12)
         disp('tecla: numeral')
end