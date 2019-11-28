<?php
//   namespace ABC;
    class NonBoursier extends Etudiant{
        private $adresse;
        
        public function __construct($matricule, $nom, $prenom, $email, $telephone, $dateNaissance,$adresse){
            parent::__construct($matricule, $nom, $prenom, $email, $telephone, $dateNaissance);
            $this->setAdresse($adresse);
        }


        /**
         * Get the value of adresse
         */ 
        public function getAdresse()
        {
                return $this->adresse;
        }

        /**
         * Set the value of adresse
         *
         * @return  self
         */ 
        public function setAdresse($adresse)
        {
                $this->adresse = $adresse;

                return $this->adresse;
        }
    }
?>