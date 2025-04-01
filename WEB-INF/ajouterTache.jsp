<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><title>Ajouter une Tâche</title></head>
<body>
    <h2>Ajouter une nouvelle tâche</h2>
    <form action="ajouterTache" method="post">
        <label>Titre :</label>
        <input type="text" name="titre" required><br>
        <label>Description :</label>
        <textarea name="description"></textarea><br>
        <label>Date d’échéance :</label>
        <input type="date" name="dateEcheance" required><br>
        <input type="submit" value="Ajouter">
    </form>
</body>
</html>
