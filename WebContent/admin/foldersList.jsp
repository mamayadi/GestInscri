<%@page import="java.util.List"%>
<%@page import="gestInscri.models.entity.Candidat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="gestInscri.models.entity.*"%>
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
<title>Folders List | IPSAS Admin</title>
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
								<div class="nk-block-head nk-block-head-sm">
									<div class="nk-block-between">
										<div class="nk-block-head-content">
											<h3 class="nk-block-title page-title">Liste des dossiers</h3>
										</div>
										<!-- .nk-block-head-content -->
										<div class="nk-block-head-content">
											<a href="#" class="btn btn-icon btn-primary d-md-none"><em
												class="icon ni ni-plus"></em></a>
										</div>
										<!-- .nk-block-head-content -->
									</div>
									<!-- .nk-block-between -->
								</div>
								<!-- .nk-block-head -->
								<div class="nk-block">
									<div class="card card-stretch">
										<div class="card-inner-group">
											<div class="card-inner">
												<div class="card-title-group">
													<div class="card-title">
														<h5 class="title">Tous les dossiers</h5>
													</div>
													<div class="card-tools mr-n1">
														<ul class="btn-toolbar gx-1">
															<li><a href="#"
																class="search-toggle toggle-search btn btn-icon"
																data-target="search"><em class="icon ni ni-search"></em></a>
															</li>
															<!-- li -->
															<li class="btn-toolbar-sep"></li>
															<!-- li -->
															<li>
																<div class="dropdown">
																	<a href="#"
																		class="btn btn-trigger btn-icon dropdown-toggle"
																		data-toggle="dropdown">
																		<div class="badge badge-circle badge-primary">4</div>
																		<em class="icon ni ni-filter-alt"></em>
																	</a>
																	<div
																		class="filter-wg dropdown-menu dropdown-menu-xl dropdown-menu-right">
																		<div class="dropdown-head">
																			<span class="sub-title dropdown-title">Advance
																				Filter</span>
																			<div class="dropdown">
																				<a href="#" class="link link-light"> <em
																					class="icon ni ni-more-h"></em>
																				</a>
																			</div>
																		</div>
																		<div class="dropdown-body dropdown-body-rg">
																			<div class="row gx-6 gy-4">
																				<div class="col-6">
																					<div class="form-group">
																						<label class="overline-title overline-title-alt">Type</label>
																						<select class="form-select form-select-sm">
																							<option value="any">Any Type</option>
																							<option value="deposit">Deposit</option>
																							<option value="buy">Buy Coin</option>
																							<option value="sell">Sell Coin</option>
																							<option value="transfer">Transfer</option>
																							<option value="withdraw">Withdraw</option>
																						</select>
																					</div>
																				</div>
																				<div class="col-6">
																					<div class="form-group">
																						<label class="overline-title overline-title-alt">Status</label>
																						<select class="form-select form-select-sm">
																							<option value="any">Any Status</option>
																							<option value="pending">Pending</option>
																							<option value="cancel">Cancel</option>
																							<option value="process">Process</option>
																							<option value="completed">Completed</option>
																						</select>
																					</div>
																				</div>
																				<div class="col-6">
																					<div class="form-group">
																						<label class="overline-title overline-title-alt">Pay
																							Currency</label> <select
																							class="form-select form-select-sm">
																							<option value="any">Any Coin</option>
																							<option value="bitcoin">Bitcoin</option>
																							<option value="ethereum">Ethereum</option>
																							<option value="litecoin">Litecoin</option>
																						</select>
																					</div>
																				</div>
																				<div class="col-6">
																					<div class="form-group">
																						<label class="overline-title overline-title-alt">Method</label>
																						<select class="form-select form-select-sm">
																							<option value="any">Any Method</option>
																							<option value="paypal">PayPal</option>
																							<option value="bank">Bank</option>
																						</select>
																					</div>
																				</div>
																				<div class="col-6">
																					<div class="form-group">
																						<div
																							class="custom-control custom-control-sm custom-checkbox">
																							<input type="checkbox"
																								class="custom-control-input" id="includeDel">
																							<label class="custom-control-label"
																								for="includeDel"> Including Deleted</label>
																						</div>
																					</div>
																				</div>
																				<div class="col-12">
																					<div class="form-group">
																						<button type="button" class="btn btn-secondary">Filter</button>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="dropdown-foot between">
																			<a class="clickable" href="#">Reset Filter</a> <a
																				href="#savedFilter" data-toggle="modal">Save
																				Filter</a>
																		</div>
																	</div>
																	<!-- .filter-wg -->
																</div> <!-- .dropdown -->
															</li>
															<!-- li -->
															<li>
																<div class="dropdown">
																	<a href="#"
																		class="btn btn-trigger btn-icon dropdown-toggle"
																		data-toggle="dropdown"> <em
																		class="icon ni ni-setting"></em>
																	</a>
																	<div
																		class="dropdown-menu dropdown-menu-xs dropdown-menu-right">
																		<ul class="link-check">
																			<li><span>Show</span></li>
																			<li class="active"><a href="#">10</a></li>
																			<li><a href="#">20</a></li>
																			<li><a href="#">50</a></li>
																		</ul>
																		<ul class="link-check">
																			<li><span>Order</span></li>
																			<li class="active"><a href="#">DESC</a></li>
																			<li><a href="#">ASC</a></li>
																		</ul>
																	</div>
																</div> <!-- .dropdown -->
															</li>
															<!-- li -->
														</ul>
														<!-- .btn-toolbar -->
													</div>
													<!-- .card-tools -->
													<div class="card-search search-wrap" data-search="search">
														<div class="search-content">
															<a href="#"
																class="search-back btn btn-icon toggle-search"
																data-target="search"><em
																class="icon ni ni-arrow-left"></em></a> <input type="text"
																class="form-control border-transparent form-focus-none"
																placeholder="Quick search by transaction">
															<button class="search-submit btn btn-icon">
																<em class="icon ni ni-search"></em>
															</button>
														</div>
													</div>
													<!-- .card-search -->
												</div>
												<!-- .card-title-group -->
											</div>
											<!-- .card-inner -->
											<div class="card-inner p-0">
												<div class="nk-tb-list nk-tb-tnx">
													<div class="nk-tb-item nk-tb-head">
														<div class="nk-tb-col nk-tb-col-check">
															<div
																class="custom-control custom-control-sm custom-checkbox notext">
																<input type="checkbox" class="custom-control-input"
																	id="uid"> <label class="custom-control-label"
																	for="uid"></label>
															</div>
														</div>
														<div class="nk-tb-col">
															<span>#Id</span>
														</div>
														<div class="nk-tb-col tb-col-md">
															<span>Nom & Pr�nom</span>
														</div>

														<div class="nk-tb-col tb-col-sm">
															<span>E-mail</span>
														</div>
														<div class="nk-tb-col tb-col-md">
															<span>Date d�pos</span>
														</div>
														<div class="nk-tb-col tb-col-sm">
															<span>Status</span>
														</div>
														<div class="nk-tb-col nk-tb-col-tools">
															<ul class="nk-tb-actions gx-1 my-n1">
																<li>Actions</li>
															</ul>
														</div>
													</div>
													<!-- .nk-tb-item -->
													<c:forEach var="candidat" items="${candidatList}"
														varStatus="index">
														<div class="nk-tb-item">
															<div class="nk-tb-col nk-tb-col-check">
																<div
																	class="custom-control custom-control-sm custom-checkbox notext">
																	<input type="checkbox" class="custom-control-input"
																		id="uid1"> <label class="custom-control-label"
																		for="uid1"></label>
																</div>
															</div>															
															<div class="nk-tb-col">
																<span class="tb-lead">
																	<a href="<%=request.getContextPath()%>/admin/folderDetails.jsp?id=${candidat.getId()}">																
																	#000${candidat.getId()}
																</a></span>
															</div>
															<div class="nk-tb-col tb-col-md">
																<span class="tb-sub">${candidat.getUser().getFullName() }</span>
															</div>

															<div class="nk-tb-col tb-col-sm">
																<span class="tb-sub">${candidat.getUser().getMail() }</span>
															</div>
															<div class="nk-tb-col tb-col-md">
																<span class="tb-sub text-primary">01-01-2021</span>
															</div>
															<div class="nk-tb-col">
																<c:choose>
																	<c:when test="${candidat.getStatus() !=null}">
																		<span class="badge badge-warning">${candidat.getStatus()}</span>
																	</c:when>
																	<c:otherwise>
																		<span class="badge badge-gray">-</span>
																	</c:otherwise>
																</c:choose>
																<!--  <span class="dot bg-warning d-mb-none"></span> <span
																	class="badge badge-sm badge-dot has-bg badge-warning d-none d-mb-inline-flex">On
																	Hold</span>-->
															</div>
															<div class="nk-tb-col nk-tb-col-tools">
																<ul class="nk-tb-actions gx-1">
																	<li class=""><a href="#"
																		class="btn btn-icon btn-trigger btn-tooltip"
																		title="Consulter le dossier" data-toggle="dropdown">
																			<em class="icon ni ni-eye"></em>
																	</a></li>
																	<li>
																		<div class="drodown mr-n1">
																			<a href="#"
																				class="dropdown-toggle btn btn-icon btn-trigger"
																				data-toggle="dropdown"><em
																				class="icon ni ni-more-h"></em></a>
																			<div class="dropdown-menu dropdown-menu-right">
																				<ul class="link-list-opt no-bdr">
																					<li><a href="<%=request.getContextPath()%>/admin/folderDetails.jsp"><em
																							class="icon ni ni-user-add"></em><span>Affecter
																								un enseignant</span></a></li>
																					<!-- <li><a href="<%=request.getContextPath()%>/admin/"><em
																							class="icon ni ni-opt-dot-alt"></em><span>Modifier</span></a></li> -->
																					<li><a href="<%=request.getContextPath()%>/admin/"><em
																							class="icon ni ni-trash"></em><span>Supprimer</span></a></li>
																				</ul>
																			</div>
																		</div>
																	</li>
																</ul>
															</div>
														</div>
													</c:forEach>
													<!-- .nk-tb-item -->
													<!-- .nk-tb-item -->
												</div>
												<!-- .nk-tb-list -->
											</div>
											<!-- .card-inner -->
											<div class="card-inner">
												<ul
													class="pagination justify-content-center justify-content-md-start">
													<li class="page-item"><a class="page-link" href="#">Prev</a></li>
													<li class="page-item"><a class="page-link" href="#">1</a></li>
													<li class="page-item"><a class="page-link" href="#">2</a></li>
													<li class="page-item"><span class="page-link"><em
															class="icon ni ni-more-h"></em></span></li>
													<li class="page-item"><a class="page-link" href="#">6</a></li>
													<li class="page-item"><a class="page-link" href="#">7</a></li>
													<li class="page-item"><a class="page-link" href="#">Next</a></li>
												</ul>
											</div>
											<!-- .card-inner -->
										</div>
										<!-- .card-inner-group -->
									</div>
									<!-- .card -->
								</div>
								<!-- .nk-block -->
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
</body>

</html>