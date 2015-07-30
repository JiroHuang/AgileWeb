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

现在，我们所做的都是在本地电脑上进行的。使用 github 提供的服务，我们可以把项目文件推送到 github 提供的远程仓库里面，这样，你就不用担心意外删除掉在本地电脑上的项目文件了，因为你在远程的仓库里面，还有一个备份。你可以先去注册一个 github 帐号，登录以后，去创建一个远程仓库：

点击页面右上角的 + 号，Repository name 这里，输入仓库的名称Description 是可以选填的描述信息Public 公开或 Private 私密，如果你不想让别人看到你的项目的代码，应该选择 Private。点击 Create repository
Github入门指南

创建完成以后，github 会给你提示，你可以在本地去创建一个新的仓库，也可以把本地上已有的仓库推送到创建的这个 github 的远程仓库里面。下面，我们把之前创建的 app-project 这个项目推送上去：

git remote add origin 你的github仓库地址

git push -u origin master

上面这两行命令是，先去为项目添加一个远程的仓库，告诉 git 这个远程仓库的地址是啥，这个仓库是由 github 提供的，然后使用 git push ，去把 master 这个分支推送到这个远程的仓库里面。

这会提示你输入你在 github 上的用户名还有密码：
Github入门指南
3

完成以后，你可以打开在 github 上的你的项目，你会发现项目里的文件已经显示出来了。在本地上，你可以继续使用 git 去提交修改，创建分支，然后想要把修改的东西推送到 github 上，可以使用命令：
Github入门指南
