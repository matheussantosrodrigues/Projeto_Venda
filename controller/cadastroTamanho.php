<?php
include 'consultaProduto.php';
	require_once '../model/conexao.php';
	$conecta = new conexao("projetovenda", "localhost", "root", "");

	// INFORMAÇÕES DO TAMANHO
	$cadTamanho = addslashes($_POST['txtTamanho']);

	$conecta->insereTamanho($cadTamanho);
	?>
