<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/inc/header.jsp"%>
<title>freeRegist.jsp</title>
</head>
<body>
	<%@include file="/WEB-INF/inc/top.jsp"%>
	<div class="container">
		<h3>회원등록</h3>
		<%-- <jsp:useBean id="board" class="com.study.free.vo.FreeBoardVO" />
		<jsp:setProperty property="*" name="board" />
		<%
			IFreeBoardService freeService = new FreeBoardServiceImpl();
		board.setBoIp(request.getRemoteAddr());
		try {
			freeService.registBoard(board);
		%> --%>
		<c:if test="${empty ex}">
		<div class="alert alert=success">
		<h4>등록 완료</h4>
				정상적으로 회원가입을 했습니다.
			</div></c:if>
			
			<c:if test="${not empty ex}">
		<div class="alert alert-warning">
		<h4>해당 내역이 이미 존재합니다.</h4>
			다시 등록해주십시오.
			</div></c:if>
		<a href="freeList.wow" class="btn btn-info btn-sm"> 
		<span class="glyphicon glyphicon-list" aria-hidden="true"></span> &nbsp;목록
		</a>
	</div>
</body>
</html>