<?php
require_once '../model/conexao.php';
$pdo = new conexao ("projetovenda", "localhost", "root", "");
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>C. Quantidades</title>
	<link rel="stylesheet" href="../view/style.css" />
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
<h2><center><font color=white>CADASTRAR QUANTIDADE POR PRODUTO</font>
</center></h2><br>
	
	<form method="POST" action="../controller/cadastroEstoque.php">
        <label>Selecione o código do produto</label>
        <select name="txtcodprod">
            <option>----- Selecione o código do produto -----</option>
            <?php $id = $pdo->consultarProduto();?>
            
            <?php 
            for ($i = 0; $i < count($id); $i++){?>
            <option value="<?php echo $id[$i]['codProduto'];?>">
                <?php echo $id[$i]['nomeProduto']; ?>
            </option>
            <?php } ?>

        </select>

        <label>Selecione o tamanho</label>
        <select name="txtcodTam">
            <option>----- Selecione o tamanho -----</option>
            <?php $id = $pdo->consultarTamanho();?>
            
            <?php 
            for ($i = 0; $i < count($id); $i++){?>
            <option value="<?php echo $id[$i]['codTam'];?>">
                <?php echo $id[$i]['sigla']; ?>
            </option>
            <?php } ?>

        </select>
        
        <label>Digite a quantidade em estoque</label>
        <input type="number" name="txtQtd">

        <button class="button-64" role="button"><span class="text">Enviar</span></button>

    </form>
		
	
    
</body>
</html>