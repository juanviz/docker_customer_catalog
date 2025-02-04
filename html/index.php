<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Tecnologías para la digitalización</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
  <style>
    body {
      background-color: #f8f9fa;
    }
    .jumbotron {
      background: linear-gradient(135deg, #6a11cb, #2575fc);
      color: white;
      padding: 4rem;
      border-radius: 15px;
      text-align: center;
    }
    .table-container {
      background: white;
      padding: 2rem;
      border-radius: 15px;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }
  </style>
</head>
<body>
  <div class="container mt-5">
    <div class="jumbotron">
      <h1 class="display-4">Tecnologías de la Digitalización 2024-2025</h1>
      <p class="lead">Aplicación PHP y MySQL con contenedores desplegada mediante Terraform</p>
      <hr class="my-4">
      <p>Contenedor para Apache/PHP y otro para MySQL con almacenamiento de aplicación y de datos en volúmenes externos.</p>
    </div>
    
    <div class="table-container mt-4">
      <h3 class="mb-3"><i class="fas fa-database"></i> Lista de Clientes</h3>
      <table class="table table-hover table-bordered">
        <thead class="table-dark">
          <tr>
            <th>Nombre</th>
            <th>Calificación Crediticia</th>
            <th>Dirección</th>
            <th>Ciudad</th>
            <th>Estado</th>
            <th>País</th>
            <th>Código Postal</th>
          </tr>
        </thead>
        <tbody>
          <?php
          $conexion = new mysqli("mysql", "root", "secret", "SG");

          if ($conexion->connect_error) {
              die("Error de conexión: " . $conexion->connect_error);
          }

          $cadenaSQL = "SELECT * FROM s_customer";
          $resultado = $conexion->query($cadenaSQL);

          while ($fila = $resultado->fetch_object()) {
            echo "<tr>
                    <td>{$fila->name}</td>
                    <td>{$fila->credit_rating}</td>
                    <td>{$fila->address}</td>
                    <td>{$fila->city}</td>
                    <td>{$fila->state}</td>
                    <td>{$fila->country}</td>
                    <td>{$fila->zip_code}</td>
                  </tr>";
          }
          ?>
        </tbody>
      </table>
    </div>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
