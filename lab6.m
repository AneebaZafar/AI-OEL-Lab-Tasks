a=imread('MS_grey.jpg');
b=imread('MS.jpg');
figure
subplot(1,2,1),imshow(a),title('original rgb')
subplot(1,2,2),imshow(b),title('original old')


imtool(b)


imwrite(b,'quality1.jpg','quality',1);
imwrite(b,'quality2.jpg','quality',10);
imwrite(b,'quality3.jpg','quality',100);
q1=imread('quality1.jpg');
q2=imread('quality2.jpg');


x1=imsharpen(q1);
x2=imsharpen(b);


imwrite(x1,'q1sharpen.jpg');
imwrite(x2,'bsharpen.jpg');
%

x3=imnoise(q2,'gaussian',0.02);
figure
imshow(x3)
title('guassian noise')%


i=imread('img.tif');
figure
imshow(i)
title('image of .tif')


j=imnoise(i,'salt & pepper',0.02);
figure
imshow(j)
title('salt and pepper noise')


o=rgb2gray(j)


kavg=filter2(fspecial('average',3),o)/255;
figure
imshow(kavg)
title('K average')

kmed=medfilt2(o);
figure
imshow(o)
title('K median')

subplot(1,2,1), imshow(kmed),title('kmed');
subplot(1,2,2),imshow(kavg),title('kavg');