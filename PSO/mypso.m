%**************************************************************************
%                 Solving TSP Problem Using ACO
% -------------------------------------------------------------------------
% By     : Sutrisno
% Contact: sutrisno_link@yahoo.com             Last update: May 2, 2011
% -------------------------------------------------------------------------                             
% This program is developed to find shortest path (minimum cost)between
% some cities. 
% 
% There are 4  parts in this program:
% 1.Main program of ACO (myaco.m)
% 2.Function to generate solution (ant_tour.m)
% 3.Function to calculate the cost (distance) (calculate_cost.m)
% 4.Function to update the traces (update_the_trace.m)
%**************************************************************************
 
%**************************************************************************
%                   The Program Start Here                    
%*------------------------------------------------------------------------
% function myaco(num_of_nodes,num_of_ants, max_iteration)
function mypso()
global locations n distances
% inputs
miter=500;
nPop=50;
n=100;
% -------------------------------------------------------------------------
% Generate coordinates of cities and plot
load('locations_100.mat', 'locations');

load('usborder.mat','x','y','xx','yy');
%plot(x,y,'Color','red'); hold on;
load('distances_100.mat', 'distances');

%% TSP Using PSO
Range=[0 100];
tic
[BestSol,BestCost]=pso(n,Range,miter,nPop);
timeElapsed = toc
% %%
%% Results

[k,l] = min(BestCost)
min_cost = k
% bestPath = BestSol.Position
% [val,ind]=sort(bestPath);
% path=[ind ind(1)];
% for i=1:(size(path,2))-1
%     X(i)=locations(path(i),1);
%     Y(i)=locations(path(i),2);
% end
% subplot(2,1,1)
% plot(x,y,'Color','red'); hold on;
% % plot(X,Y,'--o',...
% %                 'MarkerEdgeColor','k',...
% %                 'MarkerFaceColor','g',...
% %                 'MarkerSize',10)
% % xlabel('x (km)');ylabel('y (km)');
% % title(['minimum cost (total length)= ',num2str(k)]);
% title(['minimum cost (total length)= ',num2str(k)]);
% for p =1:(size(path,2))-1
% 
% line([X(path(p)) X(path(p+1))], [Y(path(p)) Y(path(p+1))], 'Color','m','LineWidth',1, 'LineStyle','-') 
% arrow([X(path(p)) Y(path(p)) ], [X(path(p+1)) Y(path(p+1)) ])
% end 
% hold on 
% 
% for i2 = 1:n
%  plot(X(i2),Y(i2),'o','LineWidth',1,...
%               'MarkerEdgeColor','k',...
%               'MarkerFaceColor','w',...
%               'MarkerSize',8); 
%           xlabel('X in m')
%           ylabel('Y in m')
%     text(X(i2)+2, Y(i2), num2str(i2),'FontSize',10); 
% hold on
% 
% plot(X(path(1)),Y(path(1)),'o','LineWidth',1,...
%               'MarkerEdgeColor','k',...
%               'MarkerFaceColor','g',...
%               'MarkerSize',10); 
%           xlabel('X in m')
%           ylabel('Y in m')
%           
% 
% end 
% 
% subplot(2,1,2);
% %plot(BestCost,'LineWidth',2);
% semilogy(BestCost,'LineWidth',2);
% xlabel('Iteration');
% ylabel('Best Cost');
% grid on;
%**************************************************************************
%                   Ending of Program                          
%**************************************************************************
