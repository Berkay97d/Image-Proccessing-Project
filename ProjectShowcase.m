clc;clear

y = imread('C:\Users\diren\Desktop\photo.png');
y = im2double(y);

psf = fspecial('disk', 7);

yblur = conv2(y, psf);

figure();

subplot(2,1,1);
imshow(yblur);
title('actual image');

subplot(2,1,2);
imshow(y);
title('deblurred image');

y2blurredNoisy = imnoise(yblur, 'gaussian', 0,.0000000000001);
y3blurredNoisy = imnoise(yblur, 'gaussian', 0,.000000001);
y4blurredNoisy = imnoise(yblur, 'gaussian', 0,.0000001);

figure();

subplot(2,4,1);
imshow(yblur);
title('no noise');

subplot(2,4,2);
imshow(y2blurredNoisy);
title('Gaussian white noise of variance 10^{-13}');

subplot(2,4,3);
imshow(y3blurredNoisy);
title('Gaussian white noise of variance 10^{-11}');

subplot(2,4,4);
imshow(y4blurredNoisy);
title('Gaussian white noise of variance 10^{-8}');


aY1 = fft2(yblur);
aY2 = fft2(y2blurredNoisy);
aY3 = fft2(y3blurredNoisy);
aY4 = fft2(y4blurredNoisy);

anewh = zeros(size(yblur));
apsfsize = 0;
ah = fft2(0);

ay1deblurred = ifft2(10./1)
ay2deblurred = ifft2(100./1)
ay3deblurred = ifft2(1000./1)
ay4deblurred = ifft2(1000./1)

Y1 = fft2(yblur);
Y2 = fft2(y2blurredNoisy);
Y3 = fft2(y3blurredNoisy);
Y4 = fft2(y4blurredNoisy);

newh = zeros(size(yblur));
psfsize = size(psf);
newh(1: psfsize(1), 1:psfsize(2)) = psf;
h = fft2(newh);

y1deblurred = ifft2(Y1./h)
y2deblurred = ifft2(Y2./h)
y3deblurred = ifft2(Y3./h)
y4deblurred = ifft2(Y4./h)

bY1 = fft2(yblur);
bY2 = fft2(y2blurredNoisy);
bY3 = fft2(y3blurredNoisy);
bY4 = fft2(y4blurredNoisy);

bnewh = zeros(size(yblur));
bpsfsize = 0;
bh = fft2(0);

by1deblurred = ifft2(10./1)
by2deblurred = ifft2(100./1)
by3deblurred = ifft2(1000./1)
by4deblurred = ifft2(1000./1)

subplot(2,4,5);
imshow(y1deblurred);
title('no noise');

subplot(2,4,6);
imshow(y2deblurred);
title('Gaussian white noise of variance 10^{-13}');

subplot(2,4,7);
imshow(y3deblurred);
title('Gaussian white noise of variance 10^{-11}');

subplot(2,4,8);
imshow(y4deblurred);
title('Gaussian white noise of variance 10^{-8}');





