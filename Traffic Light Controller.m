clc;clear;close all;
upload=readfis('Traffic Light Controller.fis');
North=0;
South=1;
East=0;
West=0;
output=evalfis(upload,[North South East West]);
final=output>0.5