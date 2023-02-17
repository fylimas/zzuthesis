for line in `cat .无用文件列表`
do
  echo "寻找并删除文件：*$line"
  # find ./ -name *$line -exec mv {} ./.trash/ \; syncthing有版本控制功能，因此这里不再保留版本
  find . \( -path ./.stfolder -path ./.stversions \) -prune -o -name *$line -exec rm -rv {} \;
done 