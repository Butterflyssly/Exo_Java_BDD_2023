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
    <form action="taches.jsp" method="post">
        <label for="title">Titre :</label>
        <input type="text" name="title" id="title" required><br><br>

        <label for="description">Description :</label>
        <textarea name="description" id="description" required></textarea><br><br>

        <button type="submit">Ajouter</button>
    </form>
    <hr>
    <a href="taches.jsp">Voir les tâches</a>
</body>
</html>
