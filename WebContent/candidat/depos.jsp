 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
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
    <title>Depos de dossier | IPSAS Admin</title>
    <!-- StyleSheets  -->
    <%@ include file="/include/css.jsp"%>
  </head>

  <body class="nk-body bg-lighter npc-general has-sidebar dark-mode">
    <div class="nk-app-root">
      <!-- main @s -->
      <div class="nk-main">
        <!-- sidebar @s -->
        <!-- <--%@ include file="/include/menu.jsp"%> -->
        <!-- sidebar @e -->
        <!-- wrap @s -->
        <div class="nk-wrap">
          <!-- main header @s -->
          <%@ include file="/include/header.jsp"%>
          <!-- main header @e -->
          <!-- content @s -->
          <div class="nk-content">
            <div class="container-fluid">
              <div class="nk-content-inner">
                <div class="nk-content-body">
                  <div class="components-preview wide-md mx-auto">
                    <div class="nk-block-head nk-block-head-lg wide-sm">
                      <div class="nk-block-head-content">
                        <h2 class="nk-block-title fw-normal">Inscription</h2>
                        <div class="nk-block-des">
                          <p class="lead">
                            Application pour la gestion des inscription.
                          </p>
                        </div>
                      </div>
                    </div>
                    <!-- .nk-block-head -->
                    <div class="nk-block nk-block-lg">
                      <div class="nk-block-head">
                        <!-- <div class="nk-block-head-content">
                          <h4 class="title nk-block-title">
                            Wizard Form - Basic
                          </h4>
                          <div class="nk-block-des">
                            <p>A basic demostration of wizard form.</p>
                          </div>
                        </div> -->
                      </div>
                      <div class="card card-bordered">
                        <div class="card-inner">
                          <form
                          id="deposForm"
                          method="POST"
                          enctype='multipart/form-data'
                            action='/GestInscri/deposController'
                            
                            class="nk-wizard nk-wizard-simple is-alter"
                          >
                            <div class="nk-wizard-head">
                              <h5>Information personnelle</h5>
                            </div>
                             <div class="nk-wizard-content"> 
                              <div class="row gy-3">
                                <div class="col-md-6">
                                  <div class="form-group">
                                    <label
                                      class="form-label"
                                      for="nom"
                                      >Nom</label
                                    >
                                    <div class="form-control-wrap">
                                      <input
                                        type="text"
                                        data-msg="Required"
                                        class="form-control required"
                                        id="nom"
                                        name="nom"
                                        value="${connectedCandidat.getUser().getNom()}"
                                        required
                                      />
                                    </div>
                                  </div>
                                </div>
                                <div class="col-md-6">
                                  <div class="form-group">
                                    <label class="form-label" for="prenom"
                                      >Pr&eacute;nom</label
                                    >
                                    <div class="form-control-wrap">
                                      <input
                                        type="text"
                                        data-msg="Required"
                                        class="form-control required"
                                        id="prenom"
                                        name="prenom"
                                        value="${connectedCandidat.getUser().getPrenom()}"
                                        required
                                      />
                                    </div>
                                  </div>
                                </div>
                                <div class="col-md-6">
                                  <div class="form-group">
                                    <label
                                      class="form-label"
                                      for="email"
                                      >Adresse email
                                    </label>
                                    <div class="form-control-wrap">
                                      <input
                                        type="text"
                                        data-msg="Required"
                                        data-msg-email="Wrong Email"
                                        class="form-control required email"
                                        id="email"
                                        name="email"
                                        value="${connectedCandidat.getUser().getMail()}"
                                        required
                                        disabled
                                      />
                                    </div>
                                  </div>
                                </div>
                                <div class="col-md-6">
                                  <div class="form-group">
                                    <label
                                      class="form-label"
                                      for="adresse"
                                      >Adresse
                                    </label>
                                    <div class="form-control-wrap">
                                      <input
                                        type="text"
                                        data-msg="Required"
                                        class="form-control required"
                                        id="adresse"
                                        name="adresse"
                                        value="${connectedCandidat.getAdresse()}"
                                        required
                                      />
                                    </div>
                                  </div>
                                </div>
                                <!-- 
                                <div class="col-md-6">
                                  <div class="form-group">
                                    <label
                                      class="form-label"
                                      for="fw-nationality"
                                      >Pays</label
                                    >
                                    <div class="form-control-wrap">
                                      <div class="form-control-select">
                                        <select
                                          class="form-control required"
                                          data-msg="Required"
                                          id="fw-nationality"
                                          name="fw-nationality"
                                          required
                                        >
                                          <option value="tn">Tunisia</option>
                                          <option value="us">
                                            United State
                                          </option>
                                          <option value="uk">
                                            United KingDom
                                          </option>
                                          <option value="fr">France</option>
                                          <option value="ch">China</option>
                                          <option value="cr">
                                            Czech Republic
                                          </option>
                                          <option value="cb">Colombia</option>
                                        </select>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                -->
                                <!-- .col -->
                              </div>
                            </div> 
                            <div class="nk-wizard-head">
                              <h5>Documents Pedagogiques</h5>
                            </div>
                            <div class="nk-wizard-content">
                              <!-- .row -->
                              <div class="row gy-3">
                                <div class="col-md-4">
                                  <div class="form-group">
                                    <label class="form-label" for="diplome"
                                      >Diplome</label
                                    >
                                    <div class="custom-file">
                                      <input
                                        type="file"
                                        class="custom-file-input"
                                        id="diplome"
                                        name="diplome"
                                      />
                                      <label
                                        class="custom-file-label"
                                        for="diplome"
                                        >Choisir un fichier</label
                                      >
                                    </div>
                                  </div>
                                </div>

                                <div class="col-md-4">
                                  <div class="form-group">
                                    <label class="form-label" for="attestationreussite"
                                      >Attestation de reussite</label
                                    >
                                    <div class="custom-file">
                                      <input
                                        type="file"
                                        class="custom-file-input"
                                        id="attestationreussite"
                                        name="attestationreussite"
                                      />
                                      <label
                                        class="custom-file-label"
                                        for="attestationreussite"
                                        >Choisir un fichier</label
                                      >
                                    </div>
                                  </div>
                                </div>
                                <div class="col-md-4">
                                  <div class="form-group">
                                    <label class="form-label" for="noteBac"
                                      >Note Bac</label
                                    >
                                    <div class="custom-file">
                                      <input
                                        type="file"
                                        class="custom-file-input"
                                        id="noteBac"
                                        name="noteBac"
                                      />
                                      <label
                                        class="custom-file-label"
                                        for="noteBac"
                                        >Choisir un fichier</label
                                      >
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="nk-divider divider md"></div>
                              <div class="row gy-3">
                                <div class="col-md-4">
                                  <div class="form-group">
                                    <label class="form-label" for="premiereAnnee"
                                      >R&eacute;lev&eacute; des notes ( 1er
                                      ann&eacute;e )</label
                                    >
                                    <div class="custom-file">
                                      <input
                                        type="file"
                                        class="custom-file-input"
                                        id="premiereAnnee"
                                        name="premiereAnnee"
                                      />
                                      <label
                                        class="custom-file-label"
                                        for="premiereAnnee"
                                        >Choisir un fichier</label
                                      >
                                    </div>
                                  </div>
                                </div>

                                <div class="col-md-4">
                                  <div class="form-group">
                                    <label class="form-label" for="deuxiemeAnnee"
                                      >R&eacute;lev&eacute; des notes (
                                      2&eacute;me ann&eacute;e )</label
                                    >
                                    <div class="custom-file">
                                      <input
                                        type="file"
                                        class="custom-file-input"
                                        id="deuxiemeAnnee"
                                        name="deuxiemeAnnee"
                                      />
                                      <label
                                        class="custom-file-label"
                                        for="deuxiemeAnnee"
                                        >Choisir un fichier</label
                                      >
                                    </div>
                                  </div>
                                </div>
                                <div class="col-md-4">
                                  <div class="form-group">
                                    <label class="form-label" for="troisiemeAnnee"
                                      >R&eacute;lev&eacute; des notes (
                                      3&eacute;me ann&eacute;e )</label
                                    >
                                    <div class="custom-file">
                                      <input
                                        type="file"
                                        class="custom-file-input"
                                        id="troisiemeAnnee"
                                        name="troisiemeAnnee"
                                      />
                                      <label
                                        class="custom-file-label"
                                        for="troisiemeAnnee"
                                        >Choisir un fichier</label
                                      >
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="nk-divider divider md"></div>
                              <div class="row gy-3">
                                <div class="col-md-6">
                                  <div class="form-group">
                                    <label class="form-label" for="rapportStage"
                                      >Rapport de Stage(s)</label
                                    >
                                    <div class="custom-file">
                                      <input
                                        type="file"
                                        multiple
                                        class="custom-file-input"
                                        id="rapportStage"
                                        name="rapportStage"
                                      />
                                      <label
                                        class="custom-file-label"
                                        for="rapportStage"
                                        >Choisir un fichier</label
                                      >
                                    </div>
                                  </div>
                                </div>
                                <div class="col-md-6">
                                  <div class="form-group">
                                    <label class="form-label" for="lettreRecommandation"
                                      >Lettre de Recommmandation</label
                                    >
                                    <div class="custom-file">
                                      <input
                                        type="file"
                                        multiple
                                        class="custom-file-input"
                                        id="lettreRecommandation"
                                        name="lettreRecommandation"
                                      />
                                      <label
                                        class="custom-file-label"
                                        for="lettreRecommandation"
                                        >Choisir un fichier</label
                                      >
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <!-- .row -->
                            </div>
                          </form>
                        </div>
                      </div>
                    </div>
                    <!-- .nk-block -->
                  </div>
                  <!-- .components-preview -->
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
