blueten = imread('blueten.jpg');
bluetenDouble=double(blueten);
bluetenHsi = rgb2hsi(blueten);

redChannel = blueten(:,:,1) ; %speichert den roten Kanal in eine Variable
greenChannel = blueten(:,:,2);%speichert den grünen kanal in eine Variable
blueChannel = blueten(:,:,3);%speichert den blauen Kanal in eine Variabl>HSe

redChannelHSI = bluetenHsi(:,:,1);%speichert den blauen Kanal in eine Variable
greenChannelHSI = bluetenHsi(:,:,2);%speichert den blauen Kanal in eine Variable
intensityChannelHSI = bluetenHsi(:,:,3);%speichert den I Kanal in eine Variable


greenHistogramm = imhist(greenChannel);
blueHistogramm = imhist(blueChannel);
redHistogramm = imhist(redChannel);

intensityHistogrammHSI = imhist(intensityChannelHSI);

hsiHistogramm = imhist(bluetenHsi);


figure
title('rgb and Intensity Curve');
plot(redHistogramm,'r');
hold on
plot(blueHistogramm,'b');
hold on
plot(greenHistogramm,'g');
hold on
plot(intensityHistogrammHSI,'y');

maximalIntensity = max(intensityHistogrammHSI);
minimalIntensity = min(intensityHistogrammHSI);

GlobalerKontrast = maximalIntensity - minimalIntensity;


Low_High = stretchlim(GlobalerKontrast);


figure 
imshow(intensityChannelHSI);