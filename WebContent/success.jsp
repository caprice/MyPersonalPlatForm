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
				恭喜您！注册成功！
			<br><br>
		 	<span id="time">6 </span>秒钟后自动跳转，如果不能自动跳转，请点击下面链接 <br> <br>
		 	<a href="index.do">返回主页</a>
		</center>   
		
		<script type="text/javascript">
			delayURL("index.do", 3000);
		</script>
	</c:if>
	
	<c:if test="${modifyusersuccess eq flag}">
		<center>    
			<br><br><br><br><br><br><br><br><br><br><br>
				恭喜您！信息修改成功！
			<br><br>
		 	<span id="time">6 </span>秒钟后自动跳转，如果不能自动跳转，请点击下面链接 <br> <br>
		 	<a href="index.do">返回主页</a>
		</center>   
		
		<script type="text/javascript">
			delayURL("index.do", 3000);
		</script>
	</c:if>
	
	<c:if test="${creTreSuccess eq flag}">
		<center>    
			<br><br><br><br><br><br><br><br><br><br><br>
				恭喜您！备忘录创建成功！
			<br><br>
		 	<span id="time">6 </span>秒钟后自动跳转，如果不能自动跳转，请点击下面链接 <br> <br>
		 	<a href="listtremind.do">返回列表页</a>
		</center>   
		
		<script type="text/javascript">
			delayURL("listtremind.do", 3000);
		</script>
	</c:if>
	
	<c:if test="${createmsgsuccess eq flag}">
		<center>    
			<br><br><br><br><br><br><br><br><br><br><br>
				恭喜您！消息发送成功！
			<br><br>
		 	<span id="time">6 </span>秒钟后自动跳转，如果不能自动跳转，请点击下面链接 <br> <br>
		 	<a href="sendlist.do">返回列表页</a>
		</center>   
		
		<script type="text/javascript">
			delayURL("sendlist.do", 3000);
		</script>
	</c:if>
	
	<c:if test="${uploadsuccess eq flag}">
		<center>    
			<br><br><br><br><br><br><br><br><br><br><br>
				恭喜您！文件上传成功！
			<br><br>
		 	<span id="time">6 </span>秒钟后自动跳转，如果不能自动跳转，请点击下面链接 <br> <br>
		 	<a href="filelist.do">返回列表页</a>
		</center>   
		
		<script type="text/javascript">
			delayURL("filelist.do", 3000);
		</script>
	</c:if>
</logic:present>