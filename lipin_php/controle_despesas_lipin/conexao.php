<?php
$host   =   "localhost"; // Servidor local
$user   =   "root"; // Usuário do servidor
$pass   =   ""; // Senha do banco de dados
$banco  =   "bddespesas"; // Nome do banco
$conexao = mysqli_connect($host, $user, $pass) or die (mysqli_error($conexao)); // Faz a conexão com o banco de dados, caso não conseguir será apresentada mensagem de erro pelo comando mysqli_error
mysqli_select_db($conexao, $banco); // Seleciona através da conexão o banco
?>