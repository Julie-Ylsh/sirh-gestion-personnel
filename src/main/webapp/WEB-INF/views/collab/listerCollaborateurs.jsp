<%@page import="java.util.List"%>
<%@page import="dev.sgp.entite.Collaborateur"%>
<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SGP - Liste</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/styles/bootstrap-4.3.1-
dist/css/bootstrap.css">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet media=" screen" type="text/css"
	href="<%=request.getContextPath()%>/styles/style.css" />
</head>
<body>
	<div class="container-fluid">
		<header>
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<a class="navbar-brand" href="#"> <img class="col-sm-auto"
					class="img-fluid" Id="logo" alt="logo"
					src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGA481w6fV3o0U801M0_d1EstU8mgwHl0n1ewqIo11lkBnR4e7" />
				</a>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav mr-auto">
						<li class="nav-item active"><a class="nav-link" href="#">Collaborateurs
								<span class="sr-only">(current)</span>
						</a></li>
						<li class="nav-item"><a class="nav-link" href="#">Statistiques</a></li>
						<li class="nav-item"><a class="nav-link disabled" href="#">Activités</a>
						</li>
					</ul>
			</nav>
		</header>


		<aside>
			<a href="/sgp/collaborateurs/editer"
				class="btn btn-primary ajoutCollaborateur"
				tabindex="1000" role="button" aria-disabled="true">Ajouter un
				collaborateur</a>
		</aside>

		
		<section>
			<h1>Les collaborateurs</h1>
			<form class="row form-group">
				<label for="search" class="col-4 ">Rechercher un nom ou un
					prénom qui commence par : </label> <input type="text"
					class="col-3 form-control" id="search"
					placeholder="Entrez les premières lettres">
				<div class="col-auto espace"></div>
				<a href="#" class="col-auto  btn btn-primary rechercher">Rechercher
				</a> <input type="checkbox" id="desactive" class="col"
					aria-label="Voir les collaborateurs désactivés"> <label
					for="desactive" class="col-auto ">Voir les collaborateurs
					désactivés </label> <label for="filter" class="wd-100 col-4 ">Filtrer
					par département </label> <input type="text" class="col-3 form-control"
					id="filter" placeholder="Entrez les premières lettres">
			</form>
		</section>

		<div class="card-deck row">
			<div class="col-xl-4 col-lg-6 col-12 ">
				<div class="card" style="max-width: 30rem;">
					<div class="card-header"><%= ((Collaborateur)request.getAttribute("collaborateur")).getNom() %>  <%= ((Collaborateur)request.getAttribute("collaborateur")).getPrenom() %></div>
					<div class="row card-body">
						<img class="col-4 card-img img-fluid"
							src="https://internetjulie.com/wp-content/uploads/2018/10/AdobeStock_84018860.jpeg"
							alt="Card image cap">
						<div class="col-8">
							<div class="row ">
								<p class="col-6 card-text">Fonction :</p>
								<p class="col-6 card-text">Vice-présidente</p>
								<p class="col-6 card-text">Département :</p>
								<p class="col-6 card-text">Irak</p>
								<p class="col-6 card-text">E-mail :</p>
								<p class="col-6 card-text"><%= ((Collaborateur)request.getAttribute("collaborateur")).getEmailPro() %></p>
								<p class="col-6 card-text">Téléphone :</p>
								<p class="col-6 card-text">0771638681</p>
							</div>
						</div>
						<a href="#" class="offset-9 btn btn-primary ajoutCollaborateur"
							role="button" aria-disabled="true">Editer</a>

					</div>
				</div>
			</div>

			<div class="col-xl-4 col-lg-6 col-12">
				<div class="card" style="max-width: 30rem;">
					<div class="card-header">NOM Prénom</div>
					<div class="row card-body">
						<img class="col-4 card-img img-fluid"
							src="https://internetjulie.com/wp-content/uploads/2018/10/AdobeStock_84018860.jpeg"
							alt="Card image cap">
						<div class="col-8">
							<div class="row ">
								<p class="col-6 card-text">Fonction :</p>
								<p class="col-6 card-text">Vice-présidente</p>
								<p class="col-6 card-text">Département :</p>
								<p class="col-6 card-text">Irak</p>
								<p class="col-6 card-text">E-mail :</p>
								<p class="col-6 card-text">julie.jeltsch@ninivehorizon.org</p>
								<p class="col-6 card-text">Téléphone :</p>
								<p class="col-6 card-text">0771638681</p>
							</div>
						</div>
						<a href="#" class="offset-9 btn btn-primary ajoutCollaborateur"
							role="button" aria-disabled="true">Editer</a>

					</div>
				</div>
			</div>

			<div class="col-xl-4 col-lg-6 col-12 ">
				<div class="card" style="max-width: 30rem;">
					<div class="card-header">NOM Prénom</div>
					<div class="row card-body">
						<img class="col-4 card-img img-fluid"
							src="https://internetjulie.com/wp-content/uploads/2018/10/AdobeStock_84018860.jpeg"
							alt="Card image cap">
						<div class="col-8">
							<div class="row ">
								<p class="col-6 card-text">Fonction :</p>
								<p class="col-6 card-text">Vice-présidente</p>
								<p class="col-6 card-text">Département :</p>
								<p class="col-6 card-text">Irak</p>
								<p class="col-6 card-text">E-mail :</p>
								<p class="col-6 card-text">julie.jeltsch@ninivehorizon.org</p>
								<p class="col-6 card-text">Téléphone :</p>
								<p class="col-6 card-text">0771638681</p>
							</div>
						</div>
						<a href="#" class="offset-9 btn btn-primary ajoutCollaborateur"
							role="button" aria-disabled="true">Editer</a>

					</div>
				</div>
			</div>

			<div class="col-xl-4 col-lg-6 col-12">
				<div class="card" style="max-width: 30rem;">
					<div class="card-header">NOM Prénom</div>
					<div class="row card-body">
						<img class="col-4 card-img img-fluid"
							src="https://internetjulie.com/wp-content/uploads/2018/10/AdobeStock_84018860.jpeg"
							alt="Card image cap">
						<div class="col-8">
							<div class="row ">
								<p class="col-6 card-text">Fonction :</p>
								<p class="col-6 card-text">Vice-présidente</p>
								<p class="col-6 card-text">Département :</p>
								<p class="col-6 card-text">Irak</p>
								<p class="col-6 card-text">E-mail :</p>
								<p class="col-6 card-text">julie.jeltsch@ninivehorizon.org</p>
								<p class="col-6 card-text">Téléphone :</p>
								<p class="col-6 card-text">0771638681</p>
							</div>
						</div>
						<a href="#" class="offset-9 btn btn-primary ajoutCollaborateur"
							role="button" aria-disabled="true">Editer</a>

					</div>
				</div>
			</div>

			<div class="col-xl-4 col-lg-6 col-12 ">
				<div class="card" style="max-width: 30rem;">
					<div class="card-header">NOM Prénom</div>
					<div class="row card-body">
						<img class="col-4 card-img img-fluid"
							src="https://internetjulie.com/wp-content/uploads/2018/10/AdobeStock_84018860.jpeg"
							alt="Card image cap">
						<div class="col-8">
							<div class="row ">
								<p class="col-6 card-text">Fonction :</p>
								<p class="col-6 card-text">Vice-présidente</p>
								<p class="col-6 card-text">Département :</p>
								<p class="col-6 card-text">Irak</p>
								<p class="col-6 card-text">E-mail :</p>
								<p class="col-6 card-text">julie.jeltsch@ninivehorizon.org</p>
								<p class="col-6 card-text">Téléphone :</p>
								<p class="col-6 card-text">0771638681</p>
							</div>
						</div>
						<a href="#" class="offset-9 btn btn-primary ajoutCollaborateur"
							role="button" aria-disabled="true">Editer</a>

					</div>
				</div>
			</div>

			<div class="col-xl-4 col-lg-6 col-12">
				<div class="card" style="max-width: 30rem;">
					<div class="card-header">NOM Prénom</div>
					<div class="row card-body">
						<img class="col-4 card-img img-fluid"
							src="https://internetjulie.com/wp-content/uploads/2018/10/AdobeStock_84018860.jpeg"
							alt="Card image cap">
						<div class="col-8">
							<div class="row ">
								<p class="col-6 card-text">Fonction :</p>
								<p class="col-6 card-text">Vice-présidente</p>
								<p class="col-6 card-text">Département :</p>
								<p class="col-6 card-text">Irak</p>
								<p class="col-6 card-text">E-mail :</p>
								<p class="col-6 card-text">julie.jeltsch@ninivehorizon.org</p>
								<p class="col-6 card-text">Téléphone :</p>
								<p class="col-6 card-text">0771638681</p>
							</div>
						</div>
						<a href="#" class="offset-9 btn btn-primary ajoutCollaborateur"
							role="button" aria-disabled="true">Editer</a>

					</div>
				</div>
			</div>

			<div class="col-xl-4 col-lg-6 col-12">
				<div class="card" style="max-width: 30rem;">
					<div class="card-header">NOM Prénom</div>
					<div class="row card-body">
						<img class="col-4 card-img img-fluid"
							src="https://internetjulie.com/wp-content/uploads/2018/10/AdobeStock_84018860.jpeg"
							alt="Card image cap">
						<div class="col-8">
							<div class="row ">
								<p class="col-6 card-text">Fonction :</p>
								<p class="col-6 card-text">Vice-présidente</p>
								<p class="col-6 card-text">Département :</p>
								<p class="col-6 card-text">Irak</p>
								<p class="col-6 card-text">E-mail :</p>
								<p class="col-6 card-text">julie.jeltsch@ninivehorizon.org</p>
								<p class="col-6 card-text">Téléphone :</p>
								<p class="col-6 card-text">0771638681</p>
							</div>
						</div>
						<a href="#" class="offset-9 btn btn-primary ajoutCollaborateur"
							role="button" aria-disabled="true">Editer</a>

					</div>
				</div>
			</div>

			<div class="col-xl-4 col-lg-6 col-12">
				<div class="card" style="max-width: 30rem;">
					<div class="card-header">NOM Prénom</div>
					<div class="row card-body">
						<img class="col-4 card-img img-fluid"
							src="https://internetjulie.com/wp-content/uploads/2018/10/AdobeStock_84018860.jpeg"
							alt="Card image cap">
						<div class="col-8">
							<div class="row ">
								<p class="col-6 card-text">Fonction :</p>
								<p class="col-6 card-text">Vice-présidente</p>
								<p class="col-6 card-text">Département :</p>
								<p class="col-6 card-text">Irak</p>
								<p class="col-6 card-text">E-mail :</p>
								<p class="col-6 card-text">julie.jeltsch@ninivehorizon.org</p>
								<p class="col-6 card-text">Téléphone :</p>
								<p class="col-6 card-text">0771638681</p>
							</div>
						</div>
						<a href="#" class="offset-9 btn btn-primary ajoutCollaborateur"
							role="button" aria-disabled="true">Editer</a>

					</div>
				</div>
			</div>
		</div>


	</div>

</body>
</html>