<%@ page language="java" pageEncoding="GB18030"%>
<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb18030" />
		<title>�����ļ�����</title>
		<link href="style.css" rel="stylesheet" type="text/css" />
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
						<font color="green">��ǰ�û�:</font>
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
				<span>�����ļ�����ϵͳ</span>��һ���ǳ��Ӵ��ϵͳ�����������������������Ӵ���� ���ļ������ṩ���ָ�����
				���������ع����ļ��ȡ���ϵͳ��һ������ͻ���ƽ̨���ṩ��
				�������û�ע�ᡢ�û���¼���û���Ϣ�����ļ����ϴ����ء�ɾ���ϴ����ļ��������ļ�����վ����Ϣ�� ������Ϣ�ͱ���¼�ȹ��ܡ�
			</p>
			<p class="dotline">
				<img src="images/blank.gif" alt="" width="1" height="1" />
			</p>
			<p class="capstext">
				������ǵ�һ�ν��뱾վ���뵥������ĳ����ӽ���ע�ᣬ�Դ�������Ϊ����ǿ��� �����ļ�����ϵͳ��һԱ���������ܵ������ʵķ���
				<span><a href="register.do">��������ע��</a>
				</span>
			</p>
			<p class="dotline">
				<img src="images/blank.gif" alt="" width="1" height="1" />
			</p>
			<p class="more">
				<a href="moreclient.do">More</a>
			</p>
			<h3>
				�û���¼
			</h3>
			<h4>
				�û��б�
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
						�û�����
						<input type="text" name="username" />
						<br />
						<br />
						��&nbsp;&nbsp;&nbsp;&nbsp;�룺
						<input type="password" name="password" size="21" />
						<br />
						<br />
						<input type="submit" value="ȷ���ύ" />
						&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="reset" value="ȡ������" />
					</form>
				</logic:notPresent>
				<logic:present name="client" scope="session">
					<font color="black" size="5">�𾴵��û���</font>
					<br />
					<br />
					<font color="black" size="5">&nbsp;&nbsp;${client.username }</font>
					<br />
					<br />
					<font color="black" size="5">&nbsp;&nbsp;��ӭ����</font>
					<br />
				</logic:present>
				<p class="moretwo">
					<a href="register.do">ע ��</a>&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="logout.do">ע ��</a>
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

