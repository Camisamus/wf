<?php
include_once './Conexion.php';
$po= selectitulo ($_GET["q"],$_GET["ID"] );
$bdb= $_GET["del"];
$sql= selectsql($_GET["q"], $_GET["ID"]);
$result = $db->query($sql);
$users = array();
if($result!=null){
	while ($row = $result->fetch_object()){
					$users[] = $row;
	}
}
$totalfilas;
$totalcolumnas;
$matriz = array();
foreach ($users as $fila => $std) {
$col=0;
    foreach (std_class_object_to_array($std) as $arais)
        {
$matriz[$col][$fila]=$arais;
        $col= $col+1;
        $totalcolumnas = $col;
        }
        $totalfilas =$fila;
    }
    function std_class_object_to_array($stdclassobject) {
        $_array = is_object($stdclassobject) ? get_object_vars($stdclassobject) : $stdclassobject;
        foreach ($_array as $key => $value) {
                $value = (is_array($value) || is_object($value)) ? std_class_object_to_array($value) : $value;
                $array[$key] = $value;
        }
        return $array;
    }
function selectsql( $nomnomnom, $kha ){
    switch  ($nomnomnom){  
        case 0:            $sql="='".$kha."'";        break;
    
        case 1:            $sql="SELECT  cliente.RUT_CLIENTE,  cliente.NOMBRE,    cliente.FECHA_NACIMIENTO,    cliente.FECHA_INSCRIP,    cliente.ESTADO FROM    cliente WHERE    cliente.RUT_CLIENTE ='".$kha."'";        break;
        case 2:            $sql="SELECT    producto_base.NOMBRE_PRODUCTO,     proveedores.NOMBRE_PROVEEDOR,     producto_entregado.FECHA_EM_POLISA,    producto_entregado.DUR_POLISAFROM    producto_entregado,    proveedores,    producto_base WHERE	producto_base.ID_PRODUCTO_BASE = producto_entregado.PRODUCTO_BASE AND    proveedores.ID_PROVEEDOR = producto_base.PROVEEDOR AND    producto_entregado.RUT_BENEFICIARIO ='".$kha."'";        break;
        case 3:            $sql="SELECT    dirccion.comuna,    dirccion.Ubicasion FROM	dirccion WHERE	RUT__HABITANTE ='".$kha."'";        break;
        case 4:            $sql="SELECT * FROM `cliente` WHERE `RUT_CLIENTE`='".$kha."'";        break;
        case 5:            $sql="SELECT * FROM `cliente` WHERE `RUT_CLIENTE`='".$kha."'";        break;
        case 6:            $sql="SELECT * FROM `cliente` WHERE `RUT_CLIENTE`='".$kha."'";        break;
    default:         $sql="";        }
    return $sql;    
}
function selectitulo ( $nom,$rut ){
    switch  ($nom){  
        case 1:             $tit="<tr border><td>RUT</td><td>Nombre</td><td>Fecha nasimiento</td><td>Fecha Inscripcion</td><td>Estado</td></tr>";        break;
        case 2:             $tit="<tr border><td>Producto</td><td>Proveedor</td><td>Fecha Inicio</td><td>Durasion</td></tr>";        break;
        case 3:             $tit='<tr border><td>Comuna</td><td>Direccion</td><td><a href="javascript:popup(\'popupingresodireccion.php?'.$rut.'\')">Agregar</a></td></tr>';        break;                 
        case 4:             $tit="<tr border><td>Tipo</td><td>Codigo</td><td>Numero</td><td>Agregar</td></tr>";        break;
        case 5:             $tit="<tr border><td>Email</td><td>Agregar</td></tr>";        break;
        
        
        
    default: 
        $tit=" No Hay Respuesta ";
        }
    return $tit;    
}
    echo '<table>';
    echo $po;
    if(isset($totalfilas)){
   
for ($l=0; $l<=$totalfilas; $l++){
    echo '<tr>';
    for ($k=0;$k<$totalcolumnas; $k++){
        echo '<td>';
        echo $matriz [$k][$l];
        echo '</td>';
    }
    if ($bdb==1){
  //  echo '<td><a href="">borrar</a></td>';
    }else{}
    echo '</tr>';
}
     
    } else {}

?>
</table>

