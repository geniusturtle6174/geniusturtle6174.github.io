function wave = note2wave(pitch, duration, fs) 

freq = 440*2.^((pitch-69)/12);
wave = [];

for i = 1:length(pitch)
    dur = duration(i);
    t = linspace(0,dur,dur*fs);
    y = sin(2*pi*freq(i)*t);
    y = y.*sin(2*pi*(1/(dur*2))*t);
    wave = [wave y];
end
