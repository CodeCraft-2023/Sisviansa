<?php

class Pedido   
{
   
    private $correo;
    private $idPedido;
    private $fechaPedido;
    private $medioPago;
    private $idMenu;

    public function __construct($correo,$idPedido,$fechaPedido, $medioPago, $idMenu){
        $this->correo = $correo;
        $this->idPedido = $idPedido;
        $this->fechaPedido = $fechaPedido;
        $this->medioPago = $medioPago; 
        $this->idMenu = $idMenu; 
    }

 
     public function getCorreo() {
     return $this->correo;}

     public function getidPedido() {
        return $this->idPedido;}

     public function getFechaPedido() {
         return $this->fechaPedido;}

     public function getMedioPago() {
        return $this->medioPago;}
  
    public function getIdMenu() {
        return $this->idMenu;}
   




     public function setCorreo($correo)
    {
     if (filter_var($correo, FILTER_VALIDATE_EMAIL)) {
         $this->correo = $correo;
          } else {
         throw new Exception("El correo electrónico no es válido");
             }
     }  
     
     public function setIdPedido($idPedido)
     { $this->correo = $idPedido; }  
       
     
     public function setFechaPedido($fechaPedido)
     {
         $this->fechaPedido = $fechaPedido;
      }

      public function setMedioPago($medioPago)
    {
     if (filter_var($medioPago, FILTER_VALIDATE_EMAIL)) {
         $this->medioPago = $medioPago;
          } else {
         throw new Exception("El medioPago electrónico no es válido");
             }
     }  















}