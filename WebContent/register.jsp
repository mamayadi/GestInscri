<!DOCTYPE html>
<html lang="zxx" class="js">

<head>
<base href="../../../">
<meta charset="utf-8">
<meta name="author" content="Softnio">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description"
	content="A powerful and conceptual apps base dashboard template that especially build for developers and programmers.">
<!-- Fav Icon  -->
<link rel="shortcut icon" href="./images/favicon.png">
<!-- Page Title  -->
<title>S'inscrire | Gestion Inscrit IPSAS</title>
<!-- StyleSheets  -->
<%@ include file="/include/css.jsp"%>
</head>

<body class="nk-body bg-white npc-default pg-auth dark-mode">
	<div class="nk-app-root">
		<!-- main @s -->
		<div class="nk-main ">
			<!-- wrap @s -->
			<div class="nk-wrap nk-wrap-nosidebar">
				<!-- content @s -->
				<div class="nk-content ">
					<div class="nk-block nk-block-middle nk-auth-body wide-xs">
						<div class="brand-logo pb-4 text-center">
							<a href="html/index.html" class="logo-link"> <img
								class="logo-light logo-img logo-img-lg"
								src="<%=request.getContextPath()%>/images/ipsas/logo.png"
								srcset="<%=request.getContextPath()%>/images/ipsas/logo2x.png"
								alt="logo"> <img class="logo-dark logo-img logo-img-lg"
								src="<%=request.getContextPath()%>/images/ipsas/logo.png"
								srcset="<%=request.getContextPath()%>/images/ipsas/logo2x.png"
								alt="logo-dark">
							</a>
						</div>
						<div class="card">
							<div class="card-inner card-inner-lg">
								<div class="nk-block-head">
									<div class="nk-block-head-content">
										<h4 class="nk-block-title">S'inscrire</h4>
										<div class="nk-block-des">
											<p>Cr�er un nouveau compte</p>
										</div>
									</div>
								</div>
								<form name="registerForm" method='POST'
									action='GestInscri/registerController'>
									<div class="form-group">
										<label class="form-label" for="nom">Nom</label> <input
											type="text" class="form-control form-control-lg" name="nom"
											id="nom" placeholder="Saisir votre nom">
									</div>
									<div class="form-group">
										<label class="form-label" for="prenom">Prenom</label> <input
											type="text" class="form-control form-control-lg"
											name="prenom" id="prenom" placeholder="Saisir votre prenom">
									</div>
									<div class="form-group">
										<label class="form-label" for="email">Email</label> <input
											type="email" class="form-control form-control-lg"
											name="email" id="email" placeholder="Saisir votre email">
									</div>
									<div class="form-group">
										<label class="form-label" for="password">Mot de passe</label>
										<div class="form-control-wrap">
											<a href="#" class="form-icon form-icon-right passcode-switch"
												data-target="password"> <em
												class="passcode-icon icon-show icon ni ni-eye"></em> <em
												class="passcode-icon icon-hide icon ni ni-eye-off"></em>
											</a> <input type="password" class="form-control form-control-lg"
												name="password" id="password"
												placeholder="Saisir votre mot de passe">
										</div>
									</div>
									<!--  <div class="form-group">
                                        <div class="custom-control custom-control-xs custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="checkbox">
                                            <label class="custom-control-label" for="checkbox">I agree to Dashlite <a href="#">Privacy Policy</a> &amp; <a href="#"> Terms.</a></label>
                                        </div>
                                    </div>-->
									<c:if test="${error != null }">
										<p style="color: red;">${error }</p>
									</c:if>
									<div class="form-group">
										<input type="submit" class="btn btn-lg btn-primary btn-block"
											value="Inscrire" />
									</div>
								</form>
								<div class="form-note-s2 text-center pt-4">
									Vous avez d�ja une compte? <a
										href="<%=request.getContextPath()%>/login.jsp"><strong>Connectez-vous</strong></a>
								</div>
								<!-- <div class="text-center pt-4 pb-3">
									<h6 class="overline-title overline-title-sap">
										<span>OR</span>
									</h6>
								</div>
								<ul class="nav justify-center gx-8">
									<li class="nav-item"><a class="nav-link" href="#">Facebook</a></li>
									<li class="nav-item"><a class="nav-link" href="#">Google</a></li>
								</ul> -->
							</div>
						</div>
					</div>
					<div class="nk-footer nk-auth-footer-full">
						<div class="container wide-lg">
							<div class="row g-3">
								<div class="col-lg-6 order-lg-last">
									<ul
										class="nav nav-sm justify-content-center justify-content-lg-end">
										<li class="nav-item"><a class="nav-link" href="#">Terms
												& Condition</a></li>
										<li class="nav-item"><a class="nav-link" href="#">Privacy
												Policy</a></li>
										<li class="nav-item"><a class="nav-link" href="#">Help</a>
										</li>
										<li class="nav-item dropup"><a
											class="dropdown-toggle dropdown-indicator has-indicator nav-link"
											data-toggle="dropdown" data-offset="0,10"><span>English</span></a>
											<div
												class="dropdown-menu dropdown-menu-sm dropdown-menu-right">
												<ul class="language-list">
													<li><a href="#" class="language-item"> <img
															src="./images/flags/english.png" alt=""
															class="language-flag"> <span class="language-name">English</span>
													</a></li>
													<li><a href="#" class="language-item"> <img
															src="./images/flags/spanish.png" alt=""
															class="language-flag"> <span class="language-name">Espa�ol</span>
													</a></li>
													<li><a href="#" class="language-item"> <img
															src="./images/flags/french.png" alt=""
															class="language-flag"> <span class="language-name">Fran�ais</span>
													</a></li>
													<li><a href="#" class="language-item"> <img
															src="./images/flags/turkey.png" alt=""
															class="language-flag"> <span class="language-name">T�rk�e</span>
													</a></li>
												</ul>
											</div></li>
									</ul>
								</div>
								<div class="col-lg-6">
									<div class="nk-block-content text-center text-lg-left">
										<p class="text-soft">&copy; 2019 CryptoLite. All Rights
											Reserved.</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- wrap @e -->
			</div>
			<!-- content @e -->
		</div>
		<!-- main @e -->
	</div>
	<!-- app-root @e -->
	<!-- JavaScript -->
	<%@ include file="/include/js.jsp"%>
</html>