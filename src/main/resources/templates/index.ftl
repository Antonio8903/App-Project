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
		<div class="col-10">
			<table class="table">
  				<thead class="thead">
				    <tr>
				      <th scope="col">Nombres</th>
				      <th scope="col">Apellidos</th>
				      <th scope="col">Email</th>
				      <th scope="col">Edad</th>
				      <th scope="col">Documento de identidad</th>
				      <th scope="col-1"></th>
				    </tr>
  				</thead>
			  	<tbody>
			  		<#list students as student>
  						<tr>
				      		<th scope="row">${student.name}</th>
				      		<td>${student.lastName}</td>
				      		<td>${student.email}</td>
				      		<td>${student.age}</td>
				      		<td>${student.identificationDocument}</td>
				      		<td>
				      			<a class="btn btn-danger" href="/student/delete/${student.id}" role="button">Eliminar</a>
				      			<a class="btn btn-success" href="/student/edit/${student.id}" role="button">Editar</a>
				      		</td>
			    		</tr>
					</#list>
			    </tbody>
			</table>
    	</div>
	</div>
	
	<script src="/js/bootstrap.min.js"></script>
  </body>
</html>