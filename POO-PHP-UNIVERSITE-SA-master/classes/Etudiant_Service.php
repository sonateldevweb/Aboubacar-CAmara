<?php
// namespace ABC;
// use PDO;
// require 'etudiant.class.php';
// require 'et_boursier.class.php';
// require 'et_loge.class.php';
    class Etudiant_Service
    {
        private $_dbname = 'Universite';
        private $_username = 'root';
        private $_password = 'chutdem44';
        private $bd;
        private $_host='localhost';

        public function __construct($_host='localhost', $_dbname = 'Universite', $_username = 'root', $_password = 'chutdem44')
        {
            $this->_host=$_host;
            $this->_dbname=$_dbname;
            $this->_username=$_username;
            $this->_password=$_password;
        }
        // Connexion à la base de donnée
        public function connexion()
        {
            try {
                $db = new PDO('mysql:host=localhost;dbname=Universite', 'root', 'chutdem44') ;
            } catch (Exception $e) {
                die('Erreur : ' . $e->getMessage());
            }
            return $this->bd=$db;
        }

        public function add(Etudiant $etudiant)
        {
            $sql = "INSERT INTO `Etudiant`(`MATRICULE`, `NOMETUDIANT`, `PRENOMETUDIANT`, `EMAIL`, `TELEPHONE`, `DATE_DE_NAISSANCE`)
             VALUES (?,?,?,?,?,?)";
            $stmt= $this->connexion()->prepare($sql);
            $matricule=$etudiant->getMatricule();
            $nom =$etudiant->getNom();
            $prenom =$etudiant->getPrenom();
            $email =$etudiant->getEmail();
            $telephone =$etudiant->getTelephone();
            $dateNaissance =$etudiant->getDateNaissance();
            $stat= $stmt->execute(array($matricule,$nom,$prenom,$email,$telephone,$dateNaissance));


            $requete = $this->connexion()->query('SELECT MAX(ID_ETUDIANT) AS babs FROM Etudiant');
            while ($last=$requete->fetch()) {
                $ID_ETUDIANT=$last['babs'];
            }
            echo $ID_ETUDIANT;

            //boursier
            if (get_class($etudiant)=='Et_Boursier' || get_class($etudiant)=='T_Loge') {
                $id_type=$etudiant->getId_type();
                $donnees=$this->connexion()->prepare('INSERT INTO Boursier(ID_ETUDIANT,id_type) VALUES (?,?)');
                $data = $donnees->execute(array($ID_ETUDIANT, $id_type));
                
            //non boursier
            } elseif (get_class($etudiant)=='NonBoursier') {
                $adresse=$etudiant->getAdresse();
                $donnees=$this->connexion()->prepare('INSERT INTO Non_Boursier(ID_ETUDIANT,ADRESSE) VALUES (?,?)');
                $data = $donnees->execute(array($ID_ETUDIANT, $adresse));
            }
            //loger
            elseif (get_class($etudiant)=='ET_Loge') {
                $chambre=$etudiant->getNum_chambre();
                //INSERTION BOURSIER
                $id_type=$etudiant->getId_type();
                $donnees=$this->connexion()->prepare('INSERT INTO Boursier(ID_ETUDIANT,id_type) VALUES (?,?)');
                $data = $donnees->execute(array($ID_ETUDIANT, $id_type));

                //INSERTION LOGER

                //$id_type=$etudiant->getId_type();
                $donnees=$this->connexion()->prepare('INSERT INTO Loge(ID_ETUDIANT, NUM_CHAMBRE, id_type)  VALUES (?,?,?)');
                $data = $donnees->execute(array($ID_ETUDIANT, $chambre, $id_type));
            }

 
            $data=$stmt;
            if ($data) {
                //var_dump(array($matricule,$nom,$prenom,$email,$tel,$date)); die();
                echo " Data Inserted Well !! ";
            } else {
                echo " Data Not Inserted";
            }
  

            // return $data;
        }

        public function Find($telephone)
        {
            $req=$this->connexion()->query("SELECT * FROM Etudiant WHERE TELEPHONE=$telephone");
            $donnees=$req->fetchAll(PDO::FETCH_OBJ);
            return $donnees;
        }
        public function findBoursier($telephone)
        {
            $req=$this->connexion()->query("SELECT `ID_ETUDIANT`, `id_type` FROM `Boursier` WHERE 1");
            $donnees=$req->fetchAll(PDO::FETCH_OBJ);
            return $donnees;
        }









        // findAll : liste tous les etudiants
        public function FindAll($table)
        {
            $req=$this->connexion()->query("SELECT * FROM $table");
           
            return $req;

           
        
    }


         // findAll : liste tous les etudiants boursiers
        public function findAllBoursier($table1,$table2){
            $req=$this->connexion()->query("SELECT MATRICULE,NOMETUDIANT,PRENOMETUDIANT,EMAIL,TELEPHONE,DATE_DE_NAISSANCE 
                                            FROM $table1,$table2 WHERE Etudiant.ID_ETUDIANT=Boursier.ID_ETUDIANT ");
            // $data=$req->fetchAll(PDO::FETCH_OBJ);
            return $req;
        }
        // findAll : liste tous les etudiants no boursiers
        public function findAllNoBoursier($table1,$table2){
            $req=$this->connexion()->query("SELECT MATRICULE,NOMETUDIANT,PRENOMETUDIANT,EMAIL,TELEPHONE,DATE_DE_NAISSANCE 
                                            FROM $table1,$table2 WHERE Etudiant.ID_ETUDIANT=Non_Boursier.ID_ETUDIANT ");
            // $data=$req->fetchAll(PDO::FETCH_OBJ);
            return $req;
        }

        // findAll : liste tous les etudiants Logés
        public function findAllLoger($table1,$table2){
            $req=$this->connexion()->query("SELECT MATRICULE,NOMETUDIANT,PRENOMETUDIANT,EMAIL,TELEPHONE,DATE_DE_NAISSANCE 
                                            FROM $table1,$table2 WHERE Etudiant.ID_ETUDIANT=Loge.ID_ETUDIANT ");
            // $data=$req->fetchAll(PDO::FETCH_OBJ);
            return $req;
        }
        






































        // public function add()
        // {
        //     return 'INSERT INTO Etudiant(matricule, nom, prenom, email, telephone, dateNaissance) VALUES (:matricule, :nom, :prenom, :email, :telephone, :dateNaissance)';
        // }

    }





































/*try {
        $connexion = new PDO("mysql:host=127.0.0.1;dbname=Universite","root","chutdem44");
    } catch (PDOException $e) {
        echo $e->getMessage();
    }
    //preparation de la requete d'insertion
    if ($connexion) {
        echo "connect OK";
    }

    // Class Etudiant_Service
   
        class Etudiant_Service{
            //methode add etudiant
            public function add($matricule,$nom,$prenom,$date_naissance,$email){
    $pdoStat=$objetPdo->prepare('INSERT INTO Etudiant VALUES(NULL, :mat, :nom, :prenom, :telephone, :naissance, :mail)');
                
        // on lie chaque marqueur à une table
        $pdoStat->bindValue(':mat',$_POST['matricule'],PDO::PARAM_STR);
        $pdoStat->bindValue(':nom',$_POST['NomEt'],PDO::PARAM_STR);
        $pdoStat->bindValue(':prenom',$_POST['PrenomEt'],PDO::PARAM_STR);
        $pdoStat->bindValue(':telephone',$_POST['Telephone'],PDO::PARAM_STR);
        $pdoStat->bindValue(':naissance',$_POST['Naissance'],PDO::PARAM_STR);
        $pdoStat->bindValue(':mail',$_POST['MailEt'],PDO::PARAM_STR);
    
    // execution de la requete préparee
    $insertIsOK = $pdoStat->execute();
                return $resultat = 
    if ($insertIsOK) {
       $message = 'inser OK';
    }
    else {
        $message = 'Echec';
    }
            }

        }*/
    ?>
    

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>AjouterEt</title>
</head>
<body>
   
</body>
</html>