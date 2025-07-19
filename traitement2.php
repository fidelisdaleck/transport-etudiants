<?php

$servername = "localhost";
$username = "root";
$psw = "";
$dbname = "lelaatrans";

$conn = new mysqli($servername, $username, $psw, $dbname);

if($conn){
    $email = $_POST['email'];
    $psw = $_POST['password'];

    $sql = "SELECT * FROM etudiant WHERE EmailEtu = '$email' AND Mot_de_passe = '$psw'";
    $result = $conn -> query($sql);

    if($result){
        header("location: page-acceuil.html");
    }else{
        echo "information incorrecte";
    }
}
?>
