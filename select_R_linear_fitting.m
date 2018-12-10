close all; 
clc;       
clear all; 
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
% data=data3;
%%
fs=1000;
condition=0; %0为不取平均值,1为取平均值。               
if condition==0
    choose=1;
    pingjun=0;
else
    choose=1;
    pingjun=1;
end
%% 根据原始信号计算出拟合所需要的有效点信息
[pwtt,BP,bp,p,uu]=usedbyplot(data,fs);
%% 
x=pwtt;
y=bp;   
x(y==0)=0;%将pwtt中bp和pwtt的所有干扰点位置置0
y(x==0)=0;%将bp中bp和pwtt的所有干扰点位置置0
x(x==0)=[];%将pwtt中干扰点删除,将点删除后，数据的会减少，位置也会相对移动。
y(y==0)=[];%将bp中干扰点删除
%% 确定gap的取值并计算出对应的自变量数据与因变量数据
% choose=0时，gap的选取为使拟合优度最佳的best_gap，并获取对应的自变量数据与因变量数据
%test_R只是计算给定确定值gap（每组成员的数量），然后分组。
if choose==0
i=0;
for gap=1:1:300
    i=i+1;
    RR(i,1)=gap;           %RR(i,1)为for循环按顺序选取的gap值，
    [RR(i,2),XX,YY]=test_R(x,y,gap); %获得相应的gap取值下，对应的自变量数据与因变量数据及拟合优度
                               %x,y为原始数据,gap,为间隔数据。XX,YY为平均数据，RR为拟合优度。
    %if abs(RR(i,2))==max(abs(RR(:,2)))                          
    if (abs(RR(i,2)))==max(abs(RR(:,2)))&((abs(RR(i,2)))~=1)  %获得拟合优度最佳的数据
    %    if abs(RR(i,2))~=1
        %if RR(i,2)==max(RR(:,2))
             XX_FIT=XX;
             YY_FIT=YY;
             linshi=i;
    end
end
linshi
clear X;
clear Y;
X=XX_FIT;
Y=YY_FIT;
end
%% choose=1时，gap为设定好的函数的输出值，并获取对应的自变量数据与因变量数据
if choose==1
     x_gap=length(x);    %x为删除干扰点的pwtt。
        if pingjun==1
             gap=ceil(0.03031*x_gap+0.54)%根据经过滤波及剔除异常点后的有效点个数 获取gap的取值
        end
        if pingjun==0
             gap=1
        end
     [~,X,Y]=test_R(x,y,gap); % 过去相应gap取值下对应的自变量数据与因变量数据，及拟合优度
end
%% 绘制拟合图像
% X(4)=[];
% X(464)=[];
% Y(4)=[];
% Y(464)=[];
% X(463)=[];
% Y(463)=[];
figure(1)
plot(X,Y,'ro');hold on;         
[p1,S1]=polyfit(X,Y,1);%求得拟合参数
y1=polyval(p1,X);%求得拟合的直线    
R1=corrcoef(X,Y); %求得X和Y的相关性
R=R1(1,2)
R2=corrcoef(y1,Y);%求得y1和Y的相关性
 plot(X,y1);
xlabel('PWTT','fontsize',10)
ylabel('BP','fontsize',10)
len=length(x)  %原始数据经过滤波，异常点剔除后的有效点个数
p1 %拟合直线的相关系数


