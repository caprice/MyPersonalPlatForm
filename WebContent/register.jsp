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
				<font size="5" color="blue">&nbsp;&nbsp;&nbsp;&nbsp;�û�ע��</font>
				<form action="registing.do" method="post">
				
				<font color="red">&nbsp;&nbsp;&nbsp;&nbsp;* ����ϸ��д������Ϣ����ע��</font><br /><br />
				<table cellspacing="15">
					<tr>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;��&nbsp;&nbsp;��&nbsp;&nbsp;����</td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="username" size="30" onMouseOver="showwin()" onMouseOut="hide()"/></td>
						<td><div id="win">
							 <div id="title">&nbsp;<b>�û������룺</b></div>
					         <div id="content">
					            &nbsp;&nbsp;&nbsp;5-18λ�ַ���<br/>
								&nbsp;&nbsp;&nbsp;ֻ��Ϊ��ĸ,���֣��»���
					         </div>
						</div></td>
					</tr>
					<tr>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�룺</td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="password" size="33" onMouseOver="showwin_pwd()" onMouseOut="hide_pwd()"/></td>
						<td><div id="win_pwd">
							 <div id="title">&nbsp;<b>�������룺</b></div>
					         <div id="content">
					            &nbsp;&nbsp;&nbsp;6-18λ�ַ���<br/>
								&nbsp;&nbsp;&nbsp;ֻ��Ϊ��ĸ,����
					         </div>
						</div></td>
					</tr>
					<tr>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;ȷ�����룺</td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="confirmpwd" size="33" onMouseOver="showwin_cpwd()" onMouseOut="hide_cpwd()"/></td>
						<td><div id="win_cpwd">
							 <div id="title">&nbsp;<b>ȷ���������룺</b></div>
					         <div id="content">
					            &nbsp;&nbsp;&nbsp;6-18λ�ַ���<br/>
								&nbsp;&nbsp;&nbsp;����ͬ����һ��
					         </div>
						</div></td>
					</tr>
					<tr>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����</td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="truename" size="30"  onMouseOver="showwin_tname()" onMouseOut="hide_tname()"/></td>
						<td><div id="win_tname">
							 <div id="title">&nbsp;<b>�������룺</b></div>
					         <div id="content">
					            &nbsp;&nbsp;&nbsp;���20λ�ַ���<br/>
								&nbsp;&nbsp;&nbsp;�����Ǻ����ַ�
					         </div>
						</div></td>
					</tr>
					<tr>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��</td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	          			�У�<input type="radio" name="sex" value="��"/>
	          				&nbsp;&nbsp;&nbsp;
	          			Ů��<input type="radio" name="sex" value="Ů"/> 
	          				&nbsp;&nbsp;&nbsp;
	          			������<input type="radio" name="sex" value="����"/></td>
						<td></td>
					</tr>
					<tr>
						<td align="center">&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;m&nbsp;a&nbsp;i&nbsp;l��</td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="email" size="30" onMouseOver="showwin_email()" onMouseOut="hide_email()"/></td>
						<td><div id="win_email">
							 <div id="title">&nbsp;<b>Email���룺</b></div>
					         <div id="content">
					            &nbsp;&nbsp;&nbsp;ֻ��Ϊ��׼��Email��ʽ��<br/>
								&nbsp;&nbsp;&nbsp;
					         </div>
						</div></td>
					</tr>
					<tr>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;��ϵ��ʽ��</td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="tel" size="30" onMouseOver="showwin_tel()" onMouseOut="hide_tel()"/></td>
						<td><div id="win_tel">
							 <div id="title">&nbsp;<b>��ϵ��ʽ���룺</b></div>
					         <div id="content">
					            &nbsp;&nbsp;&nbsp;ֻ��Ϊ��׼�ĵ绰��ʽ��<br/>
								&nbsp;&nbsp;&nbsp;�����ǹ̶����ƶ��绰
					         </div>
						</div></td>
					</tr>
					<tr>
						<td align="center">&nbsp;&nbsp;&nbsp;&nbsp;QQ��</td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="QQ" size="30" onMouseOver="showwin_qq()" onMouseOut="hide_qq()"/></td>
						<td><div id="win_qq">
							 <div id="title">&nbsp;<b>QQ���룺</b></div>
					         <div id="content">
					            &nbsp;&nbsp;&nbsp;5-15���ַ���<br/>
								&nbsp;&nbsp;&nbsp;�ַ���ʽֻ��Ϊ����
					         </div>
						</div></td>
					</tr>
					<tr>
						<td align="center">&nbsp;&nbsp;&nbsp;&nbsp;����������</td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;<textarea rows="7" cols="29" name="description" onMouseOver="showwin_des()" onMouseOut="hide_des()"></textarea></td>
						<td><div id="win_des">
							 <div id="title">&nbsp;<b>�����������룺</b></div>
					         <div id="content">
					            &nbsp;&nbsp;&nbsp;���150���ַ���<br/>
								&nbsp;&nbsp;&nbsp;�ַ���ʽ����
					         </div>
						</div></td>
					</tr>
					<tr>
						<td align="center">&nbsp;&nbsp;&nbsp;&nbsp;������Ϣ��</td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							�ǣ�<input type="radio" name="ispublic" value="��"/>
		          				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		          			��<input type="radio" name="ispublic" value="��"/> 
	          			</td>
						<td><span id=""></span></td>
					</tr>
					<tr>
						<td align="center" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="submit" value="ȷ���ύ"/>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="reset" value="��������"/>
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

