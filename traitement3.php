<?php
$servername="localhost";
$username="root";
$psw="";
$dbname="lelaatrans";

$conn = new mysqli($servername, $username, $psw, $dbname);
if ($conn) {
    $nom = $_POST['nom'];
    $prenom = $_POST['prenom'];
    $email = $_POST['email'];
    $info = $_POST['Message'];

    mysqli_real_escape_string($conn, $_POST['email']);
    mysqli_real_escape_string($conn, $_POST['nom']);
    mysqli_real_escape_string($conn, $_POST['prenom']);
    mysqli_real_escape_string($conn, $_POST['Message']);

   $sql1 = "INSERT INTO contact (Emailcont, NomCont, PrenomEtu, Information ) VALUES ('$email', '$nom', '$prenom', '$info')";

   if($conn->query($sql1)){
    header("location: page-acceuil.html");
    }else{
        echo "information non inséréé";
    }
}else{
    die("mauvaise connexion");
}
?>