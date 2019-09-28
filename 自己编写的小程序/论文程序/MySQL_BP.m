%% MySQL���ݿ⵼������ʾ������
% ��ʼ������
clear;
%% �������ݿⲢת������
conn = database('mysql', 'liyang', '123456', 'com.mysql.jdbc.Driver', 'jdbc:mysql://localhost:3306/mysql');
%�������ݿ⣬���ݿ������û������û����룬jdbc������localhost���ؼ���������ݿ�����
data_mange = exec(conn, 'select * from data1_gm11');     % �������ݿ��
data_mange = fetch(data_mange);                          % ��ȡ���ݱ�
setdbprefs('DataReturnFormat','cellarray');   %�����ȡ�ı�������..Ĭ�Ϸ�������Ҳ��cellarray��Ԫ��������ʽ
close(conn);                                  %�ر����ݿ�����
datafile= data_mange.Data                     % ��ȡ���ݣ�Ԫ���������ʽ��������ָ�룩
%��Ԫ������ת������������Ԫ�������൱��ָ�����ʽ
data=cell2mat(datafile)           %��������Ϊfloat��int��������str����
%data=cellfun(@str2num,data1)     %Ԫ����������Ϊstr�����ݿ��Ĭ����ʽvarcharҲ��str   

%%��������
netfile = 'C:\Users\liyang\Desktop\����\MATLAB\net.mat'; % ѵ���õ������籣��·��
nlayer=12;                                               %������������Ԫ����

%% ��ȡ���ݣ������������������ѵ������
inputdata = data(1:20,2:7)';          %����ѵ������
outputdata=data(1:20,8:8)';           %�������
predict_input=data(19:20,2:7)';       %ȡ���������֤
predict_output=data(19:20,8:8)'       %ȡ���������֤
%%���ݹ�һ��
input=mapminmax(inputdata);           %�����С��һ��
output=mapminmax(outputdata);         

net = newff(input,output,nlayer);     %�½�������
net.trainParam.epochs=100;            %���ѵ������
net.trainParam.show=10;               %ÿ�����ٲ���ʾһ��ѵ�����
net.trainParam.goal=1e-5;             %��С���
net.trainParam.lr=0.05;               %ѧϰ����
disp('ѵ��BP��������...')
net=train(net,input,output);          %ע��tr�������ѵ����Ϣ���˴�Ϊһ�����

%% ����ѵ���õ�BP������
save(netfile,'net');                  %��ѵ���õ������籣�浽net.mat��
disp('ѵ���õ�BP������ģ�ʹ��뵽net.mat�У�')

%%ʹ��ѵ���õ�ģ�ͽ���Ԥ��
mse=sim(net,predict_input)            %���������е����
disp('Ԥ�����')
