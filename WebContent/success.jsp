<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script language="JavaScript1.2" type="text/javascript">

function delayURL(url) {
    var delay = document.getElementById("time").innerHTML;
	if(delay > 0) {
		delay--;
		document.getElementById("time").innerHTML = delay;
	} else {
		window.top.location.href = url;
    }
    setTimeout("delayURL('" + url + "')", 1000); 
}

</script>

<logic:present name="flag">

	<c:set value="registersuccess" var="registersuccess"/>
	<c:set value="modifyusersuccess" var="modifyusersuccess"/>
	<c:set value="creTreSuccess" var="creTreSuccess"/>
	<c:set value="createmsgsuccess" var="createmsgsuccess"/>
	<c:set value="uploadsuccess" var="uploadsuccess"/>
	

	<c:if test="${registersuccess eq flag}">
		<center>    
			<br><br><br><br><br><br><br><br><br><br><br>
				��ϲ����ע��ɹ���
			<br><br>
		 	<span id="time">6 </span>���Ӻ��Զ���ת����������Զ���ת�������������� <br> <br>
		 	<a href="index.do">������ҳ</a>
		</center>   
		
		<script type="text/javascript">
			delayURL("index.do", 3000);
		</script>
	</c:if>
	
	<c:if test="${modifyusersuccess eq flag}">
		<center>    
			<br><br><br><br><br><br><br><br><br><br><br>
				��ϲ������Ϣ�޸ĳɹ���
			<br><br>
		 	<span id="time">6 </span>���Ӻ��Զ���ת����������Զ���ת�������������� <br> <br>
		 	<a href="index.do">������ҳ</a>
		</center>   
		
		<script type="text/javascript">
			delayURL("index.do", 3000);
		</script>
	</c:if>
	
	<c:if test="${creTreSuccess eq flag}">
		<center>    
			<br><br><br><br><br><br><br><br><br><br><br>
				��ϲ��������¼�����ɹ���
			<br><br>
		 	<span id="time">6 </span>���Ӻ��Զ���ת����������Զ���ת�������������� <br> <br>
		 	<a href="listtremind.do">�����б�ҳ</a>
		</center>   
		
		<script type="text/javascript">
			delayURL("listtremind.do", 3000);
		</script>
	</c:if>
	
	<c:if test="${createmsgsuccess eq flag}">
		<center>    
			<br><br><br><br><br><br><br><br><br><br><br>
				��ϲ������Ϣ���ͳɹ���
			<br><br>
		 	<span id="time">6 </span>���Ӻ��Զ���ת����������Զ���ת�������������� <br> <br>
		 	<a href="sendlist.do">�����б�ҳ</a>
		</center>   
		
		<script type="text/javascript">
			delayURL("sendlist.do", 3000);
		</script>
	</c:if>
	
	<c:if test="${uploadsuccess eq flag}">
		<center>    
			<br><br><br><br><br><br><br><br><br><br><br>
				��ϲ�����ļ��ϴ��ɹ���
			<br><br>
		 	<span id="time">6 </span>���Ӻ��Զ���ת����������Զ���ת�������������� <br> <br>
		 	<a href="filelist.do">�����б�ҳ</a>
		</center>   
		
		<script type="text/javascript">
			delayURL("filelist.do", 3000);
		</script>
	</c:if>
</logic:present>