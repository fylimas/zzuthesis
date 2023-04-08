# zzuthesis模版

⚠️由于网络原因，[github上zzuthesis仓库](https://github.com/fylimas/zzuthesis.git)可能下载速度很慢，请移步[gitee上zzuthesis仓库](https://gitee.com/fylimas/zzuthesis) ，但是从gitee下载，需要注册登录😂。

zzuthesis模版是参照《郑州大学学位论文写作规范格式》编制的非官方LaTeX模版，目的是摆脱word公式、图表、参考文献的图注、交叉引用的奇奇怪怪的问题，并提前学习和了解学术界的事实排版工具TeX。

zzuthesis最早由Xiaoshuai Yuan以清华大学thuthesis的LaTeX模版为蓝本，根据《郑州大学学位论文写作规范格式》修改得到，见https://github.com/tuxify/zzuthesis。本模版在Xiaoshuai Yuan的基础上，参照

针对最新[郑州大学学位论文写作规范](http://gs.zzu.edu.cn/info/1045/6818.htm)和[学位论文原创性声明 使用授权声明](http://gs.zzu.edu.cn/info/1053/11828.htm)做了进一步修正：1. 修复了一些bug；2. 更正中文封面页格式、英文摘要字体、声明页内容、参考文献、致谢、个人简历等格式。

# 1. 使用方法

首先，安装MiKTeX+texstudio（或TeXLive+texstudio/由于TeXLive动辄xG，安装耗时30min+，不建议TeXLive；CTeX长时间未更新），**掌握基本的源代码、宏包、编译概念，以及文档的内容、样式概念**；注意，首次用到某宏包package时，MiKTeX需现场下载，这也是MiKTeX比TeXLive小的原因；

然后，**打开 `正文.tex` 阅读代码，编译查看代码与pdf的对应关系**，大致清楚代码的作用；

最后，**掌握1. 公式的输入，`\label{}`加标签，`\eqref{}`交叉引用；2. 图表的输入，`\label{}`加标签，`\ref{}`交叉引用；3. 参考文献bib文件基础，`\includebibliography{}`引入，`\cite{}`交叉引用**，即可畅快自由的写论文。

完全不用纠结word的公式、图表、参考文献的图注、交叉引用的奇奇怪怪的问题！

# 2. 模板编译

## 2.1 编辑器编译【建议】

点击texstudio编译按钮，自动根据magic comment进行编译

## 2.2 手动编译

```shell
# 正文
xelatex 正文
bibtex 正文
xelatex 正文
xelatex 正文

# 封面（不必须，打印店有）
xelatex spine
xelatex a3cover
```

## 2.3 自动化脚本

## Linux/macOS 系统采用 Makefile：

* `make all`       等于 `make thesis && make a3cover`(默认选项)；
* `make thesis`    生成论文 main.pdf；
* `make a3cover`   生成封面 a3cover.pdf；
* `make clean`     清理中间文件；

Windows 系统则采用批处理脚本 msmake.cmd：
* `msmake thesis`    生成论文 main.pdf（默认选项）；
* `msmake a3cover`   生成封面 a3cover.pdf；
* `msmake clean`     清理中间文件；
