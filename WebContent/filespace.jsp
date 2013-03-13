<%@ page language="java" pageEncoding="GB18030"%>
<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
				<logic:notPresent name="client">
					*�Բ��� ����û�е�¼������
				</logic:notPresent>
				<logic:present name="client">
					<logic:present name="fileSpace">
		
					<logic:notEmpty name="fileSpace">
					<table width="80%" align="center" style="border:2px #d0cfd5 solid">
						<tr bgcolor="#d0cfd5">
							<td>�ռ���</td>
							<td>�ܿռ��С</td>
							<td>ʣ���С</td>
							<td>�ļ�����</td>
						</tr>
			
						<tr>
							<td>${fileSpace.spaceid }</td>
							<td>${fileSpace.filespace }KB</td>
							<td>${fileSpace.fileexist }KB</td>
							<td>${fileSpace.filecount}��</td>
						</tr>
					</table>
					<br/><br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="upload.jsp">�ϴ��ļ�</a><br/><br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="filelist.do">���ϴ��ļ��б�</a><br/><br/>
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

