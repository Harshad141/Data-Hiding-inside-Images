%Importing the Image with hidden package
Im = imread('encrpt.bmp');
%Extracting the bit plane
encoded = bitget(Im(:,:,1),1);
%print
imshow(logical(encoded));
