#Ghost-template-dodo

简洁风格的Ghost主题

案例可参考我的博客：http://blog.didispace.com

![demo](http://git.oschina.net/uploads/images/2016/0216/111911_6212f450_437188.png "demo")

## 版本说明

- Nodejs版本：0.10.x、0.12.x、4.2.x 。

- Ghost版本：0.7.4 

## 前端框架

- Bootstrap 3.3.5

## Ghost搭建

详细步骤：http://blog.didispace.com/nodejs-ghost/

## 主题说明

- 待添加


## 代码高亮

- highlight.js

进入后台，使用`插入代码`功能，将下面代码复制进去，保存即可

```html
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/highlight.js/9.1.0/styles/github.min.css">
<script src="//cdnjs.cloudflare.com/ajax/libs/highlight.js/9.1.0/highlight.min.js"></script>
<script>hljs.initHighlightingOnLoad();</script>
```

若要选用其他风格的代码样式，可在主页中浏览https://highlightjs.org/，并替换link中的css引用来更换。

比如：样例中的样式是github，如果要选择下面的样式，就改为引用：`zenburn.min.css`

![输入图片说明](http://git.oschina.net/uploads/images/2016/0218/093048_9e3736a0_437188.png "在这里输入图片标题")

## 添加统计

进入后台，使用`插入代码`功能，将“百度统计”，“CNZZ”之类的统计代码贴入即可。

## 后台运行

Forever (https://npmjs.org/package/forever)
你可以使用 forever 以后台任务运行 Ghost 。forever 将会按照 Ghost 的配置，当进程 crash 后重启 Ghost。

通过 npm install forever -g 安装 forever
为了让 forever 从 Ghost 安装目录运行，输入 NODE_ENV=production forever start index.js
通过 forever stop index.js 停止 Ghost
通过 forever list 检查 Ghost 当前是否正在运行