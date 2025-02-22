clear all, clc

load('sarsa_optimo_randwalk_mod.mat')

% % % REPRESENTACIÓN DE RESULTADOS:
% Resultados obtenidos para numRep experimentos de numEpisodes episodios
Gmean = mean(G,1); % Media de los experimentos realizados
Gmean_eps0 = mean(G_eps0_acumulada,1); % Media de los experimentos realizados cuando epsilon = 0
order = 3; long = 55;
Gsmooth = sgolayfilt(Gmean,order,long);
figure, hold on
% plot((1:numEpisodes), Gmean, 'b', 'LineWidth', 2)
plot((1:numEpisodes), Gsmooth, 'b', 'LineWidth', 2)
% plot((1:numEpisodes), Gmean_eps0, 'g', 'LineWidth', 2)
plot((1:numEpisodes), mean(Gmean_eps0)*ones(size(Gmean_eps0)),'--r', 'LineWidth', 2)
hold off, title(['SARSA - Return per episode (always starting at s=' ,num2str(init_state), ')'])
xlabel('Episode'), ylabel('G')
legend({['E_{exp}[G] || \epsilon=' num2str(epsilon) ' - SARSA'], ['E_{epi}[E_{exp}[G]]=' num2str(mean(Gmean_eps0)) ' || \epsilon=0 - SARSA']},'Location','southeast','FontSize',12)