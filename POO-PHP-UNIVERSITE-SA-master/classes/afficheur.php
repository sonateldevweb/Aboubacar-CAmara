<?php
// require 'Autoloader.php';
// Autoloader::register();
require 'Etudiant_Service.php';
require 'etudiant.class.php';
$service = new Etudiant_Service();
$ajout = new Etudiant('mat01', 'diop', 'ali', 'ali@gmail.com', '774102563', '1995-2-15');
$service->add($ajout);

//$matricule, $nom, $prenom, $email, $telephone, $dateNaissance
/*foreach ($service->FindAll('Etudiant') as $val) {
    echo $val->MATRICULE,
         $val->NOMETUDIANT,
         $val->PRENOMETUDIANT,
         $val->EMAIL,
         $val->TELEPHONE,
         $val->DATE_DE_NAISSANCE;
}
*/
// $table='Etudiant';
// $colonne='TELEPHONE';
// $valeur='102245812';

// foreach ($service->Find($table,$colonne,$valeur) as $val) {
//     echo $val->MATRICULE,
//          $val->NOMETUDIANT,
//          $val->PRENOMETUDIANT,
//          $val->EMAIL,
//          $val->TELEPHONE,
//          $val->DATE_DE_NAISSANCE;
// }