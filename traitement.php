<?php
$servername="localhost";
$username="root";
$psw="";
$dbname="lelaatrans";

$conn = new mysqli($servername, $username, $psw, $dbname);
if ($conn) {
   $email = $_POST['email'];
   $nom = $_POST['nom'];
   $psw = $_POST['password'];

   $sql = "INSERT INTO etudiant (Mot_de_passe, EmailEtu, NomEtu) VALUES ('$psw', '$email', '$nom')";

   if($conn->query($sql)){
    header("location: connexion.html");
    }else{
        echo "information non inséréé";
    }
}else{
    die("mauvaise connexion");
}

?>