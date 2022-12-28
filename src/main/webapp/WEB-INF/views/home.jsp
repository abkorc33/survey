<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
	<title>Home</title>
</head>
<style>
	.mainContainer {
		background-color: white;
	}

	.mainCategory{
		border-radius: 20px;
		overflow: hidden;
		box-shadow:
				0.7px 0.7px 0.7px rgba(0, 0, 0, 0.02),
				1.7px 1.8px 1.8px rgba(0, 0, 0, 0.028),
				3.3px 3.4px 3.4px rgba(0, 0, 0, 0.035),
				5.8px 6px 6px rgba(0, 0, 0, 0.042),
				10.9px 11.3px 11.3px rgba(0, 0, 0, 0.05),
				26px 27px 27px rgba(0, 0, 0, 0.07);
	}

	.mainNavs {
		border-radius: 0 0 20px 20px;
		padding:0 20px;
	}

	.title2 {
		font-family: 'DoHyeon';
	}

	.circle {
		width: 70px;
		height: 70px;
		border: 1px solid #F5F5F5;
		transition: 0.3s ease-in-out;
		box-shadow:
				0.7px 0.7px 0.7px rgba(0, 0, 0, 0.02),
				1.7px 1.8px 1.8px rgba(0, 0, 0, 0.028),
				3.3px 3.4px 3.4px rgba(0, 0, 0, 0.035),
				5.8px 6px 6px rgba(0, 0, 0, 0.042),
				10.9px 11.3px 11.3px rgba(0, 0, 0, 0.05),
				26px 27px 27px rgba(0, 0, 0, 0.07);
	}

	.btn-circle:hover .circle {
		background-color: #F5F5F5;
	}

	.square {
		width: 70px;
		height: 70px;
		border: 1px solid #F5F5F5;
		transition: 0.3s ease-in-out;
		box-shadow:
				0.7px 0.7px 0.7px rgba(0, 0, 0, 0.02),
				1.7px 1.8px 1.8px rgba(0, 0, 0, 0.028),
				3.3px 3.4px 3.4px rgba(0, 0, 0, 0.035),
				5.8px 6px 6px rgba(0, 0, 0, 0.042),
				10.9px 11.3px 11.3px rgba(0, 0, 0, 0.05),
				26px 27px 27px rgba(0, 0, 0, 0.07);
	}

	.square:hover {
		background-color: #F5F5F5;
	}

	.itemCard {
		opacity: 0;
		box-shadow:
				0.7px 0.7px 0.7px rgba(0, 0, 0, 0.02),
				1.7px 1.8px 1.8px rgba(0, 0, 0, 0.028),
				3.3px 3.4px 3.4px rgba(0, 0, 0, 0.035),
				5.8px 6px 6px rgba(0, 0, 0, 0.042),
				10.9px 11.3px 11.3px rgba(0, 0, 0, 0.05),
				26px 27px 27px rgba(0, 0, 0, 0.07);
	}

	.itemCard:hover {
		box-shadow:
				0.7px 0.7px 0.7px rgba(0, 0, 0, 0.02),
				1.7px 1.8px 1.8px rgba(0, 0, 0, 0.028),
				3.3px 3.4px 3.4px rgba(0, 0, 0, 0.035),
				5.8px 6px 6px rgba(0, 0, 0, 0.042),
				10.9px 11.3px 11.3px rgba(0, 0, 0, 0.05),
				26px 27px 27px rgba(0, 0, 0, 0.2);
	}

	.itemVO-lists {
		overflow-x:scroll;
		overflow-y:hidden;
	}

	::-webkit-scrollbar {
		display: none;
	}

	.itemVO-lists::-webkit-scrollbar {
		display: block;
	}

	.itemVO-lists::-webkit-scrollbar-track {
		background: transparent;
	}

	.itemVO-lists::-webkit-scrollbar-thumb {
		background: #888;
		border-radius: 10px;
	}

	.itemVO-lists::-webkit-scrollbar-thumb:hover {
		background: #555;
	}


	@keyframes testAnim {
		0% {
			opacity: 0;
			transform: scale(0.5) translateX(100%);
		}
		100% {
			opacity: 1;
			transform: scale(1) translateX(0);
		}
	}

	.fadeInRight {
		animation-name: testAnim;
		animation-duration: 1s;
		opacity: 1;
	}

</style>
<body>
<jsp:include page="./common/header.jsp" flush="false"/>
<div class="container">
	<div class="row">
		<div class="d-flex justify-content-center mb-4 fs-3 fw-bold" style="margin: 50px;">오늘의 추천 Survey</div>
	</div>
	<div class="row">
		<div class="col">
			<div class="mainCategory flex-column" style="background-color: powderblue;">
				<div class="flex-column justify-content-center align-items-center p-4">
					<div class="row justify-content-start">
						<div class="col-sm-7">
						<img src="${ctx}/resources/images/snow.jpg"alt="home" width="200" height="200"/>
						</div>
						<div class="text-light pt-1 col-sm-5"><p>눈 오는 날 뭐해?<p><br>
						<p>집에서 뒹굴기</p><br>
						<p>스키타러 가기</p><br>
						<p>코코아 마시기</p>
						<a class="btn btn-outline-light rounded-pill mt-4" href="${ctx}/survey">바로가기</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="mainCategory flex-column" style="background-color: darkgreen;">
				<div class="flex-column justify-content-center align-items-center p-4">
				<div class="row justify-content-start">
						<div class="col-sm-7">
						<img src="${ctx}/resources/images/christmas.jpg" alt="home" width="200" height="200"/>
						</div>
						<div class="text-light pt-1 col-sm-5">크리스마스 파티
						<a class="btn btn-outline-light rounded-pill mt-4" href="${ctx}/survey">바로가기</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="mainCategory flex-column" style="background-color: orange;">
				<div class="flex-column justify-content-center align-items-center p-4">
				<div class="row justify-content-start">
						<div class="col-sm-7">
						<img src="${ctx}/resources/images/knit.jpg" alt="home" width="200" height="200"/>
						</div>
						<div class="text-light pt-1 col-sm-5">포근한 니트
						<a class="btn btn-outline-light rounded-pill mt-4" href="${ctx}/survey">바로가기</a>
					</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<jsp:include page="./common/footer.jsp" flush="false"/>
</body>
</html>
