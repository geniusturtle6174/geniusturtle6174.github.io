clear all;
close all;

% load('topo.mat','topo','topomap1');img = topo;
img = imread('earth.jpg'); for i=1:3,img(:,:,i)=flipud(img(:,:,i));end

[x,y,z] = sphere(200);

props.FaceColor = 'texturemap'; % 圖形表面使用貼圖
props.EdgeColor = 'none'; % 不顯示邊緣
props.Cdata = img; % 顏色資料
surface(x,y,z,props);
% surf(x,y,z,'Cdata',topo,'FaceColor','texturemap','EdgeColor','none');
view(3); % default 3-D view
axis square off
axis([-1 1 -1 1 -1 1]);
