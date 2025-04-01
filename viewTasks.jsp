<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*, java.sql.Date"%>
<html>
<head>
<title>Taches</title>
</head>
<body bgcolor=white>
<h1>Liste des tâches</h1>
<%
    HttpSession session = request.getSession();
    List<Task> tasks = (List<Task>) session.getAttribute("tasks");
    if (tasks != null) {
        for (Task task : tasks) {
%>
            <p>Titre : <%= task.title %></p>
            <p>Description : <%= task.description %></p>
            <p>Date d'échéance : <%= task.dueDate %></p>
<%
        }
    }
%>
</body>
</html>
