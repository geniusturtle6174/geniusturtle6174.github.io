function keys = dtmfDecode(wavFileName)

% Ū������
% ==== �Цb���ϥ�wavreadŪ������(�T�ӿ�X�ܼƳ��ݭn�I)
% ...

frequencies = [1209 1336 1477 1633 697 770 852 941];
bound = 30; % �a�q�o�i�����e�\�d��
filterOrder = 5;

% ���I�����A��X�C���������ɶ��d��
epdParam = epdPrmSet(fs);
[epInSampleIndex, epInFrameIndex, soundSegment] = epdByVol(y, fs, nbits, epdParam, 1);

% ���O��K���W�v�]�p�o�i��
coefA = [];
coefB = [];
for i = 1:length(frequencies)
    thisFreq = frequencies(i);
    wn = [thisFreq-bound thisFreq+bound]/(fs/2); % �N�I���W�v���W��
    [b, a] = butter(filterOrder, wn);
    coefA = [coefA;a];
    coefB = [coefB;b];
end

% �ѽX
keys = [];
for i = 1:length(soundSegment)
    thisDigitWav = y(soundSegment(i).beginSample:soundSegment(i).endSample); % ���X�C�q������
    % ���o���W�������W�v
    highImpuse = [];
    for j = 1:4
        d = filter(coefB(j,:), coefA(j,:), thisDigitWav);
        highImpuse = [highImpuse max(d)];
    end
    [m, idx] = max(highImpuse);
    freqHigh = frequencies(idx);
    % ���o�C�W�������W�v
    lowImpuse = [];
    for j = 1:4
        d = filter(coefB(j+4,:), coefA(j+4,:), thisDigitWav);
        lowImpuse = [lowImpuse max(d)];
    end
    [m, idx] = max(lowImpuse);
    freqLow = frequencies(idx+4);
    % �ھڰ��C�W�v�ȡA�Ϭd�X��Ӫ�����
    % ==== �Цb���̾�freqHigh�MfreqLow�i��Ϭd�A�ñN�Ϭd���G�H�r���Φ��s�Jk�ܼ�
    %
    %
    % ...
    % �N�Ϭd���G�X��
    keys = [keys k];
end
