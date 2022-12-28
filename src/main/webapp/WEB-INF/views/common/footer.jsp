<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
	#footerNav {
		margin-top: 200px;
		color: rgba(0, 0, 0, 0.5);
	}

	#footerNav a {
		color: rgba(0, 0, 0, 0.5);
		text-decoration: none;
	}

	#footerNav a:hover {
		color: gray;
	}

	.btn_gotop {
		position:fixed;
		bottom:30px;
		right:30px;
		z-index:999;
		border:1px solid #ccc;
		outline:none;
		background-color:white;
		color:#333;
		cursor:pointer;
		padding:15px 20px;
		border-radius:100%;
	}
</style>
<nav id="footerNav" class="container text-center">
	<a href="#" class="btn_gotop">
		<div class="glyphicon glyphicon-chevron-up">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-up" viewBox="0 0 16 16">
				<path fill-rule="evenodd" d="M8 15a.5.5 0 0 0 .5-.5V2.707l3.146 3.147a.5.5 0 0 0 .708-.708l-4-4a.5.5 0 0 0-.708 0l-4 4a.5.5 0 1 0 .708.708L7.5 2.707V14.5a.5.5 0 0 0 .5.5z"/>
			</svg>
		</div>
	</a>
	<a class="nav-link my-3" id="footerExtContents" data-bs-toggle="collapse" href="#collapseFooter" aria-expanded="false">Survey(주) 프로젝트 정보</a>
	<div class="collapse" id="collapseFooter">
		<ul class="card card-body gap-3">
			<li>작성자 : 김수현</li>
			<li>프로젝트 기간 : 12-27 ~ </li>
			<li>이메일 : <a href="mailto:">@gmail.com</a></li>
		</ul>
	</div>
	<div class="py-3" style="font-size: 24px;">SURVEY</div>
</nav>