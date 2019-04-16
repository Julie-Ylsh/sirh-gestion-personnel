<%@page import="java.util.List"%>
<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SGP - App</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/styles/bootstrap-4.3.1-
dist/css/bootstrap.css">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet media=" screen" type="text/css"
	href="<%=request.getContextPath()%>/styles/style.css" />
</head>
<body>
	<div class="container">
		<h1>Nouveau collaborateur</h1>
		<div style="max-width: 60%">

			<form class="needs-validation" novalidate method="POST"
				action="/sgp/collaborateurs/editer">
				<div class="form-group row">
					<label for="nom" class="col-4">Nom : </label>
					<div class="col-7 offset-1">
						<input type="text" class="form-control" name="nom"
							placeholder="Jeltsch" required>
						<div class="invalid-tooltip">Le nom est obligatoire</div>
					</div>
				</div>

				<div class="form-group row">
					<label for="prenom" class="col-4">Prénom : </label>
					<div class="col-7 offset-1">
						<input type="text" class=" form-control" name="prenom"
							placeholder="Julie" required>
						<div class="invalid-tooltip">Le prénom est obligatoire</div>
					</div>
				</div>

				<div class="form-group row">
					<label for="dateNaissance" class="col-4">Date de naissance
						: </label>
					<div class="col-7 offset-1">
						<input type="date" class=" form-control" name="dateNaissance"
							placeholder="04/12/1994" required>
						<div class="invalid-tooltip">La date de naissance est
							obligatoire</div>
					</div>
				</div>

				<div class="form-group row">
					<label for="adresse" class="col-4">Adresse : </label>
					<div class="col-7 offset-1">
						<textarea class=" form-control" name="adresse"
							placeholder="7 allée des courlis 44830 Bouaye" required></textarea>
						<div class="invalid-tooltip">L'adresse est obligatoire</div>
					</div>
				</div>

				<div class="form-group row">
					<label for="numSecu" class="col-4">Numéro de sécurité
						sociale (15 chiffres) : </label>
					<div class="col-7 offset-1">
						<input type="text" class=" form-control" name="numSecu"
							placeholder="294124416222973" pattern="[0-9]{15}" required>
						<div class="invalid-tooltip">veuillez respecter le format
							obligatoire</div>
					</div>
				</div>


				<button type="submit" class="btn btn-primary">Ajouter</button>
			</form>
		</div>
		
		<div>
		</br>
			<button type="submit" class="btn btn-primary">
				<a href="index.html">Retour</a>
			</button>
		</div>

		<script>
			$('#MyModal')
					.on('shown.bs.modal', function() {
						$('#myInput').trigger('focus')
					})
		</script>
		<script>
			// Example starter JavaScript for disabling form submissions if there are invalid fields
					(
							function() {
								'use strict';
								window
										.addEventListener(
												'load',
												function() {
													// Fetch all the forms we want to apply custom Bootstrap validation styles to
													var forms = document
															.getElementsByClassName('needs-validation');
													// Loop over them and prevent submission
													var validation = Array.prototype.filter
															.call(
																	forms,
																	function(
																			form) {
																		form
																				.addEventListener(
																						'submit',
																						function(
																								event) {
																							if (form
																									.checkValidity() === false) {
																								event
																										.preventDefault();
																								event
																										.stopPropagation();
																							}
																							form.classList
																									.add('was-validated');
																						},
																						false);
																	});
												}, false);
							})();
		</script>



	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>


</body>
</html>