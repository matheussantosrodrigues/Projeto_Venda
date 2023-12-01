<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
</head>
<body>

	<?php
	require_once '../model/conexao.php';
	$conecta = new conexao("projetovenda", "localhost", "root", "");

	// INFORMAÇÕES DO TAMANHO
	$cadTamanho = addslashes($_POST['txtTamanho']);

	$conecta->insereTamanho($cadTamanho);
	?>

</body>
</html>