<!DOCTYPE html>
<html lang="zxx" class="js">

<head>
<base href="../">
<meta charset="utf-8">
<meta name="author" content="Softnio">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description"
	content="A powerful and conceptual apps base dashboard template that especially build for developers and programmers.">
<!-- Fav Icon  -->
<link rel="shortcut icon" href="./images/favicon.png">
<!-- Page Title  -->
<title>Ajouter un enseignant | IPSAS Admin</title>
<!-- StyleSheets  -->
<%@ include file="/include/css.jsp"%>
</head>

<body class="nk-body bg-lighter npc-general has-sidebar dark-mode">
	<div class="nk-app-root">
		<!-- main @s -->
		<div class="nk-main ">
			<!-- sidebar @s -->
			<%@ include file="/include/menu-admin.jsp"%>
			<!-- sidebar @e -->
			<!-- wrap @s -->
			<div class="nk-wrap ">
				<!-- main header @s -->
				<%@ include file="/include/header.jsp"%>
				<!-- main header @e -->
				<!-- content @s -->
				<div class="nk-content ">
					<div class="container-fluid">
						<div class="nk-content-inner">
							<div class="nk-content-body">
								<div class="components-preview wide-md mx-auto">
									<div class="nk-block-head nk-block-head-lg wide-sm">
										<div class="nk-block-head-content">
											<div class="nk-block-head-sub">
												<a class="back-to"
													href="<%=request.getContextPath()%>/admin/teachersList.jsp"><em
													class="icon ni ni-arrow-left"></em><span>Pr&egrave;cedent</span></a>
											</div>
										</div>
										<div class="nk-block nk-block-lg">
											<!-- card -->
										</div>
									</div>
									<div class="card">
										<div class="card-inner">
											<div class="card-head">
												<h5 class="card-title">Ajouter un nouveau Enseignant</h5>
											</div>
											<form name='addEnseignantForm' method='POST'
												action='addEnseignant' class="gy-3">
												<div class="row g-3 align-center">
													<div class="col-lg-5">
														<div class="form-group">
															<label class="form-label" for="nom">Nom de
																l'Enseignant</label> <span class="form-note">Specifer le
																nom de l'Enseignant.</span>
														</div>
													</div>
													<div class="col-lg-7">
														<div class="form-group">
															<div class="form-control-wrap">
																<input type="text" class="form-control" name="nom"
																	id="nom">
															</div>
														</div>
													</div>
												</div>
												<div class="row g-3 align-center">
													<div class="col-lg-5">
														<div class="form-group">
															<label class="form-label">Pr&egrave;nom de
																l'Enseignant</label> <span class="form-note">Specifer le
																pr&egrave;nom de l'Enseignant.</span>
														</div>
													</div>
													<div class="col-lg-7">
														<div class="form-group">
															<div class="form-control-wrap">
																<input type="text" class="form-control" name="prenom"
																	id="prenom">
															</div>
														</div>
													</div>
												</div>

												<div class="row g-3 align-center">
													<div class="col-lg-5">
														<div class="form-group">
															<label class="form-label" for="email">Adresse
																mail</label> <span class="form-note">Specifer l'E-mail de
																l'Enseignant.</span>
														</div>
													</div>
													<div class="col-lg-7">
														<div class="form-group">
															<div class="form-control-wrap">
																<input type="email" class="form-control" name="email"
																	id="email">
															</div>
														</div>
													</div>
												</div>

												<div class="row g-3 align-center">
													<div class="col-lg-5">
														<div class="form-group">
															<label class="form-label" for="telephone">T&eacute;l&eacute;phone</label>
															<span class="form-note">Specifer le num&eacute;ro
																T&eacute;l&eacute;phone de l'Enseignant.</span>
														</div>
													</div>
													<div class="col-lg-7">
														<div class="form-group">
															<div class="form-control-wrap">
																<input type="tel" class="form-control" name="telephone"
																	id="telephone">
															</div>
														</div>
													</div>
												</div>
												<div class="row g-3 align-center">
													<div class="col-lg-5">
														<div class="form-group">
															<label class="form-label" for="departement">D&eacute;partement</label>
															<span class="form-note">Specifer le
																D&eacute;partement de l'Enseignant.</span>
														</div>
													</div>
													<div class="col-lg-7">
														<div class="form-group">
															<div class="form-control-wrap">
																<!-- <input type="text" class="form-control" id="Tdep"> -->
																<select class="form-control" name="departement"
																	id="departement">
																	<option>G&eacute;nie Informatique</option>
																	<option>G&eacute;nie Industriel</option>
																	<option>G&eacute;nie Civil</option>
																	<option>G&eacute;nie M&eacute;canique</option>
																</select>
															</div>
														</div>
													</div>
												</div>

												<div class="row g-3 align-center">
													<div class="col-lg-5">
														<div class="form-group">
															<label class="form-label" for="password">Mot de
																passe</label> <span class="form-note">le mot de passe
																doit contenir au moins 6 caract&egrave;res dont
																majuscules + minuscules et chiffres.</span>
														</div>
													</div>
													<div class="col-lg-7">
														<div class="form-group">
															<div class="form-control-wrap">
																<input type="password" class="form-control"
																	name="password" id="password">
															</div>
														</div>
													</div>
												</div>
												<c:if test="${error != null }">
													<p style="color: red;">${error }</p>
												</c:if>
												<div class="row g-3">
													<div class="col-lg-7 offset-lg-5">
														<div class="form-group mt-2">
															<input type="submit" class="btn btn-lg btn-primary"
																value="Enregistrer" />
														</div>
													</div>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- content @e -->
				<!-- footer @s -->
				<%@ include file="/include/Footer.jsp"%>
				<!-- footer @e -->
			</div>
			<!-- wrap @e -->
		</div>
		<!-- main @e -->
	</div>
	<!-- app-root @e -->
	<!-- JavaScript -->
	<%@ include file="/include/js.jsp"%>
	<script
		src="<%=request.getContextPath()%>>/assets/js/example-toastr.js?ver=2.2.0"></script>
</body>

</html>