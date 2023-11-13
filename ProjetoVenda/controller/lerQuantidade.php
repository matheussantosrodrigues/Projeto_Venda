
    <?php
    include '../controller/cadastroQuantidade.php';
    // lógica de conexão com o banco de dados
    require_once '../model/conexao.php';
    $pdo = new conexao ("projetovenda", "localhost", "root", "");
    

    // INFORMAÇOES CLIENTE (retirando dados do formulário usando POST)
    $cadQuantidade = addslashes($_POST ['txtQuantidade']);
    $cadNP = addslashes($_POST ['txtProduto']);
    $cadNT = addslashes($_POST ['txtTamanho']);
    //passando dados do cliente como parâmetros
    $pdo->insereQuantidade($cadQuantidade,$cadNT,$cadNP);

    ?>
