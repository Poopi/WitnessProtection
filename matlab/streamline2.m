[d,sr]=wavread('long.wav');
r=1.5;
p=3;
q=2;
n = 256;
win=getW(n);
% With hann windowing on both input and output, 
% we need 25% window overlap for smooth reconstruction
hop = n/4;
% Effect of hanns at both ends is a cumulated cos^2 window (for
% r = 1 anyway);
% Calculate the basic STFT, magnitude scaled
f = n;
w = n;
s = length(d);

% pre-allocate output array
% Append a 'safety' column on to the end of b to avoid problems 
% taking *exactly* the last frame (i.e. 1*b(:,cols)+0*b(:,cols+1))
%b = zeros((1+f/2),2+fix((s-f)/hop));
%c = zeros((1+f/2), length(t));
c = 1;
t = 0;
frame_c = 0;
left_frame = zeros((1+f/2), 1);
current_frame = zeros((1+f/2), 1);
result = zeros((1+f/2),1);
ph = 0;

x = zeros(1,fix(s/r)+n);
output_hop = 0
for bb = 0:hop:(s-f)
    u = win.*d((bb+1):(bb+f));             %get the next 1024 frame
    temp = fft(u);         %do the fft
    current_frame = temp(1:(1+f/2))';  %take half the fft output

    while floor(t) < frame_c
        rr_frac = t - floor(t);

        %pvsample code here
        bmag = abs(left_frame) * (1-rr_frac) + rr_frac * abs(current_frame); %interpolate
        dp = angle(current_frame) - angle(left_frame); % calculate phase advance
        dp = dp - 2 * pi * round(dp/(2*pi)); %translate to exponential notation
        ph = ph + dp;   %accumulate
        result = bmag .* exp(j*ph);
        
        ft = result';
        ft = [ft, conj(ft([((n/2)):-1:2]))];
        px = real(ifft(ft));
        x((output_hop+1):(output_hop+n)) = x((output_hop+1):(output_hop+n))+px.*win;
        output_hop = output_hop+ hop;
        t = t + r;
        inter = 0;
    end;

    if floor(t) == frame_c
        left_frame = current_frame;
        inter = 1;
    end;
    
    frame_c = frame_c + 1;
end;
y=x';

soundsc(y,sr)
f = Rsample(y,p,q); % NB: 0.8 = 4/5
soundsc(f,sr) 
%f = resample(y,p,q); % NB: 0.8 = 4/5
%soundsc(f,sr)