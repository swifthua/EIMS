说明：
1.开发工具：
	eclipse  mysql  jdk1.8  maven  (配置过后maven依赖包下载失败的去中央仓库手动下载添加路径)
2.主要技术：
	前端用的bootstrap，研究不深，界面较陋
	后台用的springboot
	数据库方面用的mybatis
	
	导入此项目，通过    import->existing maven projects导入           不要通过普通项目导入
	
	注：自己搭建，需要改动的地方 
	    application.properties第10行      数据库用户名spring.datasource.username=###
		application.properties第11行      数据库密码spring.datasource.password=###
		
		如果用generate插件(自动生成实体类，mapper类，mapper.xml文件)，需要改下面文件：
			generateConfig.xml的第6行                   maven仓库的mysql驱动包的路径location="###"
			generateConfig.xml的第15行               driverClass="com.mysql.jdbc.Driver" password="###" userId="###"
3.数据库文件eims.sql在这个目录下(src/main/resources/sql)，其中包括数据和结构，所以自己不用添数据
4.还需要讨论的问题
	文件上传做不做？
	项目审批提交后部分信息存不进去
	查询结果后 分页没作用
5.本组版权
	不得擅自把这个项目分享给其他组的成员