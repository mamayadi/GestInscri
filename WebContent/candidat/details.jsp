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
    <title>Détails | IPSAS Admin</title>
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
                  <div class="nk-block-head nk-block-head-sm">
                    <div class="nk-block-between g-3">
                      <div class="nk-block-head-content">
                        <h3 class="nk-block-title page-title">
                          CANDIDAT :
                          <strong class="text-primary small"
                            >${connectedUser.getFullName() }</strong
                          >
                        </h3>
                        <div class="nk-block-des text-soft">
                          <ul class="list-inline">
                            <li>
                              E-mail :
                              <span class="text-base">
                                ${connectedUser.getMail() }</span
                              >
                            </li>
                            <li>
                              Status du Condidat:
                              <span class="text-info"> Non-Inscri </span>
                            </li>
                            <li>
                              Status du Dossier:
                              <span class="text-warning">
                                En cours d'evaluation
                              </span>
                            </li>
                          </ul>
                        </div>
                      </div>
                    </div>
                  </div>
                  <!-- .nk-block-head -->
                  <div class="nk-block">
                    <div class="card card-bordered">
                      <div class="card-aside-wrap">
                        <div class="card-content">
                          <ul
                            class="nav nav-tabs nav-tabs-mb-icon nav-tabs-card"
                          >
                            <li class="nav-item">
                              <a class="nav-link active" data-toggle="tab" href="#infos"
                                ><em class="icon ni ni-user-circle"></em
                                ><span>Informations personnelles</span></a
                              >
                            </li>
                            <li class="nav-item">
                              <a class="nav-link" data-toggle="tab" href="#docs"
                                ><em class="icon ni ni-file-text"></em
                                ><span>Documents</span></a
                              >
                            </li>
                            <li class="nav-item">
                              <a
                                class="nav-link"
                                data-toggle="tab"
                                href="#acts"
                                ><em class="icon ni ni-bell"></em
                                ><span>Activities</span></a
                              >
                            </li>          
                          </ul>
                          <!-- .nav-tabs -->
                          <div class="tab-content">
                            <div class="tab-pane active card-inner" id="infos">
                              <div class="nk-block">
                                <div class="nk-block-head">
                                  <h5 class="title">
                                    Informations Personelles
                                  </h5>
                                  <p>
                                    Basic info, like your name and address, that
                                    you use on Nio Platform.
                                  </p>
                                </div>
                                <!-- .nk-block-head -->
                                <div class="profile-ud-list">
                                  <div class="profile-ud-item">
                                    <div class="profile-ud wider">
                                      <span class="profile-ud-label"
                                        >Title</span
                                      >
                                      <span class="profile-ud-value">Mr.</span>
                                    </div>
                                  </div>
                                  <div class="profile-ud-item">
                                    <div class="profile-ud wider">
                                      <span class="profile-ud-label"
                                        >Full Name</span
                                      >
                                      <span class="profile-ud-value"
                                        >${connectedUser.getFullName() }</span
                                      >
                                    </div>
                                  </div>
                                  <div class="profile-ud-item">
                                    <div class="profile-ud wider">
                                      <span class="profile-ud-label"
                                        >Date of Birth</span
                                      >
                                      <span class="profile-ud-value"
                                        >10 Aug, 1980</span
                                      >
                                    </div>
                                  </div>
                                  <div class="profile-ud-item">
                                    <div class="profile-ud wider">
                                      <span class="profile-ud-label"
                                        >Surname</span
                                      >
                                      <span class="profile-ud-value">IO</span>
                                    </div>
                                  </div>
                                  <div class="profile-ud-item">
                                    <div class="profile-ud wider">
                                      <span class="profile-ud-label"
                                        >Mobile Number</span
                                      >
                                      <span class="profile-ud-value"
                                        >01713040400</span
                                      >
                                    </div>
                                  </div>
                                  <div class="profile-ud-item">
                                    <div class="profile-ud wider">
                                      <span class="profile-ud-label"
                                        >Email Address</span
                                      >
                                      <span class="profile-ud-value"
                                        >info@softnio.com</span
                                      >
                                    </div>
                                  </div>
                                </div>
                                <!-- .profile-ud-list -->
                              </div>
                              <!-- .nk-block -->
                              <div class="nk-block">
                                <div class="nk-block-head nk-block-head-line">
                                  <h6 class="title overline-title text-base">
                                    Additional Information
                                  </h6>
                                </div>
                                <!-- .nk-block-head -->
                                <div class="profile-ud-list">
                                  <div class="profile-ud-item">
                                    <div class="profile-ud wider">
                                      <span class="profile-ud-label"
                                        >Joining Date</span
                                      >
                                      <span class="profile-ud-value"
                                        >08-16-2018 09:04PM</span
                                      >
                                    </div>
                                  </div>
                                  <div class="profile-ud-item">
                                    <div class="profile-ud wider">
                                      <span class="profile-ud-label"
                                        >Reg Method</span
                                      >
                                      <span class="profile-ud-value"
                                        >Email</span
                                      >
                                    </div>
                                  </div>
                                  <div class="profile-ud-item">
                                    <div class="profile-ud wider">
                                      <span class="profile-ud-label"
                                        >Country</span
                                      >
                                      <span class="profile-ud-value"
                                        >United State</span
                                      >
                                    </div>
                                  </div>
                                  <div class="profile-ud-item">
                                    <div class="profile-ud wider">
                                      <span class="profile-ud-label"
                                        >Nationality</span
                                      >
                                      <span class="profile-ud-value"
                                        >United State</span
                                      >
                                    </div>
                                  </div>
                                </div>
                                <!-- .profile-ud-list -->
                              </div>
                              <!-- .nk-block -->
                              <div class="nk-divider divider md"></div>

                              <!-- .nk-block -->
                            </div>

                            <div class="tab-pane card-inner" id="docs">
                              <div class="nk-block">
                                <div class="nk-block-head">
                                  <h5 class="title">
                                   Documents
                                  </h5>
                                  <p>
                                    Basic info, like your name and address, that
                                    you use on Nio Platform.
                                  </p>
                                </div>
                                
                                <!--Content -->
                                <div class="row gy-3">
                                  <div class="col-md-4">
                                    <div class="form-group">
                                      <label class="form-label" for="customFile"
                                        >Diplome</label
                                      >
                                      <div class="custom-file">
                                        <input
                                          type="file"
                                          multiple
                                          class="custom-file-input"
                                          id="customFile"
                                        />
                                        <label
                                          class="custom-file-label"
                                          for="customFile"
                                          >Choose file</label
                                        >
                                      </div>
                                    </div>
                                  </div>
  
                                  <div class="col-md-4">
                                    <div class="form-group">
                                      <label class="form-label" for="customFile"
                                        >Attestation de reussite</label
                                      >
                                      <div class="custom-file">
                                        <input
                                          type="file"
                                          multiple
                                          class="custom-file-input"
                                          id="customFile"
                                        />
                                        <label
                                          class="custom-file-label"
                                          for="customFile"
                                          >Choose file</label
                                        >
                                      </div>
                                    </div>
                                  </div>
                                  <div class="col-md-4">
                                    <div class="form-group">
                                      <label class="form-label" for="customFile"
                                        >Note Bac</label
                                      >
                                      <div class="custom-file">
                                        <input
                                          type="file"
                                          multiple
                                          class="custom-file-input"
                                          id="customFile"
                                        />
                                        <label
                                          class="custom-file-label"
                                          for="customFile"
                                          >Choose file</label
                                        >
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="nk-divider divider md"></div>
                                <div class="row gy-3">
                                  <div class="col-md-4">
                                    <div class="form-group">
                                      <label class="form-label" for="customFile"
                                        >R&eacute;lev&eacute; des notes ( 1er
                                        ann&eacute;e )</label
                                      >
                                      <div class="custom-file">
                                        <input
                                          type="file"
                                          multiple
                                          class="custom-file-input"
                                          id="customFile"
                                        />
                                        <label
                                          class="custom-file-label"
                                          for="customFile"
                                          >Choose file</label
                                        >
                                      </div>
                                    </div>
                                  </div>
  
                                  <div class="col-md-4">
                                    <div class="form-group">
                                      <label class="form-label" for="customFile"
                                        >R&eacute;lev&eacute; des notes (
                                        2&eacute;me ann&eacute;e )</label
                                      >
                                      <div class="custom-file">
                                        <input
                                          type="file"
                                          multiple
                                          class="custom-file-input"
                                          id="customFile"
                                        />
                                        <label
                                          class="custom-file-label"
                                          for="customFile"
                                          >Choose file</label
                                        >
                                      </div>
                                    </div>
                                  </div>
                                  <div class="col-md-4">
                                    <div class="form-group">
                                      <label class="form-label" for="customFile"
                                        >R&eacute;lev&eacute; des notes (
                                        3&eacute;me ann&eacute;e )</label
                                      >
                                      <div class="custom-file">
                                        <input
                                          type="file"
                                          multiple
                                          class="custom-file-input"
                                          id="customFile"
                                        />
                                        <label
                                          class="custom-file-label"
                                          for="customFile"
                                          >Choose file</label
                                        >
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="nk-divider divider md"></div>
                                <div class="row gy-3">
                                  <div class="col-md-6">
                                    <div class="form-group">
                                      <label class="form-label" for="customFile"
                                        >Rapport de Stage(s)</label
                                      >
                                      <div class="custom-file">
                                        <input
                                          type="file"
                                          multiple
                                          class="custom-file-input"
                                          id="customFile"
                                        />
                                        <label
                                          class="custom-file-label"
                                          for="customFile"
                                          >Choose file</label
                                        >
                                      </div>
                                    </div>
                                  </div>
  
                                  <div class="col-md-6">
                                    <div class="form-group">
                                      <label class="form-label" for="customFile"
                                        >Lettre de Recommmandation</label
                                      >
                                      <div class="custom-file">
                                        <input
                                          type="file"
                                          multiple
                                          class="custom-file-input"
                                          id="customFile"
                                        />
                                        <label
                                          class="custom-file-label"
                                          for="customFile"
                                          >Choose file</label
                                        >
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <!--End Content-->
                                
                              </div>
                              
                              <div class="nk-divider divider md"></div>

                              <!-- .nk-block -->
                            </div>

                            <div class="tab-pane card-inner" id="acts">
                              <div class="nk-block">
                                <div class="nk-block-head">
                                  <h5 class="title">
                                    Activities
                                  </h5>
                                  <p>
                                    Basic info, like your name and address, that
                                    you use on Nio Platform.
                                  </p>
                                </div>
                                <!-- .nk-block-head -->
                                <div class="profile-ud-list">
                                  <div class="profile-ud-item">
                                    <div class="profile-ud wider">
                                      <span class="profile-ud-label"
                                        >Title</span
                                      >
                                      <span class="profile-ud-value">Mr.</span>
                                    </div>
                                  </div>
                                  <div class="profile-ud-item">
                                    <div class="profile-ud wider">
                                      <span class="profile-ud-label"
                                        >Full Name</span
                                      >
                                      <span class="profile-ud-value"
                                        >${connectedUser.getFullName() }</span
                                      >
                                    </div>
                                  </div>
                                  <div class="profile-ud-item">
                                    <div class="profile-ud wider">
                                      <span class="profile-ud-label"
                                        >Date of Birth</span
                                      >
                                      <span class="profile-ud-value"
                                        >10 Aug, 1980</span
                                      >
                                    </div>
                                  </div>
                                  <div class="profile-ud-item">
                                    <div class="profile-ud wider">
                                      <span class="profile-ud-label"
                                        >Surname</span
                                      >
                                      <span class="profile-ud-value">IO</span>
                                    </div>
                                  </div>
                                  <div class="profile-ud-item">
                                    <div class="profile-ud wider">
                                      <span class="profile-ud-label"
                                        >Mobile Number</span
                                      >
                                      <span class="profile-ud-value"
                                        >01713040400</span
                                      >
                                    </div>
                                  </div>
                                  <div class="profile-ud-item">
                                    <div class="profile-ud wider">
                                      <span class="profile-ud-label"
                                        >Email Address</span
                                      >
                                      <span class="profile-ud-value"
                                        >info@softnio.com</span
                                      >
                                    </div>
                                  </div>
                                </div>
                                <!-- .profile-ud-list -->
                              </div>
                              <!-- .nk-block -->
                              <div class="nk-block">
                                <div class="nk-block-head nk-block-head-line">
                                  <h6 class="title overline-title text-base">
                                    Additional Information
                                  </h6>
                                </div>
                                <!-- .nk-block-head -->
                                <div class="profile-ud-list">
                                  <div class="profile-ud-item">
                                    <div class="profile-ud wider">
                                      <span class="profile-ud-label"
                                        >Joining Date</span
                                      >
                                      <span class="profile-ud-value"
                                        >08-16-2018 09:04PM</span
                                      >
                                    </div>
                                  </div>
                                  <div class="profile-ud-item">
                                    <div class="profile-ud wider">
                                      <span class="profile-ud-label"
                                        >Reg Method</span
                                      >
                                      <span class="profile-ud-value"
                                        >Email</span
                                      >
                                    </div>
                                  </div>
                                  <div class="profile-ud-item">
                                    <div class="profile-ud wider">
                                      <span class="profile-ud-label"
                                        >Country</span
                                      >
                                      <span class="profile-ud-value"
                                        >United State</span
                                      >
                                    </div>
                                  </div>
                                  <div class="profile-ud-item">
                                    <div class="profile-ud wider">
                                      <span class="profile-ud-label"
                                        >Nationality</span
                                      >
                                      <span class="profile-ud-value"
                                        >United State</span
                                      >
                                    </div>
                                  </div>
                                </div>
                                <!-- .profile-ud-list -->
                              </div>
                              <!-- .nk-block -->
                              <div class="nk-divider divider md"></div>

                              <!-- .nk-block -->
                            </div>
                          </div>
                          <!-- .card-inner -->
                        </div>
                        <!-- .card-content -->
                        <!-- <div
                          class="card-aside card-aside-right user-aside toggle-slide toggle-slide-right toggle-break-xxl"
                          data-content="userAside"
                          data-toggle-screen="xxl"
                          data-toggle-overlay="true"
                          data-toggle-body="true"
                        >
                          <div class="card-inner-group" data-simplebar>
                            <div class="card-inner">
                              <div class="user-card user-card-s2">
                                <div class="user-avatar lg bg-primary">
                                  <span>AB</span>
                                </div>
                                <div class="user-info">
                                  <div
                                    class="badge badge-outline-light badge-pill ucap"
                                  >
                                    Investor
                                  </div>
                                  <h5>Abu Bin Ishtiyak</h5>
                                  <span class="sub-text">info@softnio.com</span>
                                </div>
                              </div>
                            </div>
                            
                            <div class="card-inner card-inner-sm">
                              <ul class="btn-toolbar justify-center gx-1">
                                <li>
                                  <a href="#" class="btn btn-trigger btn-icon"
                                    ><em class="icon ni ni-shield-off"></em
                                  ></a>
                                </li>
                                <li>
                                  <a href="#" class="btn btn-trigger btn-icon"
                                    ><em class="icon ni ni-mail"></em
                                  ></a>
                                </li>
                                <li>
                                  <a href="#" class="btn btn-trigger btn-icon"
                                    ><em class="icon ni ni-download-cloud"></em
                                  ></a>
                                </li>
                                <li>
                                  <a href="#" class="btn btn-trigger btn-icon"
                                    ><em class="icon ni ni-bookmark"></em
                                  ></a>
                                </li>
                                <li>
                                  <a
                                    href="#"
                                    class="btn btn-trigger btn-icon text-danger"
                                    ><em class="icon ni ni-na"></em
                                  ></a>
                                </li>
                              </ul>
                            </div>
                            <!-- .card-inner 
                            <div class="card-inner">
                              <div class="overline-title-alt mb-2">
                                In Account
                              </div>
                              <div class="profile-balance">
                                <div class="profile-balance-group gx-4">
                                  <div class="profile-balance-sub">
                                    <div class="profile-balance-amount">
                                      <div class="number">
                                        2,500.00
                                        <small class="currency currency-usd"
                                          >USD</small
                                        >
                                      </div>
                                    </div>
                                    <div class="profile-balance-subtitle">
                                      Invested Amount
                                    </div>
                                  </div>
                                  <div class="profile-balance-sub">
                                    <span class="profile-balance-plus text-soft"
                                      ><em class="icon ni ni-plus"></em
                                    ></span>
                                    <div class="profile-balance-amount">
                                      <div class="number">1,643.76</div>
                                    </div>
                                    <div class="profile-balance-subtitle">
                                      Profit Earned
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <!-- .card-inner 
                            <div class="card-inner">
                              <div class="row text-center">
                                <div class="col-4">
                                  <div class="profile-stats">
                                    <span class="amount">23</span>
                                    <span class="sub-text">Total Order</span>
                                  </div>
                                </div>
                                <div class="col-4">
                                  <div class="profile-stats">
                                    <span class="amount">20</span>
                                    <span class="sub-text">Complete</span>
                                  </div>
                                </div>
                                <div class="col-4">
                                  <div class="profile-stats">
                                    <span class="amount">3</span>
                                    <span class="sub-text">Progress</span>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <!-- .card-inner 
                            <div class="card-inner">
                              <h6 class="overline-title-alt mb-2">
                                Additional
                              </h6>
                              <div class="row g-3">
                                <div class="col-6">
                                  <span class="sub-text">User ID:</span>
                                  <span>UD003054</span>
                                </div>
                                <div class="col-6">
                                  <span class="sub-text">Last Login:</span>
                                  <span>15 Feb, 2019 01:02 PM</span>
                                </div>
                                <div class="col-6">
                                  <span class="sub-text">KYC Status:</span>
                                  <span class="lead-text text-success"
                                    >Approved</span
                                  >
                                </div>
                                <div class="col-6">
                                  <span class="sub-text">Register At:</span>
                                  <span>Nov 24, 2019</span>
                                </div>
                              </div>
                            </div>
                            <!-- .card-inner 
                            <div class="card-inner">
                              <h6 class="overline-title-alt mb-3">Groups</h6>
                              <ul class="g-1">
                                <li class="btn-group">
                                  <a
                                    class="btn btn-xs btn-light btn-dim"
                                    href="#"
                                    >investor</a
                                  >
                                  <a
                                    class="btn btn-xs btn-icon btn-light btn-dim"
                                    href="#"
                                    ><em class="icon ni ni-cross"></em
                                  ></a>
                                </li>
                                <li class="btn-group">
                                  <a
                                    class="btn btn-xs btn-light btn-dim"
                                    href="#"
                                    >support</a
                                  >
                                  <a
                                    class="btn btn-xs btn-icon btn-light btn-dim"
                                    href="#"
                                    ><em class="icon ni ni-cross"></em
                                  ></a>
                                </li>
                                <li class="btn-group">
                                  <a
                                    class="btn btn-xs btn-light btn-dim"
                                    href="#"
                                    >another tag</a
                                  >
                                  <a
                                    class="btn btn-xs btn-icon btn-light btn-dim"
                                    href="#"
                                    ><em class="icon ni ni-cross"></em
                                  ></a>
                                </li>
                              </ul>
                            </div>
                            <!-- .card-inner 
                          </div>
                          <!-- .card-inner 
                        </div> -->
                        <!-- .card-aside -->
                      </div>
                      <!-- .card-aside-wrap -->
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
