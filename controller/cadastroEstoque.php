<?php
require_once '../model/conexao.php';
$conexao = new conexao ("ProjetoVenda", "localhost", "root", "");


$cadProd = addslashes($_POST['txtcodprod']);
$cadTam = addslashes($_POST['txtcodTam']);
$cadQtd = addslashes($_POST['txtQtd']);

$conexao -> insereProdTam ($cadProd, $cadTam, $cadQtd);
echo "Quantidades lançadas";

header("Location:../view/estoque.php");
?>