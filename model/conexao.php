<?php
class conexao
{
    private $pdo;
    public function __construct($dbnome, $host, $user, $senha){
        try{ // estabelecendo uma conexão com o banco de dados usando PDO - O PONTO NESSE CASO SERVE PARA CONCATENAR
          $this->pdo = new PDO("mysql:dbname=" . $dbnome . ";host=" . $host, $user, $senha);
        
            echo"";
        }
        //capturando os erros relacionados à conexão com o banco de dados usando PDO
        catch(PDOException $erro){ 
            echo "ERRO DE CONEXÃO NO PDO: ".$erro -> getMessage();
            exit();
        }
        catch(Exception $erro){
            echo "ERRO NÃO PASSOU DA CONEXÃO: ".$erro -> getMessage();
            exit();
        }
    }


        //CLIENTE (inserir um novo cliente no banco de dados)
    public function insereCliente($cadnome, $cadcpf, $cadlogradouro, $cadcep, $cadrua,
        $cadnum, $cadbairro, $cadcidade, $caduf, $cadcomp, $cadobs){
        
        //instrução para inserir dados na tabela cliente
        $insereCliente = $this->pdo->prepare("insert into cliente (nomeCliente, cpf, tipoLogradouro, nomeRua, Nresidencial, bairro, cidade, UF, cep, complemento, observacao)
        values ( :nome, :cpf, :logradouro, :rua, :num, :bairro, :cidade, :uf, :cep, :comp, :obs )");
        $insereCliente->bindValue(":nome", $cadnome);
        $insereCliente->bindValue(":cpf", $cadcpf);
        $insereCliente->bindValue(":logradouro", $cadlogradouro);
        $insereCliente->bindValue(":cep", $cadcep);
        $insereCliente->bindValue(":rua", $cadrua);
        $insereCliente->bindValue(":num", $cadnum);
        $insereCliente->bindValue(":bairro", $cadbairro);
        $insereCliente->bindValue(":cidade", $cadcidade);
        $insereCliente->bindValue(":uf", $caduf);
        $insereCliente->bindValue(":comp", $cadcomp);
        $insereCliente->bindValue(":obs", $cadobs);
        $insereCliente->execute();

        // mostra um alerta no navegador indicando que o cadastro foi enviado
        echo"<script>alert('Cadastro enviado')</script>";
    }

    //PRODUTO
    public function insereProduto($cadNomeProduto, $cadValor, $cadCategoria, $cadGenero, $cadTipo, $cadMarca){
        
        $insereProduto = $this->pdo->prepare("insert into produto (nomeProduto, valor, categoria, genero, tipo, marca)
        values (:nomeProduto, :valor, :categoria, :genero, :tipo, :marca)");
        $insereProduto->bindValue(":nomeProduto", $cadNomeProduto);
        $insereProduto->bindValue(":valor", $cadValor);
        $insereProduto->bindValue(":categoria", $cadCategoria);
        $insereProduto->bindValue(":genero", $cadGenero);
        $insereProduto->bindValue(":tipo", $cadTipo);
        $insereProduto->bindValue(":marca", $cadMarca);
        $insereProduto->execute();
    }

// TAMANHO
public function insereTamanho($cadTamanho){
    
    $insereTamanho = $this->pdo->prepare("INSERT INTO tamanho(sigla)
    VALUES (:sigla)");
    $insereTamanho->bindValue(":sigla", $cadTamanho);
    $insereTamanho->execute();
}
// CLIENTE
public function consultarCliente(){
    
    $retornaCliente = array();
    $lerCliente = $this-> pdo -> query("select nomeCliente, cpf, tipoLogradouro, Nresidencial, cep, UF, bairro, 
    cidade, nomeRua, complemento, observacao from cliente;");
    $retornaCliente = $lerCliente -> fetchAll(PDO::FETCH_ASSOC);
    return $retornaCliente;
}

public function consultarTamanho(){
    
    $retornaTamanho = array();
    $lerTamanho = $this-> pdo -> query("select sigla, codTam from tamanho;");
    $retornaTamanho = $lerTamanho -> fetchAll(PDO::FETCH_ASSOC);
    return $retornaTamanho;
}
//consultar todos os produtos no banco de dados e retornará como um array
public function consultarProduto(){
    
    $retornaProduto = array();
    $lerProduto = $this-> pdo -> query("select nomeProduto, valor, categoria, genero, tipo, marca, codProduto from produto;");
    $retornaProduto = $lerProduto -> fetchAll(PDO::FETCH_ASSOC);
    return $retornaProduto;
}

//Função Insere Produto e Tamanho
public function insereProdTam ($cadProd, $cadTam, $cadQtd){
        
    $insereProdTam = $this->pdo->prepare("insert into tamanhoProduto (codProduto, codTam, quantidade)   
    values (:p, :t, :q)");

    $insereProdTam->bindValue(":p", $cadProd);
    $insereProdTam->bindValue(":t", $cadTam);
    $insereProdTam->bindValue(":q", $cadQtd);

    $insereProdTam->execute();
}

//Função para consultar o estoque
public function consultarEstoque ()
	{
		$retorna = array();
		$ler = $this->pdo->query("SELECT produto.codProduto, produto.nomeProduto, produto.categoria, produto.genero, produto.tipo, produto.marca, produto.valor, 
        tamanho.sigla, tamanhoProduto.quantidade 
 FROM produto 
 INNER JOIN tamanhoProduto ON produto.codProduto = tamanhoProduto.codProduto 
 INNER JOIN tamanho ON tamanho.codTam = tamanhoProduto.codTam 
 ORDER BY produto.codProduto;");

		$retorna = $ler-> fetchAll(PDO::FETCH_ASSOC);
		return $retorna;
	}

}

?>