<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);


if ($_POST['user']!=NULL){
    if ($_POST['clave']!=NULL){
        include_once './Conexion.php';
		$stmt = $db->prepare('SELECT `NOMBRE_USUARIO` FROM `usuarios` WHERE `CLAVE`= ? and `CUENTA` = ? ');
		$stmt->bind_param('ss', $_POST['clave'] , $_POST['user'] );
		$stmt->execute();
		$result = $stmt->get_result();
		if($result!=null){
            while ($row = $result->fetch_object()){
                $users[] = $row;
				
            }
                if (isset($users)){
                    $res = $users[0]->NOMBRE_USUARIO;
                    session_start();
                    $_SESSION["login"] = true;
                    $_SESSION["user"] = $res;
                    header("Location: matriz.php");
                    exit();
            }
            else{
                header("Location: error.php");
		exit();
                
            }
        }
        else {
                header("Location: error.php");
		exit();
            }
        
        }
     else {
        header("Location: error.php");
	exit();
        }
}
else {
    header("Location: error.php");
    exit();
    }
