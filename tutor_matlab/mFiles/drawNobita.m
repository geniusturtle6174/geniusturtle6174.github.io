clear all;
close all;

% ���k�H�[�ݪ̬���

figure;
hold on;

ezplot('cos(t)','sin(t)',[(1/12)*pi (7/4)*pi]); % ��l

% �Y
ezplot('10.74*cos(t)+5.2','10.25*sin(t)+1.8',[-0.14*pi 0.8*pi]); % �W
ezplot('11.51*cos(t)+2','7.96*sin(t)+0.9',[0.1*pi 0.66*pi]); % �U
line([12 13], [-2.75 3.5]); % �k�����u

% �L��
ezplot('6.125*cos(t)+2.1','7.125*sin(t)-1.6',[1.1*pi 1.8*pi]); % �U
ezplot('9*cos(t)+1','4.844*sin(t)+0.5',[1.32*pi 1.7*pi]); % �W
ezplot('cos(-0.2*pi)*1.625*cos(t)-sin(-0.2*pi)*3.125*sin(t)+5',...
       'sin(-0.2*pi)*1.625*cos(t)+cos(-0.2*pi)*3.125*sin(t)-6.2',...
       [0.14*pi 0.75*pi]); % �k��
ezplot('cos(0.27*pi)*0.625*cos(t)-sin(0.27*pi)*0.825*sin(t)-3.8',...
       'sin(0.27*pi)*0.625*cos(t)+cos(0.27*pi)*0.825*sin(t)-3',...
       [0.25*pi 1.25*pi]); % ����
line([-1.6 -1.4], [-4.8 -6.7]); % �����u
line([2.1 2], [-5 -7.5]); % �����u
line([5.3 5.1], [-4.8 -6.5]); % �k���u

% ����
ezplot('3.85*cos(t)+5.8','4.2*sin(t)+2.7'); % �k����
ezplot('cos(-pi/9)*2.73*cos(t)-sin(-pi/9)*3.93*sin(t)-0.7',...
       'sin(-pi/9)*2.73*cos(t)+cos(-pi/9)*3.93*sin(t)+4',...
       [-0.21*pi 1.63*pi]); % ������
ezplot('2*cos(t)-1.1','1.5*sin(t)+2.36',[0 (1/3)*pi]); % ���W����
ezplot('0.9*cos(t)','0.6*sin(t)+2.35',[0 (3/4)*pi]); % ���U����
ezplot('cos(t)+3.7','1.4*sin(t)+1.5',[(1/3)*pi 0.9*pi]); % �k�W����
ezplot('1.8*cos(t)+3.7','1.4*sin(t)+0.9',[(1/3)*pi (2/3)*pi]); % �k�U����
line([9.5 12.1], [1.4 -0.2]); % �k�����u

% �y
ezplot('cos(-0.1*pi)*3.53*cos(t)-sin(-0.1*pi)*7*sin(t)-6.8',...
       'sin(-0.1*pi)*3.53*cos(t)+cos(-0.1*pi)*7*sin(t)+6',...
       [-0.1*pi 0.15*pi]); % ���������
ezplot('9.563*cos(t)+2.77','8.344*sin(t)-2.7',[0.75*pi 1.82*pi]); % �U��

% �զ�
ezplot('cos(-0.2*pi)*1.89*cos(t)-sin(-0.2*pi)*3.19*sin(t)+13',...
       'sin(-0.2*pi)*1.89*cos(t)+cos(-0.2*pi)*3.19*sin(t)-5',...
       [-0.54*pi 0.6*pi]); % �U�t
ezplot('cos(-0.17*pi)*2.1*cos(t)-sin(-0.17*pi)*2.25*sin(t)+13.6',...
       'sin(-0.17*pi)*2.1*cos(t)+cos(-0.17*pi)*2.25*sin(t)-4.3',...
       [0.5*pi 0.95*pi]); % �W�t

axis([-10 20 -15 15]);
title('');
xlabel('');
ylabel('');
