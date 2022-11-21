<?php
    //'".date('Y')."-".date('m')."-".date('d')."'
    if(session_status() == PHP_SESSION_NONE){
        session_start();
    }
    include_once $_SERVER["DOCUMENT_ROOT"]."/backend/conexion.php";
    $bd = new Conexion();
    $bd->Conectar();
    $bd->noCommit();
    $bd->Transaccion();

    if($_POST["paso2"] == "efectivo") $metodo_pago = "efectivo";
    else $metodo_pago = "tarjeta";
    if($_POST["paso1"] == "retiro") $entrega = "retiro";
    else $entrega = "domicilio";

    $monto = 0;
    foreach ($_SESSION["carrito"] as $id => $cantidad) {
        $queryMonto = "SELECT * FROM articulos WHERE Cod_Art = ".$id;
        $consultaMonto = $bd->Consulta($queryMonto)->fetch_assoc();
        $monto += $consultaMonto["precio"]*((100-$consultaMonto["descuento"])/100);
    }

    $queryCompra = "INSERT INTO compra Values(null, ".$_SESSION["id_user"].", '$metodo_pago', '$entrega', CURDATE(), ".$monto.", null)";
    $consultaCompra = $bd->Consulta($queryCompra);
    $id_compra = $bd->Consulta("SELECT last_insert_id() as id")->fetch_assoc()["id"];

    if($entrega == "domicilio") {
        $queryDomicilio = "INSERT INTO compra_domicilio Values($id_compra, '".$_POST["calle"]."', '".$_POST["calleAdy"]."', ".$_POST["numeroDom"].")";
        $consultaDomicilio = $bd->Consulta($queryDomicilio);   
    }
    else {
        $consultaDomicilio = true;
    }

    if($metodo_pago == "tarjeta") {
        $numeroTar = filter_var($_POST["numeroTar"], FILTER_SANITIZE_NUMBER_INT);
        function str_contains (string $haystack, string $needle) {
            return empty($needle) || strpos($haystack, $needle) !== false;
        }
        if (str_contains($_POST["venciTar"], '/')) {
            $explode = explode("/", $_POST["venciTar"]);
        $venciTar = trim($explode[1])."-".trim($explode[0])."-01";
        }else if (str_contains($_POST["venciTar"], '-')) {
            $venciTar = $_POST["venciTar"]."-01";
        }
        
        //echo $venciTar;
        $queryTarjeta = "INSERT INTO compra_tarjeta VALUES($id_compra, ".$numeroTar.", '".$_POST["nombreTar"]."', ".$_POST["ccvTar"].", '".$venciTar."')";
        //echo $queryTarjeta;
        $consultaPago = $bd->Consulta($queryTarjeta);
    }
    else if($metodo_pago == "efectivo") {
        $consultaPago = true;
    }
    
    $consultaArticulos = true;
    foreach ($_SESSION["carrito"] as $id => $cantidad) {
        $queryArticulos = "INSERT INTO compra_articulos values(".$id_compra.", ".$id.", ".$cantidad["cantidad"].")";
        $consultaArt = $bd->Consulta($queryArticulos);
        if(!$consultaArt) $consultaArticulos = false;
    }

    $exito = false;
    if($consultaCompra && $consultaArticulos && $consultaPago && $consultaDomicilio) {
        if($bd->Commit()) {
            $mensaje = "Compra insertada con exito";
            $_SESSION["carrito"] = [];
            $exito = true;
        }
        else $mensaje = "Error al realizar la comprar";
    }
    else {
        $mensaje = "Error al insertar la compra";
        $bd->RollBack();
    }
    $mensaje .= $queryCompra;
    echo json_encode(array("mensaje" => $mensaje, "exito" => $exito));
?>