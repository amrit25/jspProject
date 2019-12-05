
<head>
<style>
body {background-color:violet;}
table {background-color:red;}
</style>
</head>
 
<%-- 

<%!
int srn;
String sname;
String saddr;
String semail;
float smarks;
%>
<%
try
{
	srn=Integer.parseInt(request.getParameter("srn"));
	sname=request.getParameter("sname");
	saddr=request.getParameter("saddr");
	semail=request.getParameter("semail");
	smarks=Float.parseFloat(request.getParameter("smarks"));
}
catch(Exception e)
{
	e.printStackTrace();
}
%>

<jsp:useBean id="s" class="com.amtit.Student" scope="session" type="com.amtit.Student">
<jsp:setProperty name="s" property="srn" value='<%=srn %>'/>
<jsp:setProperty name="s" property="sname" value='<%=sname %>'/>
<jsp:setProperty name="s" property="saddr" value='<%=saddr %>'/>
<jsp:setProperty name="s" property="semail" value='<%=semail %>'/>
<jsp:setProperty name="s" property="smarks" value='<%=smarks %>'/>


--%>


<jsp:useBean id="s" class="com.amrit.Student" scope="session" type="com.amrit.Student">
<jsp:setProperty name="s" property="*"/>



<%--...................... --%>

<h2 style="color:red;" align="center">AMRIT SOFTWARE SOLUTIONS </h2>
<h3 style="color:blue;" align="center">Student Form </h3>
<center>
<table border="1">
<tr>
<td>Student RollNumber </td>
<td><jsp:getProperty property="srn" name="s"/></td>
</tr>

<tr>
<td>Student Name </td>
<td><jsp:getProperty property="sname" name="s"/></td>
</tr>
<tr>
<td>Student Address </td>
<td><jsp:getProperty property="saddr" name="s"/></td>
</tr>
<tr>
<td>Student Email </td>
<td><jsp:getProperty property="semail" name="s"/></td>
</tr>
<tr>
<td>Student Marks </td>
<td><jsp:getProperty property="smarks" name="s"/></td>
</tr>
</table>
</center>

</jsp:useBean>