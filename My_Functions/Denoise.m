function fd = denoise(y,fs)

level = 10;

wname = 'coif5';
[C, L] = wavedec(y,level,wname);

%Denoising the Signal
fd = wden(y,'minimaxi','s','mln',level,wname);
%y - The Noisy Signal
%rigrsure/minimaxi - Thresholding Technique
%s - Soft Thresholding
%sln/mln - Thresholding Rescalling 

if fs > 999 %If the Frequency Sampling Rate is above 999 Hz

    [b,a]=butter(4,499/(fs/2),'low'); %Getting Transfer Function Coefficients
    fd = filtfilt(b,a,fd); %Filtering original signal
    
end

end
