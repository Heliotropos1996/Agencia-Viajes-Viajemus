

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Iniciar sesión</title>
        <link href="StylesLogin.css" rel="stylesheet" type="text/css" media="all">
    </head>
    <body>
      <div class="login">
	<h1>Iniciar sesión</h1>
        <form method="post" action="SvLogin">
    	<input type="text" name="user" placeholder="Usuario" required="required" />
        <input type="password" name="contra" placeholder="Contraseña" required="required" />
        <button type="submit" class="btn btn-primary btn-block btn-large">Iniciar sesión.</button>
    </form>
</div>
    </body>
</html>
