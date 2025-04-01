<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*, java.sql.Date"%>
<%@page import="com.yourpackage.Task"%>
<html>
<head>
<title>Ajouter une tâche</title>
</head>
<body>
<h1>Saisir une tâche</h1>
<form action="addTask.jsp" method="post">
    <label for="title">Titre : </label>
    <input type="text" id="title" name="title"><br>
    <label for="description">Description : </label>
    <input type="text" id="description" name="description"><br>
    <label for="dueDate">Date d'échéance : </label>
    <input type="date" id="dueDate" name="dueDate"><br>
    <input type="submit" value="Enregistrer">
</form>

<%
    String title = request.getParameter("title");
    String description = request.getParameter("description");
    String dueDateStr = request.getParameter("dueDate");

    if (title != null && description != null && dueDateStr != null) {
        Date dueDate = Date.valueOf(dueDateStr);
        Task task = new Task(title, description, dueDate);
        HttpSession session = request.getSession();
        List<Task> tasks = (List<Task>) session.getAttribute("tasks");
        if (tasks == null) {
            tasks = new ArrayList<>();
        }
        tasks.add(task);
        session.setAttribute("tasks", tasks);
    }
%>
</body>
</html>
