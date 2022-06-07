<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 
	<table border="1">
		<thd>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>비번</th>
				<th>이메일</th>
			</tr>
		</thead>
		<tbody>
		<%for(UserVo userVo:userLis){ %>
			<tr>
				<td><%=userVo.getNo()%></td>
				<td><%=userVo.getName()%></td>
				<td><%=userVo.getPassword()%></td>
				<td><%=userVo.getEmail()%></td>
			</tr>
		<%} %>
		</tbody>
	</table>
	 --%>
	 
	 <table border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>비번</th>
				<th>이메일</th>
				<th>index</th>
				<th>count</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${userList}" var="userVo" varStatus="status">
				<tr>
					<td>${userVo.no}</td>
					<td>${userVo.name}</td>
					<td>${userVo.password}</td>
					<td>${userVo.email}</td>
					<th>${status.index}</th>
					<th>${status.count}</th>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	 
</body>
</html>