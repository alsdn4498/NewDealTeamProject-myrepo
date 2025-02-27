<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>팀 등록 글 작성</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.ckeditor.com/ckeditor5/36.0.0/classic/ckeditor.js"></script>
<script src="https://cdn.ckeditor.com/ckeditor5/34.0.0/classic/translations/ko.js"></script>

<link rel="stylesheet" href="/css/teamregis.css">

</head>
<body>
	<jsp:include page="/WEB-INF/views/pageingredient/header.jsp"></jsp:include>

	<div class="main-wrap">
		<div class="index-ingredient">
			<form action="/team/teamregis" method="post" enctype="multipart/form-data">
				<p>
					<label for="team-title">제목</label>
					<input type="text" id="team-title" name="teamBoardTitle" value="" placeholder="제목 입력">
				</p>

				<p>
					<label for="team-head">작성자(팀장)</label>
					<input type="text" id="team-head" name="teamBoardWriter" value="imsitestwriter" readonly="readonly">
				</p>

				<div>
					<label for="content">내용</label>
					<textarea id="content" name="teamBoardContent"></textarea>
				</div>
				
				<!-- 이미지 첨부시 미리보기 -->
				<p>
					<label for="file">첨부파일</label>
					<input type="file" id="file" name="file" placeholder="파일등록">
					
				</p>
				
				<!-- 이미지 임시출력 -->
				<div class="select_img">
					<img src="" />
				</div>
				<!-- //이미지 첨부시 미리보기 -->
				
				<button class="regis-btn" type="submit">팀 등록</button>
			</form>
		</div>
	</div>

	<jsp:include page="/WEB-INF/views/pageingredient/footer.jsp"></jsp:include>
	<script src="/js/teamregis.js"></script>
</body>
</html>