%%���������ļ����е��ļ��������������ݰ��е�����Excel��

source_address = 'C:\Users\liyang\Desktop\bianli';     %������Ҫ������ļ���ַ 
source_list = dir(source_address);                     % ����Դ�ļ����µ��ļ�
for numlist=1:length(source_list)  
    alldirfile = fullfile(source_address,source_list(numlist).name,'*.jpg');   % ѡȡ��׺��Ϊ��jpg�����ļ�
    all_select = dir(alldirfile);                                              % ��ȡ���к�׺Ϊ.jpg���ļ� 
    for select_use=1:length(all_select)   
       select_name = fullfile(source_address,source_list(numlist).name,all_select(select_use).name);
       %ѡȡȫ�������������ļ�
       %%��չ%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
       select_data = imread(select_name);             % ���ζ�ȡͼ��
       %%��չ%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     
       outputfile = xlsread('C:\Users\liyang\Desktop\bianli2/data.xls');      %��һ����ȡҪд���excel�ļ�
       rangelong = size(outputfile,1)+1;      %��ȡ�ļ���������+1����Ϊ��һ�������޷�������ʵ�ʶ���5�У�+1���ʾ����һ��
       xlswrite('C:\Users\liyang\Desktop\bianli2/data.xls',select_use,1,num2str(rangelong))         
   end  
end 
disp('�������');