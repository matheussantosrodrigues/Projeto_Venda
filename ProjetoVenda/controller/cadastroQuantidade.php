<?php
require_once '../model/conexao.php';
$pdo = new conexao ("projetovenda", "localhost", "root", "");
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
   
    <!-- LINKANDO O CSS -->
    <link rel="stylesheet" href="../view/style.css" />
    <link rel="stylesheet" type="text/css" href="../view/button.css">
      <style> 
        .fundo {
  background-image: url(../view/img/fundo2.png);
  background-size: cover;
  background-repeat: no-repeat;
  }
  .centrar-formulario {
    height: 100px;
    width: 100%; /* Defina a largura desejada para o formulário */
    margin: 0 auto; /* Isso alinhará automaticamente o formulário horizontalmente */
    padding: 100px; /* Adicione algum espaço ao redor do formulário (opcional) */
  }
  
  /* aumentando o tamanho dos inputs */
  .centrar-formulario input[type="number"],
  .centrar-formulario input[type="text"] {
    width: 10%; /* largura da caixinha de texto */
    padding: 3px; /*altura da caixinha de texto*/
    margin-bottom: 2px; /* Adicione algum espaço entre os campos de entrada (opcional) */
    font-size: 20px;
  }
  </style>

	<title>C. Produto</title>
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
      <li><a href="quemsomos.html">Quem somos?</a></li>
      <li>
        <a href="#" class="desktop-item">Cadastros</a>
        <input type="checkbox" id="showDrop">
        <label for="showDrop" class="mobile-item">Cadastro</label>
        <ul class="drop-menu">
          <li><a href="cadastroCliente.html">Cliente</a></li>
          <li><a href="cadastroProduto.html">Produto</a></li>
          <li><a href="cadastroTamanha.html">Tamanho</a></li>
          <li><a href="cadastroVendaItem.html">Venda</a></li>
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
  <br><br><br><br>

  <form method="POST" action="lerQuantidade.php">
    <select name="txtProduto">
        <?php $linha = $pdo -> consultarProdQuant();?>
        <option value="valor">Selecione: </option>
        <?php 
         for ($i=0; $i <count($linha); $i++){
            ?>
            <option value="<?php echo $linha[$i]['codProduto'];?>">
            <?php echo $linha[$i]['codProduto']; ?>
        </option>

        <?php }?>
         
    </select>
    <select name="txtTamanho">
        <?php $linha = $pdo -> consultarTamanho();?>
        <option value="valor">Selecione: </option>
        <?php 
         for ($i=0; $i <count($linha); $i++){
            ?>
            <option value="<?php echo $linha[$i]['codTam'];?>">
            <?php echo $linha[$i]['codTam']; ?>
        </option>

        <?php }?>
    </select>
    <input type="text" name="txtQuantidade" placeholder="Digite a quantidade:">
    <input type="submit" name="enviarTamanho" value="Enviar">
  </form>