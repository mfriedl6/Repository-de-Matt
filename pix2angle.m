function ang = pix2angle(display,pix)
%angle = pix2angle(display,pix)
%
%converts monitor pixels into degrees of visual angle.
%
%Inputs:
%display.dist (distance from screen (cm))
%display.width (width of screen (cm))
%display.resolution (number of pixels of display in horizontal direction)
%
%ang (visual angle)
%
%Warning: assumes isotropic (square) pixels

%Written 11/1/07 gmb zre

%Calculate pixel size
pixSize = display.width/display.resolution(1);   %cm/pix

sz = pix*pixSize;  %cm (duh)

ang = 2*180*atan(sz/(2*display(1).dist))/pi;


return

%test code

display.dist = 130; %cm
display.width = 51.054; %cm, 51.054 for Samsung LS23A950, 
                        %    71.12 for Cambridge


display.resolution = [1680,1050]; % [1680,1050] for Samsung
                                  % [1920,1080] for Cambridge

pix = 400; % [x,y]=meshgrid(-200:200, -200:200);

ang = pix2angle(display,pix)