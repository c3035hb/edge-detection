% 读取原始图像
I = imread('mzyxz.jpg');

% 转换为 RGB888 数据类型
I = im2uint8(I);

% 缩放到指定分辨率
I = imresize(I, [350, 640]);

% 保存为 JPEG 格式的图片
imwrite(I, 'mzyxz1_rgb888.jpg', 'JPEG');

% 读取 RGB 三个分量的数值
R = I(:,:,1);
G = I(:,:,2);
B = I(:,:,3);

% 读入彩色图像
img = imread('mzyxz1_rgb888.jpg');

% 转换为灰度图像
gray_img = rgb2gray(img);

%输出灰度图像
imshow(gray_img);

imwrite(gray_img, 'gray_img.png');
