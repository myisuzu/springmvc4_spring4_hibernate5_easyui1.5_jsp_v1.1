<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE head PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
	request.getRequestDispatcher(request.getContextPath() + "/system/user/loginUI").forward(request, response);
%>
