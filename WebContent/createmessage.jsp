<%@ page language="java" pageEncoding="GB18030"%>
<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb18030" />
		<title>�����ļ�����</title>
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
					<a href="tremind.jsp">����¼</a>
				</li>
				<li>
					<a href="message.jsp">��Ϣ����</a>
				</li>
				<li>
					<a href="file.do">�ļ�����</a>
				</li>
				<li>
					<a href="sharefile.do">�����б�</a>
				</li>
				<li>
					<a href="modifyuser.jsp">�û�����</a>
				</li>
				<li>
					<a href="index.do">��ҳ</a>
				</li>
				<li>
					<logic:present name="client" scope="session">
						��ǰ�û���
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
				<font size="5" color="blue">&nbsp;&nbsp;&nbsp;&nbsp;�û���Ϣ</font>
				<form action="createmessage.do" method="post">
				
				<font color="red">&nbsp;&nbsp;&nbsp;&nbsp;* ����ϸ��д������Ϣ������Ϣ����</font><br /><br />
				<table cellspacing="15">
					<tr>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;��&nbsp;&nbsp;��&nbsp;&nbsp;�ߣ�</td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="sender" size="30" onMouseOver="showwin()" onMouseOut="hide()"/></td>
						<td><div id="win">
							 <div id="title">&nbsp;<b>���������룺</b></div>
					         <div id="content">
					            &nbsp;&nbsp;&nbsp;5-18λ�ַ���<br/>
								&nbsp;&nbsp;&nbsp;�����������ַ�
					         </div>
						</div></td>
					</tr>
					<tr>
						<td align="center">&nbsp;&nbsp;&nbsp;&nbsp;��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�ݣ�</td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;<textarea rows="7" cols="29" name="content" onMouseOver="showwin_pwd()" onMouseOut="hide_pwd()"></textarea></td>
						<td><div id="win_pwd">
							 <div id="title">&nbsp;<b>�������룺</b></div>
					         <div id="content">
					            &nbsp;&nbsp;&nbsp;���150���ַ���<br/>
								&nbsp;&nbsp;&nbsp;�ַ���ʽ����
					         </div>
						</div></td>
					</tr>
					<tr>
						<td align="center" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="submit" value="ȷ���ύ"/>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="reset" value="��������"/>
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
						<a href="#">��ҳ</a>|
					</li>
					<li>
						<a href="#">�û�����</a> |
					</li>
					<li>
						<a href="#">��Ϣ���� </a>|
					</li>
					<li>
						<a href="#">����¼</a> |
					</li>
					<li>
						<a href="#">����</a>
					</li>
				</ul>
				<p class="copyright">
					�0�8 file manager all right reaserved
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

