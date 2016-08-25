http://daiyuwen.freeshell.org/gb/wubi/wubi.html

EMACS下的五笔字型输入法
简介
下载
安装和设置
使用方法
我需要您的支持
将来的计划
与我联系
简介

本软件是自由软件，按GPL发布。

2000年，我在陈向阳、方汉写的《Linux实用大全》上看到了如何为emacs添加输 入法的介绍。于是依葫芦画瓢，写了emacs的五笔字型输入法。最初的汉字 与五笔码的对应表是从cxterm下的五笔字型输入法里取来的（经过了格式转换）。 但是这样的输入法是建立在emacs的Quail的基础上的，没有办法方便地增加词组。 我写了一个简单的Perl程序，把积累起来的词组写入Wubi.el。但还是不能在输 入的过程中动态地添加词组；而且要用一种“外部”的语言来生成Lisp文件，有 损Lisp的威名。这个问题一直困扰着我，直到我学习了Lisp，写了 这个emacs下的五笔字型输入法。

本输入法是emacs下的五笔字型输入法，支持的字符集是GB2312，编码方式是 EUC-CN。可以在以下一些版本里运行：

    Emacs 20.x for Linux
    Emacs 21.x for Linux
    Emacs 20.x for Windows
    Emacs 21.x for Windows 

其它版本并不是说不能用，只是因为我只试了这几个版本。我估计只要是20 版以上的emacs（包括xemacs）都可以使用，因为本输入法是建在MULE的基础上 的，没有用到emacs的其它特性。如果您在其它的emacs版本上成功使用了本输入 法，请告诉我，我把它添加到上面的名单里去。
下载

请从此处下载五笔字型输入法。
安装和设置

本软件可以安装在任何您有权安装的目录里。下载之后，请在shell里执行 以下命令：

$ tar -C <destination_dir> -zxf wubi.tar.gz

其中<destination_dir>是目标目录。 有五个文件将会出现在 <destination_dir>/wubi目录里：WuBi.el[c]和WuBi_rules.el[c]，以及update.el。el结 尾的是Emacs Lisp源文件，elc结尾的是编译后的二进制文件。 然后在您的emacs初始化文件~/.emacs里增加如下的语句（请用实际目录代替 <destination_dir>）：

(add-to-list 'load-path "<destination_dir>/wubi")

(require 'wubi)
(wubi-load-local-phrases) ; add user's Wubi phrases

(register-input-method
 "chinese-wubi" "Chinese-GB" 'quail-use-package
 "WuBi" "WuBi"
 "wubi")

(if (< emacs-major-version 21)
    (setup-chinese-gb-environment)
  (set-language-environment 'Chinese-GB))

(setq default-input-method "chinese-wubi")

这几句Lisp代码的作用是设置中文环境、注册五笔字型输入法。保存.emacs后请 重新启动emacs，使得上面的设置生效。现在您可以用快捷键C-\ （同时按住 Ctrl和反斜线键）唤出五笔字型输入法了。在emacs的mode line上会出现“五笔 字型”的字样。如图：

modeline

再次用C-\可以关闭输入法。用命令M-x customize-group wubi可以定制词组 文件的名字：

customize

WuBi Phrases File指定存放用户自定义词组的文件。WuBi Phrases File El 是增加词组的lisp代码。这两个文件都由输入法自动生成，用户只要指定它们的位 置就可以了。它们的默认值分别是 ~/wubi-phrased.txt 和~/wubi-phrased.el。
使用方法
五笔输入
如果一个五笔码有一个以上候选词，您可以用空格键来选取当前高亮显示的那个； 也可以用数字键或箭头键来选取其它的词。以后这个词就会优先出现，用空格就可以选取 了。 如果您只知道一个字或词组的前几个五笔编码，可以用TAB键来列出所有可能的 候选者，类似标准五笔字型的z键。如图：

completion

本输入法没有按拼音查五笔编码的功能。
增加和删除词组

词组输入是五笔字型的优势。您可以用命令add-wubi增加词组。也就是说，M-x 后面跟add-wubi。如果词库中已经有了您所加的词组，add-wubi不会再次增加该 词组。加完之后你就立即可以用五笔字型的词组输入法来输入这个词组了。 （add-wubi还有一个作用：把您增加的词组保存在您定制的Wubi Phrase File里。 积累到一定数量后，大家可以交换这个文件，以丰富彼此的词组。）

用命令del-wubi可以删除一个词组。不过有个限制：如果这个词组是它的五笔码 的唯一候选者，就不能删除它。
全角和半角的切换
您可以用命令toggle-quanjiao切换全角和半角。在全角状态下，标点符号是与 汉字等宽的。这是键盘上的键与中文符号的对应表：
键盘上的键	中文符号
/	、
,	，
.	。
:	：
;	；
?	？
<	《 〈
>	》 〉
[	[ 【〖
]	] 】〗
\	…
-	- —
(	（
)	）
!	！
*	·
'	‘ ’
"	“ ”
中文特殊符号
GB2312字符集还定义了一些特殊符号，您可以用命令show-fuhao-table来显示所 有的符号，然后可以把您需要的符号复制到文本里去。

fuhao
设置快捷键

我们经常用到add-wubi，del-wubi等命令，可以为它们设置快捷键，emacs里的 术语叫做key binding。您可以按照自己的习惯，为这些命令设置快捷键。例如， 我用Ctrl-+来唤出add-wubi、Ctrl--来唤出del-wubi，在~/.emacs里，增加如下 两句：

;;; key bindings of WuBi
(global-set-key [?\C-+] 'add-wubi)
(global-set-key [?\C--] 'del-wubi)

批量增加词组

如果您手头有许多词组，可以把它们放在您定制的Wubi Phrase File里，. emacs里的(wubi-load-local-phrases)命令会把词组加入词库。
把词组真正加入到输入法里

用户增加的词组保存在一个单独的文件里（即用户指定的Wubi Phrase File）， 在emacs启动的时候动态地增加到五笔字型词库里去。因此在一个多用户的环境 里，每个用户有自己不同的词组文件。为了把用户的词组真正加入到输入法里， 让每个用户都能分享别人的词组，必须更新安装目录里的wubi-rules.el。如果 安装在系统目录里，只能由管理员来更新了。他不必懂emacs或lisp，只要这样 做就行：

# cp 五笔字型词组文件 五笔字型安装目录/wubi-phrases.txt
# emacs --batch -l update.el

wubi-rules.el被更新，加入的词组对所有用户都有效了。
我需要您的支持