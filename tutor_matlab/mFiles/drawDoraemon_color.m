clear all;
close all;

figure;
hold on;

% �H�U���k�H�[�ݪ̬���

% �~��
hOut = ezplot('1.1*cos(t)','1.1*sin(t)');set(hOut,'color','black','LineWidth',2);set(hOut,'color','black','LineWidth',2);
xOut = get(hOut,'XData');yOut = get(hOut,'YData');fill(xOut,yOut,'blue'); % ��~����

% ����
hIn = ezplot('1.02*cos(t)','0.95*sin(t)-0.15');set(hIn,'color','black','LineWidth',2);
xIn = get(hIn,'XData');yIn = get(hIn,'YData');fill(xIn,yIn,'white'); % �񤺰���
h = ezplot('1.02*cos(t)','0.95*sin(t)-0.15',[0.36*pi 0.64*pi]);set(h,'color','white','LineWidth',3); % �~�魫�e(����)
h = ezplot('1.02*cos(t)','0.95*sin(t)-0.15',[0.07*pi 0.14*pi]);set(h,'color','white','LineWidth',3); % �~�魫�e(�W�L�B����)
h = ezplot('1.02*cos(t)','0.95*sin(t)-0.15',[0.86*pi 0.93*pi]);set(h,'color','white','LineWidth',3); % �~�魫�e(�W�L�B�k��)

% ����
hEyeLeft = ezplot('0.22*cos(t)-0.22','0.3*sin(t)+0.73');set(hEyeLeft,'color','black','LineWidth',2); % ������
hEyeRight = ezplot('0.22*cos(t)+0.22','0.3*sin(t)+0.73');set(hEyeRight,'color','black','LineWidth',2); % �k����
xEyeLeft = get(hEyeLeft,'XData');yEyeLeft = get(hEyeLeft,'YData');fill(xEyeLeft,yEyeLeft,'white'); % �񥪲�
xEyeRight = get(hEyeRight,'XData');yEyeRight = get(hEyeRight,'YData');fill(xEyeRight,yEyeRight,'white'); % ��k��
h = ezplot('0.08*cos(t)-0.15','0.08*sin(t)+0.6',[0 pi]);set(h,'color','black','LineWidth',2); % �����]
h = ezplot('0.08*cos(t)+0.15','0.08*sin(t)+0.6',[0 pi]);set(h,'color','black','LineWidth',2); % �k���]

% ��l
hNose = ezplot('0.096*cos(t)','0.096*sin(t)+0.43');set(hNose,'color','black','LineWidth',2); % ���
xNose = get(hNose,'XData');yNose = get(hNose,'YData');fill(xNose,yNose,'red'); % ���l
line([0 0],[0.11 0.34],'color','black','LineWidth',2); % �����u
line([-0.7 -0.2],[0.2 0.2],'color','black','LineWidth',2); % �����GŽ(��)
line([0.7 0.2],[0.2 0.2],'color','black','LineWidth',2); % �����GŽ(�k)
line([-0.7 -0.2],[0.37 0.268],'color','black','LineWidth',2); % �W���GŽ(��)
line([0.7 0.2],[0.37 0.268],'color','black','LineWidth',2); % �W���GŽ(�k)
line([-0.7 -0.2],[0.051 0.13],'color','black','LineWidth',2); % �U���GŽ(��)
line([0.7 0.2],[0.051 0.13],'color','black','LineWidth',2); % �U���GŽ(�k)

% �W�L�B�k��
hMouthUpRight = ezplot('0.16*cos(t)+0.85','0.16*sin(t)+0.114');set(hMouthUpRight,'color','white','LineWidth',2);% �W�L�B�k��(���սu)
xMouthUpRight = get(hMouthUpRight,'XData');yMouthUpRight = get(hMouthUpRight,'YData');fill(xMouthUpRight,yMouthUpRight,'white'); % ��W�L�B�k��
hMouthUpRight = ezplot('0.16*cos(t)+0.85','0.16*sin(t)+0.114');set(hMouthUpRight,'color','white','LineWidth',2);% �W�L�B�k��(���e���սu)
hMouthUpRight = ezplot('0.16*cos(t)+0.85','0.16*sin(t)+0.114',[(-2/3)*pi (3/4)*pi]);set(hMouthUpRight,'color','black','LineWidth',2);% �W�L�B�k��(�����½u)

% �W�L�B����
hMouthUpLeft = ezplot('0.16*cos(t)-0.85','0.16*sin(t)+0.114');set(hMouthUpLeft,'color','white','LineWidth',2); % �W�L�B����(���սu)
xMouthUpLeft = get(hMouthUpLeft,'XData');yMouthUpLeft = get(hMouthUpLeft,'YData');fill(xMouthUpLeft,yMouthUpLeft,'white'); % ��W�L�B�k��
hMouthUpLeft = ezplot('0.16*cos(t)-0.85','0.16*sin(t)+0.114');set(hMouthUpLeft,'color','white','LineWidth',2); % �W�L�B����(���e���սu)
hMouthUpLeft = ezplot('0.16*cos(t)-0.85','0.16*sin(t)+0.114',[0.25*pi (5/3)*pi]);set(hMouthUpLeft,'color','black','LineWidth',2); % �W�L�B����(�����½u)

% �W�L�B��L
hMouthUp = ezplot('1.6*cos(t)','0.9*sin(t)-0.82',[(2/6)*pi (4/6)*pi]);set(hMouthUp,'color','black','LineWidth',2); % �W�L�B
hMouthDownBig = ezplot('0.8*cos(t)','0.8*sin(t)-0.02',[1.01*pi 1.99*pi]);set(hMouthDownBig,'color','black','LineWidth',2); % �U�L�B�j��
hMouthDownSmall = ezplot('0.6*cos(t)','0.9*sin(t)-1.2',[0.205*pi 0.795*pi]);set(hMouthDownSmall,'color','black','LineWidth',2); % �U�L�B�p��

% ��L��(�j)
% �j������A���p����ѤU�@�I�I��ɱ���\�L�h
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

% ��L��(�p)
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
line([-0.46 0.46],[-0.66 -0.66],'color',[1 0.4 0],'LineWidth',2); % ���e���Y

axis([-1.5 1.5 -1 1.5]);
title('');
xlabel('');
ylabel('');

print (gcf, '-dpng', 'doraemon_color.png');
