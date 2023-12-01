<?php
require_once '../model/conexao.php';
$conexao = new conexao ("ProjetoVenda", "localhost", "root", "");


$codProd = addslashes($_POST['txtcodprod']);
$codTam = addslashes($_POST['txtcodTam']);
$codQtd = addslashes($_POST['txtQtd']);

$conexao -> insertProdTam ($codProd, $codTam, $cadQtd);
echo "Quantidades lançadas";

header("Location: ../view/estoque. php");
?>