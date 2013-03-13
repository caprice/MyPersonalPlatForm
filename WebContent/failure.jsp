<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>errors</title>
</head>
<body>
	<h1>Errors</h1>
	<hr/>
	系统错误：<br/><br/>
		<logic:present name="flag">
		
			<c:set value="pwderror" var="pwderror"/>
			<c:set value="UorPerror" var="UorPerror"/>
			<c:set value="logouterror" var="logouterror"/>
			<c:set value="creTreError" var="creTreError"/>
			<c:set value="treoutlog" var="treoutlog"/>
			<c:set value="indexerror" var="indexerror"/>
			<c:set value="createmsgerror" var="createmsgerror"/>
			<c:set value="querysendererror" var="querysendererror"/>
			<c:set value="remsgerror" var="remsgerror"/>
			<c:set value="queryuerror" var="queryuerror"/>
			<c:set value="queryfilespaceerror" var="queryfilespaceerror"/>
			<c:set value="uploaderror" var="uploaderror"/>
			<c:set value="filelisterror" var="filelisterror"/>
			<c:set value="FSListError" var="FSListError"/>
		
			<c:if test="${flag eq pwderror}">
				--两次输入密码不一致！
			</c:if>
			<c:if test="${flag eq UorPerror}">
				--您的用户名或密码错误！
			</c:if>
			<c:if test="${flag eq logouterror}">
				--注销失败 请稍候重试！
			</c:if>
			<c:if test="${flag eq creTreError}">
				--创建备忘录失败 请稍候重试！
			</c:if>
			<c:if test="${flag eq treoutlog}">
				--您尚未登录 请登录后再进行备忘录查询！
			</c:if>
			<c:if test="${flag eq indexerror}">
				--对不起 系统错误 请稍候重试！
			</c:if>
			<c:if test="${flag eq createmsgerror}">
				--对不起 消息发送失败 请稍候重试！
			</c:if>
			<c:if test="${flag eq querysendererror}">
				--对不起 已发送消息查询失败 请稍候重试！
			</c:if>
			<c:if test="${flag eq remsgerror}">
				--对不起 已接受消息查询失败 请稍候重试！
			</c:if>
			<c:if test="${flag eq queryuerror}">
				--对不起 用户列表查询失败 请稍候重试！
			</c:if>
			<c:if test="${flag eq queryfilespaceerror}">
				--对不起 用户还没有登录 文件空间查询失败 请登录后重试！
			</c:if>
			<c:if test="${flag eq uploaderror}">
				--对不起 文件上传失败 请登录后重试！
			</c:if>
			<c:if test="${flag eq filelisterror}">
				--对不起 文件列表查询失败 请稍后重试！
			</c:if>
			<c:if test="${flag eq FSListError}">
				--对不起 共享文件列表查询失败 请稍后重试！
			</c:if>
		</logic:present>
</body>
</html>