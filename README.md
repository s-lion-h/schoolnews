# 在线体验 <a href="http://news.slionh.com">http://news.slionh.com</a>
# schoolnews

校园新闻发布系统  
采用纯正原生servlet开发，  
对数据库的crud操作,  
主要模块是新闻，评论，热门，新闻数据库样式储存方式，置顶，user等等,  
数据表关系比较多，所以数据间关联性比较大，所以必须细化pojo的分类，同时由于将近30个servlet的开发让我意识到servlet之间必须要低耦合  
本次实训让我深刻体会到了spring、spring-mvc、mybatis框架的思想的优越性，  
尤其是mybatis的用对象的思想操作数据库，和springmvc的12个模块的功能也有了较深刻的理解，  
这次大概是最后一次用原生servlet、sql开发的project了  


# 部署说明

系统环境：win10家庭版  
服务器：tomcat 8.0  
数据库：mysql  
项目部署路径：D:\Tomcat 8.0\webapps\news  
部署文件：news.rar解压后放到上面路径  
文件服务器路径：D:\Tomcat 8.0\ueditor  
文件服务器压缩包：ueditor.rar  
```
Tomcat的服务配置service.xml的Host结点添加信息：  
<Context path="" docBase="D:/Tomcat 8.0/webapps/news/" reloadable="false" allowLinking="true"/>  
<Context path="/ueditor" docBase="D:/Tomcat 8.0/ueditor/" reloadable="false" allowLinking="true"/>  
（一个是默认化news项目为web根项目，一个是模拟的web服务器用于接收上传的文件服务）  
```
数据库：新建数据库schoolnews  
数据库数据：schoolnews.sql中  
  
测试管理员账号：huyungui@qq.com密码：huyungui  
测试用户账号：gayxuan@qq.com密码：gayxuan  
