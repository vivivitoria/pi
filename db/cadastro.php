<?php
$id = uniqid (rand (),true); echo $c; echo "<br>";
$nome = $_POST['nome'];
$login = $_POST['login'];
$senha = md5($_POST['senha']);
$connect = mysql_connect('nome_do_servidor', 
'user_id',
'user_nome',
'user_email',
'user_senha');
$db = mysql_select_db('pi_db');
$query_select = "SELECT login FROM usuario WHERE login = '$login'";
$select = mysql_query($query_select,$connect);
$array = mysql_fetch_array($select);
$logarray = $array['login'];

  if($login == "" || $login == null){
    echo"<script language='javascript' type='text/javascript'>
    alert('O campo login deve ser preenchido');
    window.location.href='login.html';</script>";

    }else{
      if($logarray == $login){

        echo"<script language='javascript' type='text/javascript'>
        alert('Esse login já existe');
        window.location.href='login.html';</script>";
        die();

      }else{
        $query = "INSERT INTO usuario (login,senha) VALUES ('$login','$senha')";
        $insert = mysql_query($query,$connect);

        if($insert){
          echo"<script language='javascript' type='text/javascript'>
          alert('Usuário cadastrado com sucesso!');
          window.location.href='listar.html'</script>";
        }else{
          echo"<script language='javascript' type='text/javascript'>
          alert('Não foi possível cadastrar esse usuário');
          window.location.href='login.html'</script>";
        }
      }
    }
?>
