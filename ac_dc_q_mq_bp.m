close all; 
clc;       
clear all; 
%% ac_dc_q_mq_bp，四个值与bp的相关性。
%% 数据下载
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180329/清洗后分段数据/3.29失血3筛选.mat')
%%
fs=1000;
ecg1=data(:,2);
ppg1=data(:,3);
bp1=data(:,4);
%% ecg
[st_ll1,d1,uu1]=ECG250(ecg1,fs);
[PPG1]=PPG250_3(ppg1,fs);
[BP1]=BP250_3(bp1,fs);

%%
T=10000;%取10s为一个周期。
wn=length(data)/T;
wm=floor(wn);
for k=1:1:wm;
    segment=data(((k-1)*T+1):k*T,:);
    ecg=segment(:,2);
    ppg=segment(:,3);
    bp=segment(:,4);
%% ecg
[st_ll,d,uu]=ECG250(ecg,fs);
%% ppg
[PPG]=PPG250_3(ppg,fs);
[p1,loc1]=findpeaks(PPG,'MinPeakDistance',(min(diff(d))-20));
min_d=min(diff(d));
%% PPG波峰
%% 寻找PPG波峰
s=1;
for i=1:1:length(d)-1
    m=1;
    num_min=[];
    for j=1:1:length(loc1)
        if loc1(j)>d(i)&&loc1(j)<d(i+1)
            num_min(m)=loc1(j);
            m=m+1;
        end
    end
    l_m=length(num_min);
    if l_m==1
           c1(i)=num_min;         
    else
           c1(i)=0;  
    end
end
%% PPG波谷
s=1;
n=1;
tem=[];
for i=1:1:length(d)-1
    for j=1:1:length(c1)
        if (d(i)<c1(j))&(c1(j)<d(i+1))
            tem=-PPG((d(i)):c1(j));
            c(j)=length(tem);%c为选取谷值的区间。
            ss=find(c==0);
            c(ss)=[];
            min_c=min(c);
            [p2,loc2]=findpeaks(tem,'MinPeakDistance',min(c)-2);
            l_min=length(loc2);
               if l_min==1
                  c2(j)=loc2+d(i);
               else
                  c2(j)=0;
               end
        end
    end
end
%% bp
[BP]=BP250_3(bp,fs);
[p3,loc3]=findpeaks(BP,'MinPeakDistance',(min(diff(d))-20));
%% 两个R波之间BP只能有一个波峰，一个波谷。
s=1;
for i=1:1:length(d)-1
    m=1;
    num_min=[];
    for j=1:1:length(loc3)
        if loc3(j)>d(i)&&loc3(j)<d(i+1)
            num_min(m)=loc3(j);
            m=m+1;
        end
    end
    l_m=length(num_min);
    if l_m==1
        c3(i)=num_min;
    else
        c3(i)=0;
    end
end
%%
th=min([length(c1) length(c2) length(c3)]);
c1=c1(1:1:th);
c2=c2(1:1:th);
c3=c3(1:1:th);
%%
c1(c2==0|c3==0)=0;
c2(c1==0|c3==0)=0;
c3(c1==0|c2==0)=0;
c1(c1==0)=[];
c2(c2==0)=[];
c3(c3==0)=[];
%%  寻找AC与DC分量
for i=1:1:length(c1)
    ac(i)=PPG(c1(i))-PPG(c2(i));
end
    dc=PPG(c1);
for i=1:1:length(ac)
    q(i)=ac(i)/dc(i);
end
mean_ac(k)=mean(ac);
mean_dc(k)=mean(dc);
qq(k)=mean_ac(k)/mean_dc(k);
mean_q(k)=mean(q);
mean_bp(k)=mean(BP(c3));
ac=[];
dc=[];
q=[];
end
%% plot
figure(1);
plot(uu,'r')
hold on
plot(d,uu(d),'*k')
hold on
plot(PPG,'k')
hold on
plot(c1,PPG(c1),'+c','LineWidth',2)
hold on
plot(c2,PPG(c2),'+c','LineWidth',2)
hold on
plot(BP,'b')
hold on
plot(c3,BP(c3),'+g','LineWidth',2)
dd=length(d)
cc=length(c1)
%%
figure(2)
plot(uu1,'r')
hold on
plot(d1,uu1(d1),'*k')
hold on
plot(PPG1,'k')
hold on
plot(BP1,'b')
%%
mean_bp_qq1=mean_bp;
mean_bp_qq2=mean_bp;
mean_bp_qq3=mean_bp;
df1=find(qq>-100);
df2=find(mean_ac>-100);
df3=find(mean_dc>-100);
qq=qq(df1);
mean_bp_qq1=mean_bp_qq1(df1);
mean_ac=mean_ac(df2);
mean_bp_qq2=mean_bp_qq2(df2);
mean_dc=mean_dc(df3);
mean_bp_qq3=mean_bp_qq3(df3);

%%
df=find(mean_q>-100);
mean_q=mean_q(df);
mean_bp_qq=mean_bp;
mean_bp=mean_bp(df);
%% q与BP峰值的相关性。(qq)
figure(3)
subplot(2,2,1)
PK_BP=mean_bp_qq1;
plot(qq,PK_BP,'ro');
hold on; 
[p1,S1]=polyfit(qq,PK_BP,1);%求得拟合参数
y1=polyval(p1,qq);%求得拟合的直线   
R1=corrcoef(qq,PK_BP); %求得ac/dc和bp峰值的相关性
p1; %拟合直线的相关系数
q_R=R1(1,2);
plot(qq,y1);
xlabel('ac/dc','fontsize',10)
ylabel('BP','fontsize',10)
title('ac/dc与BP之间的关系')
%% ac(幅值)与BP峰值的相关性。(mean_ac)
subplot(2,2,2)
PK_BP=mean_bp_qq2;
plot(mean_ac,PK_BP,'ro');
hold on; 
[p1,S1]=polyfit(mean_ac,PK_BP,1);%求得拟合参数
y1=polyval(p1,mean_ac);%求得拟合的直线   
R1=corrcoef(mean_ac,PK_BP); %求得ac/dc和bp峰值的相关性
p1;%拟合直线的相关系数
ac_R=R1(1,2);
plot(mean_ac,y1);
xlabel('ac/dc','fontsize',10)
ylabel('BP','fontsize',10)
title('ac(幅值)与BP之间的关系')
%% dc(峰值)与BP峰值的相关性。(mean_dc)
subplot(2,2,3)
PK_BP=mean_bp_qq3;
plot(mean_dc,PK_BP,'ro');
hold on; 
[p1,S1]=polyfit(mean_dc,PK_BP,1);%求得拟合参数
y1=polyval(p1,mean_dc);%求得拟合的直线   
R1=corrcoef(mean_dc,PK_BP); %求得ac/dc和bp峰值的相关性
p1; %拟合直线的相关系数
dc_R=R1(1,2);
plot(mean_dc,y1);
xlabel('ac/dc','fontsize',10)
ylabel('BP','fontsize',10)
title('dc(峰值)与BP之间的关系')
%% q与BP峰值的相关性。(mean_q)
subplot(2,2,4)
PK_BP=mean_bp;
plot(mean_q,PK_BP,'ro');
hold on; 
[p1,S1]=polyfit(mean_q,PK_BP,1);%求得拟合参数
y1=polyval(p1,mean_q);%求得拟合的直线   
R1=corrcoef(mean_q,PK_BP); %求得ac/dc和bp峰值的相关性
p1; %拟合直线的相关系数
mean_q_R=R1(1,2);
plot(mean_q,y1);
xlabel('ac/dc','fontsize',10)
ylabel('BP','fontsize',10)
title('q与BP之间的关系')
%%
aa=[q_R ac_R dc_R mean_q_R]
