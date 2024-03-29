<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML>
<html>
<head>
<title>가자 GO</title>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	$(function() {
		$("#btnLogin").click(function() {
			var id = $("#id").val();
			var pw = $("#pw").val();
			if (id == "") {
				alert("아이디를 입력해주세요!!!!");
				$("#id").focus();
				return;
			}
			if (pw == "") {
				alert("비밀번호를 입력하세요.");
				$("#pw").focus();
				return;
			}
			document.form1.action = "/member/login_check.do";
			document.form1.submit();
		});
	});
</script>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="../assets/css/main.css" />
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>

<body class="homepage is-preload">
	<div id="page-wrapper">

	<%@ include file="../include/menu.jsp"%>


		<section id="main">
			<div class="container">
				<h2>로그인</h2>
				<form name="form1" method="post">
					<table border="1" >
						<tr>
							<td style="width:15%;">아이디</td>
							<td style="width:85%;"><input id="id" name="id" style="width:45%; height:50px; border-radius:5px; border:solid 1px #dddddd"></td>
						</tr>
						<tr>
							<td>비밀번호</td>
							<td><input type="password" id="pw" name="pw"  style="width:45%; height:50px; border-radius:5px; border:solid 1px #dddddd"></td>
						</tr>
						<tr>
							<td colspan="2"><button type="button" id="btnLogin" style="width:15%">로그인</button></td>
						</tr>
					</table>
					<div>
						<c:if test="${message == 'error' }">
							<div style="color:red;">
									아이디 또는 비밀번호가 일치하지 않습니다.
							</div>
						</c:if>
						<c:if test="${message == 'logout' }">
							<div style="color:red;">
								로그아웃되었습니다.
							</div>
						</c:if>
						<c:if test="${param.message == 'nologin' }">
							<div style="color:blue">
								로그인 하신 후 사용하세요
							</div>
						</c:if>
						</div>
				</form>
			</div>
		</section>
	</div>

	<%@ include file="../include/footer.jsp"%>
</body>
</html>