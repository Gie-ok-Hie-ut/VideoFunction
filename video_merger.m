function video_merger()
%merge frames into video
%Reference: https://kr.mathworks.com/help/matlab/examples/convert-between-image-sequences-and-video.html

vid_out=VideoWriter(fullfile('','video2_new.avi'));
vid_ref=VideoReader('video2.mp4'); %Refrence FPS

vid_out.FrameRate=vid_ref.FrameRate;

open(vid_out)

dList =dir('frames'); 
numpics =length(dList);
for i1 = 1:numpics
        
    img_name=sprintf('%d.jpg',i1) ;
    img = imread(fullfile('frames',img_name));
    writeVideo(vid_out,img)
    
end

close(vid_out)
