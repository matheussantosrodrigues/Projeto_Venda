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
	
  <!-- LINKANDO O CSS -->
  <link rel="stylesheet" href="style.css" />
    <link rel="stylesheet" type="text/css" href="button.css">
      <style> 
 label {
  color: white;
 }

        .fundo {
  background-image: url(img/fundo2.png);
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

        </select><br><br>

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

        </select><br><br>
        
        <label>Digite a quantidade em estoque</label>
        <input type="number" name="txtQtd"><br><br>

        <button class="button-64" role="button"><span class="text">Enviar</span></button>

    </form><br><br>
    
    <table border="1">
		<tr>
			<td>CÓDIGO DO PRODUTO</td>
			<td>NOME DO PRODUTO</td>
			<td>CATEGORIA</td>
			<td>GÊNERO</td>
			<td>MODELO</td>
			<td>MARCA</td>
			<td>VALOR</td>
      <td>TAMANHO</td>
      <td>QUANTIDADE EM ESTOQUE</td>
		</tr>

    <?php
      $consulta = $pdo->consultarEstoque();
              if (count($consulta) > 0) {
                for ($i=0; $i < count($consulta); $i++) { 
                  echo"<tr>";
                  foreach ($consulta[$i] as $key => $value){
                    echo "<td>". $value."</td>";
                  }
                }
              }
    ?>
    
</body>
</html>