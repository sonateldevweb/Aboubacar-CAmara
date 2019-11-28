
<?php
  include 'header.php';
?> 
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Data Tables</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"> -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" ></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" ></script>
    <script
    src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
        <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js" ></script>
</head>
<body>
<h3 style="text-align:center; ">Lister Boursiers</h3>
<div class="container">
    <table class="table table-fluid" id="myTable">
    <thead>
    <tr>
     
    <th>Matricule</th>
    <th>NOM</th>
    <th>Prenom</th>
    <th>Email</th>
    <th>Telephone</th>
    <th>DateNaissance</th>
</tr>
    </thead>
    <tbody>

<?php 
        require_once'../classes/Etudiant_Service.php';
        $liste = new Etudiant_Service();
        $rows = $liste->findAllBoursier("Etudiant","Boursier");
        while ($row = $rows->fetch()) { 
        echo "
            <tr>
            
            <td>".$row['MATRICULE']."</td>
            <td>".$row['NOMETUDIANT']."</td>
            <td>".$row['PRENOMETUDIANT']."</td>
            <td>".$row['EMAIL']."</td>
            <td>".$row['TELEPHONE']."</td>
            <td>".$row['DATE_DE_NAISSANCE']."</td>
            </tr>";

        }
        ?>



    </tbody>
    </table>
</div>

<script>
    $(document).ready( function () {
    $('#myTable').DataTable();
} );
    </script>

</body>
</html>