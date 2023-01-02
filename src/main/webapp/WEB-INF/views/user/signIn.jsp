<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"	uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:set var="result"		 value="${param.result}"/>
<%
	request.setCharacterEncoding("UTF-8");
	String msg = request.getAttribute("msg") == null ? "" : (String)request.getAttribute("msg");
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인 화면</title>
	<style>
		#signupbtn {
			background: orange;
		
		}
		#subbtn {
			background: orange;
		}
		.label {
			padding: 10px;
			text-align: center;
			width: 90px;
			background: orange;
		}
		.input {
			margin-left: 200px;
			padding-top: 50px;
			align-content: center;
		}
        .btnnn {
			width: 			150px;
			height:			50px;
			border-radius:	10px;
			border:			1px;
		}
		#a {
			color: gray
		}
		#a:hover {
			color: orange
		}
	</style>
	
<c:choose>	
	<c:when test="${result == 'loginFailed'}">
		<script>
		window.onload = function() {
			alert("\n아이디를 확인해 주세요!\n");
		}
		</script>
	</c:when>
	<c:when test="${result == 'PasswordFailed'}">
		<script>
		window.onload = function() {
			alert("\n비밀번호를 확인해주세요!\n");
		}
		</script>
	</c:when>
</c:choose>
	
</head>
<body>

<jsp:include page="../common/header.jsp" flush="false" />

<div class="container-sm">
	<form class="form-horizontal" method="post" action="${ctx}/user/login">
		<div class="form-group" style="margin-top: 100px;">
			<div align="center">
				<h1 align="center">
					<font color="orange">S </font>
					<font color="orange">U </font>
					<font color="orange">R </font>
					<font color="orange">V </font>
					<font color="orange">E </font>
					<font color="orange">Y </font>
				</h1>
			</div>
		</div><br><br>
		<div class="input">
		<div align="center">
			<div class="form-group col-sm-4" style="margin-right: 200px;">
				<span class="input-group">
					<label class="label">아이디</label>
					<input type="text" class="form-control" name="id" maxlength="10" placeholder="아이디"/>
				</span>
			</div><br><br>
			<div class="form-group col-sm-4" style="margin-right: 200px;">
				<span class="input-group">
					<label class="label">비밀번호</label>
					<input type="password" class="form-control" name="pwd" maxlength="20" placeholder="비밀번호"/>
				</span>
			</div><br><br>
			<div class="form-group" style="margin-right: 30px;">
				<div class="col-sm-6" align="left">
                    <h5>비밀번호를 잊으셨나요?</h5><a href="#" id="a">비밀번호 변경하러 가기</a>
				</div>
			</div><br><br>
			<div class="form-group" style="margin-right: 200px;">
				<div class="col-sm-5">
                    <button type="button" id="signupbtn" class="shadow btnnn" data-bs-toggle="modal" data-bs-target="#exampleModalToggle">회원가입</button>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <button type="submit" id="subbtn" class="shadow btnnn">로그인</button>
				</div>
			</div>
			</div>
		</div>
	</form>
		<!-- Modal -->
        <div class="modal fade" id="exampleModalToggle" aria-hidden="true" data-bs-backdrop="static" data-bs-keyboard="false" aria-labelledby="exampleModalToggleLabel" tabindex="-1">
            <div class="modal-dialog modal-lg modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="staticBackdropLabel">
                            <font color="orange">S </font>
                            <font color="gray">U </font>
                            <font color="orange">R </font>
                            <font color="gray">V </font>
                            <font color="orange">E </font>
                            <font color="gray">Y </font>
                        </h1>
                    </div>
                    <div class="modal-body" id="registerModal">
                    hi hi
                    </div>
                </div>
            </div>
        </div>
</div>

<jsp:include page="../common/footer.jsp" flush="false" />
</body>
<script>
	$(document).ready(function() {
		if("<%=msg%>" != "") {
			alert("<%=msg%>");
		}
	});
</script>
</html>
