ThingsBoard 网站（文档）简体中文翻译项目
=======================================

同步于 2020-02-18 日的版本 [1465f29](https://github.com/thingsboard/thingsboard.github.io/commit/1465f29b1194fa92833b06c5d97378c8c04b8eef)。


本项目的目标是对 ThingsBoard 网站，特别是文档进行简体中文翻译，并与 [原网站](https://github.com/thingsboard/thingsboard.github.io) 更新内容保持同步。


编译版本可直接查看网页 [thingsboard.atjiang.com](http://thingsboard.atjiang.com)。


## 项目翻译进度和译者如下

### _includes/

- [x] \_includes/head-header.html (2020-02-24)
- [x] \_includes/footer.html (2020-02-24)


## 如何贡献翻译

1. [新建一个 issue](https://github.com/haiiiiiyun/thingsboard.cn/issues/new)，说明要翻译哪部分，注意翻译之前先看看 issues 里面有没有人已经认领了
2. fork 之后，翻译 `zh_CN` 中的相应文档，并在本地预览，如果不知道如何在本地启动，可以参考[如何在本地启动](https://github.com/haiiiiiyun/thingsboard.cn#如何在本地启动)
3. 注意在 File metadata 中将自己加入到 `translators` 字段，若无此字段，则添加一个
4. 注意在 File metadata 中更新 `updated`，若无此字段，则添加一个
5. 提交一个 pull-request，等待审核

## 如何在本地启动

1. 安装 docker 和 docker-compose
2. 删除 `zh_CN/_site/` 目录和 `zh_CN/.jekyll-metadata`, 如果有的话
3. 运行 `docker-compose up`
4. 在浏览器中访问 `http://localhost:4000/`

## 如何查看成果

更新内容一旦合并后，可以在 [http://thingsboard.atjiang.com](http://thingsboard.atjiang.com) 上看到成果。


# 以下是原 README 内容

## Instructions for Contributing to the Docs/Website

* [Fork this repository](https://help.github.com/articles/fork-a-repo/)
* [Deploy the site locally](#deployment-of-the-site-locally)
* Add your changes
* [Create Pull Request](https://help.github.com/articles/creating-a-pull-request/)

## Deployment of the site locally

The below commands setup your environment for running GitHub pages locally. 
Any edits you make will be viewable on a lightweight webserver that runs on your local machine.

Install Ruby 2.2 or higher. If you're on Ubuntu 18.04.2 LTS, run these commands:

	sudo apt-get install software-properties-common
	sudo apt-add-repository ppa:brightbox/ruby-ng
	sudo apt-get update
	sudo apt-get install make ruby ruby-dev libffi-dev g++ zlib1g-dev
	sudo gem install github-pages
	sudo gem install jekyll bundler

* If you're on a Mac, follow [these instructions](https://gorails.com/setup/osx/).
* If you're on a Windows machine you can use the [Ruby Installer](http://rubyinstaller.org/downloads/). During the installation make sure to check the option for *Add Ruby executables to your PATH*.


Clone our site:

	git clone https://github.com/thingsboard/thingsboard.github.io.git

Make any changes you want. Then, to see your changes locally:

	cd thingsboard.github.io
	bundle install
	bundle exec jekyll serve --host 0.0.0.0
	
In case you change the layout or website structure you might need to execute following command:

        rm -rf _site .jekyll-metadata && bundle exec jekyll serve --host 0.0.0.0


Your copy of the site will then be viewable at: [http://localhost:4000](http://localhost:4000)
(or wherever Jekyll tells you).
