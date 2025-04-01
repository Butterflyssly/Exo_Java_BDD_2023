<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Liste des tâches</title>
</head>
<body>
<h1>Liste des tâches</h1>
<%
    HttpSession session = request.getSession();
    List<Task> tasks = (List<Task>) session.getAttribute("tasks");
    if (tasks != null) {
        for (Task task : tasks) {
%>
            <p>Titre : <%= task.getTitle() %></p>
            <p>Description : <%= task.getDescription() %></p>
            <p>Date d'échéance : <%= task.getDueDate() %></p>
<%
        }
    }
%>
</body>
</html>
