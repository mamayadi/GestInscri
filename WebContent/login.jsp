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
<title>Se connecter | Gestion Inscrit IPSAS</title>
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
					<div class="nk-block nk-block-middle nk-auth-body  wide-xs">
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
										<h4 class="nk-block-title">Se connecter</h4>
										<div class="nk-block-des">
											<p>Acc�dez au panneau Gestion Inscrit via votre email et
												mot de passe.</p>
										</div>
									</div>
								</div>
								<form name='loginForm' method='POST'
									action='GestInscri/loginController'>
									<div class="form-group">
										<div class="form-label-group">
											<label class="form-label" for="email">Email</label>
										</div>
										<input type="email" class="form-control form-control-lg"
											name="email" id="email"
											placeholder="Enter your email address">
									</div>
									<div class="form-group">
										<div class="form-label-group">
											<label class="form-label" for="password">Mot de passe</label>
											<a class="link link-primary link-sm"
												href="html/pages/auths/auth-reset-v2.html">Mot de passe
												oubli�?</a>
										</div>
										<div class="form-control-wrap">
											<a href="#" class="form-icon form-icon-right passcode-switch"
												data-target="password"> <em
												class="passcode-icon icon-show icon ni ni-eye"></em> <em
												class="passcode-icon icon-hide icon ni ni-eye-off"></em>
											</a> <input type="password" class="form-control form-control-lg"
												name="password" id="password"
												placeholder="Enter your password">
										</div>
										<c:if test="${error != null }">
											<p style="color: red;">${error }</p>
										</c:if>
									</div>
									<div class="form-group">
										<input type="submit" class="btn btn-lg btn-primary btn-block"
											value="Sign in" />
									</div>
								</form>
								<div class="form-note-s2 text-center pt-4">
									Nouveau sur notre plateforme? <a
										href="<%=request.getContextPath()%>/register.jsp">Cr�er un
										compte</a>
								</div>
								<!--  <div class="text-center pt-4 pb-3">
									<h6 class="overline-title overline-title-sap">
										<span>OR</span>
									</h6>
								</div>
								<ul class="nav justify-center gx-4">
									<li class="nav-item"><a class="nav-link" href="#">Facebook</a></li>
									<li class="nav-item"><a class="nav-link" href="#">Google</a></li>
								</ul>-->
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
															src="<%=request.getContextPath()%>/images/flags/english.png"
															alt="" class="language-flag"> <span
															class="language-name">English</span>
													</a></li>
													<li><a href="#" class="language-item"> <img
															src="<%=request.getContextPath()%>/images/flags/spanish.png"
															alt="" class="language-flag"> <span
															class="language-name">Espa�ol</span>
													</a></li>
													<li><a href="#" class="language-item"> <img
															src="<%=request.getContextPath()%>/images/flags/french.png"
															alt="" class="language-flag"> <span
															class="language-name">Fran�ais</span>
													</a></li>
													<li><a href="#" class="language-item"> <img
															src="<%=request.getContextPath()%>/images/flags/turkey.png"
															alt="" class="language-flag"> <span
															class="language-name">T�rk�e</span>
													</a></li>
												</ul>
											</div></li>
									</ul>
								</div>
								<div class="col-lg-6">
									<div class="nk-block-content text-center text-lg-left">
										<p class="text-soft">&copy; 2020 Gestion Inscrit. All
											Rights Reserved.</p>
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