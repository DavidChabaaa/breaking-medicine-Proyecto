<?php
    class Conexion {
<<<<<<< HEAD
        private $servername = "139.144.172.138";
=======
    private $servername = "139.144.172.138";
>>>>>>> 84fc591211d8f72e5fb3a51d30fa4a1d2184eba9
        private $username = "breakingMedicine";
        private $password = "Medicine"; // Josue no tiene contraseña
        private $db = "proyecto";
        private $conexion;
        
        public function Conectar() {
            $this->conexion = new mysqli($this->servername, $this->username, $this->password, $this->db);

            if ($this->conexion->connect_error) {
                //echo "<script>console.log('Error de conexion')</script>";
                die("Connection failed: " .$this->conexion->connect_error);
                }
                //echo "<script>console.log('Conectado')</script>";
        }

        public function Consulta($consulta) {
            return $this->conexion->query($consulta);
        }

        public function Affected_rows() {
            return $this->conexion->affected_rows;
        }

        public function noCommit() {
            $this->conexion->autocommit(FALSE);
        }

        public function Commit() {
            return $this->conexion->commit();
        }
        public function RollBack() {
            $this->conexion->rollback();
        }
        public function Transaccion() {
            $this->conexion->begin_transaction();
        }
    }
?>
