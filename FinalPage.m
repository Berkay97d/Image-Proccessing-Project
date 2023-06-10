clc;clear

y = rgb2gray((imread('C:\Users\diren\Desktop\conclusion.png')));
y = im2double(y);

psf = fspecial('disk', 10);

yblur = conv2(y, psf);

figure();

subplot(2,1,1);
imshow(yblur);
title('actual image');

subplot(2,1,2);
imshow(y);
title('deblurred image');

y2blurredNoisy = imnoise(yblur, 'gaussian', 0,.0000000000001);

figure();

aY1 = fft2(yblur);
aY2 = fft2(y2blurredNoisy);

anewh = zeros(size(yblur));
apsfsize = 0;
ah = fft2(0);

ay1deblurred = ifft2(10./1)
ay2deblurred = ifft2(100./1)