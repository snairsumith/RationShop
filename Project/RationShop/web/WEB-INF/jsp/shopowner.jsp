<%-- 
    Document   : shopowner
    Created on : Aug 29, 2018, 3:07:53 AM
    Author     : MinusBugspc1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <link rel="stylesheet" href="../resources/lib/fontawesome/css/font-awesome.css">
<!--  <link href="../resources/css/quirk.css" rel="stylesheet" type="text/css"/>-->
  <spring:url value="/resources/css/quirk.css" var="rationCss" />
  <spring:url value="/resources/lib/modernizr/modernizr.js" var="rationJS"/>
   <spring:url value="/resources/lib/modernizr/modernizr.js" var="rationJS"/>
  <link href="${rationCss}" rel="stylesheet" />
  <script src="${rationJS}"></script>
    </head>
    <body>
        

  <header>
    <div class="headerpanel">

      <div class="logopanel">
        <h2><a href="index-2.html">Quirk</a></h2>
      </div><!-- logopanel -->

      <div class="headerbar">

        <a id="menuToggle" class="menutoggle"><i class="fa fa-bars"></i></a>

        <div class="searchpanel">
          <div class="input-group">
            <input type="text" class="form-control" placeholder="Search for...">
            <span class="input-group-btn">
              <button class="btn btn-default" type="button"><i class="fa fa-search"></i></button>
            </span>
          </div><!-- input-group -->
        </div>

        <div class="header-right">
        <ul class="headermenu">
          <li>
            <div id="noticePanel" class="btn-group">
              <button class="btn btn-notice alert-notice" data-toggle="dropdown">
                <i class="fa fa-globe"></i>
              </button>
              <div id="noticeDropdown" class="dropdown-menu dm-notice pull-right">
                <div role="tabpanel">
                  <!-- Nav tabs -->
                  <ul class="nav nav-tabs nav-justified" role="tablist">
                    <li class="active"><a data-target="#notification" data-toggle="tab">Notifications (2)</a></li>
                    <li><a data-target="#reminders" data-toggle="tab">Reminders (4)</a></li>
                  </ul>

                  <!-- Tab panes -->
                  <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="notification">
                      <ul class="list-group notice-list">
                        <li class="list-group-item unread">
                          <div class="row">
                            <div class="col-xs-2">
                              <i class="fa fa-envelope"></i>
                            </div>
                            <div class="col-xs-10">
                              <h5><a href="#">New message from Weno Carasbong</a></h5>
                              <small>June 20, 2015</small>
                              <span>Soluta nobis est eligendi optio cumque...</span>
                            </div>
                          </div>
                        </li>
                        <li class="list-group-item unread">
                          <div class="row">
                            <div class="col-xs-2">
                              <i class="fa fa-user"></i>
                            </div>
                            <div class="col-xs-10">
                              <h5><a href="#">Renov Leonga is now following you!</a></h5>
                              <small>June 18, 2015</small>
                            </div>
                          </div>
                        </li>
                        <li class="list-group-item">
                          <div class="row">
                            <div class="col-xs-2">
                              <i class="fa fa-user"></i>
                            </div>
                            <div class="col-xs-10">
                              <h5><a href="#">Zaham Sindil is now following you!</a></h5>
                              <small>June 17, 2015</small>
                            </div>
                          </div>
                        </li>
                        <li class="list-group-item">
                          <div class="row">
                            <div class="col-xs-2">
                              <i class="fa fa-thumbs-up"></i>
                            </div>
                            <div class="col-xs-10">
                              <h5><a href="#">Rey Reslaba likes your post!</a></h5>
                              <small>June 16, 2015</small>
                              <span>HTML5 For Beginners Chapter 1</span>
                            </div>
                          </div>
                        </li>
                        <li class="list-group-item">
                          <div class="row">
                            <div class="col-xs-2">
                              <i class="fa fa-comment"></i>
                            </div>
                            <div class="col-xs-10">
                              <h5><a href="#">Socrates commented on your post!</a></h5>
                              <small>June 16, 2015</small>
                              <span>Temporibus autem et aut officiis debitis...</span>
                            </div>
                          </div>
                        </li>
                      </ul>
                      <a class="btn-more" href="#">View More Notifications <i class="fa fa-long-arrow-right"></i></a>
                    </div><!-- tab-pane -->

                    <div role="tabpanel" class="tab-pane" id="reminders">
                      <h1 id="todayDay" class="today-day">...</h1>
                      <h3 id="todayDate" class="today-date">...</h3>

                      <h5 class="today-weather"><i class="wi wi-hail"></i> Cloudy 77 Degree</h5>
                      <p>Thunderstorm in the area this afternoon through this evening</p>

                      <h4 class="panel-title">Upcoming Events</h4>
                      <ul class="list-group">
                        <li class="list-group-item">
                          <div class="row">
                            <div class="col-xs-2">
                              <h4>20</h4>
                              <p>Aug</p>
                            </div>
                            <div class="col-xs-10">
                              <h5><a href="#">HTML5/CSS3 Live! United States</a></h5>
                              <small>San Francisco, CA</small>
                            </div>
                          </div>
                        </li>
                        <li class="list-group-item">
                          <div class="row">
                            <div class="col-xs-2">
                              <h4>05</h4>
                              <p>Sep</p>
                            </div>
                            <div class="col-xs-10">
                              <h5><a href="#">Web Technology Summit</a></h5>
                              <small>Sydney, Australia</small>
                            </div>
                          </div>
                        </li>
                        <li class="list-group-item">
                          <div class="row">
                            <div class="col-xs-2">
                              <h4>25</h4>
                              <p>Sep</p>
                            </div>
                            <div class="col-xs-10">
                              <h5><a href="#">HTML5 Developer Conference 2015</a></h5>
                              <small>Los Angeles CA United States</small>
                            </div>
                          </div>
                        </li>
                        <li class="list-group-item">
                          <div class="row">
                            <div class="col-xs-2">
                              <h4>10</h4>
                              <p>Oct</p>
                            </div>
                            <div class="col-xs-10">
                              <h5><a href="#">AngularJS Conference 2015</a></h5>
                              <small>Silicon Valley CA, United States</small>
                            </div>
                          </div>
                        </li>
                      </ul>
                      <a class="btn-more" href="#">View More Events <i class="fa fa-long-arrow-right"></i></a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </li>
          <li>
            <div class="btn-group">
              <button type="button" class="btn btn-logged" data-toggle="dropdown">
                <img src="../images/photos/loggeduser.png" alt="" />
                Elen Adarna
                <span class="caret"></span>
              </button>
              <ul class="dropdown-menu pull-right">
                <li><a href="profile.html"><i class="glyphicon glyphicon-user"></i> My Profile</a></li>
                <li><a href="#"><i class="glyphicon glyphicon-cog"></i> Account Settings</a></li>
                <li><a href="#"><i class="glyphicon glyphicon-question-sign"></i> Help</a></li>
                <li><a href="signin.html"><i class="glyphicon glyphicon-log-out"></i> Log Out</a></li>
              </ul>
            </div>
          </li>
          <li>
            <button id="chatview" class="btn btn-chat alert-notice">
              <span class="badge-alert"></span>
              <i class="fa fa-comments-o"></i>
            </button>
          </li>
        </ul>
      </div><!-- header-right -->
    </div><!-- headerbar -->
  </div><!-- header-->
</header>

<section>

  <div class="leftpanel">
    <div class="leftpanelinner">

      <!-- ################## LEFT PANEL PROFILE ################## -->

      <div class="media leftpanel-profile">
        <div class="media-left">
          <a href="#">
            <img src="../images/photos/loggeduser.png" alt="" class="media-object img-circle">
          </a>
        </div>
        <div class="media-body">
          <h4 class="media-heading">Elen Adarna <a data-toggle="collapse" data-target="#loguserinfo" class="pull-right"><i class="fa fa-angle-down"></i></a></h4>
          <span>Software Engineer</span>
        </div>
      </div><!-- leftpanel-profile -->

      <div class="leftpanel-userinfo collapse" id="loguserinfo">
        <h5 class="sidebar-title">Address</h5>
        <address>
          4975 Cambridge Road
          Miami Gardens, FL 33056
        </address>
        <h5 class="sidebar-title">Contact</h5>
        <ul class="list-group">
          <li class="list-group-item">
            <label class="pull-left">Email</label>
            <span class="pull-right">me@themepixels.com</span>
          </li>
          <li class="list-group-item">
            <label class="pull-left">Home</label>
            <span class="pull-right">(032) 1234 567</span>
          </li>
          <li class="list-group-item">
            <label class="pull-left">Mobile</label>
            <span class="pull-right">+63012 3456 789</span>
          </li>
          <li class="list-group-item">
            <label class="pull-left">Social</label>
            <div class="social-icons pull-right">
              <a href="#"><i class="fa fa-facebook-official"></i></a>
              <a href="#"><i class="fa fa-twitter"></i></a>
              <a href="#"><i class="fa fa-pinterest"></i></a>
            </div>
          </li>
        </ul>
      </div><!-- leftpanel-userinfo -->

      <ul class="nav nav-tabs nav-justified nav-sidebar">
        <li class="tooltips active" data-toggle="tooltip" title="Main Menu"><a data-toggle="tab" data-target="#mainmenu"><i class="tooltips fa fa-ellipsis-h"></i></a></li>
        <li class="tooltips unread" data-toggle="tooltip" title="Check Mail"><a data-toggle="tab" data-target="#emailmenu"><i class="tooltips fa fa-envelope"></i></a></li>
        <li class="tooltips" data-toggle="tooltip" title="Contacts"><a data-toggle="tab" data-target="#contactmenu"><i class="fa fa-user"></i></a></li>
        <li class="tooltips" data-toggle="tooltip" title="Settings"><a data-toggle="tab" data-target="#settings"><i class="fa fa-cog"></i></a></li>
        <li class="tooltips" data-toggle="tooltip" title="Log Out"><a href="signin.html"><i class="fa fa-sign-out"></i></a></li>
      </ul>

      <div class="tab-content">

        <!-- ################# MAIN MENU ################### -->

        <div class="tab-pane active" id="mainmenu">
          <h5 class="sidebar-title">Favorites</h5>
          <ul class="nav nav-pills nav-stacked nav-quirk">
            <li><a href="index-2.html"><i class="fa fa-home"></i> <span>Dashboard</span></a></li>
            <li><a href="widgets.html"><span class="badge pull-right">10+</span><i class="fa fa-cube"></i> <span>Widgets</span></a></li>
            <li><a href="maps.html"><i class="fa fa-map-marker"></i> <span>Maps</span></a></li>
          </ul>

          <h5 class="sidebar-title">Main Menu</h5>
          <ul class="nav nav-pills nav-stacked nav-quirk">
            <li class="nav-parent active">
              <a href="#"><i class="fa fa-check-square"></i> <span>Forms</span></a>
              <ul class="children">
                <li class="active"><a href="general-forms.html">Form Elements</a></li>
                <li><a href="form-validation.html">Form Validation</a></li>
                <li><a href="form-wizards.html">Form Wizards</a></li>
                <li><a href="wysiwyg.html">Text Editor</a></li>
              </ul>
            </li>
            <li class="nav-parent"><a href="#"><i class="fa fa-suitcase"></i> <span>UI Elements</span></a>
              <ul class="children">
                <li><a href="buttons.html">Buttons</a></li>
                <li><a href="icons.html">Icons</a></li>
                <li><a href="typography.html">Typography</a></li>
                <li><a href="alerts.html">Alerts &amp; Notifications</a></li>
                <li><a href="tabs-accordions.html">Tabs &amp; Accordions</a></li>
                <li><a href="sliders.html">Sliders</a></li>
                <li><a href="graphs.html">Graphs &amp; Charts</a></li>
                <li><a href="panels.html">Panels</a></li>
                <li><a href="extras.html">Extras</a></li>
              </ul>
            </li>
            <li class="nav-parent"><a href="#"><i class="fa fa-th-list"></i> <span>Tables</span></a>
              <ul class="children">
                <li><a href="basic-tables.html">Basic Tables</a></li>
                <li><a href="data-tables.html">Data Tables</a></li>
              </ul>
            </li>
            <li class="nav-parent"><a href="#"><i class="fa fa-file-text"></i> <span>Pages</span></a>
              <ul class="children">
                <li><a href="asset-manager.html">Asset Manager</a></li>
                <li><a href="people-directory.html">People Directory</a></li>
                <li><a href="timeline.html">Timeline</a></li>
                <li><a href="profile.html">Profile</a></li>
                <li><a href="blank.html">Blank Page</a></li>
                <li><a href="notfound.html">404 Page</a></li>
                <li><a href="signin.html">Sign In</a></li>
                <li><a href="signup.html">Sign Up</a></li>
              </ul>
            </li>
          </ul>
        </div><!-- tab-pane -->

        <!-- ######################## EMAIL MENU ##################### -->

        <div class="tab-pane" id="emailmenu">
          <div class="sidebar-btn-wrapper">
            <a href="compose.html" class="btn btn-danger btn-block">Compose</a>
          </div>

          <h5 class="sidebar-title">Mailboxes</h5>
          <ul class="nav nav-pills nav-stacked nav-quirk nav-mail">
            <li><a href="email.html"><i class="fa fa-inbox"></i> <span>Inbox (3)</span></a></li>
            <li><a href="email.html"><i class="fa fa-pencil"></i> <span>Draft (2)</span></a></li>
            <li><a href="email.html"><i class="fa fa-paper-plane"></i> <span>Sent</span></a></li>
          </ul>

          <h5 class="sidebar-title">Tags</h5>
          <ul class="nav nav-pills nav-stacked nav-quirk nav-label">
            <li><a href="#"><i class="fa fa-tags primary"></i> <span>Communication</span></a></li>
            <li><a href="#"><i class="fa fa-tags success"></i> <span>Updates</span></a></li>
            <li><a href="#"><i class="fa fa-tags warning"></i> <span>Promotions</span></a></li>
            <li><a href="#"><i class="fa fa-tags danger"></i> <span>Social</span></a></li>
          </ul>
        </div><!-- tab-pane -->

        <!-- ################### CONTACT LIST ################### -->

        <div class="tab-pane" id="contactmenu">
          <div class="input-group input-search-contact">
            <input type="text" class="form-control" placeholder="Search contact">
            <span class="input-group-btn">
              <button class="btn btn-default" type="button"><i class="fa fa-search"></i></button>
            </span>
          </div>
          <h5 class="sidebar-title">My Contacts</h5>
          <ul class="media-list media-list-contacts">
            <li class="media">
              <a href="#">
                <div class="media-left">
                  <img class="media-object img-circle" src="../images/photos/user1.png" alt="">
                </div>
                <div class="media-body">
                  <h4 class="media-heading">Christina R. Hill</h4>
                  <span><i class="fa fa-phone"></i> 386-752-1860</span>
                </div>
              </a>
            </li>
            <li class="media">
              <a href="#">
                <div class="media-left">
                  <img class="media-object img-circle" src="../images/photos/user2.png" alt="">
                </div>
                <div class="media-body">
                  <h4 class="media-heading">Floyd M. Romero</h4>
                  <span><i class="fa fa-mobile"></i> +1614-650-8281</span>
                </div>
              </a>
            </li>
            <li class="media">
              <a href="#">
                <div class="media-left">
                  <img class="media-object img-circle" src="../images/photos/user3.png" alt="">
                </div>
                <div class="media-body">
                  <h4 class="media-heading">Jennie S. Gray</h4>
                  <span><i class="fa fa-phone"></i> 310-757-8444</span>
                </div>
              </a>
            </li>
            <li class="media">
              <a href="#">
                <div class="media-left">
                  <img class="media-object img-circle" src="../images/photos/user4.png" alt="">
                </div>
                <div class="media-body">
                  <h4 class="media-heading">Alia J. Locher</h4>
                  <span><i class="fa fa-mobile"></i> +1517-386-0059</span>
                </div>
              </a>
            </li>
            <li class="media">
              <a href="#">
                <div class="media-left">
                  <img class="media-object img-circle" src="../images/photos/user5.png" alt="">
                </div>
                <div class="media-body">
                  <h4 class="media-heading">Nicholas T. Hinkle</h4>
                  <span><i class="fa fa-skype"></i> nicholas.hinkle</span>
                </div>
              </a>
            </li>
            <li class="media">
              <a href="#">
                <div class="media-left">
                  <img class="media-object img-circle" src="../images/photos/user6.png" alt="">
                </div>
                <div class="media-body">
                  <h4 class="media-heading">Jamie W. Bradford</h4>
                  <span><i class="fa fa-phone"></i> 225-270-2425</span>
                </div>
              </a>
            </li>
            <li class="media">
              <a href="#">
                <div class="media-left">
                  <img class="media-object img-circle" src="../images/photos/user7.png" alt="">
                </div>
                <div class="media-body">
                  <h4 class="media-heading">Pamela J. Stump</h4>
                  <span><i class="fa fa-mobile"></i> +1773-879-2491</span>
                </div>
              </a>
            </li>
            <li class="media">
              <a href="#">
                <div class="media-left">
                  <img class="media-object img-circle" src="../images/photos/user8.png" alt="">
                </div>
                <div class="media-body">
                  <h4 class="media-heading">Refugio C. Burgess</h4>
                  <span><i class="fa fa-mobile"></i> +1660-627-7184</span>
                </div>
              </a>
            </li>
            <li class="media">
              <a href="#">
                <div class="media-left">
                  <img class="media-object img-circle" src="../images/photos/user9.png" alt="">
                </div>
                <div class="media-body">
                  <h4 class="media-heading">Ashley T. Brewington</h4>
                  <span><i class="fa fa-skype"></i> ashley.brewington</span>
                </div>
              </a>
            </li>
            <li class="media">
              <a href="#">
                <div class="media-left">
                  <img class="media-object img-circle" src="../images/photos/user10.png" alt="">
                </div>
                <div class="media-body">
                  <h4 class="media-heading">Roberta F. Horn</h4>
                  <span><i class="fa fa-phone"></i> 716-630-0132</span>
                </div>
              </a>
            </li>
          </ul>
        </div><!-- tab-pane -->

        <!-- #################### SETTINGS ################### -->

        <div class="tab-pane" id="settings">
          <h5 class="sidebar-title">General Settings</h5>
          <ul class="list-group list-group-settings">
            <li class="list-group-item">
              <h5>Daily Newsletter</h5>
              <small>Get notified when someone else is trying to access your account.</small>
              <div class="toggle-wrapper">
                <div class="leftpanel-toggle toggle-light success"></div>
              </div>
            </li>
            <li class="list-group-item">
              <h5>Call Phones</h5>
              <small>Make calls to friends and family right from your account.</small>
              <div class="toggle-wrapper">
                <div class="leftpanel-toggle-off toggle-light success"></div>
              </div>
            </li>
          </ul>
          <h5 class="sidebar-title">Security Settings</h5>
          <ul class="list-group list-group-settings">
            <li class="list-group-item">
              <h5>Login Notifications</h5>
              <small>Get notified when someone else is trying to access your account.</small>
              <div class="toggle-wrapper">
                <div class="leftpanel-toggle toggle-light success"></div>
              </div>
            </li>
            <li class="list-group-item">
              <h5>Phone Approvals</h5>
              <small>Use your phone when login as an extra layer of security.</small>
              <div class="toggle-wrapper">
                <div class="leftpanel-toggle toggle-light success"></div>
              </div>
            </li>
          </ul>
        </div><!-- tab-pane -->


      </div><!-- tab-content -->

    </div><!-- leftpanelinner -->
  </div><!-- leftpanel -->

  <div class="mainpanel">

    <div class="contentpanel">

      <ol class="breadcrumb breadcrumb-quirk">
        <li><a href="index-2.html"><i class="fa fa-home mr5"></i> Home</a></li>
        <li><a href="general-forms.html">Forms</a></li>
        <li class="active">General Forms</li>
      </ol>

      <div class="row">
        <div class="col-sm-6">
          <div class="panel">
            <div class="panel-heading">
              <h4 class="panel-title">Input Fields</h4>
              <p>Individual form controls automatically receive some global styling with <code>.form-control</code> class that are set to 100% width by default.</p>
            </div>
            <div class="panel-body">
              <div class="form-group">
                <input type="text" placeholder="Default Input" class="form-control" />
              </div>

              <div class="form-group">
                <input type="text" placeholder="Disabled Input" class="form-control" disabled />
              </div>

              <div class="form-group">
                <input type="text" placeholder="Read-only Input" class="form-control" readonly />
              </div>

              <div class="form-group">
                <input type="text" placeholder="Help Text" class="form-control">
                <span class="help-block">A block of help text that breaks onto a new line and may extend beyond one line.</span>
              </div>

              <div class="form-group">
                <input type="text" placeholder="Input with tooltip (Hover me)" title="Tooltip goes here" data-toggle="tooltip" data-trigger="hover" class="form-control tooltips" />
              </div>

              <div class="form-group nomargin">
                <input type="text" placeholder="Input with popover (Click Me)" class="form-control popovers" data-toggle="popover" data-placement="top" data-original-title="The Title" data-content="Content goes here..." data-trigger="click" />
              </div>

            </div>
          </div><!-- panel -->

          <div class="panel">
            <div class="panel-heading">
              <h4 class="panel-title">Input Sizing</h4>
              <p>Create taller or shorter form controls that match button sizes.</p>
            </div>
            <div class="panel-body">
              <div class="form-group">
                <input class="form-control input-lg" type="text" placeholder="Large Input (.input-lg)">
              </div>
              <div class="form-group">
                <input class="form-control" type="text" placeholder="Default Size">
              </div>
              <div class="form-group nomargin">
                <input class="form-control input-sm" type="text" placeholder="Small Input (.input-sm)">
              </div>
            </div>
          </div>

          <div class="panel">
            <div class="panel-heading">
              <h4 class="panel-title">Input Groups</h4>
              <p>Extend form controls by adding text or buttons before, after, or on both sides of any text-based input.</p>
            </div>
            <div class="panel-body">
              <div class="input-group mb15">
                <span class="input-group-addon">@</span>
                <input type="text" placeholder="Username" class="form-control" />
              </div>

              <div class="input-group mb15">
                <input type="text" class="form-control" />
                <span class="input-group-addon">.00</span>
              </div>

              <div class="input-group">
                <span class="input-group-addon">$</span>
                <input type="text" class="form-control" />
                <span class="input-group-addon">.00</span>
              </div>
            </div>
          </div>

          <div class="panel">
            <div class="panel-heading">
              <h4 class="panel-title">Select2 Boxes</h4>
              <p>Select2 gives you a customizable select box with support for searching, tagging, remote data sets, infinite scrolling, and many other highly used options. </p>
            </div>
            <div class="panel-body">
              <div class="form-group">
                <select id="select1" class="form-control" style="width: 100%" data-placeholder="Basic Select2 Box">
                  <option value="">&nbsp;</option>
                  <option value="United States">United States</option>
                  <option value="United Kingdom">United Kingdom</option>
                  <option value="Japan">Japan</option>
                  <option value="China">China</option>
                  <option value="Norway">Norway</option>
                  <option value="Australia">Australia</option>
                  <option value="South Korea">South Korea</option>
                  <option value="New Zealand">New Zealand</option>
                  <option value="Philippines">Philippines</option>
                </select>
              </div>

              <div class="form-group">
                <select id="select2" class="form-control" style="width: 100%" data-placeholder="Multiple Select2 Box" multiple>
                  <option value="United States">United States</option>
                  <option value="United Kingdom">United Kingdom</option>
                  <option value="Japan">Japan</option>
                  <option value="China">China</option>
                  <option value="Norway">Norway</option>
                  <option value="Australia">Australia</option>
                  <option value="South Korea">South Korea</option>
                  <option value="New Zealand">New Zealand</option>
                  <option value="Philippines">Philippines</option>
                </select>
              </div>

              <div class="form-group">
                <select id="select3" class="form-control" style="width: 100%" data-placeholder="Disabled Select2 Box" disabled>
                  <option value="">&nbsp;</option>
                  <option value="United States">United States</option>
                  <option value="United Kingdom">United Kingdom</option>
                  <option value="Japan">Japan</option>
                  <option value="China">China</option>
                  <option value="Norway">Norway</option>
                  <option value="Australia">Australia</option>
                  <option value="South Korea">South Korea</option>
                  <option value="New Zealand">New Zealand</option>
                  <option value="Philippines">Philippines</option>
                </select>
              </div>

              <hr class="invisible">

              <h4 class="panel-title mb10">Limit the number of selections</h4>
              <p class="mb20">Below is declared with the multiple attribute with <code>maxSelectionLength</code> in the select2 options.</p>

              <div class="form-group">
                <select id="select4" class="form-control" style="width: 100%" data-placeholder="Max Item 2" multiple>
                  <option value="">&nbsp;</option>
                  <option value="United States">United States</option>
                  <option value="United Kingdom">United Kingdom</option>
                  <option value="Japan">Japan</option>
                  <option value="China">China</option>
                  <option value="Norway">Norway</option>
                  <option value="Australia">Australia</option>
                  <option value="South Korea">South Korea</option>
                  <option value="New Zealand">New Zealand</option>
                  <option value="Philippines">Philippines</option>
                </select>
              </div>

              <hr class="invisible">

              <h4 class="panel-title mb10">Hiding The Search Box</h4>
              <p class="mb20">Select2 allows you to hide the search box depending on the number of options which are displayed by using the value Infinity to the search box.</p>

              <div class="form-group">
                <select id="select5" class="form-control" style="width: 100%" data-placeholder="Choose Country...">
                  <option value="">&nbsp;</option>
                  <option value="United States">United States</option>
                  <option value="United Kingdom">United Kingdom</option>
                  <option value="Japan">Japan</option>
                  <option value="China">China</option>
                  <option value="Norway">Norway</option>
                  <option value="Australia">Australia</option>
                  <option value="South Korea">South Korea</option>
                  <option value="New Zealand">New Zealand</option>
                  <option value="Philippines">Philippines</option>
                </select>
              </div>

              <hr class="invisible">

              <h4 class="panel-title mb10">Tagging Support</h4>
              <p class="mb20">Select2 can be used to quickly set up fields used for tagging.</p>

              <div class="form-group nomargin">
                <select id="select6" class="form-control" style="width: 100%" data-placeholder="Choose Country..." multiple>
                  <option value="United States" selected>United States</option>
                  <option value="United Kingdom">United Kingdom</option>
                  <option value="Japan" selected>Japan</option>
                  <option value="China">China</option>
                  <option value="Norway">Norway</option>
                  <option value="Australia">Australia</option>
                  <option value="South Korea">South Korea</option>
                  <option value="New Zealand">New Zealand</option>
                  <option value="Philippines">Philippines</option>
                </select>
              </div>

            </div>
          </div><!-- panel -->

          <div class="panel">
            <div class="panel-heading">
              <h4 class="panel-title">Color Picker</h4>
              <p>A simple component to select color in the same way you select color in Adobe Photoshop.</p>
            </div>
            <div class="panel-body">

              <div class="row demo-colorpicker">
                <div class="col-xs-12 col-sm-6 col-md-3">
                  <label>Basic Colorpicker:</label>
                  <input type="text" id="colorpicker1" class="form-control" placeholder="#FFFFFF">
                </div>
                <div class="col-xs-12 col-sm-6 col-md-3">
                  <label>Large Colorpicker:</label>
                  <input type="text" id="colorpicker2" class="form-control" placeholder="#FFFFFF">
                </div>
              </div>

            </div>
          </div><!-- panel -->

          <div class="panel">
            <div class="panel-heading">
              <h4 class="panel-title">Date Picker</h4>
              <p>The datepicker is tied to a standard form input field. Click on the input to open an interactive calendar in a small overlay. If a date is chosen, feedback is shown as the input's value.</p>
            </div>
            <div class="panel-body">
              <label>Default Functionality</label>
              <div class="input-group">
                <input type="text" class="form-control" placeholder="mm/dd/yyyy" id="datepicker">
                <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
              </div>

              <div class="mb20 invisible"></div>

              <label>Set the numberOfMonths option to an integer of 2 or more to show multiple months in a single datepicker.</label>
              <div class="input-group">
                <input type="text" class="form-control" placeholder="mm/dd/yyyy" id="datepicker-multiple">
                <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
              </div>

              <div class="mb20 invisible"></div>

              <label>Display the datepicker embedded in the page instead of in an overlay.</label>
              <div class="input-group">
                <div id="datepicker-inline"></div>
              </div>

            </div><!-- panel-body -->
          </div><!-- panel -->

        </div><!-- col-sm-6 -->

        <!-- ####################################################### -->

        <div class="col-sm-6">
          <div class="panel">
            <div class="panel-heading">
              <h4 class="panel-title">Width Sizing</h4>
              <p>Set widths by wrapping inputs using column sizes.</p>
            </div>
            <div class="panel-body">
              <div class="row mb20">
                <div class="col-sm-5">
                  <input type="text" placeholder=".col-sm-5" class="form-control">
                </div>
                <div class="col-sm-7">
                  <input type="text" placeholder=".col-sm-7" class="form-control">
                </div>
              </div>

              <div class="row">
                <div class="col-sm-8">
                  <input type="text" placeholder=".col-sm-8" class="form-control">
                </div>
                <div class="col-sm-4">
                  <input type="text" placeholder=".col-sm-4" class="form-control">
                </div>
              </div>
            </div>
          </div>

          <div class="panel">
            <div class="panel-heading">
              <h4 class="panel-title">Validation States</h4>
              <p>Includes validation styles for error, warning, and success states on form controls.</p>
            </div>
            <div class="panel-body">
              <div class="form-group has-success">
                <input type="text" class="form-control" placeholder="Input with success">
              </div>
              <div class="form-group has-warning">
                <input type="text" class="form-control" placeholder="Input with warning">
              </div>
              <div class="form-group has-error nomargin">
                <input type="text" class="form-control" placeholder="Input with error">
              </div>
            </div>
          </div>

          <div class="panel">
            <div class="panel-heading">
              <h4 class="panel-title">Textarea</h4>
              <p>Form control which supports multiple lines of text. Change rows attribute as necessary.</p>
            </div>
            <div class="panel-body">
              <div class="form-group">
                <textarea class="form-control" rows="2" placeholder="Basic Textarea"></textarea>
              </div>
              <div class="form-group nomargin">
                <textarea id="autosize" class="form-control" rows="3" placeholder="Autogrow Textarea"></textarea>
              </div>
            </div>
          </div>

          <div class="panel">
            <div class="panel-heading">
              <h4 class="panel-title">Button Addons</h4>
              <p>Buttons in input groups are a bit different and require one extra level of nesting.</p>
            </div>
            <div class="panel-body">
              <div class="input-group mb15">
                <span class="input-group-btn">
                  <button type="button" class="btn btn-default">Go!</button>
                </span>
                <input type="text" class="form-control">
              </div>

              <div class="input-group mb15">
                <input type="text" class="form-control">
                <span class="input-group-btn">
                  <button type="button" class="btn btn-default">Go!</button>
                </span>
              </div>

              <div class="input-group mb15">
                <div class="input-group-btn">
                  <button data-toggle="dropdown" class="btn btn-default dropdown-toggle" type="button">Action <span class="caret"></span></button>
                  <ul class="dropdown-menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li class="divider"></li>
                    <li><a href="#">Separated link</a></li>
                  </ul>
                </div>
                <input type="text" class="form-control" />
              </div>

              <div class="input-group">
                <input type="text" class="form-control" />
                <div class="input-group-btn">
                  <button data-toggle="dropdown" class="btn btn-default dropdown-toggle" type="button">Action <span class="caret"></span></button>
                  <ul class="dropdown-menu pull-right">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li class="divider"></li>
                    <li><a href="#">Separated link</a></li>
                  </ul>
                </div>
              </div>

            </div>
          </div>

          <div class="panel">
            <div class="panel-heading">
              <h4 class="panel-title">Toggle Switches</h4>
              <p>A lightweight jQuery plugin that creates easily-styleable toggle buttons.</p>
            </div>
            <div class="panel-body">
              <div class="toggle-wrapper">
                <div class="toggle toggle-light"></div>
              </div>
              <div class="toggle-wrapper">
                <div class="toggle toggle-light primary"></div>
              </div>
              <div class="toggle-wrapper">
                <div class="toggle toggle-light success"></div>
              </div>
              <div class="toggle-wrapper">
                <div class="toggle toggle-light warning"></div>
              </div>
              <div class="toggle-wrapper">
                <div class="toggle toggle-light danger"></div>
              </div>
              <div class="toggle-wrapper">
                <div class="toggle toggle-light info"></div>
              </div>

              <hr class="invisible">

              <div class="toggle-wrapper">
                <div class="toggle toggle-modern"></div>
              </div>

              <div class="toggle-wrapper">
                <div class="toggle toggle-modern primary"></div>
              </div>

              <div class="toggle-wrapper">
                <div class="toggle toggle-modern success"></div>
              </div>

              <div class="toggle-wrapper">
                <div class="toggle toggle-modern warning"></div>
              </div>

              <div class="toggle-wrapper">
                <div class="toggle toggle-modern danger"></div>
              </div>

              <div class="toggle-wrapper">
                <div class="toggle toggle-modern info"></div>
              </div>

            </div>
          </div><!-- panel -->

          <div class="panel">
            <div class="panel-heading">
              <h4 class="panel-title">Enhanced Checkboxes and Radios</h4>
              <p>An enhanced version of some of the html form elements written in less and compiled in css.</p>
            </div>
            <div class="panel-body">
              <div class="row">
                <div class="col-md-6">
                  <label class="ckbox">
                    <input type="checkbox" checked><span>Checkbox Default</span>
                  </label>

                  <label class="ckbox ckbox-primary">
                    <input type="checkbox" checked><span>Checkbox Primary</span>
                  </label>

                  <label class="ckbox ckbox-success">
                    <input type="checkbox" checked><span>Checkbox Success</span>
                  </label>

                  <label class="ckbox ckbox-warning">
                    <input type="checkbox" checked><span>Checkbox Warning</span>
                  </label>

                  <label class="ckbox ckbox-danger">
                    <input type="checkbox" checked><span>Checkbox Danger</span>
                  </label>

                  <label class="ckbox ckbox-info">
                    <input type="checkbox" checked><span>Checkbox Info</span>
                  </label>

                </div><!-- col-md-6 -->

                <div class="col-md-6">

                  <label class="rdiobox">
                    <input type="radio" name="rdio" checked>
                    <span>Radio Default</span>
                  </label>

                  <label class="rdiobox rdiobox-primary">
                    <input type="radio" name="rdio">
                    <span>Radio Primary</span>
                  </label>

                  <label class="rdiobox rdiobox-success">
                    <input type="radio" name="rdio">
                    <span>Radio Success</span>
                  </label>

                  <label class="rdiobox rdiobox-warning">
                    <input type="radio" name="rdio">
                    <span>Radio Warning</span>
                  </label>

                  <label class="rdiobox rdiobox-danger">
                    <input type="radio" name="rdio">
                    <span>Radio Danger</span>
                  </label>

                  <label class="rdiobox rdiobox-info">
                    <input type="radio" name="rdio">
                    <span>Radio Info</span>
                  </label>

                </div>
              </div><!-- row -->
            </div><!-- panel-body -->
          </div><!-- panel -->

          <div class="panel">
            <div class="panel-heading">
              <h4 class="panel-title">Input Masks</h4>
              <p>Input masks allows a user to more easily enter fixed width input where you would like them to enter the data in a certain format (dates,phones, etc).</p>
            </div>
            <div class="panel-body">

              <div class="input-group mb20">
                <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                <input type="text" placeholder="Date" id="date" class="form-control" />
              </div>

              <div class="input-group mb20">
                <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                <input type="text" placeholder="Phone" id="phone" class="form-control" />
              </div>

              <div class="input-group">
                <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                <input type="text" placeholder="SSN" id="ssn" class="form-control" />
              </div>

            </div>
          </div><!-- panel -->

          <div class="panel">
            <div class="panel-heading">
              <h4 class="panel-title">Time Picker</h4>
              <p>Easily select a time for a text input using your mouse or keyboards arrow keys.</p>
            </div>
            <div class="panel-body">
              <label>Default Time Picker:</label>
              <div class="input-group mb15">
                <span class="input-group-addon"><i class="glyphicon glyphicon-time"></i></span>
                <div class="timepicker"><input id="tpBasic" type="text" class="form-control"/></div>
              </div>

              <label>Set the scroll position to local time if no value selected:</label>
              <div class="input-group mb15">
                <span class="input-group-addon"><i class="glyphicon glyphicon-time"></i></span>
                <div class="timepicker"><input id="tp2" type="text" class="form-control"/></div>
              </div>

              <label>Dynamically set the time using a Javascript Date object:</label>
              <div class="input-group mb15">
                <span class="input-group-addon"><i class="glyphicon glyphicon-time"></i></span>
                <div class="timepicker"><input id="tp3" type="text" class="form-control"/></div>
                <button id="setTimeButton" class="btn btn-primary ml5">Set Current Time</button>
              </div>

            </div>
          </div><!-- panel -->

          <div class="panel">
            <div class="panel-heading">
              <h4 class="panel-title">Dropzone Multi-File Upload</h4>
              <p>DropzoneJS is an open source library that provides drag'n'drop file uploads with image previews. <a href="http://dropzonejs.com/" target="_blank">http://dropzonejs.com/</a></p>
            </div>
            <div class="panel-body">
              <p>This is just a demo. Uploaded files are <strong>not</strong> stored. This does not handle your file uploads on the server. You have to implement the code to receive and store the file yourself.</p>
              <br />
              <form action="http://themetrace.com/demo/quirk/templates/files" class="dropzone">
                <div class="fallback">
                  <input name="file" type="file" multiple />
                </div>
              </form>
            </div>
          </div>

        </div><!-- col-sm-6 -->
      </div><!-- row -->

    </div><!-- contentpanel -->
  </div><!-- mainpanel -->

</section>

<script src="../lib/jquery/jquery.js"></script>
<script src="../lib/jquery-ui/jquery-ui.js"></script>
<script src="../lib/bootstrap/js/bootstrap.js"></script>
<script src="../lib/jquery-autosize/autosize.js"></script>
<script src="../lib/select2/select2.js"></script>
<script src="../lib/jquery-toggles/toggles.js"></script>
<script src="../lib/jquery-maskedinput/jquery.maskedinput.js"></script>
<script src="../lib/timepicker/jquery.timepicker.js"></script>
<script src="../lib/dropzone/dropzone.js"></script>
<script src="../lib/bootstrapcolorpicker/js/bootstrap-colorpicker.js"></script>

<script src="../js/quirk.js"></script>

<script>
$(function() {

  // Textarea Auto Resize
  autosize($('#autosize'));

  // Select2 Box
  $('#select1, #select2, #select3').select2();
  $("#select4").select2({ maximumSelectionLength: 2 });
  $("#select5").select2({ minimumResultsForSearch: Infinity });
  $("#select6").select2({ tags: true });

  // Toggles
  $('.toggle').toggles({
    on: true,
    height: 26
  });

  // Input Masks
  $("#date").mask("99/99/9999");
  $("#phone").mask("(999) 999-9999");
  $("#ssn").mask("999-99-9999");

  // Date Picker
  $('#datepicker').datepicker();
  $('#datepicker-inline').datepicker();
  $('#datepicker-multiple').datepicker({ numberOfMonths: 2 });

  // Time Picker
  $('#tpBasic').timepicker();
  $('#tp2').timepicker({'scrollDefault': 'now'});
  $('#tp3').timepicker();

  $('#setTimeButton').on('click', function (){
    $('#tp3').timepicker('setTime', new Date());
  });

  // Colorpicker
  $('#colorpicker1').colorpicker();
  $('#colorpicker2').colorpicker({
    customClass: 'colorpicker-lg',
    sliders: {
      saturation: {
        maxLeft: 200,
        maxTop: 200
      },
      hue: { maxTop: 200 },
      alpha: { maxTop: 200 }
    }
  });

});
</script>


    </body>
</html>