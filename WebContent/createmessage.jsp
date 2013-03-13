<%@ page language="java" pageEncoding="GB18030"%>
<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>

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
				<font size="5" color="blue">&nbsp;&nbsp;&nbsp;&nbsp;用户消息</font>
				<form action="createmessage.do" method="post">
				
				<font color="red">&nbsp;&nbsp;&nbsp;&nbsp;* 请详细填写以下信息进行消息创建</font><br /><br />
				<table cellspacing="15">
					<tr>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;接&nbsp;&nbsp;收&nbsp;&nbsp;者：</td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="sender" size="30" onMouseOver="showwin()" onMouseOut="hide()"/></td>
						<td><div id="win">
							 <div id="title">&nbsp;<b>接受人输入：</b></div>
					         <div id="content">
					            &nbsp;&nbsp;&nbsp;5-18位字符，<br/>
								&nbsp;&nbsp;&nbsp;可以是任意字符
					         </div>
						</div></td>
					</tr>
					<tr>
						<td align="center">&nbsp;&nbsp;&nbsp;&nbsp;内&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;容：</td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;<textarea rows="7" cols="29" name="content" onMouseOver="showwin_pwd()" onMouseOut="hide_pwd()"></textarea></td>
						<td><div id="win_pwd">
							 <div id="title">&nbsp;<b>内容输入：</b></div>
					         <div id="content">
					            &nbsp;&nbsp;&nbsp;最多150个字符，<br/>
								&nbsp;&nbsp;&nbsp;字符格式不限
					         </div>
						</div></td>
					</tr>
					<tr>
						<td align="center" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="submit" value="确认提交"/>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="reset" value="返回重置"/>
	          			</td>
					</tr>
				</table>
				</form>
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

