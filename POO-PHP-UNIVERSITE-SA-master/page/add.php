<?php
include 'header.php';
?><?php
require '../classes/Etudiant_Service.php';
require '../classes/et_boursier.class.php';
require '../classes/et_nonboursier.class.php';
require '../classes/et_loge.class.php';

if (isset($_POST['ajout']) && isset($_POST['type1'])) {
// if ($_POST['type1']=='Boursier') {
    $mat2=$_POST['annee'];
    $mat3=$_POST['lettre'];
    $mat1=$_POST['chiffre'];


    $matricule=$mat2.$mat1.$mat3;
    $nom=$_POST['etnom'];
    $prenom=$_POST['etprenom'];
    $email=$_POST['etemail'];
    $telephone=$_POST['ettel'];
    $dateNaissance=$_POST['etdate'];
    $id_type=$_POST['bourse'];

        $objet =  new Etudiant_Service();
        $etudiant = new Et_Boursier($matricule,$nom,$prenom,$email,$telephone,$dateNaissance,$id_type);
        $objet->add($etudiant);
        
}elseif (isset($_POST['ajout']) && isset($_POST['zurr2'])) {
// if ($_POST['zurr2']=="Non_Boursier") {
    $mat1=$_POST['chiffre'];
    $mat3=$_POST['lettre'];
    $mat2=$_POST['annee'];
    $matricule=$mat2.$mat1.$mat3;
    $nom=$_POST['etnom'];
    $prenom=$_POST['etprenom'];
    $email=$_POST['etemail'];
    $telephone=$_POST['ettel'];
    $dateNaissance=$_POST['etdate'];
    $adresse=$_POST['adress'];


        $objet =  new Etudiant_Service();
        $etudiant =  new NonBoursier($matricule,$nom,$prenom,$email,$telephone,$dateNaissance, $adresse);
        $objet->add($etudiant);

}elseif (isset($_POST['ajout']) && isset($_POST['purr3'])) {
    // if ($_POST['purr3']=='Loger') {
    $mat1=$_POST['chiffre'];
    $mat2=$_POST['annee'];
    $mat3=$_POST['lettre'];
    $matricule=$mat2.$mat1.$mat3;
    $nom=$_POST['etnom'];
    $prenom=$_POST['etprenom'];
    $email=$_POST['etemail'];
    $telephone=$_POST['ettel'];
    $dateNaissance=$_POST['etdate'];
    $id_type=$_POST['bourse'];
    $chambre=$_POST['chambre'];

        $objet =  new Etudiant_Service();
        $etudiant =  new ET_Loge($matricule,$nom,$prenom,$email,$telephone,$dateNaissance,$id_type,$chambre);
        $objet->add($etudiant);
}
?>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script>
        $(document).ready(function(){
         $("#bours").click(function(){
           $("#deuk").hide();

                     $("#type").show();
         $("#loge").hide();
               
                 $("#nobours").hide(); 
           
        });

             $("#nobours").click(function(){
               $("#demo").show();

                     $("#bours").hide();

                  $("#loge").hide(); 
                    $("#room").hide();
            });

         
           $("#loge").click(function(){
           $("#deuk").show();
            $("#bours").hide();

             $("#nobours").hide();


             $("#type").show();
        });


        });
        </script>

<!-- Font Icon -->
<link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
    <div class="main"> 
        <div class="container">
            <div class="signup-content">
                <div class="signup-img">
                    <img src="images/signup-img.jpg" alt="">
                </div>
                    <div class="signup-form">
                        <form method="post" class="register-form" id="register-form" action="add.php">
                            <h2>student registration form</h2>
                                <div class="form-donnee">
                                    <div class="form-group">
                                        <input type="text"  name="annee"  value="<?php $code=2019; echo"$code";?>">                            
                                    </div>
                                    <div class="form-group">                      
                                        <input type="text"  name="lettre" value="<?php $char = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"; $lettre= substr(str_shuffle($char),0,2); echo $lettre;?>">   
                                    </div>
                                    <div class="form-group">    
                                        <input type="text"  name="chiffre"  value="<?php $rand=rand(1,1000); $code=$rand; echo"$code";?>">     
                                    </div>
                                </div>

                                <div class="form-donnee">
                                    <div class="form-group">
                                        <div for="etnom">Nom :</div>
                                            <input type="text" name="etnom" id="name" required/>
                                    </div>

                                    <div class="form-group">
                                        <div for="etprenom">Prenom :</div>
                                            <input type="text" name="etprenom" id="father_name" required/>
                                    </div>

                                    
                                    <div class="form-group">
                                        <div for="etdate">Date Naissance :</div>
                                            <input type="date" name="etdate"  required/>
                                    </div>

                                    <div class="form-group">
                                        <div for="ettel">Telephone :</div>
                                            <input type="number" name="ettel"  required/>
                                    </div>

                                    <div class="form-group">
                                        <div for="etemail">Email :</div>
                                            <input type="email" name="etemail"  required/>
                                    </div>


                                    <div class="form-group" >
                                        <div ><br> boursier:<input type="checkbox" id="bours" name="type1" value="Boursier"></div>
                                    

                                        <div><br>noBoursier:
                                            <input type="checkbox" id="nobours" name="zurr2" value="Non_Boursier">
                                        </div>

                                        <div ><br>Loger:
                                            <input type="checkbox" id="loge" name="purr3" value="Loger"> 
                                        </div>
                                    </div>
                          
                                    <div class="form-group">
                                        <select name="bourse" id="type" hidden>
                                            <option value="">__Type De Bourse</option>
                                            <option value=2>Entiére</option>
                                            <option value=1>Démie</option>    
                                        </select>
                                    </div>


                                    <div class="form-group">
                                        <select name="chambre" id="deuk" hidden>
                                            <option value="">__Chambre</option>
                                        <?php
                                        $bdd=new PDO('mysql:host=localhost;dbname=Universite','root','chutdem44');   
                                        $reponse=$bdd->query('SELECT NUM_CHAMBRE FROM Chambre WHERE 1');
                                        while ($donnee=$reponse->fetch()) {
                                        ?>

                                                <option value="<?php echo $donnee['NUM_CHAMBRE']; ?>"><?php echo $donnee['NUM_CHAMBRE']; ?></option>
                                        <?php	} ?>
                                            </select>
                                    </div>



                                    <div class="form-group">
                                        <input type="text" name="adress"  id="demo" hidden value="Adresse"/>
                                    </div>
                                    <div class="form-submit">
                                        <input type="submit" value="Reset All" class="submit" name="reset"/>
                                        <input type="submit" value="Submit Form" class="submit" name="ajout"/>
                                    </div>
                                </div>            
                        </form>
                    </div>
                </div>
            </div>
        </div>


        