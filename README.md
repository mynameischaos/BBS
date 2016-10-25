## 活动发布论坛

[![License](http://img.shields.io/badge/license-MIT-brightgreen.svg)](http://opensource.org/licenses/MIT)


### 技术栈

`Java EE`  `Mysql`  `Spring` `SpringMVC`  `Mybatis`  `JavaScript` `PJAX`
`Maven` 


### 已有功能


- 单页面
- 登录
- 注册
- 回复
- 修改头像
- 发布文章
- 回复文章
- @圈人
- 支持 markdown
- 支持 图片拖拽、粘贴上传
- 支持 网易云音乐插入
...


### 如何运行

1. `$ git clone https://github.com/mynameischaos/BBS.git`

2. 导入到 IntelliJ IDEA/~~Eclipse~~ 配置项目

	* 修改 `local/env-config.properties` (账号，密码，使用的数据库名称)
	
	* 设置 Project Structure
	
		* Project中JDK设置成1.7
		
		* Modules中添加Spring, 其中添加spring-mvc.xml, spring-mybatis.xml, spring.xml， 添加Web, 其中Path指向web.xml， Web Resource Directory设置成main/webapp, Path Relative to Deployment Root设置成 / 
		
		* Libraries中添加所有的Maven生成的库
		
		* Artifacts中， Type选择Web Application:Exploded, 将WEB-INF添加到<output root>, 然后在WEB-INF下添加之前的Facts中的Web(也就是Modules中的Web)


3. 因为采用的Mybatis是半自动化的，所以要自己创建数据库和数据库关系表
	
	*  `CREATE DATABASE honey`
	
	*  `source mysql_bak/honey_bak.sql;` (导入mysql_bak目录下备份的数据库)
	
4. 设置Tomcat部署

	* 设置Tomcat Server然后设置其中的Server和Deployment(添加之前的war包).


5. 开始使用


### 如何部署

1. 修改 remote 文件夹下的 `env-config.properties` 

2. 进入项目根目录，输入 `mvn clean package -P remote`

3. 获得 war 包，部署到 `tomcat`/`jetty` 或符合 `Servlet` 规范的其它容器中运行/启动

4. 打开浏览器，访问 `http://ip:8080`

