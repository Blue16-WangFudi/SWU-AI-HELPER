%ʵ��6
%Time:2021.11.9
clear all;
clc;
t=0:24;
temp=[15 14 14 14 14 15 16 18 20 22 23 25 28 31 32 31 29 27 25 24 22 20 18 17 16];
% plot(t,temp,'color','r','Linewidth',2);
% title('���±仯ͼ');
% xlabel('t/h');
% ylabel('�¶�/��');
data=[t',temp'];
dlmwrite('temperature.txt',data,' ')