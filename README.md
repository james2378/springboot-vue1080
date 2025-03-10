### 介绍
java毕业设计，垃圾分类网站
### 3000多套系统，需要联系
抠：3565014707 微：a13424421017

#### 软件架构
##### 整体架构模式
这是一个 垃圾分类管理与科普系统，采用 前后端分离架构，包含以下模块：

管理后台（src/main/resources/admin）：基于 Vue.js + ElementUI 的 SPA 应用，供管理员管理垃圾分类数据、用户权限等。

用户端（src/main/resources/front）：基于 Layui + jQuery 的传统前端，面向公众提供垃圾分类查询、知识学习功能。

后端服务（src/main/java）：基于 Spring Boot + MyBatis 的 Java 服务，提供 RESTful API 和业务逻辑。

##### 分层架构设计
后端分层：

Controller层：controller 包（如 CommonController）处理 HTTP 请求，返回 JSON 数据。

Service层：service 包（CommonService）实现核心业务逻辑（如垃圾分类数据校验、用户权限管理）。

DAO层：dao 包（CommonDao）通过 MyBatis XML 文件（CommonDao.xml）操作数据库。

实体与数据模型：

entity 包定义数据库实体（如 LajifenleiModel 垃圾分类实体）；

vo（值对象）和 view（视图模型）用于接口数据传输和复杂查询结果封装。

前端分层：

管理后台（Vue.js）：

视图层：views/modules 定义页面（如 lajifenlei 垃圾分类管理页）。

组件层：components 封装可复用组件（如 BreadCrumbs 面包屑导航）。

状态管理：通过 Vuex（store.js）管理全局状态（如管理员权限）。

用户端（Layui）：

传统 MVC：通过 HTML + jQuery 实现动态页面（如 lajifenlei/add.html 垃圾分类查询页）。

##### 关键技术特性
权限控制：

后端通过 AuthorizationInterceptor 拦截器和 @APPLoginUser 注解实现接口权限校验；

前端管理后台通过路由（router-static.js）限制页面访问权限。

数据可视化：

lajitupu（垃圾图谱）模块可能结合图片上传（static/upload）展示分类标准。

第三方服务集成：

BaiduUtil 可能集成百度 AI 图像识别技术，支持拍照识别垃圾类型。

富文本编辑器（tinymce）用于发布带图文排版的垃圾分类指南。

#### 核心功能模块解析
##### 垃圾分类管理模块
分类数据维护：

lajifenlei（垃圾分类）：定义垃圾名称、分类类型（可回收/有害/湿垃圾/干垃圾）、处理方式。

lajileixing（垃圾类型）：维护分类标准（如“塑料制品”属于可回收垃圾）。

知识图谱：

lajitupu（垃圾图谱）：上传分类示意图或教学视频，辅助用户学习分类规则。
##### 用户与权限模块
角色管理：

yonghu（普通用户）：注册/登录后可使用分类查询功能。

lajifenleiguanliyuan（分类管理员）：审核用户提交的垃圾分类数据。

权限控制：

管理员通过 users 模块分配角色权限，限制数据修改操作。

##### 互动与反馈模块
用户反馈：

用户端可能通过 CommonController 提交分类错误反馈，由管理员处理。

数据统计：

后台统计高频查询词汇（如“电池属于什么垃圾”），优化分类数据库。
