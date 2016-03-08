<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- main_layout.jspにコンテンツとタイトルを渡す -->
<c:import url="./layout/main_layout.jsp">
	<c:param name="title" value="${fovname}写真一覧"/>
	<c:param name="content">
	<!--  検索窓 -->
	<div class="search-form">
		<form action="/HEW_Zidolympic/SerchPhotoServlet" method="get">
			<div class="form-horizontal">
				<div class="form-group">
					<div class="col-xs-offset-2 col-xs-6">
					<c:if test="${empty texttag}">
						<input type="text" name="search" class="form-control" name="search"/>
						<input type="hidden" value="1" name="check">
					</c:if>
					<c:if test="${!empty texttag}">
					<input type="hidden" value="1" name="check">
					<input type="text" name="search" class="form-control" name="search" placeholder="${texttag }"/>
					</c:if>
					</div>
					<div class="col-xs-2">
						<input type="submit" class="btn" value="検索"/>
					</div>
				</div>
			</div>
		</form>
	</div>
	<!-- 写真をリストで表示 -->
	<div class="pic-list">
	
		<div class="pic-row">
		<c:forEach var="p" items="${ photolist }"  begin="0" end="3">
			<div class="pic-area">
				<div class="pic">
<!-- 
<span onmouseover="document.all.item('moji3').style.visibility='visible'" onmouseout="document.all.item('moji3').style.visibility='hidden'">
<img src="のせる画像のＵＲＬ">
</span>

<div ID="moji3" style="visibility:hidden;">
<img src="画像ＵＲＬ">
</div> -->
				<a href="/HEW_Zidolympic/FovServlet?img_pass=${p.img_pass}&con_id=${p.contribution_id}">
				<figure>
				<img src="/HEW_Zidolympic/UploadImages/${p.img_pass }" width="200" height="auto">
				<figcaption>${p.img_title}<br>キャプション表示</figcaption>
				</figure>
				</a>
				</div>
				<div class="pic-title">${p.img_title}</div>
			</div>
			</c:forEach>
		</div>
		<div class="pic-row">
		<c:forEach var="p" items="${ photolist }"  begin="4" end="7">
			<div class="pic-area">
				<div class="pic">
				<a href="/HEW_Zidolympic/FovServlet?img_pass=${p.img_pass}&con_id=${p.contribution_id}">
				<figure>
				<img src="/HEW_Zidolympic/UploadImages/${p.img_pass }" width="200" height="auto">
				<figcaption>${p.img_title}<br>キャプション表示</figcaption>
				</figure>
				</a>
				</div>
				<div class="pic-title">${p.img_title}</div>
			</div>
			</c:forEach>
		</div>
		<div class="pic-row">
		<c:forEach var="p" items="${ photolist }"  begin="8" end="11">
			<div class="pic-area">
				<div class="pic">
				<a href="/HEW_Zidolympic/FovServlet?img_pass=${p.img_pass}&con_id=${p.contribution_id}">
				<figure>
				<img src="/HEW_Zidolympic/UploadImages/${p.img_pass }" width="200" height="auto">
				<figcaption>${p.img_title}<br>キャプション表示</figcaption>
				</figure>
				</a>
				</div>
				<div class="pic-title">${p.img_title}</div>
			</div>
			</c:forEach>
		</div>
		<div class="pic-row">
		<c:forEach var="p" items="${ photolist }"  begin="12" end="15">
			<div class="pic-area">
				<div class="pic">
				<a href="/HEW_Zidolympic/FovServlet?img_pass=${p.img_pass}&con_id=${p.contribution_id}">
				<figure>
				<img src="/HEW_Zidolympic/UploadImages/${p.img_pass }" width="200" height="auto">
				 <figcaption>${p.img_title}<br>キャプション表示</figcaption>
				</figure>
				</a>
				</div>
				<div class="pic-title">${p.img_title}</div>
			</div>
			</c:forEach>
		</div>
		<!-- ページング -->
		<div class="paging">
			<div class="page-ahead page">　　${back}　　</div>
			<div class="page-ahead page">　　${page}　　</div>
			<div class="page-ahead page">　　${next}　　</div>
		</div>
	</div>
	</c:param>
</c:import>