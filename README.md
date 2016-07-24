![](https://raw.github.com/meolu/walle-web/master/docs/logo.jpg)

Walle - A Deployment Tool
=========================

Walle 一个web部署系统工具，配置简单、功能完善、界面流畅、开箱即用！支持git、svn版本管理，支持各种web代码发布，PHP，Python，JAVA等代码的发布、回滚，可以通过web来一键完成。

[Home Page](https://www.walle-web.io) | [官方主页](https://www.walle-web.io) | [中文说明](https://github.com/meolu/walle-web/blob/master/docs/README-zh.md) | [文档手册](https://www.walle-web.io/docs/).

依赖
------------
 - php `apt-get install php5`
 - curl `apt-get install curl`
 - composer `curl -sS https://getcomposer.org/installer`
 - docker `apt-get install docker.io`
 - docker-compose  `http://get.daocloud.io/#install-compose`


安装
------------

    git clone https://github.com/leoMeee/walle-web-docker.git
    cd walle-web-docker
    composer install --prefer-dist --no-dev --optimize-autoloader -vvvv
    docker-compose build
    docker-compose up -d
    docker exec -ti wallewebdocker_php_1 ./yii walle/setup --interactive=0

登录
-----------
用户名:admin
密码:admin
