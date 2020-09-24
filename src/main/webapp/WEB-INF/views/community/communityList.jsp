<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="mytag" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<%-- <%@include file="/WEB-INF/inc/header.jsp"%> --%> <%//TODO header%>
<title>freeList.jsp</title>
</head>
<body>
	<%-- <%@include file="/WEB-INF/inc/top.jsp"%> --%> <%//TODO top%>
	<div class="container">
		<div class="page-header">
			<h3>
				커뮤니티게시판
			</h3>
		</div>

		<!-- START : 검색 폼  -->
		<div class="row panel panel-default collapse in" id="id_search_area">
			<div class="panel-body">
				<form name="frm_search" action="communityList.wow" method="post"
					class="form-horizontal">
					<input type="hidden" name="curPage" value="${searchVO.curPage}">
					<input type="hidden" name="rowSizePerPage" value="${searchVO.rowSizePerPage}">
					<div class="form-group">
						<label for="id_searchType" class="col-sm-2 control-label">검색</label>
						<div class="col-sm-2">
							<select id="id_searchType" name="searchType"
								class="form-control input-sm">
								<option value="T" ${searchVO.searchType eq "T" ? "selected='selected'":""}>제목</option>
								<option value="I" ${searchVO.searchType eq "W" ? "selected='selected'":""}>작성아이 </option>
								<option value="C" ${searchVO.searchType eq "C" ? "selected='selected'":""}>내용</option>
							</select>
						</div>
						<div class="col-sm-2">
							<input type="text" name="searchWord"
								class="form-control input-sm" value="${searchVO.searchWord}"
								placeholder="검색어">
						</div>
						<label for="id_searchCategory"
							class="col-sm-2 col-sm-offset-2 control-label">분류</label>
						<div class="col-sm-2">
							<select id="id_searchCategory" name="searchCategory"
								class="form-control input-sm">
								<option value="">-- 전체 --</option>
								<c:forEach items="${communityCateList}" var="code">
									<option value="${code.commCd}" ${code.commCd eq searchVO.searchCategory ? "selected='selected'":""}> ${code.commNm}</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-2 col-sm-offset-9 text-right">
							<button type="button" id="id_btn_reset"
								class="btn btn-sm btn-refresh">
								<i class="glyphicon glyphicon-refresh"></i> &nbsp;&nbsp;초기화
							</button>
						</div>
						<div class="col-sm-1 text-right">
							<button type="submit" class="btn btn-sm btn-primary ">
								<i class="glyphicon glyphicon-search"></i> &nbsp;&nbsp;검 색
							</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		<!-- END : 검색 폼  -->

		<!-- START : 목록건수 및 새글쓰기 버튼  -->
		<div class="row" style="margin-bottom: 10px;">
			<div class="col-sm-3 form-inline">
				전체 ${searchVO.totalRowCount} 건 조회 <select id="id_rowSizePerPage"
					name="rowSizePerPage" class="form-control input-sm">
					<option value="10"
						${searchVO.rowSizePerPage eq 10 ? "selected='selected'":""}>10</option>
					<option value="20"
						${searchVO.rowSizePerPage eq 20 ? "selected='selected'":""}>20</option>
					<option value="30"
						${searchVO.rowSizePerPage eq 30 ? "selected='selected'":""}>30</option>
					<option value="50"
						${searchVO.rowSizePerPage eq 50 ? "selected='selected'":""}>50</option>
				</select>
			</div>
			<div class="col-sm-2 col-sm-offset-6 text-right">
				<a href="#" class="btn btn-info btn-sm" id="id_close"
					data-toggle="collapse" data-target="#id_search_area"> 
					 <i class="fas fa-chevron-up"><span>&nbsp;검색닫기</span></i>
				</a>
			</div>
			<div class="col-sm-1 text-right">
				<a href="communityForm.wow" class="btn btn-primary btn-sm"> <span
					class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span>
					&nbsp;새글쓰기
				</a>
			</div>
		</div>
		<!-- END : 목록건수 및 새글쓰기 버튼  -->


		<table class="table table-striped table-bordered table-hover">
			<colgroup>
				<col width="10%" />
				<col width="15%" />
				<col />
				<col width="10%" />
				<col width="15%" />
				<col width="10%" />
			</colgroup>
			<thead>
				<tr>
					<th>글번호</th>
					<th>분류</th>
					<th>제목</th>
					<th>작성아이디</th>
					<th>등록일</th>
					<th>조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="com" items="${community}">
					<tr class="text-center">
						<td>${com.comNo}</td>
						<td>${com.comCategoryNm}</td>
						<td class="text-left"><a href="communityView.wow?comNo=${com.comNo}">
								${com.comTitle} </a></td>
						<td>${com.comId}</td>
						<td>${com.comModDate == null ? com.comRegDate:com.comModDate}</td>
						<td>${com.comHit}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<!-- START : 페이지네이션  -->
		<nav class="text-center">
			<mytag:paging pagingVO="${searchVO}" linkPage="communityList.wow" />
		</nav>
		<!-- END : 페이지네이션  -->

	</div>
	<!-- .container -->
</body>
<script type="text/javascript">
	// 각 이벤트 등록
	/* document.querySelectorAll("ul.pagination > li > a[data-page]").addEventListener("click", function(e) {
		e.preventDefault(); // 이벤트 전파방지. 여기에서는 a링크 기능 막아줌
		alert(this.innerHTML);
	}); */
	var f = document.forms['frm_search'];

	// 각 이벤트 등록
	// 페이지 링크 클릭
	$('ul.pagination  li  a[data-page]').click(function(e) {
		e.preventDefault();
		// data-page에 있는 값을 f.curPage.vlue에 설정, 서브밋
		f.curPage.value = $(this).data('page');
		f.submit();
	});

	// 검색 버튼 클릭
	$(f).submit(function(e) {
		e.preventDefault();
		f.curPage.value = 1;
		f.submit();
	});

	// 목록갯수 변경
	// id_rowSizePerPage가 변경 되었을 때
	// 페이지 1, 목록수 = 현재 값으로 변경 후 서브밋
	$('#id_rowSizePerPage').change(function(e) {
		f.curPage.value = 1;
		f.rowSizePerPage.value = this.value;
		f.submit();
	});

	// 초기화 버튼 클릭
	$('#id_btn_reset').click(function(e) {
		f.curPage.value = 1;
		f.searchWoard = "";
		f.searchType.options[0].selected = true;
		f.searchCategory.options[0].selected = true;
	});
	$('#id_search_area').on('hidden.bs.collapse',function(){
	$('#id_close i').removeClass('fa-chevron-up').addClass('fa-chevron-down');
	$('#id_close span').html('&nbsp; 검색열기');
		});
	$('#id_search_area').on('show.bs.collapse',function(){
	$('#id_close i').removeClass('fa-chevron-down').addClass('fa-chevron-up');
	$('#id_close span').html('&nbsp; 검색닫기');
		});
	// jQuery에서 클래스삭제 및 추가
	/* xxx.removeClass('fa-chevron-up').addClass('fa-chevron-down');
	yyy.html('&nbsp; 검색열기' );*/
</script>
</html>



