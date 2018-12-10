close all
clear
clc
%% 找BP的峰值和谷值只是简单使用了find_peaks函数，BP的谷值找的不准确。
% load('/Useras/houfeixiang/Downloads/1024动物数据/子文件夹3分段/升压1.mat')
% load('/Users/houfeixiang/Downloads/1024动物数据/子文件夹4/失血3.mat')
% load('/Users/houfeixiang/Downloads/1024动物数据/子文件夹4/升压1.mat')
% load('/Users/houfeixiang/Downloads/1024动物数据/子文件夹4/失血4.mat')
% load('/Users/houfeixiang/Downloads/1024动物数据/子文件夹4/升压2.1.mat')
load('/Users/houfeixiang/Downloads/1024动物数据/子文件夹4/升压2.2.mat')
fs=200;
ecg=data(:,2);
bp=data(:,3);
%% 归一线性化的bp记为u_bp
lo=(bp-mean(bp))/std(bp);%数据归一化 
u_bp=detrend(lo);
%% 滤波后的BP记为BF
[~,d,uu]=ECG250(ecg,fs);
[BP]=BP250_3(bp,fs);
[max_BP]=find_peaks(d,BP);
[min_BP]=find_peaks(d,-BP); 
%% 对BP异常点位置的检索，删除BP异常点。每两个R波之间BP只能有一个波峰一个波谷,其他情况删掉。
%% 寻找BP波峰
s=1;
for i=1:1:length(d)-1
    m=1;
    num_min=[];
    for j=1:1:length(max_BP)
        if max_BP(j)>d(i)&&max_BP(j)<d(i+1)
            num_min(m)=max_BP(j);
            m=m+1;
        end
    end
    l_m=length(num_min);
    if l_m==1
        max_r(i)=num_min;
        F(i)=BP(max_r(i));
    else
        max_r(i)=d(i)+1;
        F(i)=0;
    end
end
%% 寻找BP波谷
s=1;
for i=1:1:length(d)-1
    m=1;
    num_min=[];
    for j=1:1:length(min_BP)
        if min_BP(j)>d(i)&&min_BP(j)<d(i+1)
            num_min(m)=min_BP(j);
            m=m+1;
        end
    end
    l_m=length(num_min);
        if l_m==1
        min_r(i)=num_min;
        FI(i)=BP(min_r(i));
        else
        min_r(i)=d(i)+1;
        FI(i)=0;  
    end
end
%% 分别求血压的峰值和谷值
min_r(FI==0)=0;
max_r(F==0)=0; 
min_r(FI==0)=[];
max_r(F==0)=[];
FI(FI==0)=[];    
F(F==0)=[];   
% % % %% 两个R波只有一个波峰一个波谷,其它情况删除。
% % % min_r(FI==0|F==0)=0;
% % % max_r(F==0|FI==0)=0; 
% % % min_r(FI==0|F==0)=[];
% % % max_r(F==0|FI==0)=[];
% % % FI(FI==0|F==0)=0;    
% % % F(F==0|FI==0)=0; 
% % % FI(FI==0)=[];    
% % % F(F==0)=[];   
%% plot 归一线性化的ECG，滤波后的BP，BP的最小峰值点，BP的最大峰值点。
plot(uu)             %原始ecg
hold on
plot(d,uu(d),'*k')
hold on
plot(BP)             %滤波后bp
hold on
plot(min_r,FI,'*k','LineWidth',5)      %bp谷值
hold on
plot(max_r,F,'*k','LineWidth',5)    %bp峰值
% hold on
% plot(u_bp,'r')      %原始bp
