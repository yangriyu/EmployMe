<%--
  Created by IntelliJ IDEA.
  User: ZhongGang
  Date: 12-12-22
  Time: 下午9:54
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<html>
<head>
    <title>雇佣我 - <decorator:title/></title>
    <script type="text/javascript" src="/js/jquery/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="/js/jquery/ui/jquery-ui-1.10.1.custom.min.js"></script>
    <script type="text/javascript" src="/js/jquery/ui/jquery.ui.dialog.min.js"></script>
    <script type="text/javascript" src="/js/main.js"></script>
    <link href="/css/jquery/ui/jquery-ui-1.10.1.custom.min.css" rel="stylesheet"/>
    <link href="/css/style.css" rel="stylesheet"/>
    <link href="/css/main.css" rel="stylesheet"/>
    <decorator:head/>
</head>
<body>
<div id="header">
    <div id="leftHeader">
        <h1>${SPRING_SECURITY_CONTEXT.authentication.principal.nickname}</h1>

        <h2>这是${SPRING_SECURITY_CONTEXT.authentication.principal.nickname}的个人信息及技术文章展示网站</h2>
    </div>
    <div id="rightHeader">
        <h3>
            <a href="/logout">退出</a>
            <a href="javascript:void(0)" onclick="createUserInfoChangeFormDialog()">修改</a>
        </h3>
    </div>
</div>

<div id="menu">
    <ul>
        <li id="articleMenu" class="active"><a href="/article/overview">技术文章</a></li>
        <li id="resumeMenu"><a href="/resume/form">个人信息</a></li>
    </ul>
    <div></div>
</div>

<div align="center">
    <div id="container">
        <decorator:body/>
    </div>
</div>

<div id="footer">
    &copy; 2013 Zhong Gang's Website
</div>

<div id="formDialog" style="display: none;"></div>
</body>
</html>