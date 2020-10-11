<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/10/10
  Time: 10:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <table align="center" width="600" border="1">
    <tr height="40" align="center">
      <td colspan="6"><strong>用户信息列表</strong>
       <a href="add.jsp" style="font-size: 12px">添加</a>
      </td>
    </tr>
    <tr height="40" align="center">
      <td id="aa">编号</td>
      <td>姓名</td>
      <td>密码</td>
      <td>性别</td>
      <td>出生日期</td>
      <td>操作</td>
    </tr>
    <c:forEach var="us" items="${lists}">
      <tr height="40" align="center">
        <td>${us.id}</td>
        <td>${us.username}</td>
        <td>${us.password}</td>
        <td>${us.sex}</td>
        <td>
          <fmt:formatDate value="${us.bornDate}" pattern="yyyy-MM-dd"></fmt:formatDate>
        </td>
        <td>
          <a href="UserServlet?id=${us.id}&comm=query">查看</a>&nbsp;
          <a href="UserServlet?id=${us.id}&comm=update">修改</a>&nbsp;
          <a href="UserServlet?id=${us.id}&comm=del">删除</a>&nbsp;
        </td>
      </tr>
    </c:forEach>
  </table>
  <p align="center">
    <c:if test="${ps.currentPageNo >1}">
      <a href="UserServlet?indexno=1&comm=list">首页</a>&nbsp;&nbsp;
      <a href="UserServlet?indexno=${ps.currentPageNo-1}&comm=list">上一页</a>&nbsp;&nbsp;
    </c:if>
    <c:if test="${ps.currentPageNo <ps.totalPageCount}">
      <a href="UserServlet?indexno=${ps.currentPageNo+1}&comm=list">下一页</a>&nbsp;&nbsp;
      <a href="UserServlet?indexno=${ps.totalPageCount}&comm=list">末页</a>
    </c:if>
  </p>
  </body>
</html>
