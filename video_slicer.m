function video_slicer()
%Slice video into frames
%Reference: https://kr.mathworks.com/help/matlab/examples/convert-between-image-sequences-and-video.html

vid=VideoReader('video1.mp4');

ii = 1;

while hasFrame(vid)
   img = readFrame(vid);
   filename = [sprintf('%d',ii) '.jpg'];
   fullname = fullfile('frames',filename);
   imwrite(img,fullname)    % Write out to a JPEG file (img1.jpg, img2.jpg, etc.)
   ii = ii+1;
end