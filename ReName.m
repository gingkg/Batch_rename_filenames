function ReName
% ================================================
% 功能：获取指定文件夹内的文件名并重命名
% 使用方法：1、将本文件复制到需要批量重命名的文件所在的文件夹内
%          2、运行本文件
%          3、选择需要重命名的文件（可批量选择）即可
% 注意：新的文件名需要自己在代码中设置
% Date:2019/10/4
% Author:ShenBaoyin 
% ================================================

% 需要修改的文件类型也需要自己在代码中修改
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
    % 新的文件名可以是具体情况设置
    newName(1:6) = [];
    % ===========================================
    fprintf('%s\n',newName);
    status = system(['rename' ' ' oldName ' ' newName]);
    if status==0
        disp(['文件'  oldName  '重命名成功'])
    else
        disp(['文件' oldName  '重命名失败'])
    end
end
