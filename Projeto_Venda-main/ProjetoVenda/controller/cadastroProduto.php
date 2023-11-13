
   <?php
   include 'consultaProduto.php';
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

