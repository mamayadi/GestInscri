<!DOCTYPE html>
<html lang="zxx" class="js">

<head>
  <base href="../" />
  <meta charset="utf-8" />
  <meta name="author" content="Softnio" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <meta name="description"
    content="A powerful and conceptual apps base dashboard template that especially build for developers and programmers." />
  <!-- Fav Icon  -->
  <link rel="shortcut icon" href="./images/favicon.png" />
  <!-- Page Title  -->
  <title>Dossier | IPSAS Admin</title>
  <!-- StyleSheets  -->
  <%@ include file="/include/css.jsp" %>
</head>

<body class="nk-body bg-lighter npc-general has-sidebar dark-mode">
  <div class="nk-app-root">
    <!-- main @s -->
    <div class="nk-main">
      <!-- sidebar @s -->
      <%@ include file="/include/menu-ens.jsp" %>
        <!-- sidebar @e -->
        <!-- wrap @s -->
        <div class="nk-wrap">
          <!-- main header @s -->
          <%@ include file="/include/header.jsp" %>
            <!-- main header @e -->
            <!-- content @s -->
            <div class="nk-content">
              <div class="app-content content">
                <div class="content-overlay"></div>
                <div class="content-wrapper">
                  <div class="content-header row"></div>
                  <div class="content-body">
                    <!-- folder View Page -->
                    <section class="invoice-view-wrapper">
                      <div class="row">
                        <!-- Dossier informations -->
                        <div class="col-xl-9 col-md-8 col-12">
                          <div class="card invoice-print-area">
                            <div class="card-content">
                              <div class="card-body pb-0 mx-25">
                                <!-- header section -->
                                <div class="row">
                                  <div class="col-xl-4 col-md-12">
                                    <span class="invoice-number mr-50">Dossier#</span>
                                    <span>000756</span>
                                  </div>
                                  <div class="col-xl-8 col-md-12">
                                    <div class="d-flex align-items-center justify-content-xl-end flex-wrap">
                                      <div class="mr-3">
                                        <small class="text-muted">Date Issue:</small>
                                        <span>08/10/2019</span>
                                      </div>
                                      <div>
                                        <small class="text-muted">Date Due:</small>
                                        <span>08/10/2019</span>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <!-- logo and title -->
                                <div class="row my-3">
                                  <div class="col-9">
                                    <h4 class="text-primary">
                                      Dossier d'inscription
                                    </h4>
                                    <span>Gestion d'inscription IPSAS</span>
                                  </div>
                                  <div class="col-3 d-flex justify-content-center">
                                    <img src="<%=request.getContextPath()%>/images/ipsas/logo-dark.png" alt="logo"
                                      width="164" />
                                  </div>
                                </div>
                                <div class="nk-divider divider md"></div>
                                <!-- invoice address and contact -->
                                <div class="row invoice-info">
                                  <div class="col-6 mt-1">
                                    <h6 class="invoice-from">
                                      Informations personnelles
                                    </h6>
                                    <div class="mb-1">
                                      <span>Candidat Full-Name</span>
                                    </div>
                                    <div class="mb-1">
                                      <span>Candidat E-mail </span>
                                    </div>
                                    <div class="mb-1">
                                      <span>Candidat Adresse</span>
                                    </div>
                                    <div class="mb-1">
                                      <span>+216 44 235 600</span>
                                    </div>
                                  </div>
                                  <div class="col-6 mt-1">
                                    <h6 class="invoice-to">
                                      Documents du dossier#<span>000756</span>
                                    </h6>
                                    <div class="row">
                                      <div class="col-6">
                                        <div class="mb-1">
                                          <span><a href="#" target="_blank">Diplome</a></span>
                                        </div>
                                        <div class="mb-1">
                                          <span><a href="#" target="_blank">Attestation de reussite</a></span>
                                        </div>
                                        <div class="mb-1">
                                          <span><a href="#" target="_blank">Note de Bac</a></span>
                                        </div>
                                        <div class="mb-1">
                                          <span><a href="#" target="_blank">R&eacute;lev&eacute; des notes (
                                              1er ann&eacute;e )
                                            </a></span>
                                        </div>
                                      </div>
                                      <div class="col-6">
                                        <div class="mb-1">
                                          <span><a href="#" target="_blank">R&eacute;lev&eacute; des notes (
                                              2&eacute;me ann&eacute;e )
                                            </a></span>
                                        </div>
                                        <div class="mb-1">
                                          <span><a href="#" target="_blank">R&eacute;lev&eacute; des notes (
                                              3&eacute;me ann&eacute;e )
                                            </a></span>
                                        </div>
                                        <div class="mb-1">
                                          <span><a href="#" target="_blank">Rapport de Stage(s)</a></span>
                                        </div>
                                        <div class="mb-1">
                                          <span><a href="#" target="_blank">Lettre de Recommmandation</a></span>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="nk-divider divider md"></div>
                              </div>
                              <!-- product details table-->
                              <div class="invoice-product-details mx-md-25">
                                <div class="card-body mx-25 py-0">
                                  <form action="#" method="POST">
                                    <div class="row">
                                      <div class="col-2"></div>
                                      <div class="col-8">
                                        <div class="d-flex align-items-center justify-content-around px-5">
                                          <a href="#" class="btn btn-danger"><em
                                              class="icon ni ni-folder-remove"></em><span>Refuser ce dossier</span>
                                          </a>
                                          <div class="dropdown show">
                                            <a href="#" class="btn btn-success" data-toggle="dropdown"
                                              aria-expanded="true"><em
                                                class="icon ni ni-folder-check"></em><span>Accepter ce dossier</span><em
                                                class="icon ni ni-chevron-down"></em></a>
                                            <div class="dropdown-menu dropdown-menu-right dropdown-menu-auto mt-1"
                                              style="
                                              position: absolute;
                                              will-change: transform;
                                              top: 0px;
                                              left: 0px;
                                              transform: translate3d(
                                                -2px,
                                                -164px,
                                                0px
                                              );
                                            " x-placement="top-end">
                                              <ul class="link-list-plain">
                                                <li>
                                                  <a href="#" class="eg-swal-confirm"><em
                                                      class="icon ni ni-check-round-fill"></em>Admis</a>
                                                </li>
                                                <li>
                                                  <a  onclick="show()">
                                                    <em class="icon ni ni-calendar"></em>Programmer un
                                                    R&eacute;union</a>
                                                </li>
                                              </ul>
                                            </div>
                                          </div>
                                        </div>
                                        <div class="col-2"></div>
                                      </div>
                                    </div>
                                  </form>
                                  <div class="nk-divider divider md"></div>
                                </div>
                              </div>
                              <div class="invoice-product-details mx-md-25">
                                <div class="card-body mx-25 py-0" id="Entretien" style="display: none;">
                                  <form action="#" method="POST">
                                    <div class="row">
                                      <div class="col-1"></div>
                                      <div class="col-10 d-flex align-items-center justify-content-around px-5">
                                        <div class="form-group">
                                          <label class="form-label">Datepicker with Icon</label>
                                          <div class="form-control-wrap">
                                            <div class="form-icon form-icon-left">
                                              <em class="icon ni ni-calendar"></em>
                                            </div>
                                            <input type="text" class="form-control date-picker"
                                              data-date-format="yyyy-mm-dd" />
                                          </div>
                                        </div>
                                        <div class="form-group">
                                          <label class="form-label">Timepicker</label>
                                          <div class="form-control-wrap">
                                            <div class="form-icon form-icon-left">
                                              <em class="icon ni ni-clock"></em>
                                            </div>
                                            <input type="text" class="form-control time-picker"
                                              placeholder="Input placeholder" />
                                          </div>
                                        </div>
                                        <button type="submit" class="btn btn-warning mt-2">
                                          <em class="icon ni ni-check"></em><span>Fixer un Entretien</span>
                                        </button>
                                        <div class="form-group"></div>
                                      </div>
                                      <div class="col-1"></div>
                                    </div>
                                  </form>
                                  <div class="nk-divider divider md"></div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                        <!-- Status  -->
                        <div class="col-xl-3 col-md-4 col-12">
                          <div class="card invoice-action-wrapper shadow-none border">
                            <div class="card-body">
                              <div class="invoice-action-btn">
                                <div>
                                  <span class="d-flex justify-content-center">Status de dossier</span>
                                  <h5 class="text-warning d-flex justify-content-center">
                                    En Cours d'Examan
                                  </h5>
                                  <!-- <h5 class="text-success d-flex justify-content-center"> Accept&eacute;</h5>
                                    <h5 class="text-danger d-flex justify-content-center"> Refus</h5> -->
                                </div>
                              </div>
                            </div>
                          </div>
                          <div class="card invoice-action-wrapper shadow-none border">
                            <div class="card-body">
                              <div class="invoice-action-btn">
                                <div>
                                  <span class="d-flex justify-content-center">Status de candidat</span>
                                  <!-- <h5 class="text-warning d-flex justify-content-center"> En Cours d'Examan</h5> -->
                                  <h5 class="text-success d-flex justify-content-center">
                                    Accept&eacute;
                                  </h5>
                                  <!-- <h5 class="text-danger d-flex justify-content-center"> Refus</h5> -->
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </section>
                  </div>
                </div>
              </div>
            </div>
            <!-- content @e -->
            <!-- footer @s -->
            <%@ include file="/include/Footer.jsp" %>
              <!-- footer @e -->
        </div>
        <!-- wrap @e -->
    </div>
    <!-- main @e -->
  </div>
  <!-- app-root @e -->
  <!-- JavaScript -->
  <%@ include file="/include/js.jsp" %>
    <script>
    function show() {
      var x = document.getElementById("Entretien");
      if (x.style.display === "none") {
        x.style.display = "block";
      } 
    }
    </script>
    <script src="<%= request.getContextPath() %>/assets/js/example-sweetalert.js?ver=2.2.0"></script>
    <script
      src="https://cdn.jsdelivr.net/bootstrap.datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css"></script>
    <script src="https://cdn.jsdelivr.net/bootstrap.datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>

</html>