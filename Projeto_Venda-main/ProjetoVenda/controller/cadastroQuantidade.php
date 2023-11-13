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
  
  width: 100%; /* Defina a largura desejada para o formulário */
  margin: 0 auto; /* Isso alinhará automaticamente o formulário horizontalmente */
  padding: 20px; /* Adicione algum espaço ao redor do formulário (opcional) */

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

	<title>C. Quantidade</title>
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
  <br><br><br><br><br><br>
  <div class="formCad centrar-formulario">
  
		<form method="POST" action="../controller/cadastroQuantidade.php" >

        <?php
        // Chame a função para obter os dados
        $retornaProdQuant = consultarProdQuant();
        $consultaNome = $retornaProdQuant[0][nomeProduto];
        $idProduto = $id[0][codProduto];
        
        


        // Verifique se há dados para exibir
        if (!empty($retornaProdQuant)) {
            // Itere sobre o array para exibir os valores nos campos de entrada
            foreach ($retornaProdQuant as $produto) {
                echo '<label>Nome Produto: <input type="text" name="txt" readonly placeholder="Nome Produto:" value="' . $produto['$consultaNome'] . '"></label><br><br><br>';
                echo '<label>Código Produto: <input type="text" name="txt" readonly placeholder="Cód Produto:" value="' . $produto['codProduto'] . '"></label><br><br><br>';
            }
        }
        ?>
            
			<button class="button-64" role="button"><span class="text">Enviar</span></button>
		</form>	
	</div>


</body>
</html>
