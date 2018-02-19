<?php
include_once './Conexion.php';
echo ("alert('este es el sql')"."<br>");
echo ($_GET["tb"]."<br>");
echo ($_GET["1"]."<br>");
echo ($_GET["2"]."<br>");
echo ($_GET["3"]."<br>");
echo ($_GET["4"]."<br>");
echo ($_GET["5"]."<br>");
echo ($_GET["6"]."<br>");
echo ($_GET["7"]."<br>");
echo ($_GET["8"]."<br>");
echo ($_GET["9"]."<br>");
echo ($_GET["10"]."<br>");
$sql= SQLingreso1($_GET["tb"],$_GET["1"],$_GET["2"],$_GET["3"],$_GET["4"],$_GET["5"],$_GET["6"],$_GET["7"],$_GET["8"],$_GET["9"],$_GET["10"]);
echo ("este fuera".$sql);
$result = $db->query($sql);
function SQLingreso1($caso ,$cp1 = null ,$cp2 = null ,$cp3 = null ,$cp4 = null ,$cp5 = null ,$cp6 = null ,$cp7 = null ,$cp8 = null ,$cp9 = null ,$cp10 = null ) {
    switch  ($caso){  
        case 0:            $la="alco salio mal";        break;
        case 1:    
            echo 'funciona hast aqui';
            $sql="INSERT INTO `cliente`(`RUT_CLIENTE`, `DIGITO_VER`, `NOMBRE`, `APELLIDO_PAT`, `APELLIDO_MAT`, `FECHA_NACIMIENTO`, `FECHA_INSCRIP`, `ESTADO`) VALUES (".$cp1.",".$cp2.",".$cp3.",".$cp4.", ".$cp5.",".$cp6.",".$cp6.",".$cp7.",".$cp8.")";        
            echo $sql;
            return $sql;
            break;
        case 2:            $sql="='".$kha."'";        break;
        case 3:            $sql="='".$kha."'";        break;
        case 4:            $sql="='".$kha."'";        break;
        case 5:            $sql="='".$kha."'";        break;
        case 6:            $sql="='".$kha."'";        break;
        case 7:            $sql="='".$kha."'";        break;
        case 8:            $sql="='".$kha."'";        break;
        case 9:            $sql="='".$kha."'";        break;
        case 10:            $sql="='".$kha."'";        break;
    }

}

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

