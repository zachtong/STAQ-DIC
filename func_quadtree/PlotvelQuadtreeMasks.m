function PlotvelQuadtreeMasks(U,V,coordinatesFEM,elementsFEM,CurrentImg,CurrentImgMask,...
    DICpara)
%PLOTVELQUADTREEMASKS: to plot DIC solved displacement components  
%   PlotvelQuadtreeMasks(U,V,coordinatesFEMWorld,elementsFEM,CurrentImg,DICpara)
% ----------------------------------------------
%
%   INPUT: U                    Displacement vector: 
%                               U = [Ux_node1, Uy_node1, Ux_node2, Uy_node2, ... , Ux_nodeN, Uy_nodeN]';
%          V                    Velocity vector:
%                               V = [Vx_node1, Vy_node1, Vx_node2, Vy_node2, ... , Vx_nodeN, Vy_nodeN]';
%          coordinatesFEM       FE mesh coordinates
%          elementsFEM          FE mesh elements
%          CurrentImg           Current deformed image
%          DICpara              DIC paramters
%
%   OUTPUT: Plots of x-displacement field and y-displacement field.
%
% ----------------------------------------------
% Reference
% [1] RegularizeNd. Matlab File Exchange open source. 
% https://www.mathworks.com/matlabcentral/fileexchange/61436-regularizend
% [2] Gridfit. Matlab File Exchange open source. 
% https://www.mathworks.com/matlabcentral/fileexchange/8998-surface-fitting-using-gridfit
% ----------------------------------------------
% Author: Jin Yang.  
% Contact and support: jyang526@wisc.edu -or- aldicdvc@gmail.com
% Last date modified: 2020.12
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%% TODO: %%%%%%%%%%%%

% ====== GE10 First Alex_cav_dic dataset ======
% load('D:\JinYang\MATLAB\2D_ALDIC_v4.2\img_alex_cav\R_data.mat');

% ====== GE10 150um_Top_2Mfps_1 =========
% load('D:\JinYang\MATLAB\2D_ALDIC_v4.2\img_cav_dic\img_cav_70121_DICpaper_150um_Top_2Mfps_1\R_data.mat');
% Rnew([2:6]) = [];
% CircleFitPar(2:6,:) = [];

% ====== GE10 100um_Top_2Mfps_1 =========
% load('D:\JinYang\MATLAB\2D_ALDIC_v4.2\img_cav_70121_DICpaper_100um_Top_2Mfps_1\R_data.mat');
% Rnew([2:6]) = [];
% CircleFitPar(2:6,:) = [];

% ===== GE10 19_53_04 =======
% load('D:\JinYang\MATLAB\2D_ALDIC_v4.2\img_19_53_04\R_data.mat');



% ===== GE4shot1 ========
% load('D:\JinYang\MATLAB\2D_ALDIC_v4.2\img_cav_dic\img_cav_92121_4percent_shot1\R_data.mat');
% Rnew([2:7]) = [];
% CircleFitPar(2:7,:) = [];

% ===== GE6shot3 12_58_29 ========
% load('D:\JinYang\MATLAB\2D_ALDIC_v4.2\img_cav_dic\img_cav_92121_6percent_shot3\R_data.mat');
% Rnew([2:7]) = [];
% CircleFitPar(2:7,:) = [];

% ===== GE10shot1 ========
% load('D:\JinYang\MATLAB\2D_ALDIC_v4.2\img_cav_dic\img_cav_92121_10percent_shot1\R_data.mat');
% Rnew([2:7]) = [];
% CircleFitPar(2:7,:) = [];

% ===== GE14shot1 ========
% load('D:\JinYang\MATLAB\2D_ALDIC_v4.2\img_cav_dic\img_cav_92121_14percent_shot1\R_data.mat');
% Rnew([2:7]) = [];
% CircleFitPar(2:7,:) = [];
 

%% Initialization
warning off; load('./plotFiles/colormap_RdYlBu.mat','cMap');  
% cMap = colormap(parula(128)); cMap = flipud(cMap);
run('./plotFiles/Black_rainbow.m');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% convert pixel unit to the physical world unit %%%%%
try um2px = DICpara.um2px; 
catch um2px = 1;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

OrigDICImgTransparency = DICpara.OrigDICImgTransparency; % Original raw DIC image transparency
Image2PlotResults = DICpara.Image2PlotResults; % Choose image to plot over (first only, second and next images)

disp_u = U(1:2:end); disp_v = U(2:2:end);
vel_x = V(1:2:end); vel_y = V(2:2:end);

coordinatesFEMWorldDef = [coordinatesFEM(:,1)+Image2PlotResults*disp_u, coordinatesFEM(:,2)+Image2PlotResults*disp_v];

%%%%%%%%%%% JY!!!Mask START %%%%%%%%%%%%%%%
% if Image2PlotResults == 1
for tempi = 1:size(coordinatesFEMWorldDef,1)
    try
    if CurrentImgMask( floor(coordinatesFEMWorldDef(tempi,1)/um2px), ...
                        (size(CurrentImgMask,2)+1-ceil(coordinatesFEMWorldDef(tempi,2)/um2px)) ) == 0 
        coordinatesFEMWorldDef(tempi,:) = [nan,nan];
    end
    catch
        coordinatesFEMWorldDef(tempi,:) = [nan,nan];
    end
    
end
% end
%%%%%%%%%%% JY!!!Mask START %%%%%%%%%%%%%%%

  



%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ====== 1) velocity x ======
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fig1=figure; ax1=axes;  
try h1=imshow( flipud(imread(CurrentImg)),'InitialMagnification','fit');
catch h1=surf(  flipud( imread(CurrentImg) ),'EdgeColor','none','LineStyle','none');
end

axis equal; axis tight; box on; set(gca,'fontSize',18); view(2);  set(gca,'ydir','normal');
hold on; ax2=axes; h2=show([],elementsFEM(:,1:4),coordinatesFEMWorldDef/um2px,vel_x,'NoEdgeColor');
set(gca,'fontSize',18); view(2); box on;  
alpha(h2,OrigDICImgTransparency); colormap(cMap); caxis auto; axis equal;  axis tight;  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%% TODO: manually modify colormap and caxis %%%%%%
% colormap(cMap);  caxis([-10,40]); % colormap(jet);  
colormap(black_rainbow); % caxis([0,70]); % caxis([-0.025,0.025]); 
caxis([-1.5,1.5]);
ax1.XTick = [5000,10000,15000]/um2px;
ax1.YTick = [2500,5000,7500,10000]/um2px;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

linkaxes([ax1,ax2]);  % Link axes together
ax2.Visible = 'off'; ax2.XTick = []; ax2.YTick = []; % Hide the top axes
colormap(ax1,'gray'); % Give each one its own colormap
set([ax1,ax2],'Position',[.17 .11 .685 .815]);  
ax1.Visible = 'on'; ax1.TickLabelInterpreter = 'latex'; 
%%%%% convert pixel unit to the physical world unit %%%%%
xticklabels(ax1, num2cell(round(um2px*ax1.XTick*100)/100, length(ax1.XTick) )' );
yticklabels(ax1, num2cell(round(um2px*ax1.YTick*100)/100, length(ax1.YTick) )' );
cb2 = colorbar('Position',[.17+0.685+0.012 .11 .03 .815]); cb2.TickLabelInterpreter = 'latex';


 
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ====== 2) velocity y ======
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fig1=figure; ax1=axes;  
try h1=imshow( flipud(imread(CurrentImg)),'InitialMagnification','fit');
catch h1=surf(  flipud( imread(CurrentImg) ),'EdgeColor','none','LineStyle','none');
end

axis equal; axis tight; box on; set(gca,'fontSize',18); view(2);  set(gca,'ydir','normal');
hold on; ax2=axes; h2=show([],elementsFEM(:,1:4),coordinatesFEMWorldDef/um2px,vel_y,'NoEdgeColor');
set(gca,'fontSize',18); view(2); box on;
alpha(h2,OrigDICImgTransparency); colormap(cMap); caxis auto;  axis equal;  axis tight;   
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%% TODO: manually modify colormap and caxis %%%%%%
% colormap(cMap ); % caxis([-2,2]);   % colormap(jet);  
% caxis([5,12]);
caxis([-1, 0]);  
colormap(black_rainbow); % caxis([-5,5]);
  ax1.XTick = [5000,10000,15000]/um2px; 
ax1.YTick = [2500,5000,7500,10000]/um2px;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

linkaxes([ax1,ax2]);  % Link axes together
ax2.Visible = 'off'; ax2.XTick = []; ax2.YTick = []; % Hide the top axes
colormap(ax1,'gray'); % Give each one its own colormap
set([ax1,ax2],'Position',[.17 .11 .685 .815]);  
ax1.Visible = 'on'; ax1.TickLabelInterpreter = 'latex'; 
%%%%% convert pixel unit to the physical world unit %%%%%
xticklabels(ax1, num2cell(round(um2px*ax1.XTick*100)/100, length(ax1.XTick) )' );
yticklabels(ax1, num2cell(round(um2px*ax1.YTick*100)/100, length(ax1.YTick) )' );
cb2 = colorbar('Position',[.17+0.685+0.012 .11 .03 .815]); cb2.TickLabelInterpreter = 'latex';


%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ====== 3) cone plot ======
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fig1=figure; 
ax1=axes;  
try h1=imshow(  flipud(imread(CurrentImg)),'InitialMagnification','fit');
catch h1=surf(   flipud( imread(CurrentImg) ),'EdgeColor','none','LineStyle','none');
end
set(h1,'AlphaData',0.3);
axis equal; axis tight; box on; set(gca,'fontSize',18); view(2);  set(gca,'ydir','normal');
hold on; ax2=axes; 

Umag_max_input = 2 ; 

h2 = plotCone2( coordinatesFEMWorldDef(:,1)/um2px , coordinatesFEMWorldDef(:,2)/um2px , vel_x, vel_y, Umag_max_input); 
% h2=show([],elementsFEM(:,1:4),coordinatesFEMWorldDef/um2px,vel_y,'NoEdgeColor');
set(gca,'fontSize',18); view(2); box on;   
alpha(h2,0.99); colormap(flipud(parula(128))); caxis([0,Umag_max_input]);  axis equal; axis tight;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%% TODO: manually modify colormap and caxis %%%%%%
% colormap(cMap ); % caxis([-2,2]);   % colormap(jet);  
% caxis([5,12]);
% colormap(turbo(128));  % caxis([-5,5]);
ax1.XTick = [5000,10000,15000]/um2px;
ax1.YTick = [2500,5000,7500,10000]/um2px;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
linkaxes([ax1,ax2]);  % Link axes together
ax2.Visible = 'off'; ax2.XTick = []; ax2.YTick = []; % Hide the top axes
colormap(ax1,'gray'); % Give each one its own colormap
set([ax1,ax2],'Position',[.17 .11 .685 .815]);  
ax1.Visible = 'on'; ax1.TickLabelInterpreter = 'latex'; 
%%%% convert pixel unit to the physical world unit %%%%%
xticklabels(ax1, num2cell(round(um2px*ax1.XTick*100)/100, length(ax1.XTick) )' );
yticklabels(ax1, num2cell(round(um2px*ax1.YTick*100)/100, length(ax1.YTick) )' );
cb2 = colorbar('Position',[.17+0.685+0.012 .11 .03 .815]); cb2.TickLabelInterpreter = 'latex';

 


