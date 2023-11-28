
clear;
clc;
[y, fs] = audioread('A0.wav'); %Reading the audio signal
%fs - 1/t sampling rate
%y - samples/signal

t = linspace(0,length(y)/fs,length(y));  %Creating a time vector
t = t';
if fs > 999 %If the Frequency Sampling Rate is above 4000 Hz

    [b,a]=butter(8,499/(fs/2),'low'); %Getting Transfer Function Coefficients
    y = filtfilt(b,a,y); %Filtering original signal
    
end

level = 10;
wname = 'coif5';
[C, L] = wavedec(y,level,wname);

%Denoising the Signal
fd = wden(y,'minimaxi','s','mln',level,wname);
%y - The Noisy Signal
%rigrsure/minimaxi - Thresholding Technique
%s - Soft Thresholding
%sln/mln - Thresholding Rescalling 



figure;

subplot(2,1,1);
plot(t(2000:5000),y(2000:5000)); axis tight; grid on; %title('Noisy Signal')
set(gca,'FontSize',8,'FontWeight','bold');
ylabel("Amplitude")
xlabel("Time [s]")
legend('Noisy Signal')
% set(gca, 'XTickLabel', []);
% set(gca, 'YTickLabel', []);
subplot(2,1,2)
plot(t(2000:5000),fd(2000:5000)); axis tight, grid on; %title('Denoised Signal')
ylabel("Amplitude")
xlabel("Time [s]")
legend('Denoised Signal')
% set(gca, 'XTickLabel', []);
% set(gca, 'YTickLabel', []);

set(gca,'FontSize',8,'FontWeight','bold');

%audiowrite('denoised signal.wav',fd,fs)