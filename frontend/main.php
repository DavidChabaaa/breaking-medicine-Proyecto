<!doctype html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Breaking Medicine</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <link rel="stylesheet" href="main.css">
  </head>
  <body>
<?php include "navbar.php"; ?>
<?php include "carousel.php"; ?>

      <!--Main PRINCIPAL-->
    <main>
      <div class="album py-5 bg-light">
        <div class="container" id="contenedor-catalogo">
    
          <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 g-4">
            <?php include "../backend/catalogo.php"; ?>
          </div>
          <div id="paginacion" class="div-paginacion">
          </div>
        </div>
      </div>
      
      <script>
        function cambiarPagina(pag) {
          params = new URLSearchParams(window.location.search);
          params.set("pag", pag);
          window.location.href = "main.php?"+params.toString();
        }

        params = new URLSearchParams(window.location.search);
        paginacion = document.getElementById("paginacion");

        paginacion.innerHTML += "<div><a class='' onclick=\"cambiarPagina('1')\"><span aria-hidden='true' class=''>&laquo;</span></a></div>";
        //if(cantPaginas>11) paginacion.innerHTML += "<div><a>...</a></div>"; (cantPaginas>11 ? params.get("pag")-5 : 1)
        for (let i = 1; i <= cantPaginas; i++) {
          paginacion.innerHTML += "<div "+(params.get("pag")==i ?"class='page-link'":"")+" ><a onclick=\"cambiarPagina('"+i+"')\" >"+i+"</a></div>";
        }
        //if(cantPaginas>11) paginacion.innerHTML += "<div><a>...</a></div>";
        paginacion.innerHTML += "<div><a onclick=\"cambiarPagina('"+cantPaginas+"')\"> <span aria-hidden='true'>&raquo;</span></a></div>";
      </script>
    </main>
    <!-- Footer -->
    <?php include "footer.php"; ?>
  </body>
  
</html>
