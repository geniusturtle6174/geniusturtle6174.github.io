clear all;
close all;

figure;
hold on;

% 以下左右以觀看者為準

% 外圈
hOut = ezplot('1.1*cos(t)','1.1*sin(t)');set(hOut,'color','black','LineWidth',2);set(hOut,'color','black','LineWidth',2);

% 內圈
hIn = ezplot('1.02*cos(t)','0.95*sin(t)-0.15',[0.14*pi 0.36*pi]);set(hIn,'color','black','LineWidth',2); % 上右段
hIn = ezplot('1.02*cos(t)','0.95*sin(t)-0.15',[0.64*pi 0.86*pi]);set(hIn,'color','black','LineWidth',2); % 上左段
hIn = ezplot('1.02*cos(t)','0.95*sin(t)-0.15',[-1.07*pi 0.07*pi]);set(hIn,'color','black','LineWidth',2); % 下段

% 眼睛
hEyeLeft = ezplot('0.22*cos(t)-0.22','0.3*sin(t)+0.73');set(hEyeLeft,'color','black','LineWidth',2); % 左眼眶
hEyeRight = ezplot('0.22*cos(t)+0.22','0.3*sin(t)+0.73');set(hEyeRight,'color','black','LineWidth',2); % 右眼眶
h = ezplot('0.08*cos(t)-0.15','0.08*sin(t)+0.6',[0 pi]);set(h,'color','black','LineWidth',2); % 左眼珠
h = ezplot('0.08*cos(t)+0.15','0.08*sin(t)+0.6',[0 pi]);set(h,'color','black','LineWidth',2); % 右眼珠

% 鼻子
hNose = ezplot('0.096*cos(t)','0.096*sin(t)+0.43');set(hNose,'color','black','LineWidth',2); % 圓圈
line([0 0],[0.11 0.34],'color','black','LineWidth',2); % 中垂線
line([-0.7 -0.2],[0.2 0.2],'color','black','LineWidth',2); % 中間鬍鬚(左)
line([0.7 0.2],[0.2 0.2],'color','black','LineWidth',2); % 中間鬍鬚(右)
line([-0.7 -0.2],[0.37 0.268],'color','black','LineWidth',2); % 上面鬍鬚(左)
line([0.7 0.2],[0.37 0.268],'color','black','LineWidth',2); % 上面鬍鬚(右)
line([-0.7 -0.2],[0.051 0.13],'color','black','LineWidth',2); % 下面鬍鬚(左)
line([0.7 0.2],[0.051 0.13],'color','black','LineWidth',2); % 下面鬍鬚(右)

% 上嘴唇右邊
hMouthUpRight = ezplot('0.16*cos(t)+0.85','0.16*sin(t)+0.114',[(-2/3)*pi (3/4)*pi]);set(hMouthUpRight,'color','black','LineWidth',2);% 上嘴唇右邊(整圈白線)

% 上嘴唇左邊
hMouthUpLeft = ezplot('0.16*cos(t)-0.85','0.16*sin(t)+0.114',[0.25*pi (5/3)*pi]);set(hMouthUpLeft,'color','black','LineWidth',2); % 上嘴唇左邊(整圈白線)

% 上嘴唇其他
hMouthUp = ezplot('1.6*cos(t)','0.9*sin(t)-0.82',[(2/6)*pi (4/6)*pi]);set(hMouthUp,'color','black','LineWidth',2); % 上嘴唇
hMouthDownBig = ezplot('0.8*cos(t)','0.8*sin(t)-0.02',[1.01*pi 1.99*pi]);set(hMouthDownBig,'color','black','LineWidth',2); % 下嘴唇大圓
hMouthDownSmall = ezplot('0.6*cos(t)','0.9*sin(t)-1.2',[0.205*pi 0.795*pi]);set(hMouthDownSmall,'color','black','LineWidth',2); % 下嘴唇小圓

axis([-1.5 1.5 -1 1.5]);
title('');
xlabel('');
ylabel('');
