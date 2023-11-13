
   <?php
    include '../view/consultaProduto.html';
    require_once '../model/conexao.php';
    $conecta = new conexao ("projetovenda", "localhost", "root", "");

    // INFORMAÇOES PRODUTO
    $cadNomeProd = addslashes($_POST['txtNomeProd']);
    $cadValor = addslashes($_POST['txtPreco']);
    $cadCategoria = addslashes($_POST['txtCategoria']);
    $cadGenero = addslashes($_POST['txtGenero']);
    $cadTipo = addslashes($_POST['txtTipo']);
    $cadMarca = addslashes($_POST['txtMarca']);

    
    $conecta->insereProduto($cadNomeProd, $cadValor, $cadCategoria, $cadGenero, $cadTipo,
        $cadMarca);
    ?>

