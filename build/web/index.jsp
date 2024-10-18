<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    // Tạo đối tượng DemoClass và truyền vào request scope
    bach.dev.DemoClass demo = new bach.dev.DemoClass();
    request.setAttribute("demoMessage", demo.getMessage());
%>

<!DOCTYPE html>
<html>
<head>
    <title>JSTL Demo</title>
</head>
<body>

    <h1>JSTL Demo Page</h1>

    <!-- Sử dụng JSTL để hiển thị thông điệp -->
    <p>Message from DemoClass: <c:out value="${demoMessage}"/></p>

    <!-- Vòng lặp sử dụng JSTL -->
    <ul>
        <c:forEach var="i" begin="1" end="5">
            <li>Item number ${i}</li>
        </c:forEach>
    </ul>

</body>
</html>
