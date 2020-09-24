<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/inc/header.jsp"%>
<title>글 등록</title>
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
	/*
		$('.btn_delete').click(function(){
		});//btn_delete.click
	*/
});///document.ready
</script>

</head>
<body>

	<%@ include file="/WEB-INF/inc/top.jsp"%>
	<div class="container">
		<div class="page-header">
			<h3>글 쓰기</h3>
		</div>
		<div class="row">
			<%-- <form action="freeRegist.wow" method="post"> --%>
			<form:form action="freeRegist.wow" modelAttribute="free">
				<table class="table table-striped table-bordered">
					<colgroup>
						<col width="20%" />
						<col />
					</colgroup>
					<tr>
						<th>제목</th>
						<td>
							<%-- <input type="text" name="boTitle" value="" class="form-control input-sm"> --%>
							<form:input path="boTitle" cssClass="form-control input-sm" /> <form:errors
								path="boTitle" />
						</td>
					</tr>
					<tr>
						<th>작성자</th>
						<td>
							<%-- <input type="text" name="boWriter" value="" class="form-control input-sm"> --%>
							<form:input path="boWriter" cssClass="form-control input-sm" /> <form:errors
								path="boWriter" />
						</td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td>
							<%-- <input type="password" name="boPass" value="" class="form-control input-sm">  --%>
							<form:password path="boPass" cssClass="form-control input-sm" />
							<span>수정 또는 삭제시에 필요합니다.</span> <form:errors path="boPass" />
						</td>
					</tr>
					<tr>

						<th>분류</th>
						<td><form:select path="boCategory"
								cssClass="form-control input-sm">
								<option value="">--선택하세요 --</option>
								<form:options items="${cateList}" itemLabel="commNm"
									itemValue="commCd" />
							</form:select> <form:errors path="boCategory" /></td>
					</tr>
					<tr>
<tr>
						<th>첨부파일
							<button type="button" id="id_btn_new_file">추가</button>
						</th>
						<td class="file_area">
							<div class="form-inline">
								<input type="file" name="boFiles" class="form-control">
								<button type="button" class="btn_delete btn btn-sm">삭제</button>
							</div>
						</td>
					</tr>


					<tr>
						<th>IP</th>
						<td>${pageContext.request.remoteAddr}</td>
					</tr>
					<tr>
						<th>내용</th>
						<td><textarea rows="3" name="boContent" class="form-control"></textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2"><a href="freeList.wow"
							class="btn btn-info btn-sm"> <span
								class="glyphicon glyphicon-list" aria-hidden="true"></span>
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


