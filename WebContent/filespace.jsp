<%@ page language="java" pageEncoding="GB18030"%>
<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb18030" />
		<title>网络文件管理</title>
	    <script type="text/javascript" src="jslib/jquery.js"></script>
	    <script type="text/javascript" src="jslib/jquerywin.js"></script>
	    <link type="text/css" rel="stylesheet" href="css/win.css"/>
		<link href="style.css" rel="stylesheet" type="text/css" />
		<script language="javascript" src="jslib/regcheck.js"></script>
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
						当前用户：
						<font color="black">&nbsp;&nbsp;${client.username }&nbsp;&nbsp;&nbsp;&nbsp;</font>
					</logic:present>
				</li>
			</ul>
			<a href="index.jsp"><img src="images/logo.gif"
					title="Trial Services" alt="Trial Services" width="230" height="80"
					border="0" />
			</a>
		</div>
		<div id="bodyPanel">
		<br/><br/>
				<logic:notPresent name="client">
					*对不起 您还没有登录！！！
				</logic:notPresent>
				<logic:present name="client">
					<logic:present name="fileSpace">
		
					<logic:notEmpty name="fileSpace">
					<table width="80%" align="center" style="border:2px #d0cfd5 solid">
						<tr bgcolor="#d0cfd5">
							<td>空间编号</td>
							<td>总空间大小</td>
							<td>剩余大小</td>
							<td>文件数量</td>
						</tr>
			
						<tr>
							<td>${fileSpace.spaceid }</td>
							<td>${fileSpace.filespace }KB</td>
							<td>${fileSpace.fileexist }KB</td>
							<td>${fileSpace.filecount}个</td>
						</tr>
					</table>
					<br/><br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="upload.jsp">上传文件</a><br/><br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="filelist.do">已上传文件列表</a><br/><br/>
					</logic:notEmpty>
				</logic:present>
				</logic:present>
		
				<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
			<p class="dotline">
				<img src="images/blank.gif" alt="" width="1" height="1" />
			</p>
			</div>
		<div id="footerPanel">
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

