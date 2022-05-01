<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link href="css/style.css" rel="stylesheet" type="text/css"/>
</head>
<body>

<div class="container col-lg-3">
    <form action="Controlador">
        <div class="form-group text-center">
            <img src="img/user.png" width="80" >
            <p> Iniciar sesion </p>
        </div>
        <div class="form-group p-2">
            <label>Usuario:</label>
            <input type="text" name="usuario" placeholder="Ingrese usuario" class="form-control">
        </div>
        <div class="form-group p-2">
            <label>Contraseña:</label>
            <input type="password" name="pass" class="form-control">
        </div>
        <input class="btn btn-success btn-block w-100 " type="submit" name="registro" value="Ingresar">
    </form>
</div>

</body>
</html>