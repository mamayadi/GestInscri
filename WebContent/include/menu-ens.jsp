<div class="nk-sidebar nk-sidebar-fixed is-dark "
	data-content="sidebarMenu">
	<div class="nk-sidebar-element nk-sidebar-head">
		<div class="nk-sidebar-brand">
			<a href="<%=request.getContextPath()%>" class="logo-link nk-sidebar-logo"> <img
				class="logo-light logo-img"
				src="<%=request.getContextPath()%>/images/ipsas/logo.png"
				srcset="<%=request.getContextPath()%>/images/ipsas/logo2x.png 2x"
				alt="logo"> <img class="logo-dark logo-img"
				src="<%=request.getContextPath()%>/images/ipsas/logo-dark.png"
				srcset="<%=request.getContextPath()%>/images/ipsas/logo-dark2x.png 2x"
				alt="logo-dark">
			</a>
		</div>
		<div class="nk-menu-trigger mr-n2">
			<a href="#" class="nk-nav-toggle nk-quick-nav-icon d-xl-none"
				data-target="sidebarMenu"><em class="icon ni ni-arrow-left"></em></a>
		</div>
	</div>
	<!-- .nk-sidebar-element -->
	<div class="nk-sidebar-element">
		<div class="nk-sidebar-content">
			<div class="nk-sidebar-menu" data-simplebar>
				<ul class="nk-menu">
					<li class="nk-menu-heading">
						<h6 class="overline-title text-primary-alt">Enseignant Dashboard</h6>
					</li>
					<li class="nk-menu-item"><a href="<%=request.getContextPath()%>/enseignant/foldersList.jsp"
						class="nk-menu-link"> <span class="nk-menu-icon"> <em
								class="icon ni ni-folders"></em></span> <span class="nk-menu-text">Liste
								des dossiers</span>
					</a></li>
					<!-- .nk-menu-item -->
					<li class="nk-menu-item"><a href="<%=request.getContextPath()%>/enseignant/teachersList.jsp"
						class="nk-menu-link"> <span class="nk-menu-icon"><em
								class="icon ni ni-calendar"></em></span> <span
							class="nk-menu-text">Liste des entretiens</span>
					</a></li>
					<!-- .nk-menu-item -->
				</ul>
				<!-- .nk-menu -->
			</div>
			<!-- .nk-sidebar-menu -->
		</div>
		<!-- .nk-sidebar-content -->
	</div>
	<!-- .nk-sidebar-element -->
</div>