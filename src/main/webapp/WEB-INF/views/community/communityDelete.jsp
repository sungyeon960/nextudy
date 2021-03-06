
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%-- <%@include file="/WEB-INF/inc/header.jsp"%> --%> <%//TODO header%>
<title>community</title>
</head>
<body>
	<%-- <%@include file="/WEB-INF/inc/top.jsp"%> --%> <%//TODO top%>
	<div class="container">
		<h3>글 삭제</h3>
		<c:if test="${empty ex1 && empty ex2}">
			<div class="alert alert-success">
				<h4>삭제 완료</h4>
				정상적으로 글을 삭제했습니다.
			</div>
		</c:if>

		<c:if test="${not empty ex1}">
			<div class="alert alert-warning">
				<h4>삭제가 되지 않았습니다.</h4>
				비밀번호를 확인해 주십시오.
			</div>
		</c:if>

		<c:if test="${not empty ex2}">
			<div class="alert alert-warning">
				<h4>비밀번호가 올바르지 않습니다.</h4>
				알맞은 비밀번호를 사용해 주십시오.
			</div>
		</c:if>
		<a href="communityList.wow" class="btn btn-info btn-sm"> <span
			class="glyphicon glyphicon-list" aria-hidden="true"></span> &nbsp;목록
		</a>
	</div>
</body>
</html>