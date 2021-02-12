clc;clear;close all;
upload=readfis('Traffic Light Controller.fis');
North=input('Enter the North Intensity--->');
South=input('Enter the South Intensity--->');
East=input('Enter the East Intensity--->');
West=input('Enter the West Intensity--->');
output=evalfis(upload,[North South East West]);
final=output>0.5
[value,index]=max(final);
switch index
    case 1
        disp('North is on Green');
        disp('South is on Red');
        disp('East is on Red');
        disp('West is on Red');
    case 2
        disp('North is on Red');
        disp('South is on Green');
        disp('East is on Red');
        disp('West is on Red');
    case 3
        disp('North is on Red');
        disp('South is on Red');
        disp('East is on Green');
        disp('West is on Red');
    case 4
        disp('North is on Red');
        disp('South is on Red');
        disp('East is on Red');
        disp('West is on Green');
end