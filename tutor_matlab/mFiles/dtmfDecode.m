function keys = dtmfDecode(wavFileName)

% 讀取音檔
% ==== 請在此使用wavread讀取音檔(三個輸出變數都需要！)
% ...

frequencies = [1209 1336 1477 1633 697 770 852 941];
bound = 30; % 帶通濾波器的容許範圍
filterOrder = 5;

% 端點偵測，找出每次撥號的時間範圍
epdParam = epdPrmSet(fs);
[epInSampleIndex, epInFrameIndex, soundSegment] = epdByVol(y, fs, nbits, epdParam, 1);

% 分別對八個頻率設計濾波器
coefA = [];
coefB = [];
for i = 1:length(frequencies)
    thisFreq = frequencies(i);
    wn = [thisFreq-bound thisFreq+bound]/(fs/2); % 將截止頻率正規化
    [b, a] = butter(filterOrder, wn);
    coefA = [coefA;a];
    coefB = [coefB;b];
end

% 解碼
keys = [];
for i = 1:length(soundSegment)
    thisDigitWav = y(soundSegment(i).beginSample:soundSegment(i).endSample); % 取出每段撥號音
    % 取得高頻部分的頻率
    highImpuse = [];
    for j = 1:4
        d = filter(coefB(j,:), coefA(j,:), thisDigitWav);
        highImpuse = [highImpuse max(d)];
    end
    [m, idx] = max(highImpuse);
    freqHigh = frequencies(idx);
    % 取得低頻部分的頻率
    lowImpuse = [];
    for j = 1:4
        d = filter(coefB(j+4,:), coefA(j+4,:), thisDigitWav);
        lowImpuse = [lowImpuse max(d)];
    end
    [m, idx] = max(lowImpuse);
    freqLow = frequencies(idx+4);
    % 根據高低頻率值，反查出原來的按鍵
    % ==== 請在此依據freqHigh和freqLow進行反查，並將反查結果以字元形式存入k變數
    %
    %
    % ...
    % 將反查結果合併
    keys = [keys k];
end
