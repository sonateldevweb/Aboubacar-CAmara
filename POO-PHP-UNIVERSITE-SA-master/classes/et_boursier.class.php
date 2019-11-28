<?php
//   namespace ABC;
require 'etudiant.class.php';
    class Et_Boursier extends Etudiant{
        // private $ID_ETUDIANT;
        private $id_type;


        public function __construct($matricule, $nom, $prenom, $email, $telephone, $dateNaissance,$id_type){
            parent::__construct($matricule, $nom, $prenom, $email, $telephone, $dateNaissance);
            $this->setId_type($id_type);
        }

       
        public function getId_type()
        {
                return $this->id_type;
        }
        public function setId_type($id_type)
        {
                $this->id_type = $id_type;

                return $this;
        }
    }
?>