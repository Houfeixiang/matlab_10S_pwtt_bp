%% 10s为一个数据段，求q与bp之间的关系。
close all
clear
clc
%% 载入数据
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180329/清洗后分段数据/3.29打药1.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180329/清洗后分段数据/3.29打药2.mat')

% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180411/清洗后分段数据/4.11升压.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180411/清洗后分段数据/4.11失血5.mat')

% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180509/清洗后分段数据/5.09失血1.mat')

% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/新数据/0703/透射式仪器测量数据/升压4.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/新数据/0703/透射式仪器测量数据/失血2.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/新数据/0703/透射式仪器测量数据/失血3.mat')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 选取数据段
%% 20180329
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180329/清洗后分段数据/3.29失血3.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180329/清洗后分段数据/3.29失血1.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180329/清洗后分段数据/3.29失血2.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180329/清洗后分段数据/3.29失血4.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180329/清洗后分段数据/3.29失血5.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180329/清洗后分段数据/3.29失血6.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180329/清洗后分段数据/3.29打药1.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180329/清洗后分段数据/3.29打药2.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180329/清洗后分段数据/3.29打药3.mat')

%% 20180411
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180411/清洗后分段数据/4.11升压.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180411/清洗后分段数据/4.11失血1.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180411/清洗后分段数据/4.11失血2.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180411/清洗后分段数据/4.11失血3.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180411/清洗后分段数据/4.11失血4.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180411/清洗后分段数据/4.11失血5.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180411/清洗后分段数据/4.11失血6.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180411/清洗后分段数据/4.11补液1.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180411/清洗后分段数据/4.11补液2.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180411/清洗后分段数据/4.11降压.mat')

%% 20180509
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180509/清洗后分段数据/5.09失血1.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180509/清洗后分段数据/5.09失血2.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180509/清洗后分段数据/5.09补液.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180509/清洗后分段数据/5.09降压1.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180509/清洗后分段数据/5.09降压2.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180509/清洗后分段数据/5.09降压3.mat')
%% 20180606(透射式)
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180606/清洗后分段数据/6.06升压1.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180606/清洗后分段数据/6.06升压2.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180606/清洗后分段数据/6.06升压3.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180606/清洗后分段数据/6.06升压整合.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180606/清洗后分段数据/6.06失血1.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180606/清洗后分段数据/6.06失血2.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180606/清洗后分段数据/6.06降压1.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180606/清洗后分段数据/6.06降压2.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180606/清洗后分段数据/6.06降压3.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180606/清洗后分段数据/6.06降压4.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180606/清洗后分段数据/6.06降压5.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180606/清洗后分段数据/6.06降压6.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180606/清洗后分段数据/6.06降压7.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180606/清洗后分段数据/6.06降压8.mat')

%% 20180703
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/新数据/0703/透射式仪器测量数据/升压1.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/新数据/0703/透射式仪器测量数据/升压2.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/新数据/0703/透射式仪器测量数据/升压3.1.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/新数据/0703/透射式仪器测量数据/升压3.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/新数据/0703/透射式仪器测量数据/升压4.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/新数据/0703/透射式仪器测量数据/基线.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/新数据/0703/透射式仪器测量数据/失血1.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/新数据/0703/透射式仪器测量数据/失血2.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/新数据/0703/透射式仪器测量数据/失血3.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/新数据/0703/透射式仪器测量数据/失血4.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/新数据/0703/透射式仪器测量数据/失血5.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/新数据/0703/透射式仪器测量数据/失血6.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/新数据/0703/透射式仪器测量数据/降压1.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/新数据/0703/透射式仪器测量数据/降压2.mat')

%%
% data=data3;

%% 数据提取
% data=data(1:20000,:);
fs=1000;
T=10000;%取10s为一个周期。
n=length(data)/T;
m=floor(n);
for k=1:1:m
    segment=data(((k-1)*T+1):k*T,:);
    ecg=segment(:,2);
    ppg=segment(:,3);
    bp=segment(:,4);
%% 归一线性化的ppg记为u_ppg
lo=(ppg-mean(ppg))/std(ppg);%数据归一化 
u_ppg=detrend(lo);
%% 滤波后的ppg记为PPG
[~,d,uu]=ECG250(ecg,fs);
[PPG]=PPG250_3(ppg,fs);
[max_PPG]=find_peaks(d,PPG);
max_PPG=max_PPG-1;

[min_PPG]=find_peaks(d,-PPG);
min_PPG=min_PPG-1;

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
for i=1:1:length(d)-1
    m=1;
    num_min=[];
    for j=1:1:length(min_PPG)
        if min_PPG(j)>d(i)&&min_PPG(j)<d(i+1)
            num_min(m)=min_PPG(j);
            m=m+1;
        end
    end
    l_m=length(num_min);
    if l_m==1
           min_p(i)=num_min;         
    else
           min_p(i)=0;  
    end
end
%% 寻找PPG的波谷
% % s=1;
% % n=1;
% % tem=[];
% % for i=1:1:length(d)-1
% %     for j=1:1:length(max_p)
% %         if (d(i)<max_p(j))&(max_p(j)<d(i+1))
% %             tem=-PPG(d(i):max_p(j));
% %             c(j)=length(tem);%c为选取谷值的区间。
% %             ss=find(c==0);
% %             c(ss)=[];
% %             [min_pks,min_locs]=findpeaks(tem,'MinPeakDistance',(min(c)-2));
% %             l_min=length(min_locs);
% %                if l_min==1
% %                   min_p(j)=min_locs+d(i)-1;
% %                else
% %                   min_p(j)=0;
% %                end
% %         end
% %     end
% % end
%% 阈值最小值
% min_c=min(c);
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
max_p(max_p==0|max_r==0|min_p==0)=0;
min_p(min_p==0|max_r==0|max_p==0)=0;
max_r(max_r==0|max_r==0|min_p==0)=0;
max_p(max_p==0)=[];
min_p(min_p==0)=[];
max_r(max_r==0)=[];
%%  寻找AC与DC分量
for i=1:1:length(max_p)
    ac(i)=PPG(max_p(i))+PPG(min_p(i));
end
    dc=PPG(max_p);
for i=1:1:length(ac)
    q(i)=ac(i)/dc(i);
end
mean_ac(k)=mean(ac);
mean_dc(k)=mean(dc);
mean_q(k)=mean(q);
mean_bp_peak(k)=mean(BP(max_r));
ac=[];
dc=[];
q=[];
end

%% 求相关性和拟合直线
% mean_bp_peak(11)=[];
% mean_bp_peak(2)=[];
% 
% mean_q(11)=[];
% mean_q(2)=[];



PK_BP=mean_bp_peak;
figure(2)
plot(mean_q,PK_BP,'ro');
hold on; 
[p1,S1]=polyfit(mean_q,PK_BP,1);%求得拟合参数
y1=polyval(p1,mean_q);%求得拟合的直线   
R1=corrcoef(mean_q,PK_BP); %求得ac/dc和bp峰值的相关性
p1 %拟合直线的相关系数
R=R1(1,2)
plot(mean_q,y1);
xlabel('ac/dc','fontsize',10)
ylabel('BP','fontsize',10)
title('ad/dc与BP之前的关系')
%%
% figure(1)
% plot(uu)             %原始ecg
% hold on
% plot(d,uu(d),'+c','LineWidth',5)
% hold on
% plot(PPG)             %滤波后ppg
% hold on
% plot(min_p,PPG(min_p),'*k','LineWidth',5)      %ppg谷值
% hold on
% plot(max_p,PPG(max_p),'*k','LineWidth',5)        %ppg峰值
% hold on
% % plot(u_ppg,'r')      %原始ppg 
% % hold on
% plot(BP)               %滤波后bp
% hold on
% plot(max_r,BP(max_r),'ob','LineWidth',5)



