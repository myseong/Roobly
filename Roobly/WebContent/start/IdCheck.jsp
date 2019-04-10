<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Roobly.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<body bgcolor="#FFFFCC">
<br>
<%
     response.setContentType("text/xml;charset=utf-8");
     String outString="";
     
     String wUserID=request.getParameter("wUserID");

     
     //MemberDAO ->loginCheck
     RooblyDAO memMgr=new RooblyDAO();  //(1)
     boolean check=memMgr.checkId(wUserID);
	if(check){  //이미 아이디가 존재한 아이디라면
		outString="<font color='red'><b>이미 존재하는 아이디</b></font>";
	}else{ //id가 없다는 경우
		outString="<font color='blue'><b>사용이 가능한 아이디</b></font>";
	}
  out.println(outString);
%>
</body>
</html>