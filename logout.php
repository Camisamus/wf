<?php
                session_start();
                $_SESSION["login"] = false;
		$_SESSION["user"] = NULL;
                header("Location: index.php");
                exit();
