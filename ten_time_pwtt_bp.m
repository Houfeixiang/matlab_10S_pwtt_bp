%% 10s的长度为一个数据段，计算pwtt与bp峰值之前的关系。
close all; 
clc;       
clear all; 
%% 选取数据段
%% 20180329
load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180329/清洗后分段数据/3.29失血3.mat')
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
% data=data3;
%%
% data=data(1:20000,:);
fs=1000;
T=10000;%取10s为一个周期。
n=length(data)/T;
m=floor(n);
for i=1:1:m
        segment=data(((i-1)*T+1):i*T,:);
        [pwtt,BP,bp,p,uu,d]=usedbyplot(segment,fs);
           x=pwtt;
           y=bp;
           x(y==0)=0;
           y(x==0)=0;
           x(x==0)=[];
           y(y==0)=[];
           X(i)=mean(x);
           Y(i)=mean(y);   
end
%%
% X(68)=[];
% Y(68)=[];
% X(61)=[];
% Y(61)=[];
%% 绘制拟合图像
figure(1)
plot(X,Y,'ro');hold on;         
[p1,S1]=polyfit(X,Y,1);%求得拟合参数
y1=polyval(p1,X);%求得拟合的直线    
R1=corrcoef(X,Y); %求得X和Y的相关性
R=R1(1,2)
plot(X,y1)
xlabel('PWTT','fontsize',10)
ylabel('BP','fontsize',10)
len=length(x)  %原始数据经过滤波，异常点剔除后的有效点个数
p1 %拟合直线的相关系数
mean(diff(d))
