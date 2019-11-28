
<?php
  include 'header.php';
?>



  <form class="navbar-form navbar-left" action="#" method="post">
  <div class="form-group">
    <input type="number" class="form-control" placeholder="Telephone" name="cherche">
  </div>
  <button type="submit" class="btn btn-default" name="find_etudiant">Submit</button>
</form>
<?php
require '../classes/Etudiant_Service.php';
// require '../classes/etudiant.class.php';
    if (isset($_POST['find_etudiant'])){
      $find=$_POST['cherche'];
      $lire = new Etudiant_Service();
      
      // var_dump($lire->Find($telephone));
      
    echo '
    <table class="table">
  <thead>
    <tr>
      
      <th scope="col">Matricule</th>
      <th scope="col">Nom</th>
      <th scope="col">Prenom</th>
      <th scope="col">Email</th>
      <th scope="col">Telephone</th>
      <th scope="col">Date Naissance</th>
      
    </tr>
  </thead>';
    foreach ($lire->Find($find) as  $val) {
        echo " <tbody>
        <tr>
     <td>$val->MATRICULE</td>
     <td>$val->NOMETUDIANT</td>
     <td>$val->PRENOMETUDIANT</td>
     <td>$val->EMAIL</td>
     <td>$val->TELEPHONE</td>
     <td>$val->DATE_DE_NAISSANCE</td>
     <tr>";
    }
}

    
   
?>

