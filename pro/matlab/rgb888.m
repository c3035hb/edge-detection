% ��ȡԭʼͼ��
I = imread('mzyxz.jpg');

% ת��Ϊ RGB888 ��������
I = im2uint8(I);

% ���ŵ�ָ���ֱ���
I = imresize(I, [350, 640]);

% ����Ϊ JPEG ��ʽ��ͼƬ
imwrite(I, 'mzyxz1_rgb888.jpg', 'JPEG');

% ��ȡ RGB ������������ֵ
R = I(:,:,1);
G = I(:,:,2);
B = I(:,:,3);

% �����ɫͼ��
img = imread('mzyxz1_rgb888.jpg');

% ת��Ϊ�Ҷ�ͼ��
gray_img = rgb2gray(img);

%����Ҷ�ͼ��
imshow(gray_img);

imwrite(gray_img, 'gray_img.png');
