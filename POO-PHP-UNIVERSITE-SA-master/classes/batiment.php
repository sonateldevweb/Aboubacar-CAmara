<?php
    class Batiment{
        private $NOM_BAT;

        /**
         * Class constructor.
         */
        public function __construct($NOM_BAT)
        {
            $this->NOM_BAT=$NOM_BAT;
        }

        /**
         * Get the value of NOM_BAT
         */ 
        public function getNOM_BAT()
        {
                return $this->NOM_BAT;
        }

        /**
         * Set the value of NOM_BAT
         *
         * @return  self
         */ 
        public function setNOM_BAT($NOM_BAT)
        {
                $this->NOM_BAT = $NOM_BAT;

                return $this;
        }
    }