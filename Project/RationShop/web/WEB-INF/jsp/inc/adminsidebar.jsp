<div class="leftpanel">
    <div class="leftpanelinner">

        <!-- ################## LEFT PANEL PROFILE ################## -->

        <div class="media leftpanel-profile">
            <div class="media-left">
                <a href="#">
                    <img src="/RationShop/resources/images/photos/loggeduser.png" alt="" class="media-object img-circle">
                </a>
            </div>
            <div class="media-body">
                <h4 class="media-heading">Admin <a data-toggle="collapse" data-target="#loguserinfo" class="pull-right"><i class="fa fa-angle-down"></i></a></h4>

            </div>
        </div><!-- leftpanel-profile -->

        <div class="leftpanel-userinfo collapse" id="loguserinfo">
            <h5 class="sidebar-title">Address</h5>
            <address>
                4975 Cambridge Road
                Miami Gardens, FL 33056
            </address>
            <h5 class="sidebar-title">Contact</h5>

        </div><!-- leftpanel-userinfo -->

        <ul class="nav nav-tabs nav-justified nav-sidebar">
            <li class="tooltips active" data-toggle="tooltip" title="Main Menu"><a data-toggle="tab" data-target="#mainmenu"><i class="tooltips fa fa-ellipsis-h"></i></a></li>


            <li class="tooltips" data-toggle="tooltip" title="Log Out"><a href="../login"><i class="fa fa-sign-out"></i></a></li>
        </ul>

        <div class="tab-content">

            <!-- ################# MAIN MENU ################### -->

            <div class="tab-pane active" id="mainmenu">
                <h5 class="sidebar-title">Favorites</h5>
                <ul class="nav nav-pills nav-stacked nav-quirk">
                    <li><a href="adminhome"><i class="fa fa-home"></i> <span>Dashboard</span></a></li>

                </ul>

                <h5 class="sidebar-title">Main Menu</h5>
                <ul class="nav nav-pills nav-stacked nav-quirk">

                    <!--                    <li >
                                            <a href="myprofile"><i class="fa fa-check-square"></i> <span>My Profile</span></a>
                    
                                        </li>-->
                
                    <li >
                        <a href="itemdetails"><i class="fa fa-check-square"></i> <span>Item Details</span></a>

                    </li>
                        <li >
                        <a href="quotalist"><i class="fa fa-check-square"></i> <span>Ration Allotment</span></a>

                    </li>
                    <li >
                        <a href="purchaseentry"><i class="fa fa-check-square"></i> <span>Purchase Entry</span></a>

                    </li>


                    <li >
                        <a href="stockassign"><i class="fa fa-check-square"></i> <span>Stock Assign</span></a>

                    </li>
                    <li >
                        <a href="shopownerslist"><i class="fa fa-check-square"></i> <span>Shop Owners Details</span></a>

                    </li>
                    <li >
                        <a href="suppliersdetails"><i class="fa fa-check-square"></i> <span>Suppliers Details</span></a>

                    </li>
                    <li >
                        <a href="feedbacklist"><i class="fa fa-check-square"></i> <span>FeedBack</span></a>

                    </li>


                    <li >
                        <a href="notifications"><i class="fa fa-check-square"></i> <span>Notifications</span></a>

                    </li>




                    <li >
                        <a href="salesreport"><i class="fa fa-check-square"></i> <span>Sales Report</span></a>

                    </li>
                    <li >
                        <a href="purchasereport"><i class="fa fa-check-square"></i> <span>Purchase Report</span></a>

                    </li>

                    <!--                    <li >
                                            <a href="stockreport"><i class="fa fa-check-square"></i> <span>Stock Report</span></a>
                    
                                        </li>-->

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