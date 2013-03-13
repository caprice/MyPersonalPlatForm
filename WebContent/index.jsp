<%@ page language="java" pageEncoding="GB18030"%>
<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb18030" />
		<title>网络文件管理</title>
		<link href="style.css" rel="stylesheet" type="text/css" />
	</head>

	<body>
		<div id="topPanel">
			<ul>
				<li>
					<a href="tremind.jsp">备忘录</a>
				</li>
				<li>
					<a href="message.jsp">消息管理</a>
				</li>
				<li>
					<a href="file.do">文件管理</a>
				</li>
				<li>
					<a href="sharefile.do">共享列表</a>
				</li>
				<li>
					<a href="modifyuser.jsp">用户操作</a>
				</li>
				<li>
					<a href="index.do">主页</a>
				</li>
				<li>
					<logic:present name="client" scope="session">
						<font color="green">当前用户:</font>
						<font color="green">&nbsp;${client.username }</font>
					</logic:present>
				</li>
			</ul>
			<a href="index.jsp"><img src="images/logo.gif"
					title="Trial Services" alt="Trial Services" width="230" height="80"
					border="0" /> </a>
		</div>
		<div id="bodyPanel">
			<h2>
				About Us
			</h2>
			<p>
				<span>网络文件管理系统</span>是一个非常庞大的系统，它利用网络来管理数量庞大的用 户文件，并提供各种各样的
				服务，如下载共享文件等。本系统是一个面向客户的平台，提供的
				服务有用户注册、用户登录、用户信息管理、文件的上传下载、删除上传的文件、共享文件发送站内消息、 接收消息和备忘录等功能。
			</p>
			<p class="dotline">
				<img src="images/blank.gif" alt="" width="1" height="1" />
			</p>
			<p class="capstext">
				如果您是第一次进入本站，请单击下面的超链接进行注册，自此您将成为功能强大的 网络文件管理系统的一员，您将享受到最优质的服务。
				<span><a href="register.do">单击进行注册</a>
				</span>
			</p>
			<p class="dotline">
				<img src="images/blank.gif" alt="" width="1" height="1" />
			</p>
			<p class="more">
				<a href="moreclient.do">More</a>
			</p>
			<h3>
				用户登录
			</h3>
			<h4>
				用户列表
			</h4>
			<ul>
				<c:forEach items="${clientList}" var="clientList" begin="0" end="6" step="1">
					<li>
						<span><a href="#">${clientList.username }</a>
						</span>
					</li>
				</c:forEach>
			</ul>
			<div id="testimonial">
				<logic:notPresent name="client" scope="session">
					<form action="login.do" method="post">
						用户名：
						<input type="text" name="username" />
						<br />
						<br />
						密&nbsp;&nbsp;&nbsp;&nbsp;码：
						<input type="password" name="password" size="21" />
						<br />
						<br />
						<input type="submit" value="确认提交" />
						&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="reset" value="取消重置" />
					</form>
				</logic:notPresent>
				<logic:present name="client" scope="session">
					<font color="black" size="5">尊敬的用户：</font>
					<br />
					<br />
					<font color="black" size="5">&nbsp;&nbsp;${client.username }</font>
					<br />
					<br />
					<font color="black" size="5">&nbsp;&nbsp;欢迎您！</font>
					<br />
				</logic:present>
				<p class="moretwo">
					<a href="register.do">注 册</a>&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="logout.do">注 销</a>
				</p>
			</div>
		</div>
		<div id="footerPanel">
			<p class="dotline">
				<img src="images/blank.gif" alt="" width="1" height="1" />
			</p>
			<div id="footerbodyPanel">
				<ul>
					<li>
						<a href="#">首页</a>|
					</li>
					<li>
						<a href="#">用户管理</a> |
					</li>
					<li>
						<a href="#">消息管理 </a>|
					</li>
					<li>
						<a href="#">备忘录</a> |
					</li>
					<li>
						<a href="#">关于</a>
					</li>
				</ul>
				<p class="copyright">
					© file manager all right reaserved
				</p>
				<ul class="templateworld">
					<li>
						Design By: Severus
					</li>
				</ul>
			</div>
		</div>
	</body>
</html>

