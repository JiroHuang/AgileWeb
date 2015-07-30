# AgileWeb

PS：该应用主要是基于“应用Rails进行敏捷开发-第三版”这本电子书，依据个人爱好而开发的一款小型购物网站。

联系方式：<a href="http://user.trustie.net/users/12" target="_Blank">个人主页</a>

<h3>GIT分支管理说明</h3>

前面我们创建了一个 Git 仓库，里面有一个叫 master 的分支，假设现在我们想去尝试一下新的想法，你可能并不知道这些想法是否可行，但是决定要去试一下。这时，可以去创建一个新的分支，在这个分支里你可以继续对项目去做修改，然后提交，这些提交不会影响到其它的分支，最终我们可以去合并分支。创建新的分支可以这样：

git branch phoenix git checkout phoenix

返回：

Switched to branch 'phoenix'

上面两条命令的意思是，去创建一个叫做 phoenix 的分支，然后切换到 phoenix 这个分支。上面这两行命令也可以合并成一行命令：

git checkout -b phoenix

现在你可以去修改一下 index.html。比如改一下 index.html 的页面标题，完成以后，再去提交一下：

git add index.html git commit -m '把网页标题修改为 phoenix'

返回：

[phoenix b5db411] 把网页标题修改为 phoenix 1 file changed, 1 insertion(+), 1 deletion(-)

上面这个提交是在 phoenix 这个分支下面做的，你可以试着再切换到 master 分支，然后再查看一下 index.html 这个文件。你会发现 index.html 没有什么变化，如果你决定要把在 phoenix 这个分支所做的修改合并到 master 分支上面，可以这样做：

git checkout master git merge phoenix

先切换到 master 分支，然后把 phoenix 分支合并过来，现在，再去查看一下 index.html 文件，你会发现，在 phoenix 分支下所做的修改，在 master 分支上也会体现出来。
