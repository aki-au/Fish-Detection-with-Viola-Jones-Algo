fishDetector=vision.CascadeObjectDetector('C:\Users\Uma\Desktop\MATLAB\fishDetector.xml'); 

img=imread('7.jpg'); %Read input image
img= rgb2gray(img);
BB=step(fishDetector,img); % Detect fishes

iimg = insertObjectAnnotation(img, 'rectangle', BB, 'Fish');
numfish = size(BB, 1);
 iimg = insertText(iimg, [10 10], numfish, 'BoxOpacity', 1, ...
        'FontSize', 20);
figure(1);
imshow(iimg); 
title('Detected fishes');
htextinsface = vision.TextInserter('Text', 'fish   : %2d', 'Location',  [5 2],'Font', 'Courier New','FontSize', 14);


%imshow(img);
hold on
