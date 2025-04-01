<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestion des tâches</title>
</head>
<body>
    <h1>Gestionnaire de tâches</h1>

    <%
        // Récupérer la session et la liste des tâches
        ArrayList<String> tasks = (ArrayList<String>) session.getAttribute("tasks");

        if (tasks == null) {
            tasks = new ArrayList<>();
        }

        // Ajouter une tâche si le formulaire est soumis (méthode POST)
        if (request.getMethod().equals("POST")) {
            String title = request.getParameter("title");
            String description = request.getParameter("description");

            // Créer une tâche sous forme de chaîne de caractères
            String task = "Titre: " + title + " | Description: " + description;

            // Ajouter la tâche à la session
            tasks.add(task);
            session.setAttribute("tasks", tasks);

            // Rediriger vers la page d'affichage des tâches
            response.sendRedirect("viewtasks.jsp");
            return;
        }

    %>

    <p><a href="addtasks.jsp">Ajouter une nouvelle tâche</a></p>
    <p><a href="viewtasks.jsp">Voir la liste des tâches</a></p>

</body>
</html>
