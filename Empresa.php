<?php

class Empresa extends Cliente
{
    private $rut;
    private $razonSocial;

    public function __construct($correo, $telefonos, $barrio, $calle, $numPuerta, $esquina, $rut, $razonSocial)
    {
        parent::__construct();
        $this->setCorreo($correo);
        $this->setTelefonos($telefonos);
        $this->setBarrio($barrio);
        $this->setCalle($calle);
        $this->setNumPuerta($numPuerta);
        $this->setEsquina($esquina);
        $this->setRut($rut);
        $this->setRazonSocial($razonSocial);
    }

    public function getRut()
    {
        return $this->rut;
    }
    public function getRazonsocial()
    {
        return $this->razonSocial;
    }


    public function setRut($rut)
    {
        if (is_string($rut) && preg_match("/^\d{7,8}-[0-9kK]$/", $rut)) {
            $this->rut = $rut;
        } else {
            throw new Exception("El RUT no es válido. Debe tener el formato '12345678-9'.");
        }
    }

    public function setRazonSocial($razonSocial)
    {
        if (is_string($razonSocial) && strlen($razonSocial) <= 100) {
            $this->razonSocial = $razonSocial;
        } else {
            throw new Exception("La razón social debe ser una cadena de texto de hasta 100 caracteres.");
        }
    }

    // Si es necesario, puedes agregar getters para los nuevos atributos
}
