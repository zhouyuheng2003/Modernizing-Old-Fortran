# Modernizing-Old-Fortran
## Project Description
Our goal is to **modernize** old fortran from FORTRAN 77 to Fortran 90.
在下文中统一简称FORTRAN 77为**F77**，Fortran 90为**F90**。

## Difference Between FORTRAN 77 and Fortran 90
### FORTRAN 77 列位置规则
```
Col. 1    : Blank, or a "c" or "*" for comments
Col. 1-5  : Statement label (optional)
Col. 6    : Continuation of previous line (optional)
Col. 7-72 : Statements
Col. 73-80: Sequence number (optional, rarely used today)
```
F77中大部分行都需要用6个空白开头，而在F90中该规则已被舍去。

### 其它
由于F90兼容F77，所以一些在F90中不推荐的用法也可以被运行。
<!-- 如==的老版本.EQ.在F90中可以运行。F77在字符串的''和""上有区分，但对F90似乎影响较小。 -->
### 总结
| 内容 | F77 | F90 | 转换方法|
|--|--|--|--|
|扩展名|固定格式.f或.for|自由格式.f90|调整新建文件后缀|
| 注释 |根据column position rules在位置1置为'c'|在任意位置打入'!'|识别并替换|
|内容延续|根据column position rules在位置6置为'+'，可以让单词从中间分开|在行末放'&'，不可以分开单词|F77多行拼成F90一行，超出F90限制需特殊处理|
|列宽|程序应放在7-72列|程序自由放置，不能超过132列|需要清理其它位置的信息|
|变量名长度|不超过6|不超过31|一般无需处理|

## Fortran语言特点
### 混合大小写
该语言不区分大小写，例如$X$和$x$是相同的变量。
### 没有强制缩进
除了特别的固定格式，其余部分没有强制缩进。

## 现有方法测试
### [8][f77tof90](https://github.com/mattdturner/f77tof90/tree/master)
#### 优点
能运行，可以完成诸如换行，注释等内容的转换
#### 不足
无法处理goto，以及其文档中提到的continue语句
#### 测试方法
spyder打开代码后，命令行输入如下指令运行：
```
runfile('K:/Document/Modernizing-Old-Fortran/tool/f77tof90.py', wdir='K:/Document/Modernizing-Old-Fortran/tool',args='K:/Document/Modernizing-Old-Fortran/tool/complex.f')
```
注意最后一个文件是要编译的文件名，并及时调整路径。
### [10][Polyhedron](https://polyhedron.com/?product=plusfort)
付费的
### [11][CamFort](https://camfort.github.io/)
提供规范和验证
## Reference
[1][简洁的F77英文介绍](https://web.stanford.edu/class/me200c/tutorial_77/)

[2][F77转F90中文简要介绍:JeffHuge,Fortran77到Fortran90的注意之处,2024.3.25](https://jeffhughlee.blogspot.com/2014/04/fortran77fortran90.html)

[3][Fortran官网](https://www.fortran90.org/)

[4][nancygreen,Fortran77-90-95,2024.3.25](https://blog.csdn.net/nancygreen/article/details/8855963)

[5][lemonlab/f2f archive](https://bitbucket-archive.softwareheritage.org/projects/le/lemonlab/f2f.html)

[6][F77_TO_F90](https://people.math.sc.edu/Burkardt/f_src/f77_to_f90/f77_to_f90.html)

[7][f2f90](https://github.com/btrettel/f2f90)

[8][f77tof90](https://github.com/mattdturner/f77tof90/tree/master)

[9][A related question](https://fortran-lang.discourse.group/t/modernizing-fortran-code-transitioning-to-fortran-90/6456)

[10][Polyhedron](https://polyhedron.com/?product=plusfort)

[11][CamFort](https://camfort.github.io/)

[12][Modernizing Old Fortran](https://fortranwiki.org/fortran/show/Modernizing+Old+Fortran)

[13][old-programming-idioms](https://github.com/arjenmarkus/old-programming-idioms)

[14][Fortran-wikipedia](https://zh.wikipedia.org/wiki/Fortran)