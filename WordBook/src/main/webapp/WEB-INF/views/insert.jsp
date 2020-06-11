<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登録画面</title>
</head>
<body>
<h1>登録画面</h1>
	<c:if test="${not empty msg}">
		<p>
			<font color = "red">${msg}</font>
		</p>
	</c:if>
<form:form action = "insertSet" modelAttribute = "questionInsert" method = "post">
		問題:<form:input path="quest"/><br>
		答え:<form:input path="ans"/><br>
		<form:button name = "set">登録する</form:button>
	</form:form>
	<a href = "top">TOPに戻る</a>
</body>
</html>