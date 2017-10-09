clear all;
close all;

figure;
hold on;

% 以下左右以觀看者為準

% 外圈
hOut = ezplot('1.1*cos(t)','1.1*sin(t)');set(hOut,'color','black','LineWidth',2);set(hOut,'color','black','LineWidth',2);
xOut = get(hOut,'XData');yOut = get(hOut,'YData');fill(xOut,yOut,'blue'); % 填外圈整圈

% 內圈
hIn = ezplot('1.02*cos(t)','0.95*sin(t)-0.15');set(hIn,'color','black','LineWidth',2);
xIn = get(hIn,'XData');yIn = get(hIn,'YData');fill(xIn,yIn,'white'); % 填內圈整圈
h = ezplot('1.02*cos(t)','0.95*sin(t)-0.15',[0.36*pi 0.64*pi]);set(h,'color','white','LineWidth',3); % 外圈重畫(眼睛)
h = ezplot('1.02*cos(t)','0.95*sin(t)-0.15',[0.07*pi 0.14*pi]);set(h,'color','white','LineWidth',3); % 外圈重畫(上嘴唇左邊)
h = ezplot('1.02*cos(t)','0.95*sin(t)-0.15',[0.86*pi 0.93*pi]);set(h,'color','white','LineWidth',3); % 外圈重畫(上嘴唇右邊)

% 眼睛
hEyeLeft = ezplot('0.22*cos(t)-0.22','0.3*sin(t)+0.73');set(hEyeLeft,'color','black','LineWidth',2); % 左眼眶
hEyeRight = ezplot('0.22*cos(t)+0.22','0.3*sin(t)+0.73');set(hEyeRight,'color','black','LineWidth',2); % 右眼眶
xEyeLeft = get(hEyeLeft,'XData');yEyeLeft = get(hEyeLeft,'YData');fill(xEyeLeft,yEyeLeft,'white'); % 填左眼
xEyeRight = get(hEyeRight,'XData');yEyeRight = get(hEyeRight,'YData');fill(xEyeRight,yEyeRight,'white'); % 填右眼
h = ezplot('0.08*cos(t)-0.15','0.08*sin(t)+0.6',[0 pi]);set(h,'color','black','LineWidth',2); % 左眼珠
h = ezplot('0.08*cos(t)+0.15','0.08*sin(t)+0.6',[0 pi]);set(h,'color','black','LineWidth',2); % 右眼珠

% 鼻子
hNose = ezplot('0.096*cos(t)','0.096*sin(t)+0.43');set(hNose,'color','black','LineWidth',2); % 圓圈
xNose = get(hNose,'XData');yNose = get(hNose,'YData');fill(xNose,yNose,'red'); % 填鼻子
line([0 0],[0.11 0.34],'color','black','LineWidth',2); % 中垂線
line([-0.7 -0.2],[0.2 0.2],'color','black','LineWidth',2); % 中間鬍鬚(左)
line([0.7 0.2],[0.2 0.2],'color','black','LineWidth',2); % 中間鬍鬚(右)
line([-0.7 -0.2],[0.37 0.268],'color','black','LineWidth',2); % 上面鬍鬚(左)
line([0.7 0.2],[0.37 0.268],'color','black','LineWidth',2); % 上面鬍鬚(右)
line([-0.7 -0.2],[0.051 0.13],'color','black','LineWidth',2); % 下面鬍鬚(左)
line([0.7 0.2],[0.051 0.13],'color','black','LineWidth',2); % 下面鬍鬚(右)

% 上嘴唇右邊
hMouthUpRight = ezplot('0.16*cos(t)+0.85','0.16*sin(t)+0.114');set(hMouthUpRight,'color','white','LineWidth',2);% 上嘴唇右邊(整圈白線)
xMouthUpRight = get(hMouthUpRight,'XData');yMouthUpRight = get(hMouthUpRight,'YData');fill(xMouthUpRight,yMouthUpRight,'white'); % 填上嘴唇右邊
hMouthUpRight = ezplot('0.16*cos(t)+0.85','0.16*sin(t)+0.114');set(hMouthUpRight,'color','white','LineWidth',2);% 上嘴唇右邊(重畫整圈白線)
hMouthUpRight = ezplot('0.16*cos(t)+0.85','0.16*sin(t)+0.114',[(-2/3)*pi (3/4)*pi]);set(hMouthUpRight,'color','black','LineWidth',2);% 上嘴唇右邊(部分黑線)

% 上嘴唇左邊
hMouthUpLeft = ezplot('0.16*cos(t)-0.85','0.16*sin(t)+0.114');set(hMouthUpLeft,'color','white','LineWidth',2); % 上嘴唇左邊(整圈白線)
xMouthUpLeft = get(hMouthUpLeft,'XData');yMouthUpLeft = get(hMouthUpLeft,'YData');fill(xMouthUpLeft,yMouthUpLeft,'white'); % 填上嘴唇右邊
hMouthUpLeft = ezplot('0.16*cos(t)-0.85','0.16*sin(t)+0.114');set(hMouthUpLeft,'color','white','LineWidth',2); % 上嘴唇左邊(重畫整圈白線)
hMouthUpLeft = ezplot('0.16*cos(t)-0.85','0.16*sin(t)+0.114',[0.25*pi (5/3)*pi]);set(hMouthUpLeft,'color','black','LineWidth',2); % 上嘴唇左邊(部分黑線)

% 上嘴唇其他
hMouthUp = ezplot('1.6*cos(t)','0.9*sin(t)-0.82',[(2/6)*pi (4/6)*pi]);set(hMouthUp,'color','black','LineWidth',2); % 上嘴唇
hMouthDownBig = ezplot('0.8*cos(t)','0.8*sin(t)-0.02',[1.01*pi 1.99*pi]);set(hMouthDownBig,'color','black','LineWidth',2); % 下嘴唇大圓
hMouthDownSmall = ezplot('0.6*cos(t)','0.9*sin(t)-1.2',[0.205*pi 0.795*pi]);set(hMouthDownSmall,'color','black','LineWidth',2); % 下嘴唇小圓

% 填嘴巴(大)
% 大的先填，讓小的把剩下一點點邊界條件蓋過去
xMouthUp = get(hMouthUp,'XData');
yMouthUp = get(hMouthUp,'YData');
xMouthDownBig = get(hMouthDownBig,'XData');
yMouthDownBig = get(hMouthDownBig,'YData');
xMouthDownSmall = get(hMouthDownSmall,'XData');
yMouthDownSmall = get(hMouthDownSmall,'YData');
leaveIdxLeft = find(xMouthDownBig<=min(xMouthDownSmall));
leaveIdxRight = find(xMouthDownBig>=max(xMouthDownSmall));
% xMouthDownBig = xMouthDownBig(leaveIdx);
% yMouthDownBig = yMouthDownBig(leaveIdx);
fill([xMouthUp xMouthDownBig(leaveIdxLeft) xMouthDownSmall xMouthDownBig(leaveIdxRight)],...
     [yMouthUp yMouthDownBig(leaveIdxLeft) yMouthDownSmall yMouthDownBig(leaveIdxRight)],'red');

% 填嘴巴(小)
xMouthDownBig = get(hMouthDownBig,'XData');
yMouthDownBig = get(hMouthDownBig,'YData');
xMouthDownSmall = get(hMouthDownSmall,'XData');
yMouthDownSmall = get(hMouthDownSmall,'YData');
leaveIdx = find(xMouthDownBig>=min(xMouthDownSmall)&xMouthDownBig<=max(xMouthDownSmall));
xMouthDownBig = xMouthDownBig(leaveIdx);
xMouthDownBig = interp1(linspace(0,1,length(xMouthDownBig)),xMouthDownBig,linspace(0,1,length(xMouthDownSmall)));
yMouthDownBig = yMouthDownBig(leaveIdx);
yMouthDownBig = interp1(linspace(0,1,length(yMouthDownBig)),yMouthDownBig,linspace(0,1,length(yMouthDownSmall)));
fill([xMouthDownBig xMouthDownSmall], [yMouthDownBig yMouthDownSmall], [1 0.4 0]);
line([-0.46 0.46],[-0.66 -0.66],'color',[1 0.4 0],'LineWidth',2); % 重畫舌頭

axis([-1.5 1.5 -1 1.5]);
title('');
xlabel('');
ylabel('');

print (gcf, '-dpng', 'doraemon_color.png');
