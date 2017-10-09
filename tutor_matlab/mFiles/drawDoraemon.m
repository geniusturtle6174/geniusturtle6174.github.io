clear all;
close all;

figure;
hold on;

% �H�U���k�H�[�ݪ̬���

% �~��
hOut = ezplot('1.1*cos(t)','1.1*sin(t)');set(hOut,'color','black','LineWidth',2);set(hOut,'color','black','LineWidth',2);

% ����
hIn = ezplot('1.02*cos(t)','0.95*sin(t)-0.15',[0.14*pi 0.36*pi]);set(hIn,'color','black','LineWidth',2); % �W�k�q
hIn = ezplot('1.02*cos(t)','0.95*sin(t)-0.15',[0.64*pi 0.86*pi]);set(hIn,'color','black','LineWidth',2); % �W���q
hIn = ezplot('1.02*cos(t)','0.95*sin(t)-0.15',[-1.07*pi 0.07*pi]);set(hIn,'color','black','LineWidth',2); % �U�q

% ����
hEyeLeft = ezplot('0.22*cos(t)-0.22','0.3*sin(t)+0.73');set(hEyeLeft,'color','black','LineWidth',2); % ������
hEyeRight = ezplot('0.22*cos(t)+0.22','0.3*sin(t)+0.73');set(hEyeRight,'color','black','LineWidth',2); % �k����
h = ezplot('0.08*cos(t)-0.15','0.08*sin(t)+0.6',[0 pi]);set(h,'color','black','LineWidth',2); % �����]
h = ezplot('0.08*cos(t)+0.15','0.08*sin(t)+0.6',[0 pi]);set(h,'color','black','LineWidth',2); % �k���]

% ��l
hNose = ezplot('0.096*cos(t)','0.096*sin(t)+0.43');set(hNose,'color','black','LineWidth',2); % ���
line([0 0],[0.11 0.34],'color','black','LineWidth',2); % �����u
line([-0.7 -0.2],[0.2 0.2],'color','black','LineWidth',2); % �����GŽ(��)
line([0.7 0.2],[0.2 0.2],'color','black','LineWidth',2); % �����GŽ(�k)
line([-0.7 -0.2],[0.37 0.268],'color','black','LineWidth',2); % �W���GŽ(��)
line([0.7 0.2],[0.37 0.268],'color','black','LineWidth',2); % �W���GŽ(�k)
line([-0.7 -0.2],[0.051 0.13],'color','black','LineWidth',2); % �U���GŽ(��)
line([0.7 0.2],[0.051 0.13],'color','black','LineWidth',2); % �U���GŽ(�k)

% �W�L�B�k��
hMouthUpRight = ezplot('0.16*cos(t)+0.85','0.16*sin(t)+0.114',[(-2/3)*pi (3/4)*pi]);set(hMouthUpRight,'color','black','LineWidth',2);% �W�L�B�k��(���սu)

% �W�L�B����
hMouthUpLeft = ezplot('0.16*cos(t)-0.85','0.16*sin(t)+0.114',[0.25*pi (5/3)*pi]);set(hMouthUpLeft,'color','black','LineWidth',2); % �W�L�B����(���սu)

% �W�L�B��L
hMouthUp = ezplot('1.6*cos(t)','0.9*sin(t)-0.82',[(2/6)*pi (4/6)*pi]);set(hMouthUp,'color','black','LineWidth',2); % �W�L�B
hMouthDownBig = ezplot('0.8*cos(t)','0.8*sin(t)-0.02',[1.01*pi 1.99*pi]);set(hMouthDownBig,'color','black','LineWidth',2); % �U�L�B�j��
hMouthDownSmall = ezplot('0.6*cos(t)','0.9*sin(t)-1.2',[0.205*pi 0.795*pi]);set(hMouthDownSmall,'color','black','LineWidth',2); % �U�L�B�p��

axis([-1.5 1.5 -1 1.5]);
title('');
xlabel('');
ylabel('');
