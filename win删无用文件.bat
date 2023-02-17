@ECHO OFF
CHCP 65001
FOR /F %%l in (.无用文件列表) DO (
ECHO "寻找并删除文件：*%%l"
DEL /s *%%l
)