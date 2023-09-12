-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 31-Maio-2023 às 00:28
-- Versão do servidor: 10.4.25-MariaDB
-- versão do PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bddespesas`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `codigo` int(4) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cidade` varchar(30) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contato` varchar(15) NOT NULL,
  `dataNascimento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `contas` (
  `lancamento` INT(4) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `codigo_cliente` INT(4) NOT NULL,
  `data` DATE NOT NULL,
  `valor` DECIMAL(8.2) NOT NULL,
  `historico` VARCHAR(250) NOT NULL,
  FOREIGN KEY (codigo_cliente) REFERENCES clientes (codigo)
)