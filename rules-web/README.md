
## 运行地址
学生地址：http://localhost:8080/
测试账号：3903150326    密码：3903150326

后台管理地址：http://localhost:8080/account/adminLoginForm
测试账号：hstc@root    密码：hstc@root

## 环境
maven 搭建环境
框架：SpringMVC,Spring,Hibernate
数据库：Mysql，redis
前端：jsp，bootstrap, jquery,

数据库表设计查看/src/main/resources/csuNSKC.sql
数据库数据可在此文件添加，再统一导入/src/main/resources/load_data.sql


## 需要安装的软件或环境
Java                必备环境 版本1.8
IntelliJ IDEA       后端开发工具
Mysql               数据库 版本5.7
Redis               数据缓存 版本3.2
Tomcat              部署服务 版本8.5.38
Navicat             管理mysql 版本12.1
RedisDesktopManager 管理redis 0.9.9
微信开发者工具         小程序开发工具

## 运行
1. 安装mysql，redis
2. 创建数据库名schoolrulessystem，导入/resources/schoolrulessystem.sql生成表结构，再导入/resources/load_data.sql数据
3. /resource/hibernate.cfg.xml 修改mysql的账户密码
4. /resource/redis.properties 修改redis账户密码
5. 打开pom.xml加载环境依赖
6. 部署tomcat，运行项目
运行如果提示缺失 javax.servlet 寻找tomcat中的lib/servlet-api.jar包，导入到libraries中


### 后台管理
导入学生数据，表格标题为
| 学号 | 姓名 | 性别 | 班级 | 年级 | 专业 | 学院 |
| ---- | ---- | ---- | ---- | ---- | ---- | ---- |
| 学号 | 姓名 | 性别 | 班级 | 年级 | 专业 | 学院 |

| 题目内容 | 类型（选择题，填空题，判断题，简答题，案例题，论述题） | 分值 | 答案 |
| -------- | ------------------------------------------------------ | ---- | ---- |
| 题目内容 | 类型（选择题，填空题，判断题，简答题，案例题，论述题） | 分值 | 答案 |

上传图片失败的话，需要手动创建文件夹
