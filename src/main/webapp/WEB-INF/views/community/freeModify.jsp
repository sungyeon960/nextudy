<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/inc/header.jsp"%>
<title>freeModify.jsp</title>
</head>
<body>
	<%@include file="/WEB-INF/inc/top.jsp"%>
	<div class="container">
		<h3>회원정보수정</h3>
		<c:if test="${empty ex1 && empty ex2}">
			<div class="alert alert-success">
				<h4>수정 완료</h4>
				정상적으로 회원정보를 수정했습니다.
			</div>
		</c:if>

		<c:if test="${not empty ex1}">
			<div class="alert alert-warning">
				<h4>수정이 되지 않았습니다.</h4>
				아이디나 비밀번호를 확인해 주십시오.
			</div>
		</c:if>

		<c:if test="${not empty ex2}">
			<div class="alert alert-warning">
				<h4>비밀번호가 올바르지 않습니다.</h4>
				알맞는 비밀번호를 사용해 주십시오.
			</div>
		</c:if>

		<a href="freeList.wow" class="btn btn-info btn-sm"> <span
			class="glyphicon glyphicon-list" aria-hidden="true"></span> &nbsp;목록
		</a>
	</div>
</body>
</html>