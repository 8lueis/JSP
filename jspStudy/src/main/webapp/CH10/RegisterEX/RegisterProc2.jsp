
<!DOCTYPE html>
<%@page import="register.RegisterDO"%>
<%@page import= "java.util.ArrayList" %>
<%
request.setCharacterEncoding("utf-8");
%>


<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>RegisterProc2.jsp</h2>
<hr>

<jsp:useBean id="rdo" class="register.RegisterDO">
<jsp:setProperty name="rdo" property="*" />
</jsp:useBean>

<jsp:useBean id="rdao" class="register.RegisterDAO">
<%


rdao.insertRegister(rdo);

ArrayList<RegisterDO> rlist = rdao.getAllRegister();
int i;
for(i=0; i<rlist.size(); i++){
	RegisterDO rdoTemp = rlist.get(i);
	out.println(i + " <b>name: </b>" + rdoTemp.getName() + ", <b>mail: </b>" + rdoTemp.getEmail()+ "<br>");
}

%>
</jsp:useBean>

</body>
</html>