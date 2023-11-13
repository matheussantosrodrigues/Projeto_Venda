
    <?php
    include '../view/consultaCliente.html';
    // lógica de conexão com o banco de dados
    require_once '../model/conexao.php';
    $pdo = new conexao ("projetovenda", "localhost", "root", "");
    

    // INFORMAÇOES CLIENTE (retirando dados do formulário usando POST)
    $cadnome = addslashes($_POST ['txtNome']);
    $cadcpf = addslashes($_POST['txtCpf']);
     
    //INFORMAÇOES DO ENDEREÇO
    $cadlogradouro = addslashes($_POST['txtlogradouro']);
    $cadrua = addslashes($_POST['txtRua']);
    $cadbairro = addslashes($_POST['txtBairro']);
    $cadcidade = addslashes($_POST['txtCidade']);
    $caduf = addslashes($_POST['txtUf']);
    $cadnum = addslashes($_POST['txtNum']);
    $cadcomp = addslashes($_POST['txtComp']);
    $cadcep = addslashes($_POST['txtCep']);
    $cadobs = addslashes($_POST['txtObs']);

    //passando dados do cliente como parâmetros
    $pdo->insereCliente($cadnome, $cadcpf, $cadlogradouro, $cadcep, $cadrua,
        $cadnum, $cadbairro, $cadcidade, $caduf, $cadcomp, $cadobs);

    ?>
