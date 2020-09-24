<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/inc/header.jsp"%>
<title>자유게시판 - 글 수정</title>
</head>
<body>
	<%@ include file="/WEB-INF/inc/top.jsp"%>
	<div class="container">
		<h3>글 수정</h3>
		<form:form action="freeModify.wow" modelAttribute="free">
			<form:hidden path="boNo"/> <!--	<input type="hidden" name="boNo" value='${free.boNo}'>  -->
			<table class="table table-striped table-bordered">
				<tbody>
					<tr>
						<th>글번호</th>
						<td>${free.boNo}</td>
					</tr>
					<tr>
						<th>글제목</th>
						<td>
						<%-- <input type="text" name="boTitle" value="${free.boTitle}" class="form-control input-sm"> --%>
						<form:input path="boTitle" cssClass="form-control input-sm"/>
						<form:errors path="boTitle"/>
						</td>
					</tr>
					<tr>
						<th>작성자명</th>
						<td>
						<%-- <input type="text" name="boWriter" value="${free.boWriter}" class="form-control input-sm"> --%>
						<form:input path="boWriter" cssClass="form-control input-sm"/>
							<form:errors path="boWriter"/></td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<!-- required="required" pattern="\w{4,}"  -->
						<td><input type="password" name="boPass"
							value="${free.boPass}" class="form-control input-sm"
							title="알파벳과 숫자로 4글자 이상 입력">
							<span class="text-danger">
								<span class="glyphicon glyphicon-exclamation-sign"
								aria-hidden="true"></span> 글 등록시에 입력한 비밀번호를 입력하세요.</span>
							<form:errors path="boPass"/>
						</td>
					</tr>
					<tr>
						<th>글분류</th>
						<!-- required="required" -->
						<td>
						<form:select path="boCategory" cssClass="form-control input-sm" >
						<option value=""> --선택하세요 -- </option>
						<form:options items="${cateList}" itemLabel="commNm" itemValue="commCd"/>
						</form:select>
						<form:errors path="boCategory"/>
						</td>
					</tr>

					<!-- 비밀번호는 보여주지 않음  -->
					<tr>
						<th>내용</th>
						<td><textarea rows="3" name="boContent" class="form-control">${free.boContent}</textarea>
						</td>
					</tr>
					<tr>
						<th>등록자 IP</th>
						<td>${free.boIp}</td>
					</tr>
					<tr>
						<th>조회수</th>
						<td>${free.boHit}</td>
					</tr>

					<tr>
						<th>등록일자</th>
						<td>${free.boRegDate}</td>
					</tr>
					<tr>
						<th>삭제여부</th>
						<td>${free.boDelYn}</td>
					</tr>
					<tr>
						<td colspan="2"><a href="freeList.wow"
							class="btn btn-info btn-sm"> <span
								class="glyphicon glyphicon-list" aria-hidden="true"></span>
								&nbsp; 목록
						</a>
							<div class="pull-right">
								<button type="submit" formaction="freeDelete.wow"
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