<!DOCTYPE html>
<html lang="zxx" class="js">
  <head>
    <base href="../" />
    <meta charset="utf-8" />
    <meta name="author" content="Softnio" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <meta
      name="description"
      content="A powerful and conceptual apps base dashboard template that especially build for developers and programmers."
    />
    <!-- Fav Icon  -->
    <link rel="shortcut icon" href="./images/favicon.png" />
    <!-- Page Title  -->
    <title>Dossier | IPSAS Admin</title>
    <!-- StyleSheets  -->
    <%@ include file="/include/css.jsp"%>
  </head>

  <body class="nk-body bg-lighter npc-general has-sidebar dark-mode">
    <div class="nk-app-root">
      <!-- main @s -->
      <div class="nk-main">
        <!-- sidebar @s -->
        <%@ include file="/include/menu-admin.jsp"%>
        <!-- sidebar @e -->
        <!-- wrap @s -->
        <div class="nk-wrap">
          <!-- main header @s -->
          <%@ include file="/include/header.jsp"%>
          <!-- main header @e -->
          <!-- content @s -->
          <div class="nk-content">
            <div class="app-content content">
              <div class="content-overlay"></div>
              <div class="content-wrapper">
                <div class="content-header row"></div>
                <div class="content-body">
                  <!-- app invoice View Page -->
                  <section class="invoice-view-wrapper">
                    <div class="row">
                      <!-- invoice view page -->
                      <div class="col-xl-9 col-md-8 col-12">
                        <div class="card invoice-print-area">
                          <div class="card-content">
                            <div class="card-body pb-0 mx-25">
                              <!-- header section -->
                              <div class="row">
                                <div class="col-xl-4 col-md-12">
                                  <span class="invoice-number mr-50"
                                    >Dossier#</span
                                  >
                                  <span>000756</span>
                                </div>
                                <div class="col-xl-8 col-md-12">
                                  <div
                                    class="d-flex align-items-center justify-content-xl-end flex-wrap"
                                  >
                                    <div class="mr-3">
                                      <small class="text-muted"
                                        >Date Issue:</small
                                      >
                                      <span>08/10/2019</span>
                                    </div>
                                    <div>
                                      <small class="text-muted"
                                        >Date Due:</small
                                      >
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
                                <div
                                  class="col-3 d-flex justify-content-center"
                                >
                                  <img
                                    src="<%=request.getContextPath()%>/images/ipsas/logo-dark.png"
                                    alt="logo"
                                    width="164"
                                  />
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
                                        <span
                                          ><a href="#" target="_blank"
                                            >Diplome</a
                                          ></span
                                        >
                                      </div>
                                      <div class="mb-1">
                                        <span
                                          ><a href="#" target="_blank"
                                            >Attestation de reussite</a
                                          ></span
                                        >
                                      </div>
                                      <div class="mb-1">
                                        <span
                                          ><a href="#" target="_blank"
                                            >Note de Bac</a
                                          ></span
                                        >
                                      </div>
                                      <div class="mb-1">
                                        <span
                                          ><a href="#" target="_blank"
                                            >R&eacute;lev&eacute; des notes (
                                            1er ann&eacute;e )
                                          </a></span
                                        >
                                      </div>
                                    </div>
                                    <div class="col-6">
                                      <div class="mb-1">
                                        <span
                                          ><a href="#" target="_blank"
                                            >R&eacute;lev&eacute; des notes (
                                            2&eacute;me ann&eacute;e )
                                          </a></span
                                        >
                                      </div>
                                      <div class="mb-1">
                                        <span
                                          ><a href="#" target="_blank"
                                            >R&eacute;lev&eacute; des notes (
                                            3&eacute;me ann&eacute;e )
                                          </a></span
                                        >
                                      </div>
                                      <div class="mb-1">
                                        <span
                                          ><a href="#" target="_blank"
                                            >Rapport de Stage(s)</a
                                          ></span
                                        >
                                      </div>
                                      <div class="mb-1">
                                        <span
                                          ><a href="#" target="_blank"
                                            >Lettre de Recommmandation</a
                                          ></span
                                        >
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="nk-divider divider md"></div>
                            </div>
                            <!-- product details table-->
                            <div
                              class="invoice-product-details table-responsive mx-md-25"
                            >
                            <div class="card-body pb-0 mx-25">
                              <form action="#" method="POST">
                                <div
                                  class="d-flex align-items-center justify-content-center"
                                >
                                  <span
                                    >Affect&eacute; ce dossier &aacute;</span
                                  >

                                  <div class="col-4">
                                    <div class="form-group">
                                      <div class="form-control-wrap">
                                        <select
                                          class="form-select"
                                          data-search="on"
                                        >
                                          <option>Enseignat name 1</option>
                                          <option>Enseignat name 2</option>
                                          <option>Enseignat name 3</option>
                                          <option>Enseignat name 4</option>
                                        </select>
                                      </div>
                                    </div>
                                  </div>
                                  <button
                                    class="btn btn-secondary"
                                    type="submit"
                                  >
                                    Affecter
                                  </button>
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
                        <div
                          class="card invoice-action-wrapper shadow-none border"
                        >
                          <div class="card-body">
                            <div class="invoice-action-btn">
                              <div>
                                <span class="d-flex justify-content-center"
                                  >Status de dossier</span
                                >
                                <h5
                                  class="text-warning d-flex justify-content-center"
                                >
                                  En Cours d'Examan
                                </h5>
                                <!-- <h5 class="text-success d-flex justify-content-center"> Accept&eacute;</h5>
                                    <h5 class="text-danger d-flex justify-content-center"> Refus</h5> -->
                              </div>
                            </div>
                          </div>
                        </div>
                        <div
                          class="card invoice-action-wrapper shadow-none border"
                        >
                          <div class="card-body">
                            <div class="invoice-action-btn">
                              <div>
                                <span class="d-flex justify-content-center"
                                  >Status de candidat</span
                                >
                                <!-- <h5 class="text-warning d-flex justify-content-center"> En Cours d'Examan</h5> -->
                                <h5
                                  class="text-success d-flex justify-content-center"
                                >
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
