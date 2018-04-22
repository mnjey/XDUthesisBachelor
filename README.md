# 西电本科生学位论文LaTeX模板
目前已满足基本需求，可以正常使用，细节待优化；<br>
参考自电子工程学院齐飞老师：[xduthesis](https://github.com/fredqi/xduthesis)；<br>
本模板开发和测试所使用的 TeX 发行版是 texlive ；<br>
需要使用 XeLaTeX 和 xeCJK 宏包（这两个必须安装）；<br>
任何使用本模板造成的格式错误等问题，均由模板使用者个人承担；<br>
使用其他TeX发行版本导致编译失败，耽误时间等问题请模板使用者自己解决；<br>
如编译过程中提示字体缺失，安装相应字体后重新编译即可。<br>

## 模板文件（xduthesis.cls)更新说明
移除Adobe字体支持，默认使用msfont；<br>
修改了一些显示效果。<br>


## 需要的字体
 - `Times New Roman`
 - `Arial`
 - `Courier Std`
 - `SimSun`
 - `SimHei`

## 文件说明

模板中的各个文件功能如下：<br>
 - `thesis-bachelor.tex` 本科学位论文主文档<br>
 - `abstract.tex` 摘要<br>
 - `ch01-intro.tex` 模板总体说明//第一章<br>
 - `ch02-options.tex` 模板选项介绍//第二章<br>
 - `ch03-frontmatter.tex` 论文前置部分使用说明//第三章<br>
 - `ch04-mainmatter.tex` 论文主体部分使用说明//第四章<br>
 - `ch05-backmatter.tex` 论文后置部分使用说明//第五章<br>
 - `ch06-conclusions.tex` 参考文献排版指南//第六章，结论<br>
 - `acknowledgments.tex` 致谢<br>
 - `thebibliography.tex` 参考文献<br>
 - `SConstruct` 用于自动编译论文的 scons 脚本<br>
 - `xdulogo.eps` 校徽<br>
 - `xdubadge.eps` 本科学位论文使用的校名图案<br>
 - `xduthesis.dtx` 模板文件及说明文档<br>
 - `xduthesis.ins` 模板安装配置文件<br>
 - `xduthesis.cls` 模板文件<br>

