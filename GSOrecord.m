%-----------------GSO.m---------------------------------------------------
% Glowworm swarm optimization (GSO)
% Developed by K.N. Kaipa and D. Ghose in 2005
% This is the main front-end code
%-------------------------------------------------------------------------
% clc; clear all; close all;
tic
global n m A_init A Ell gamma ro step1 r_d r_s VidWrt...
beta r_min n_t Ave_d bound xobs yobs robs xs ys xt yt A_best J best J_best 
m = 6; % No. of dimensions
% Parameter initialization
%-----------------------------------------------
n = 100; % No. of agents
r_s = 10; % Sensor range
r_d = r_s*ones(n,1); % Local decision range
r_min = 0; % Threshold decision range
gamma = 1; % Luciferin enhancement constant
ro = 1; % Luciferin decay constant
step1 = 0.5; % Distance moved by each glowworm when a
% decision is taken
beta = 0.05; % decision range gain
n_t = 4; % Desired no. of neighbors

% Initialization of variables
%---------------------------------------------------
% bounds
% Source
    xs=0;
    ys=1;
    
    % Target (Destination)
    xt=4;
    yt=6;
    
    xobs=[1.5 4.0 1.2];
    yobs=[4.5 3.0 1.5];
    robs=[1.5 1.0 0.8];
%----------------------------------------------------
bound = 6; % Parameter specifying the workspace range
 DeployAgents; % Deploy the glowworms randomly
A=A_init;
Ell = 5*ones(n,1); % Initialization of Luciferin levels
j = 1; % Iteration index
iter = 100; % No. of iterations
Ave_d = zeros(iter,1); % Average distance 

% Main loop
%----------------------------------------------
plotAll;
VidWrt = VideoWriter('myfile.avi');
VidWrt.FrameRate = 4;  % Default 30
VidWrt.Quality = 100;    % Default 75
open(VidWrt);

while (j <= iter)
	UpdateLuciferin; % Update the luciferin levels at glowworms
	% current positions
	Act; % Select a direction and move
    [ww,best]=min(J)
    A_best(j,:)=A(best,:);
   
    plotbestandrecord(A(best,:),j);
    J_best(j)=ww;
	j = j + 1;
	j % Display iteration number
end
close(VidWrt);
figure(2);
plot(J_best)
plotAll;
toc
