<?php
require_once '../model/conexao.php';
$pdo = new conexao ("projetovenda", "localhost", "root", "");
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>C. Produto</title>
	<link rel="stylesheet" href="../view/style.css" />
  <link rel="stylesheet" type="text/css" href="button.css">
	<style> 
        .fundo {
   background-image: url(../view/img/fundo2.png);
   background-size: cover;
   background-repeat: no-repeat;
  }
  .centrar-formulario {
    width: 80%; /* Defina a largura desejada para o formulário */
    margin: 0 auto; /* Isso alinhará automaticamente o formulário horizontalmente */
    padding: auto; /* Adicione algum espaço ao redor do formulário (opcional) */
  }
  table, th, td {
  border: 1px solid white;
  border-collapse: collapse;
  color: #fff;
  margin: auto;
  font-family: Verdana, Geneva, Tahoma, sans-serif;
  width: 40%;
  text-align: center;
}
td {
  width: 10%;
  background-color: #000;
}
  </style>
</head>
<body class="fundo">
     <!-- MENU EM SI -->
	 <nav>
  <div class="wrapper">
    <div class="logo"><a href="#">Star Modas</a></div>
    <input type="radio" name="slider" id="menu-btn">
    <input type="radio" name="slider" id="close-btn">
    <ul class="nav-links">
      <label for="close-btn" class="btn close-btn"><i class="fas fa-times"></i></label>
      <li><a href="../index.html">Início</a></li>
      <li><a href=" ../view/quemsomos.html">Quem somos?</a></li>
      <li>
        <a href="#" class="desktop-item">Cadastros</a>
        <input type="checkbox" id="showDrop">
        <label for="showDrop" class="mobile-item">Cadastro</label>
        <ul class="drop-menu">
          <li><a href="../view/cadastroCliente.html">Cliente</a></li>
          <li><a href="../view/cadastroProduto.html">Produto</a></li>
          <li><a href="../view/cadastroTamanha.html">Tamanho</a></li>
          <li><a href="../view/cadastroVendaItem.html">Venda</a></li>
        </ul>
      </li>
	  <li>
        <a href="#" class="desktop-item">Consultas</a>
        <input type="checkbox" id="showDrop">
        <label for="showDrop" class="mobile-item">Consultas</label>
        <ul class="drop-menu">
          <li><a href="../controller/consultaCliente.php">Clientes</a></li>
          <li><a href="../controller/consultaProduto.php">Produtos</a></li>
		</ul>
      </li>
    </ul>
  </div>
  </nav>
  <br><br><br><br><br><br>
<h2><center><font color=white>Consulta Produto</font>
</center></h2><br>
	<table border="1" class="tabela">
		<tr>

      
      <td>NOME PRODUTO</td>
			<td>VALOR</td>
			<td>CATEGORIA</td>
			<td>GENERO</td>
			<td>TIPO</td>
			<td>MARCA</td>
      <td>COD. PRODUTO</td>
		</tr>
	
	<?php
		//processando os resultados da consulta ao banco de dados e exibindo como uma tabela 
		$consulta = $pdo->consultarProduto();

		if(count($consulta) > 0)
		{
			for($i = 0; $i < count($consulta); $i++)
			{
				echo "<tr>";
				foreach ($consulta[$i] as $key => $value)
				{
				echo "<td> ". $value." </td>";
				}
			}
		}
	?>
    
    </table>
    <button class="button-64" role="button"><span class="text">
      <a href="cadastroQuantidade.php">Cadastre as quantidades!</a>
    </span></button>
    
</body>
</html>