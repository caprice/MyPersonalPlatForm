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
	ϵͳ����<br/><br/>
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
				--�����������벻һ�£�
			</c:if>
			<c:if test="${flag eq UorPerror}">
				--�����û������������
			</c:if>
			<c:if test="${flag eq logouterror}">
				--ע��ʧ�� ���Ժ����ԣ�
			</c:if>
			<c:if test="${flag eq creTreError}">
				--��������¼ʧ�� ���Ժ����ԣ�
			</c:if>
			<c:if test="${flag eq treoutlog}">
				--����δ��¼ ���¼���ٽ��б���¼��ѯ��
			</c:if>
			<c:if test="${flag eq indexerror}">
				--�Բ��� ϵͳ���� ���Ժ����ԣ�
			</c:if>
			<c:if test="${flag eq createmsgerror}">
				--�Բ��� ��Ϣ����ʧ�� ���Ժ����ԣ�
			</c:if>
			<c:if test="${flag eq querysendererror}">
				--�Բ��� �ѷ�����Ϣ��ѯʧ�� ���Ժ����ԣ�
			</c:if>
			<c:if test="${flag eq remsgerror}">
				--�Բ��� �ѽ�����Ϣ��ѯʧ�� ���Ժ����ԣ�
			</c:if>
			<c:if test="${flag eq queryuerror}">
				--�Բ��� �û��б��ѯʧ�� ���Ժ����ԣ�
			</c:if>
			<c:if test="${flag eq queryfilespaceerror}">
				--�Բ��� �û���û�е�¼ �ļ��ռ��ѯʧ�� ���¼�����ԣ�
			</c:if>
			<c:if test="${flag eq uploaderror}">
				--�Բ��� �ļ��ϴ�ʧ�� ���¼�����ԣ�
			</c:if>
			<c:if test="${flag eq filelisterror}">
				--�Բ��� �ļ��б��ѯʧ�� ���Ժ����ԣ�
			</c:if>
			<c:if test="${flag eq FSListError}">
				--�Բ��� �����ļ��б��ѯʧ�� ���Ժ����ԣ�
			</c:if>
		</logic:present>
</body>
</html>