<%--
 $Rev: 1013 $
 $Date: 2012-03-21 14:04:14 -0500 (Wed, 21 Mar 2012) $
--%>
<jsp:useBean id="UserContext" scope="session" class="com.kd.kineticSurvey.beans.UserContext" />
<%@page contentType="text/html; charset=UTF-8"%>
<%@page import="org.apache.commons.lang3.StringEscapeUtils"%>
<%@page import="java.lang.reflect.Field"%>
<%@page import="java.lang.reflect.Modifier"%>
<%@page import="java.util.*"%>

<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate, max-age=0"); //HTTP 1.1
	response.setDateHeader("Expires", 0); //prevents caching at the proxy server
	response.setHeader("Pragma", "No-cache");

	String[] parts = UserContext.getOriginatingPage().split("/");

	String company = null;

	if(parts.length > 0) {
		company = parts[parts.length - 1];
	}
%>
