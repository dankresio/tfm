clear all, close all, clc
max_steps = 1000; % N�mero m�ximo de pasos en cada episodio
%% Pruebas numRep
% clear all, close all, clc
numExperiments = 20; % N�mero de experimentos de numRep*numEpisodes episodios
numRep = [10 20 25 30 35 40 45 50 55 60 70 80 90 100 150 200 250 300 350 400 450 500];
numEpisodes = 20;
alphaD = 0.1;
alphaTD = 0.2;
epsilon = 0.1;
rltv_path = 'Resultados DA\Pruebas nRep';
for i = 1:size(numRep,2)
    i
    RL_function(numExperiments, numRep(i), numEpisodes, max_steps, epsilon, alphaD, alphaTD, rltv_path)
end

%% Pruebas numEpi
% clear all, close all, clc
numExperiments = 20; % N�mero de experimentos de numRep*numEpisodes episodios
numRep = 300; % N�mero de repeticiones de cada set de episodios
numEpisodes = [1 10 20 25 30 35 40 45 50 55 60];
alphaD = 0.1;
alphaTD = 0.2;
epsilon = 0.1;
rltv_path = 'Resultados DA\Pruebas nEpi';
for i = 1:size(numEpisodes,2)
    i
    RL_function(numExperiments, numRep, numEpisodes(i), max_steps, epsilon, alphaD, alphaTD, rltv_path)
end

%% Pruebas alphaD
% clear all, close all, clc
numExperiments = 20; % N�mero de experimentos de numRep*numEpisodes episodios
numRep = 300; % N�mero de repeticiones de cada set de episodios
numEpisodes = 20;
alphaD = [3 2 1 0.8 0.6 0.5 0.4 0.2 0.1 0.08 0.05];
alphaTD = 0.2;
epsilon = 0.1;
rltv_path = 'Resultados DA\Pruebas alfaD';
for i = 1:size(alphaD,2)
    i
    RL_function(numExperiments, numRep, numEpisodes, max_steps, epsilon, alphaD(i), alphaTD, rltv_path)
end

%% Pruebas alphaTD
% clear all, close all, clc
numExperiments = 20; % N�mero de experimentos de numRep*numEpisodes episodios
numRep = 300; % N�mero de repeticiones de cada set de episodios
numEpisodes = 20;
alphaD = 0.1;
alphaTD = [0.9 0.8 0.6 0.5 0.4 0.2 0.1 0.08 0.05];
epsilon = 0.1;
rltv_path = 'Resultados DA\Pruebas alfaTD';
for i = 1:size(alphaTD,2)
    i
    RL_function(numExperiments, numRep, numEpisodes, max_steps, epsilon, alphaD, alphaTD(i), rltv_path)
end

%% Pruebas epsilon
% clear all, close all, clc
numExperiments = 20; % N�mero de experimentos de numRep*numEpisodes episodios
numRep = 300; % N�mero de repeticiones de cada set de episodios
numEpisodes = 20;
alphaD = 0.1;
alphaTD = 0.2;
epsilon = [0.01 0.05 0.1 0.15 0.2 0.25 0.3 0.35 0.4 0.45 0.5 0.6 0.7 0.9 1];
rltv_path = 'Resultados DA\Pruebas epsilon';
for i = 1:size(epsilon,2)
    i
    RL_function(numExperiments, numRep, numEpisodes, max_steps, epsilon(i), alphaD, alphaTD, rltv_path)
end