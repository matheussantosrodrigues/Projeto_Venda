<?php

require_once '../model/conexao.php';
$pdo = new conexao("ProjetoVenda","localhost","root","");

$cadnome = addslashes($_POST['txtNome']);
$cadcpf = addslashes($_POST['txtCpf']);

$cadlog = addslashes($_POST['txtLog']);
$cadrua = addslashes($_POST['txtRua']);
$cadnum = addslashes($_POST['txtNum']);
$cadbairro = addslashes($_POST['txtBairro']);
$cadcid = addslashes($_POST['txtCidade']);
$caduf = addslashes($_POST['txtUf']);
$cadcep = addslashes($_POST['txtCep']);
$cadcompl = addslashes($_POST['txtComplemento']);
$cadobser = addslashes($_POST['txtObservacao']);

$pdo->insereCliente($cadnome, $cadcpf, $cadlog, $cadrua, $cadnum, $cadbairro, $cadcid,
$caduf, $cadcep, $cadcompl, $cadobser);
?>