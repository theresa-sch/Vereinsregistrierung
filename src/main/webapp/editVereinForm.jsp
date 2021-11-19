<%@ page import="DataAccess.VereinDataAccess" %>
<%@ page import="model.Verein" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: arditsaliji
  Date: 18.11.21
  Time: 22:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        String id = request.getParameter("id");
        VereinDataAccess dataAccess = new VereinDataAccess();
        Verein verein = null;
        try {
            verein = dataAccess.getVereinById(Integer.parseInt(id));
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    %>

    <h1>Verein <%=verein.getName()%> bearbeiten</h1>
    <form action="editVerein.jsp" method="post" >
        <input type="hidden" name="id" value="<%=verein.getId() %>"/>
        <label>
            Name: <input name="name" value="<%= verein.getName()%>"/>
        </label>
        <label>
            Zweck: <input name="zweck" value="<%= verein.getZweck()%>"/>
        </label>
        <label>
            Adresse: <input name="adresse" value="<%= verein.getAdresse()%>"/>
        </label>
        <label>
            Email: <input name="email" value="<%= verein.getEmail()%>"/>
        </label>
        <label>
            Kategorie: <input name="kategorie" value="<%= verein.getKategorie()%>"/>
        </label>
        <label>
            Stadt: <input name="stadt" value="<%= verein.getStadt()%>"/>
        </label>

        <input type="submit" value="Speichern" />
    </form>
</body>
</html>
