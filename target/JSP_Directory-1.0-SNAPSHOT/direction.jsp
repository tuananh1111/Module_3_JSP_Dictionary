<%--
  Created by IntelliJ IDEA.
  User: Pro 2004
  Date: 10/30/2020
  Time: 2:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Direction</title>
</head>
<body>
<%! Map<String, String> dic = new HashMap<>();%>
<%
    dic.put("hello","Xin Chào");
    dic.put("ok","Được");
    dic.put("sorry","Xin lỗi");
    dic.put("smile","cười");
    dic.put("cry","khóc");
    dic.put("laptop","Máy tính sách tay");
    dic.put("shark","Bình nước");
    
    String search =request.getParameter("word");
    String result = dic.get(search);
    if (result != null){
        out.println("Word: "+ search);
        out.println("Result: " + result);
    }else out.println("Not found");
%>
</body>
</html>
