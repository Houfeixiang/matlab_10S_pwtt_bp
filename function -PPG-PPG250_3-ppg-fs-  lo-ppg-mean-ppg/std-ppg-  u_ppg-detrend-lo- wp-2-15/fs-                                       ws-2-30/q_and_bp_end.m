close all
clear
clc
%% q值与bp的最终程序，并且求得两值的相关性。
%% 载入数据
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180329/清洗后分段数据/3.29打药1.mat')
load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180329/清洗后分段数据/3.29打药2.mat')
%% 数据提取
fs=1000;
ecg=data(:,2);
ppg=data(:,3);
bp=data(:,4);
%% 归一线性化的ppg记为u_ppg
lo=(ppg-mean(ppg))/std(ppg);%数据归一化 
u_ppg=detrend(lo);
%% 滤波后的ppg记为PPG
[~,d,uu]=ECG250(ecg,fs);
[PPG]=PPG250_3(ppg,fs);
[max_PPG]=find_peaks(d,PPG);
max_PPG=max_PPG-1;
%% 血压
[BP]=BP250_3(bp,fs);
[max_BP]=find_peaks(d,BP); 
max_BP=max_BP-1;
%% 寻找PPG波峰
s=1;
for i=1:1:length(d)-1
    m=1;
    num_min=[];
    for j=1:1:length(max_PPG)
        if max_PPG(j)>d(i)&&max_PPG(j)<d(i+1)
            num_min(m)=max_PPG(j);
            m=m+1;
        end
    end
    l_m=length(num_min);
    if l_m==1
           max_p(i)=num_min;         
    else
           max_p(i)=0;  
    end
end

%% 寻找PPG的波谷
s=1;
n=1;
tem=[];
for i=1:1:length(d)-1
    for j=1:1:length(max_p)
        if (d(i)<max_p(j))&(max_p(j)<d(i+1))
            tem=-PPG((d(i)-10):max_p(j));
            c(j)=length(tem);%c为选取谷值的区间。
            ss=find(c==0);
            c(ss)=[];
            [min_pks,min_locs]=findpeaks(tem,'MinPeakDistance',(min(c)-2));
            l_min=length(min_locs);
               if l_min==1
                  min_p(j)=min_locs+d(i)-10-1;
               else
                  min_p(j)=0;
               end
        end
    end
end
%% 阈值最小值
min_c=min(c);
%% 两个R波之间BP只能有一个波峰，一个波谷。
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
    else
        max_r(i)=0;
    end
end
%% 
max_p(max_r==0|min_p==0)=0;
min_p(max_r==0|max_p==0)=0;
max_r(max_r==0|min_p==0)=0;
max_p(max_p==0)=[];
min_p(min_p==0)=[];
max_r(max_r==0)=[];
%% plot 删除异常点
figure(1)
plot(uu)             %原始ecg
hold on
plot(d,uu(d),'+c','LineWidth',5)
hold on
plot(PPG)             %滤波后ppg
hold on
plot(min_p,PPG(min_p),'*k','LineWidth',5)      %ppg谷值
hold on
plot(max_p,PPG(max_p),'*k','LineWidth',5)        %ppg峰值
hold on
% plot(u_ppg,'r')      %原始ppg 
% hold on
plot(BP)               %滤波后bp
hold on
plot(max_r,BP(max_r),'ob','LineWidth',5)
%%  寻找AC与DC分量
for i=1:1:length(min_p)
    ac(i)=PPG(max_p(i))-PPG(min_p(i));
end
    dc=PPG(max_p);
for i=1:1:length(ac)
    q(i)=ac(i)/dc(i);
end
%% 找到的PPG峰值点和谷值点的个数
% minppg_quantity=length(min_p)
% maxppg_quantity=length(max_p) 
% peakecg_quantity=length(d)
% maxbp_quantity=length(max_r)
% ac_bc_quantity=length(q)
R_wave_quantity=length(d)
effective_quantity=length(min_p)
% q(411)=[];
% max_r(411)=[];
%% 求相关性和拟合直线
PK_BP=BP(max_r);
PK_BP=PK_BP';
figure(2)
plot(q,PK_BP,'ro');
hold on; 
[p1,S1]=polyfit(q,PK_BP,1);%求得拟合参数
y1=polyval(p1,q);%求得拟合的直线   
R1=corrcoef(q,PK_BP); %求得ac/dc和bp峰值的相关性
p1 %拟合直线的相关系数
R=R1(1,2)
plot(q,y1);
xlabel('ac/dc','fontsize',10)
ylabel('BP','fontsize',10)
title('ad/dc与BP之前的关系')
