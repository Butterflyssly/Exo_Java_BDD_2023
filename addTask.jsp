<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Ajouter une tâche</title>
</head>
<body>
<h1>Saisir une tâche</h1>
<form action="addTaskServlet" method="post">
    <label for="title">Titre : </label>
    <input type="text" id="title" name="title"><br>
    <label for="description">Description : </label>
    <input type="text" id="description" name="description"><br>
    <label for="dueDate">Date d'échéance : </label>
    <input type="date" id="dueDate" name="dueDate"><br>
    <input type="submit" value="Enregistrer">
</form>
</body>
</html>
