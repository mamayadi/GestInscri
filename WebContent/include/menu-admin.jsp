<div class="nk-sidebar nk-sidebar-fixed is-dark "
	data-content="sidebarMenu">
	<div class="nk-sidebar-element nk-sidebar-head">
		<div class="nk-sidebar-brand">
			<a href="<%=request.getContextPath()%>" class="logo-link nk-sidebar-logo"> <img
				class="logo-light logo-img"
				src="<%=request.getContextPath()%>/images/logo.png"
				srcset="<%=request.getContextPath()%>/images/logo2x.png 2x"
				alt="logo"> <img class="logo-dark logo-img"
				src="<%=request.getContextPath()%>/images/logo-dark.png"
				srcset="<%=request.getContextPath()%>/images/logo-dark2x.png 2x"
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
						<h6 class="overline-title text-primary-alt">Admin Dashboard</h6>
					</li>
					<li class="nk-menu-item"><a href="<%=request.getContextPath()%>/admin/foldersList.jsp"
						class="nk-menu-link"> <span class="nk-menu-icon"> <em
								class="icon ni ni-folders"></em></span> <span class="nk-menu-text">Liste
								des dossiers</span>
					</a></li>
					<!-- .nk-menu-item -->
					<li class="nk-menu-item"><a href="<%=request.getContextPath()%>/admin/teachersList.jsp"
						class="nk-menu-link"> <span class="nk-menu-icon"><em
								class="icon ni ni-user-list-fill"></em></span> <span
							class="nk-menu-text">Liste des Enseignants</span>
					</a></li>
					<!-- .nk-menu-item -->
					<li class="nk-menu-item"><a href="<%=request.getContextPath()%>/admin/usersList.jsp"
						class="nk-menu-link"> <span class="nk-menu-icon"><em
								class="icon ni ni-users"></em></span> <span class="nk-menu-text">
								Gestion des utilisateurs</span>
					</a></li>
					<!-- .nk-menu-item -->
					<li class="nk-menu-item"><a href="<%=request.getContextPath()%>/admin/settings.jsp"
						class="nk-menu-link"> <span class="nk-menu-icon"><em
								class="icon ni ni-setting"></em></span> <span class="nk-menu-text">Param�tres</span>
					</a></li>
					
				</ul>
				<!-- .nk-menu -->
			</div>
			<!-- .nk-sidebar-menu -->
		</div>
		<!-- .nk-sidebar-content -->
	</div>
	<!-- .nk-sidebar-element -->
</div>