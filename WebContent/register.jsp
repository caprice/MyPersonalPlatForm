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
				<font size="5" color="blue">&nbsp;&nbsp;&nbsp;&nbsp;用户注册</font>
				<form action="registing.do" method="post">
				
				<font color="red">&nbsp;&nbsp;&nbsp;&nbsp;* 请详细填写以下信息进行注册</font><br /><br />
				<table cellspacing="15">
					<tr>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;用&nbsp;&nbsp;户&nbsp;&nbsp;名：</td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="username" size="30" onMouseOver="showwin()" onMouseOut="hide()"/></td>
						<td><div id="win">
							 <div id="title">&nbsp;<b>用户名输入：</b></div>
					         <div id="content">
					            &nbsp;&nbsp;&nbsp;5-18位字符，<br/>
								&nbsp;&nbsp;&nbsp;只能为字母,数字，下划线
					         </div>
						</div></td>
					</tr>
					<tr>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：</td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="password" size="33" onMouseOver="showwin_pwd()" onMouseOut="hide_pwd()"/></td>
						<td><div id="win_pwd">
							 <div id="title">&nbsp;<b>密码输入：</b></div>
					         <div id="content">
					            &nbsp;&nbsp;&nbsp;6-18位字符，<br/>
								&nbsp;&nbsp;&nbsp;只能为字母,数字
					         </div>
						</div></td>
					</tr>
					<tr>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;确认密码：</td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="confirmpwd" size="33" onMouseOver="showwin_cpwd()" onMouseOut="hide_cpwd()"/></td>
						<td><div id="win_cpwd">
							 <div id="title">&nbsp;<b>确认密码输入：</b></div>
					         <div id="content">
					            &nbsp;&nbsp;&nbsp;6-18位字符，<br/>
								&nbsp;&nbsp;&nbsp;必须同密码一致
					         </div>
						</div></td>
					</tr>
					<tr>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：</td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="truename" size="30"  onMouseOver="showwin_tname()" onMouseOut="hide_tname()"/></td>
						<td><div id="win_tname">
							 <div id="title">&nbsp;<b>姓名输入：</b></div>
					         <div id="content">
					            &nbsp;&nbsp;&nbsp;最多20位字符，<br/>
								&nbsp;&nbsp;&nbsp;可以是汉字字符
					         </div>
						</div></td>
					</tr>
					<tr>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：</td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	          			男：<input type="radio" name="sex" value="男"/>
	          				&nbsp;&nbsp;&nbsp;
	          			女：<input type="radio" name="sex" value="女"/> 
	          				&nbsp;&nbsp;&nbsp;
	          			其他：<input type="radio" name="sex" value="其他"/></td>
						<td></td>
					</tr>
					<tr>
						<td align="center">&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;m&nbsp;a&nbsp;i&nbsp;l：</td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="email" size="30" onMouseOver="showwin_email()" onMouseOut="hide_email()"/></td>
						<td><div id="win_email">
							 <div id="title">&nbsp;<b>Email输入：</b></div>
					         <div id="content">
					            &nbsp;&nbsp;&nbsp;只能为标准的Email格式，<br/>
								&nbsp;&nbsp;&nbsp;
					         </div>
						</div></td>
					</tr>
					<tr>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;联系方式：</td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="tel" size="30" onMouseOver="showwin_tel()" onMouseOut="hide_tel()"/></td>
						<td><div id="win_tel">
							 <div id="title">&nbsp;<b>联系方式输入：</b></div>
					         <div id="content">
					            &nbsp;&nbsp;&nbsp;只能为标准的电话格式，<br/>
								&nbsp;&nbsp;&nbsp;可以是固定或移动电话
					         </div>
						</div></td>
					</tr>
					<tr>
						<td align="center">&nbsp;&nbsp;&nbsp;&nbsp;QQ：</td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="QQ" size="30" onMouseOver="showwin_qq()" onMouseOut="hide_qq()"/></td>
						<td><div id="win_qq">
							 <div id="title">&nbsp;<b>QQ输入：</b></div>
					         <div id="content">
					            &nbsp;&nbsp;&nbsp;5-15个字符，<br/>
								&nbsp;&nbsp;&nbsp;字符格式只能为数字
					         </div>
						</div></td>
					</tr>
					<tr>
						<td align="center">&nbsp;&nbsp;&nbsp;&nbsp;个人描述：</td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;<textarea rows="7" cols="29" name="description" onMouseOver="showwin_des()" onMouseOut="hide_des()"></textarea></td>
						<td><div id="win_des">
							 <div id="title">&nbsp;<b>个人描述输入：</b></div>
					         <div id="content">
					            &nbsp;&nbsp;&nbsp;最多150个字符，<br/>
								&nbsp;&nbsp;&nbsp;字符格式不限
					         </div>
						</div></td>
					</tr>
					<tr>
						<td align="center">&nbsp;&nbsp;&nbsp;&nbsp;公开信息：</td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							是：<input type="radio" name="ispublic" value="是"/>
		          				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		          			否：<input type="radio" name="ispublic" value="否"/> 
	          			</td>
						<td><span id=""></span></td>
					</tr>
					<tr>
						<td align="center" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="submit" value="确认提交"/>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="reset" value="返回重置"/>
	          			</td>
					</tr>
				</table>
				</form>
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

