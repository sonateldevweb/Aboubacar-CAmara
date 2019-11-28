<?php
// namespace ABC;
    class Chambre extends Batiment{
        private $num_chambre;
        
        public function __construct($NOM_BAT,$num_chambre){
            parent::__construct($NOM_BAT);
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