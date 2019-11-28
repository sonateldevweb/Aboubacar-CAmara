<?php
//   namespace ABC;
// require 'et_boursier.class.php';

    class ET_Loge extends Et_Boursier{
        private  $num_chambre;
        public function __construct($matricule, $nom, $prenom, $email, $telephone, $dateNaissance,$type,$num_chambre){
            parent::__construct($matricule, $nom, $prenom, $email, $telephone, $dateNaissance,$type);
            $this->num_chambre=$num_chambre;

        }

        /**
         * Get the value of num_chambre
         */ 
        public function getNum_chambre()
        {
                return $this->num_chambre;
        }

        /**
         * Set the value of num_chambre
         *
         * @return  self
         */ 
        public function setNum_chambre($num_chambre)
        {
                $this->num_chambre = $num_chambre;

                return $this;
        }
    }

?>