function ReName
% ================================================
% ���ܣ���ȡָ���ļ����ڵ��ļ�����������
% ʹ�÷�����1�������ļ����Ƶ���Ҫ�������������ļ����ڵ��ļ�����
%          2�����б��ļ�
%          3��ѡ����Ҫ���������ļ���������ѡ�񣩼���
% ע�⣺�µ��ļ�����Ҫ�Լ��ڴ���������
% Date:2019/10/4
% Author:ShenBaoyin 
% ================================================

% ��Ҫ�޸ĵ��ļ�����Ҳ��Ҫ�Լ��ڴ������޸�
[filename, pathname, filterindex] = uigetfile( ...
{  '*.mp4' }, ...
   'Pick the mp4 files', ...
   'MultiSelect', 'on');

if ischar(filename)
    filename = {filename};
end

for i = 1:length(filename)
    oldName = filename{i};
    fprintf('%s\n',oldName);
    newName = oldName;
    % ===========================================
    % �µ��ļ��������Ǿ����������
    newName(1:6) = [];
    % ===========================================
    fprintf('%s\n',newName);
    status = system(['rename' ' ' oldName ' ' newName]);
    if status==0
        disp(['�ļ�'  oldName  '�������ɹ�'])
    else
        disp(['�ļ�' oldName  '������ʧ��'])
    end
end
