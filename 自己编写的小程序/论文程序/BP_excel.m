%% MySQL���ݿ⵼������ʾ������

% ��ʼ������
clear;
%% �������ݿⲢ��ѯ
inputfile = '/data_mange.xls';   % ѵ������
data=xlsread(inputfile)
inputdata = data(:,2:12)' % ����ѵ������
outputdata=data(:,13:16)'

net = newff(inputdata,outputdata,4);
net.trainParam.epochs=100;
net.trainParam.show=10;
net.trainParam.goal=1e-5;
% net.trainParam.lr=0.05;
disp('ѵ��BP��������...')
net=train(net,inputdata,outputdata);      % ע��tr�������ѵ����Ϣ���˴�Ϊһ�����

