<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ajouter une tâche</title>
</head>
<body>
    <h1>Ajouter une Tâche</h1>
    <form action="taskForm.jsp" method="post">
        <label for="title">Titre :</label>
        <input type="text" name="title" id="title" required><br><br>

        <label for="description">Description :</label>
        <textarea name="description" id="description" required></textarea><br><br>

        <button type="submit">Ajouter</button>
    </form>

    <hr>
    <h2>Tâches</h2>

    <%
        // Récupérer la session et la liste des tâches
        ArrayList<String> tasks = (ArrayList<String>) session.getAttribute("tasks");

        if (tasks == null) {
            tasks = new ArrayList<>();
        }

        // Si la requête est un POST (l'ajout d'une tâche), ajouter la tâche à la liste
        if (request.getMethod().equals("POST")) {
            String title = request.getParameter("title");
            String description = request.getParameter("description");
            String task = "Titre: " + title + " | Description: " + description;

            tasks.add(task);
            session.setAttribute("tasks", tasks);
        }

        // Afficher la liste des tâches
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
</body>
</html>

