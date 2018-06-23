% Indicate the project index of frames 
PlotFrmIndex = [1:15]; % 1 <=i<= 4
nProjectFrames = length(PlotFrmIndex);
sprintf('%d', nProjectFrames);
LaserNameFormat = 'laser_target%d.txt';
for tfrm = 1:nProjectFrames
    frmIdx = PlotFrmIndex(tfrm);
    fprintf('processing laser_target%d: done! \n',frmIdx);
    Laser = load(sprintf(LaserNameFormat, frmIdx));
    [IX,IY]=size(Laser);
    x=Laser(:,1);
    y=Laser(:,2);
    z=Laser(:,3);
    plot3(x,y,z,'.');
    figure(frmIdx);
end
grid on % 添加网格线
