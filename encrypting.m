%Importing main image
president=imread('putin.jpg');
imshow(president);title('President')
%Importing nuclear codes
nc=imread('nuclearcodes.jpg');
%Coverting nuclear codes into grayscale and binary
code=imbinarize(rgb2gray(nc));
%Resizing nuclear codes with repect to orignal image
code=imresize(code,size(president(:,:,1)));
%hiding nuclear codes in new variable by changing the Least Significant Bit
new=president;
new(:,:,1)= bitset(new(:,:,1),1,code);
%Securing the package
imshow(new);title('The Hidden data')
imwrite(new,'encrpt.bmp');
clear all;
