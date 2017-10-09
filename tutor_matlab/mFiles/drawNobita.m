clear all;
close all;

% 左右以觀看者為準

figure;
hold on;

ezplot('cos(t)','sin(t)',[(1/12)*pi (7/4)*pi]); % 鼻子

% 頭
ezplot('10.74*cos(t)+5.2','10.25*sin(t)+1.8',[-0.14*pi 0.8*pi]); % 上
ezplot('11.51*cos(t)+2','7.96*sin(t)+0.9',[0.1*pi 0.66*pi]); % 下
line([12 13], [-2.75 3.5]); % 右側直線

% 嘴巴
ezplot('6.125*cos(t)+2.1','7.125*sin(t)-1.6',[1.1*pi 1.8*pi]); % 下
ezplot('9*cos(t)+1','4.844*sin(t)+0.5',[1.32*pi 1.7*pi]); % 上
ezplot('cos(-0.2*pi)*1.625*cos(t)-sin(-0.2*pi)*3.125*sin(t)+5',...
       'sin(-0.2*pi)*1.625*cos(t)+cos(-0.2*pi)*3.125*sin(t)-6.2',...
       [0.14*pi 0.75*pi]); % 右側
ezplot('cos(0.27*pi)*0.625*cos(t)-sin(0.27*pi)*0.825*sin(t)-3.8',...
       'sin(0.27*pi)*0.625*cos(t)+cos(0.27*pi)*0.825*sin(t)-3',...
       [0.25*pi 1.25*pi]); % 左側
line([-1.6 -1.4], [-4.8 -6.7]); % 左直線
line([2.1 2], [-5 -7.5]); % 中直線
line([5.3 5.1], [-4.8 -6.5]); % 右直線

% 眼睛
ezplot('3.85*cos(t)+5.8','4.2*sin(t)+2.7'); % 右眼鏡
ezplot('cos(-pi/9)*2.73*cos(t)-sin(-pi/9)*3.93*sin(t)-0.7',...
       'sin(-pi/9)*2.73*cos(t)+cos(-pi/9)*3.93*sin(t)+4',...
       [-0.21*pi 1.63*pi]); % 左眼鏡
ezplot('2*cos(t)-1.1','1.5*sin(t)+2.36',[0 (1/3)*pi]); % 左上眼皮
ezplot('0.9*cos(t)','0.6*sin(t)+2.35',[0 (3/4)*pi]); % 左下眼皮
ezplot('cos(t)+3.7','1.4*sin(t)+1.5',[(1/3)*pi 0.9*pi]); % 右上眼皮
ezplot('1.8*cos(t)+3.7','1.4*sin(t)+0.9',[(1/3)*pi (2/3)*pi]); % 右下眼皮
line([9.5 12.1], [1.4 -0.2]); % 右側直線

% 臉
ezplot('cos(-0.1*pi)*3.53*cos(t)-sin(-0.1*pi)*7*sin(t)-6.8',...
       'sin(-0.1*pi)*3.53*cos(t)+cos(-0.1*pi)*7*sin(t)+6',...
       [-0.1*pi 0.15*pi]); % 左眼鏡旁邊
ezplot('9.563*cos(t)+2.77','8.344*sin(t)-2.7',[0.75*pi 1.82*pi]); % 下巴

% 耳朵
ezplot('cos(-0.2*pi)*1.89*cos(t)-sin(-0.2*pi)*3.19*sin(t)+13',...
       'sin(-0.2*pi)*1.89*cos(t)+cos(-0.2*pi)*3.19*sin(t)-5',...
       [-0.54*pi 0.6*pi]); % 下緣
ezplot('cos(-0.17*pi)*2.1*cos(t)-sin(-0.17*pi)*2.25*sin(t)+13.6',...
       'sin(-0.17*pi)*2.1*cos(t)+cos(-0.17*pi)*2.25*sin(t)-4.3',...
       [0.5*pi 0.95*pi]); % 上緣

axis([-10 20 -15 15]);
title('');
xlabel('');
ylabel('');
