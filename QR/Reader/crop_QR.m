%%Crop the image after the right orientation 
function [ cropped_image ] = crop_QR( qr )

lux =1;
luy=1;
while qr(lux,luy)>0 %TODO: add and finish of image
lux=lux+1;
if lux > size(qr,1)
lux = 1;
luy = luy+1;
end
end

%Looking for right up corner
rux=size(qr,1);
ruy=1;
while qr(rux,ruy)>0 %TODO: add and finish of image
rux=rux-1;
if rux == 1
rux = size(qr,1);
ruy = ruy+1;
end
end

%TODO: use left down corner
%Looking for right down corner
rdx=size(qr,1);
rdy=size(qr,2);
while qr(rux,rdy)>0 %TODO: add and finish of image
rdx=rdx-1;
if rdx == 1
rdx = size(qr,1);
rdy = rdy-1;
end
end

cropped_image = imcrop(qr,[lux,ruy, rux-lux,rdy-ruy]);
end