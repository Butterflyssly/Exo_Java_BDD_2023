<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*, java.sql.Date"%>
<html>
<head>
<title>Taches</title>
</head>
<body bgcolor=white>
<h1>Saisir une tâche</h1>
<form action="#" method="post">
    <label for="inputTitle">Titre : </label>
    <input type="text" id="inputTitle" name="title"><br>
    <label for="inputDescription">Description : </label>
    <input type="text" id="inputDescription" name="description"><br>
    <label for="inputDueDate">Date d'échéance : </label>
    <input type="date" id="inputDueDate" name="dueDate"><br>
    <input type="submit" value="Enregistrer">
</form>

<%! 
    class Task {
        String title;
        String description;
        Date dueDate;

        public Task(String title, String description, Date dueDate) {
            this.title = title;
            this.description = description;
            this.dueDate = dueDate;
        }
    }
%>

<%
    HttpSession session = request.getSession();
    String title = request.getParameter("title");
    String description = request.getParameter("description");
    String dueDateStr = request.getParameter("dueDate");

    if (title != null && description != null && dueDateStr != null) {
        Date dueDate = Date.valueOf(dueDateStr);
        Task task = new Task(title, description, dueDate);
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
