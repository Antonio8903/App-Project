<!doctype html>
<html lang="en">
  <head>
  	<title>Estudiantes</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="/css/bootstrap.min.css">
  </head>
  <body>
    <div class="container">
    	<nav class="navbar navbar-expand-lg navbar-light bg-primary">
  			<a class="navbar-brand" href="/">Estudiantes</a>
		    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
		    	<span class="navbar-toggler-icon"></span>
		    </button>
  			<div class="collapse navbar-collapse" id="navbarNav">
    			<ul class="navbar-nav">
      				<li class="nav-item active">
        				<a class="nav-link" href="/create">Crear</a>
      				</li>
  				</ul>
  			</div>
		</nav>
    </div>
	
	<br /><br /><br /><br />
	
	<div class="row justify-content-md-center">
		<div class="col-8">
			<div class="card">
  				<h5 class="card-header">Crear estudiante</h5>
  				<div class="card-body">
  					<form action="/student/create" method="post">
						<div class="form-group">
					    	<label for="name">Nombres</label>
					    	<input type="text" class="form-control" name="name" id="name" placeholder="Nombres" required>
					  	</div>
					  	<div class="form-group">
					    	<label for="lastname">Apellidos</label>
					    	<input type="text" class="form-control" name="lastname" id="lastname" placeholder="Apellidos" required>
					  	</div>
					  	<div class="form-group">
					    	<label for="identification">Documento de identidad</label>
					    	<input type="text" class="form-control" name="identification" id="identification" placeholder="Documento de identidad" required>
					  	</div>
					  	<div class="form-group">
					    	<label for="identification">Correo electrónico</label>
					    	<input type="email" class="form-control" name="email" id="email" placeholder="Correo electrónico" required>
					  	</div>
					  	<div class="form-group">
					    	<label for="age">Edad</label>
					    	<input type="number" class="form-control" name="age" id="age" placeholder="Edad" required>
					  	</div>
  						<button type="submit" class="btn btn-primary">Crear</button>
					</form>
  				</div>
			</div>
    	</div>
	</div>
	
	<script src="/js/bootstrap.min.js"></script>
  </body>
</html>