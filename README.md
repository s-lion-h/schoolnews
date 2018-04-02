# schoolnews
校园新闻发布系统
本次实训由于采用纯正原生servlet开发，让我重新复习了list、接口、接口的实现类，拦截器等等，
对数据库的crud操作，使每次操作数据都应该使用面向对象的思想，而不是sql语句，
这次实训室新闻发布系统，主要模块是新闻，评论，热门，新闻数据库样式储存方式，置顶，user等等等等，
数据表关系比较多，所以数据间关联性比较大，所以必须细化pojo的分类，同时由于将近30个servlet的开发让我意识到servlet之间必须要低耦合
，否则将让项目文件乱成一团。本次实训让我深刻体会到了spring、spring-mvc、mybatis框架的思想的优越性，
尤其是mybatis的用对象的思想操作数据库，和springmvc的12个模块的功能也有了较深刻的理解，
这次大概是最后一次用原生servlet、sql开发的project了，
往后将吸取优秀的框架思想，同时优化代码结构，提高部分算法的效率。


部署说明
系统环境：win10家庭版
服务器：tomcat 8.0
数据库：mysql
项目部署路径：D:\Tomcat 8.0\webapps\news
部署文件：news.rar解压后放到上面路径
文件服务器路径：D:\Tomcat 8.0\ueditor
文件服务器压缩包：ueditor.rar
Tomcat的服务配置service.xml的Host结点添加信息：
<Context path="" docBase="D:/Tomcat 8.0/webapps/news/" reloadable="false" allowLinking="true"/>
<Context path="/ueditor" docBase="D:/Tomcat 8.0/ueditor/" reloadable="false" allowLinking="true"/>
（一个是默认化news项目为web根项目，一个是模拟的web服务器用于接收上传的文件服务）
数据库：新建数据库schoolnews
数据库数据：schoolnews.sql中
测试管理员账号：huyungui@qq.com密码：huyungui
测试用户账号：gayxuan@qq.com密码：gayxuan
项目源码：snews.rar
version1.0的分支是原部署内容
version1.1的是分开了项目源码
