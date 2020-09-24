<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%-- <%@ include file="/WEB-INF/inc/header.jsp"% --%> <%//TODO header%>
<title>커뮤니티</title>
<script type="text/javascript">
$(document).ready(function() {
	$('#id_btn_new_file').click(function(){
		$('.file_area').append('<div class="form-inline">'
			+ '<input type="file" name="boFiles" class="form-control">'
			+ ' <button type="button" class="btn_delete btn btn-sm">삭제</button>'
			+ '</div>');
	}); //#id_btn_new_file.click
	
	//파일 삭제버튼 클릭 이벤트(동적으로 추가된 객체의 이벤트 사용시 on)
	$('.file_area').on('click','.btn_delete', function() {
		$(this).closest('div').remove();		
	});//.btn_delete.click

});///document.ready
</script>

</head>
<body>

	<%-- <%@ include file="/WEB-INF/inc/top.jsp"%> --%><%//TODO top%>
	<div class="container">
		<div class="page-header">
			<h3>커뮤니티 - <small> 글 쓰기 </small></h3>
		</div>
		<div class="row">
			<form:form action="communityRegist.wow" modelAttribute="com">
				<table class="table table-striped table-bordered">
					<colgroup>
						<col width="20%" />
						<col />
					</colgroup>
					<tr>
						<th>제목</th>
						<td>
							<form:input path="comTitle" cssClass="form-control input-sm" /> 
							<%-- <form:errors path="comTitle" /> --%> <%//TODO form:error%>
						</td>
					</tr>
					<tr>
						<th>작성자</th>
						<td>
							<form:input path="comId" cssClass="form-control input-sm" /> 
							<%-- <form:errors path="comId" /> --%> <%//TODO form:error%>
						</td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td>
							<form:password path="comPass" cssClass="form-control input-sm" />
							<span>수정 또는 삭제시에 필요합니다.</span> 
							<%-- <form:errors path="comPass" /> --%> <%//TODO form:error%>
						</td>
					</tr>
					<tr>
						<th>분류</th>
						<td>
						<form:select path="comCategory" cssClass="form-control input-sm">
								<option value="">--선택하세요 --</option>
								<form:options items="${communityCateList}" itemLabel="commNm" itemValue="commCd" />
							</form:select> 
							<%-- <form:errors path="comCategory" /> --%> <%//TODO form:error%>
							</td>
					</tr>
<!-- 					<tr>
						<th>첨부파일 <button type="button" id="id_btn_new_file">추가</button> </th>
						<td class="file_area">
							<div class="form-inline">
								<input type="file" name="boFiles" class="form-control">
								<button type="button" class="btn_delete btn btn-sm">삭제</button>
							</div>
						</td>
					</tr> -->  <%//TODO 첨부파일 bofiles%>
					<tr>
						<th>내용</th>
						<td><textarea rows="3" name="comContent" class="form-control"></textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2"><a href="communityList.wow" class="btn btn-info btn-sm"> 
						<span class="glyphicon glyphicon-list" aria-hidden="true"></span>
								&nbsp; 목록
						</a>
							<div class="pull-right">
								<button type="submit" class="btn btn-sm btn-primary">
									<span class="glyphicon glyphicon-ok" aria-hidden="true">&nbsp;저장하기</span>
								</button>
							</div></td>
					</tr>
				</table>
			</form:form>
		</div>
	</div>
</body>
</html>


