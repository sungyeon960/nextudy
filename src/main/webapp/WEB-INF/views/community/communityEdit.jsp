<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<%-- <%@include file="/WEB-INF/inc/header.jsp"%> --%> <%//TODO header%>
<title>community</title>
</head>
<body>
	<%-- <%@include file="/WEB-INF/inc/top.jsp"%> --%> <%//TODO top%>
	<div class="container">
		<h3>글 수정</h3>
		<form:form action="communityModify.wow" modelAttribute="community">
			<form:hidden path="comNo"/> 
			<table class="table table-striped table-bordered">
				<tbody>
					<tr>
						<th>글번호</th>
						<td>${com.comNo}</td>
					</tr>
					<tr>
						<th>글제목</th>
						<td>
						<form:input path="comTitle" cssClass="form-control input-sm"/>
						<%-- <form:errors path="comTitle" /> --%> <%//TODO form:error%>
						</td>
					</tr>
					<tr>
						<th>작성자아이디</th>
						<td>
						<form:input path="comId" cssClass="form-control input-sm"/>
						<%-- <form:errors path="comId" /> --%> <%//TODO form:error%>
							</td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td>
						<input type="password" name="comPass"
							value="${com.comPass}" class="form-control input-sm"
							title="알파벳과 숫자로 4글자 이상 입력">
							<span class="text-danger">
								<span class="glyphicon glyphicon-exclamation-sign"
								aria-hidden="true"></span> 글 등록시에 입력한 비밀번호를 입력하세요.</span>
							<%-- <form:errors path="comCategory" /> --%> <%//TODO form:error%>
						</td>
					</tr>
					<tr>
						<th>글분류</th>
						<td>
						<form:select path="comCategory" cssClass="form-control input-sm" >
						<option value=""> --선택하세요 -- </option>
						<form:options items="${communityCateList}" itemLabel="commNm" itemValue="commCd"/>
						</form:select>
						<%-- <form:errors path="comCategory" /> --%> <%//TODO form:error%>
						</td>
					</tr>
					<tr>
						<th>내용</th>
						<td><textarea rows="3" name="comContent" class="form-control">${com.comContent}</textarea>
						</td>
					</tr>
					<tr>
						<th>조회수</th>
						<td>${com.comHit}</td>
					</tr>
					<tr>
						<td colspan="2"><a href="communityList.wow"
							class="btn btn-info btn-sm"> <span
								class="glyphicon glyphicon-list" aria-hidden="true"></span>
								&nbsp; 목록
						</a>
							<div class="pull-right">
								<button type="submit" formaction="communityDelete.wow"
									class="btn btn-sm btn-danger">
									<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
									&nbsp;&nbsp;삭제
								</button>
								<button type="submit" class="btn btn-primary">
									<span class="glyphicon glyphicon-heart-empty"
										aria-hidden="true"></span> &nbsp; 저장
								</button>
							</div></td>
					</tr>
				</tbody>
			</table>
		</form:form>
	</div>
</body>
</html>