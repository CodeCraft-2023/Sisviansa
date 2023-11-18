<?php

class Fisico extends Cliente
{
    private $tipoDoc;
    private $numDocumento;
    private $nombre;
    private $apellido;

    public function __construct($correo, $telefonos, $barrio, $calle, $numPuerta, $esquina, $tipoDoc, $numDocumento, $nombre, $apellido)
    {
        parent::__construct();
        $this->setCorreo($correo);
        $this->setTelefonos($telefonos);
        $this->setBarrio($barrio);
        $this->setCalle($calle);
        $this->setNumPuerta($numPuerta);
        $this->setEsquina($esquina);
        $this->setTipoDoc($tipoDoc);
        $this->setNumDocumento($numDocumento);
        $this->setNombre($nombre);
        $this->setApellido($apellido);
    }

    public function getTipoDoc()
    {
        return $this->tipoDoc;
    }

    public function getNumDocumento()
    {
        return $this->numDocumento;
    }
    public function getNombre()
    {
        return $this->nombre;
    }
    public function getApellido()
    {
        return $this->apellido;
    }


    public function setTipoDoc($tipoDoc)
    {
        if (is_string($tipoDoc)) {
            $this->tipoDoc = $tipoDoc;
        } else {
            throw new Exception("El tipo de documento debe ser una cadena de texto.");
        }
    }

    public function setNumDocumento($numDocumento)
    {
        if (is_numeric($numDocumento)) {
            $this->numDocumento = $numDocumento;
        } else {
            throw new Exception("El número de documento debe ser un valor numérico.");
        }
    }

    public function setNombre($nombre)
    {
        if (is_string($nombre)) {
            $this->nombre = $nombre;
        } else {
            throw new Exception("El nombre debe ser una cadena de texto.");
        }
    }

    public function setApellido($apellido)
    {
        if (is_string($apellido)) {
            $this->apellido = $apellido;
        } else {
            throw new Exception("El apellido debe ser una cadena de texto.");
        }
    }

    // Si es necesario, puedes agregar getters para los nuevos atributos
}
