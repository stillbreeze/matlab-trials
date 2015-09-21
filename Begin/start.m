I = imread('rice.jpg');
imshow(img);

background = imopen(I,strel('disk',15));
figure;
imshow(background);

I2 = I - background;
figure;
imshow(I2);

I3 = imadjust(I2,[0.2 0.7],[]);
figure;
imshow(I3);

level = graythresh(I3);
bw = im2bw(I3,level);
bw = bwareaopen(bw, 50);
imshow(bw);

cc = bwconncomp(bw, 4);
cc.NumObjects;
figure;
imshow(cc);