<?php

class Cliente
{
    // Atributos
    private $correo;
    private $telefonos = [];
    private $barrio;
    private $calle;
    private $numPuerta;
    private $esquina;

    // Constructor
    public function __construct()
    {
    }

    // Getter para $correo
    public function getCorreo()
    {
        return $this->correo;
    }
    // Getter para $telefonos
    public function getTelefonos()
    {
        return $this->telefonos;
    }
    // Getter para $barrio
    public function getBarrio()
    {
        return $this->barrio;
    }

    // Getter para $calle
    public function getCalle()
    {
        return $this->calle;
    }
    // Getter para $numPuerta
    public function getNumPuerta()
    {
        return $this->numPuerta;
    }

    // Getter para $esquina
    public function getEsquina()
    {
        return $this->esquina;
    }



    // Setter para $correo
    public function setCorreo($correo)
    {
        if (filter_var($correo, FILTER_VALIDATE_EMAIL)) {
            $this->correo = $correo;
        } else {
            throw new Exception("El correo electrónico no es válido");
        }
    }


    // Setter para $telefonos
    public function setTelefonos($telefonos)
    {
        if (is_array($telefonos)) {
            $this->telefonos = $telefonos;
        } else {
            throw new Exception("Los teléfonos deben ser un array");
        }
    }


    // Setter para $barrio
    public function setBarrio($barrio)
    {
        if (!empty($barrio)) {
            $this->barrio = $barrio;
        } else {
            throw new Exception("El campo de barrio no puede estar vacío");
        }
    }

    // Setter para $calle
    public function setCalle($calle)
    {
        if (!empty($calle)) {
            $this->calle = $calle;
        } else {
            throw new Exception("El campo de calle no puede estar vacío");
        }
    }


    // Setter para $numPuerta
    public function setNumPuerta($numPuerta)
    {
        if (is_int($numPuerta)) {
            $this->numPuerta = $numPuerta;
        } else {
            throw new Exception("El número de puerta debe ser un entero");
        }
    }


    // Setter para $esquina
    public function setEsquina($esquina)
    {
        if (!empty($esquina)) {
            $this->esquina = $esquina;
        } else {
            throw new Exception("El campo de esquina no puede estar vacío");
        }
    }

    public function guardar()
    {
        // Aquí deberías implementar la lógica para guardar los datos en la base de datos
        $query = "INSERT INTO cliente VALUES (null, '{$this->getCorreo()}', '{$this->getTelefonos()}', '{$this->getBarrio()}','{$this->getNumPuerta()}','{$this->getEsquina()}')";
        // Lógica para guardar en la base de datos
    }
}
