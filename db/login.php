<?php
$nome = $_POST['nome'];
$login = $_POST['login'];
$entrar = $_POST['entrar'];
$senha = md5($_POST['senha']);
$connect = mysql_connect('nome_do_servidor', 'user_nome' ,'user_email','user_senha');
$db = mysql_select_db('pi_db');
  if (isset($entrar)) {

    $verifica = mysql_query("SELECT * FROM usuario WHERE login =
    '$login' AND senha = '$senha'") or die("erro ao selecionar");
      if (mysql_num_rows($verifica)<=0){
        echo"<script language='javascript' type='text/javascript'>
        alert('Login e/ou senha incorretos');window.location
        .href='login.html';</script>";
        die();
      }else{
        setcookie("login",$login);
        header("Location:index.php");
      }
  }
?>