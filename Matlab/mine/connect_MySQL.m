%% MySQL���ݿ⵼������ʾ������

% ��ʼ������
clear;
datafile='C:\Users\liyang\Desktop\����\MATLAB\data_mange.xls';    %�������ݵı���·��
%% �������ݿⲢ��ѯ
conn = database('mysql', 'liyang', '123456', 'com.mysql.jdbc.Driver', 'jdbc:mysql://localhost:3306/mysql');
%�������ݿ⣬���ݿ������û������û����룬jdbc������localhost���ؼ���������ݿ�����
data_mange = exec(conn, 'select * from data_mange'); % ���ݿ����
setdbprefs('DataReturnFormat','cellarray');          %���ö�ȡ��ʽΪԪ��������ʽ
data_mange = fetch(data_mange); % ��ȡ����

%% ��������
data = data_mange.Data; % ��ȡ����
xlswrite(datafile,data);%д�뵽xls�ļ�
fprintf('�����ɹ�')   %��ʾ�����ɹ�