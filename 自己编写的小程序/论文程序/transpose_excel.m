%% ��Excel��ľ���ת��
outputfile = xlsread('C:\Users\liyang\Desktop\bianli2/data.xls');      %��һ����ȡҪд���excel�ļ�
rangefile = [outputfile'];
xlswrite('C:\Users\liyang\Desktop\bianli2/data2.xls',rangefile);       %ת�ú���±�
disp('�������');