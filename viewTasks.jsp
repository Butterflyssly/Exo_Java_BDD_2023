<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liste des tâches</title>
</head>
<body>
    <h1>Tâches</h1>

    <%
        // Récupérer les tâches depuis la session
        ArrayList<String> tasks = (ArrayList<String>) session.getAttribute("tasks");

        if (tasks == null) {
            tasks = new ArrayList<>();
        }

        if (tasks.isEmpty()) {
            out.println("<p>Aucune tâche enregistrée.</p>");
        } else {
            out.println("<ul>");
            for (String task : tasks) {
                out.println("<li>" + task + "</li>");
            }
            out.println("</ul>");
        }
    %>

    <hr>
    <a href="addtasks.jsp">Ajouter une tâche</a>
</body>
</html>
