<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <c:import url="/top" /> --%>
<body>
<jsp:include page="../top.jsp"></jsp:include>
<jsp:include page="main.script.jsp"></jsp:include>
<!-- 인트로 이미지 시작-->
<section id="top" class="one dark cover">

	<c:forEach var="url" items="${mainTrailer}" begin="0" end="0">
		<div class="container">
			<div>
				<iframe width="100%" height="700" src="${url.url}"></iframe>
			</div>
			<!--?autoplay=1 자동재생  크롬에서는 작동 안함 -->
			<div id="zzim"></div>
			<header> reTuLix에서 제공하는 최신 리뷰를 만나보세요 </header>

			<footer>

				<a href="user/showMovie?idx=${url.idx}" class="button scrolly">지금 영상
					보러가기</a>
			</footer>

		</div>
	</c:forEach>

</section>
<!-- 인트로 이미지 끝-->

<!--정렬하기 시작-->
<div class="align">
	<select name="align" id="g_button">
		<option value="click">조회수순</option>
		<option value="good">좋아요순</option>
	</select>
	<button id="alignButton">정렬하기</button>
</div>
<!--정렬하기 끝	-->

<!-- 슬라이더 시작 -->

<!--찜한 영상-->
<section id="about" class="two">
	<div class="container-fluid" id="cslide">
		<c:if test="${zzimListSize ne 0}">
			<h3 align="left" style="color: lavender">${loginUser.name}님이찜한 영상</h3>
				<div id="history"></div>
				<div class="row">
					<ul id="content-slider" class="content-slider">
						<c:forEach var="zzimList" items="${zzimListTitle}" begin="0" end="20" step="1">
							<div class="col-6 col-lg-2 animate-in-down">
								<a href="user/showMovie?idx=${zzimList.idx}"> 
									<img src="${pageContext.request.contextPath}/resources/images/poster/${zzimList.title}.png"
									class="center-block img-fluid my-3" height="230px" width="158px">
								</a>
							</div>
						</c:forEach>
					</ul>
				</div>
		</c:if>
		<!--찜 데이터가 없을 경우 추천영상이 나옴  -->
		<c:if test="${zzimListSize eq 0}">
			<h3 align="left" style="color: lavender">${loginUser.name}님을 위한추천 영상</h3>
				<div id="history"></div>
				<div class="row">
					<ul id="content-slider" class="content-slider">
						<c:forEach var="reList" items="${reListTitle}" begin="0" end="20" step="1">
							<div class="col-6 col-lg-2 animate-in-down">
								<a href="user/showMovie?idx=${reList.idx}"> 
									<img src="${pageContext.request.contextPath}/resources/images/poster/${reList.title}.png"
									class="center-block img-fluid my-3" height="230px"width="158px">
								</a>
							</div>
						</c:forEach>
					</ul>
				</div>
		</c:if>
	</div>



	<!--최근에 본 영상-->
	<div class="container-fluid" id="cslide">
		<c:if test="${historyListSize ne 0}">
			<h3 align="left" style="color: lavender">${loginUser.name}님이최근에
				본 영상</h3>
			<div class="demo">
				<div id="click"></div>
				<div class="row">
					<ul id="content-slider" class="content-slider">

						<c:forEach var="historyList" items="${historyListTitle}" begin="0" end="20" step="1">
							<div class="col-6 col-lg-2 animate-in-down">
								<a href="user/showMovie?idx=${historyList.idx}"> <img
									src="${pageContext.request.contextPath}/resources/images/poster/${historyList.title}.png"
									class="center-block img-fluid my-3" height="230px"
									width="158px"></a>
							</div>
						</c:forEach>
		</c:if>
		<!-- 히스토리가 없으면 좋아요가 많은 영상이 나옴  -->
		<c:if test="${historyListSize eq 0}">
			<h3 align="left" style="color: lavender">좋아요가 많은 영상</h3>
			<div class="demo">
				<div id="click"></div>
				<div class="row">
					<ul id="content-slider" class="content-slider">

						<c:forEach var="goodList" items="${goodTitle}" begin="0" end="20" step="1">
							<div class="col-6 col-lg-2 animate-in-down">
								<a href="user/showMovie?idx=${goodList.idx}"> <img
									src="${pageContext.request.contextPath}/resources/images/poster/${goodList.title}.png"
									class="center-block img-fluid my-3" height="230px"
									width="158px"></a>
							</div>
						</c:forEach>
		</c:if>


		</ul>
	</div>
	</div>

	</div>
	<!--최근 인기 영상-->
	<div class="container-fluid" id="cslide">
		<h3 align="left" style="color: lavender">최근 인기 영상</h3>
		<div class="demo">
			<div class="row">
				<ul id="content-slider" class="content-slider">
					<c:forEach var="clickSlider" items="${clickSlider}" begin="0" end="20" step="1">
						<div class="col-6 col-lg-2 animate-in-down">
							<a href="user/showMovie?idx=${clickSlider.idx}"> <img
								src="${pageContext.request.contextPath}/resources/images/poster/${clickSlider.title}.png"
								class="center-block img-fluid my-3" height="230px" width="158px"></a>
						</div>
					</c:forEach>

				</ul>
			</div>
		</div>
	</div>

	<!-- 장르별 영화-->

	<div class="container-fluid" id="cslide">
		<h3 align="left" style="color: lavender">코미디 영화</h3>
		<div class="demo">
			<div class="row">
				<ul id="content-slider" class="content-slider">
					<c:forEach var="MOVIE" items="${MC_title}" begin="0" end="20" step="1">
						<div class="col-6 col-lg-2 animate-in-down">
							<a href="user/showMovie?idx=${MOVIE.idx}"> <img
								src="${pageContext.request.contextPath}/resources/images/poster/${MOVIE.title}.png"
								class="center-block img-fluid my-3" height="230px" width="158px"></a>
						</div>
					</c:forEach>

				</ul>
			</div>
		</div>
	</div>

	<div class="container-fluid" id="cslide">
		<h3 align="left" style="color: lavender">공포 영화</h3>
		<div class="demo">
			<div class="row">
				<ul id="content-slider" class="content-slider">

					<c:forEach var="MOVIE" items="${MH_title}" begin="0" end="20" step="1">
						<div class="col-6 col-lg-2 animate-in-down">
							<a href="user/showMovie?idx=${MOVIE.idx}"> <img
								src="${pageContext.request.contextPath}/resources/images/poster/${MOVIE.title}.png"
								class="center-block img-fluid my-3" height="230px" width="158px"></a>
						</div>
					</c:forEach>

				</ul>
			</div>
		</div>
	</div>

	<div class="container-fluid" id="cslide">
		<h3 align="left" style="color: lavender">SF 영화</h3>
		<div class="demo">
			<div class="row">
				<ul id="content-slider" class="content-slider">

					<c:forEach var="MOVIE" items="${MS_title}" begin="0" end="20" step="1">
						<div class="col-6 col-lg-2 animate-in-down">
							<a href="user/showMovie?idx=${MOVIE.idx}"> <img
								src="${pageContext.request.contextPath}/resources/images/poster/${MOVIE.title}.png"
								class="center-block img-fluid my-3" height="230px" width="158px"></a>
						</div>
					</c:forEach>

				</ul>
			</div>
		</div>
	</div>

	<div class="container-fluid" id="cslide">
		<h3 align="left" style="color: lavender">액션 영화</h3>
		<div class="demo">
			<div class="row">
				<ul id="content-slider" class="content-slider">

					<c:forEach var="MOVIE" items="${MA_title}" begin="0" end="20" step="1">
						<div class="col-6 col-lg-2 animate-in-down">
							<a href="user/showMovie?idx=${MOVIE.idx}"> <img
								src="${pageContext.request.contextPath}/resources/images/poster/${MOVIE.title}.png"
								class="center-block img-fluid my-3" height="230px" width="158px"></a>
						</div>
					</c:forEach>

				</ul>
			</div>
		</div>
	</div>

	<div class="container-fluid" id="cslide">
		<h3 align="left" style="color: lavender">로맨스 영화</h3>
		<div class="demo">
			<div class="row">
				<ul id="content-slider" class="content-slider">

					<c:forEach var="MOVIE" items="${MR_title}" begin="0" end="20" step="1">
						<div class="col-6 col-lg-2 animate-in-down">
							<a href="user/showMovie?idx=${MOVIE.idx}"> <img
								src="${pageContext.request.contextPath}/resources/images/poster/${MOVIE.title}.png"
								class="center-block img-fluid my-3" height="230px" width="158px"></a>
						</div>
					</c:forEach>

				</ul>
			</div>
		</div>
	</div>
	<!--드라마-->
	<div class="container-fluid" id="cslide">
		<h3 align="left" style="color: lavender">드라마</h3>
		<div class="demo">
			<div class="row">
				<ul id="content-slider" class="content-slider">

					<c:forEach var="DRAMA" items="${D_title}" begin="0" end="20" step="1">
						<div class="col-6 col-lg-2 animate-in-down">
							<a href="user/showMovie?idx=${DRAMA.idx}"> <img
								src="${pageContext.request.contextPath}/resources/images/poster/${DRAMA.title}.png"
								class="center-block img-fluid my-3" height="230px" width="158px"></a>
						</div>
					</c:forEach>

				</ul>
			</div>
		</div>
	</div>

</section>
<jsp:include page="../foot.jsp"></jsp:include>
</body>
<!-- 슬라이더 끝 -->
<%-- <c:import url="/foot" /> --%>