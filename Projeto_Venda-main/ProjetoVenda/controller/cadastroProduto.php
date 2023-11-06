<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
    
   
    <!-- LINKANDO O CSS -->
    <link rel="stylesheet" href="../view/style.css" />
     
      <style> 
        .fundo {
  background-image: url(img/fundo2.png);
  background-size: cover;
  background-repeat: no-repeat;
  }
  .centrar-formulario {
    width: 80%; /* Defina a largura desejada para o formulário */
    margin: 0 auto; /* Isso alinhará automaticamente o formulário horizontalmente */
    padding: auto; /* Adicione algum espaço ao redor do formulário (opcional) */
  }
  </style>
</head>
<body>
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
   <?php
    require_once '../model/conexao.php';
    $conecta = new conexao ("projetovenda", "localhost", "root", "");

    // INFORMAÇOES PRODUTO
    $cadNomeProd = addslashes($_POST['txtNomeProduto']);
    $cadValor = addslashes($_POST['txtPreco']);
    $cadCategoria = addslashes($_POST['txtCategoria']);
    $cadGenero = addslashes($_POST['txtGenero']);
    $cadTipo = addslashes($_POST['txtTipo']);
    $cadMarca = addslashes($_POST['txtMarca']);

    
    $conecta->insereProduto($cadNomeProd, $cadValor, $cadCategoria, $cadGenero, $cadTipo,
        $cadMarca);
    ?>

