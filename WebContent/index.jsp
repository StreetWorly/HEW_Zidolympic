<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- main_layout.jspにコンテンツとタイトルを渡す -->
<c:import url="./layout/main_layout.jsp">
	<c:param name="title" value="ジドリンピック"/>
	<c:param name="content">
		<div class="mv">
			<img class="mv01" src="./images/mv01.png" alt="" />
		</div>
		<div class="main-contentst">
			<div class="content-box"><a href="./compelist.jsp">競技一覧</a></div>
			<div class="content-box"><a href="./photolist.jsp">写真一覧</a></div>
			<div class="content-box"><a href="./ranking.jsp">ランキング</a></div>
		</div>
	</c:param>
</c:import>