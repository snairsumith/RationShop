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
                <h4 class="media-heading">Customer <a data-toggle="collapse" data-target="#loguserinfo" class="pull-right"><i class="fa fa-angle-down"></i></a></h4>

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


            <li class="tooltips" data-toggle="tooltip" title="Log Out"><a href="../"><i class="fa fa-sign-out"></i></a></li>
        </ul>

        <div class="tab-content">

            <!-- ################# MAIN MENU ################### -->

            <div class="tab-pane active" id="mainmenu">
                <h5 class="sidebar-title">Favorites</h5>


                <h5 class="sidebar-title">Main Menu</h5>
                <ul class="nav nav-pills nav-stacked nav-quirk">

                    
                    <li >
                        <a href="customermyprofile?uname=<%= request.getParameter("uname") %>"><i class="fa fa-check-square"></i> <span>My Profile</span></a>

                    </li>
                    
                    <li >
                        <a href="customerpurchase?uname=<%= request.getParameter("uname") %>"><i class="fa fa-check-square"></i> <span>Purchase</span></a>

                    </li>
                    
                    <li >
                        <a href="customernotification?uname=<%= request.getParameter("uname") %>"><i class="fa fa-check-square"></i> <span>Notifications</span></a>

                    </li>
                    <li >
                        <a href="customerfeedback?uname=<%= request.getParameter("uname") %>"><i class="fa fa-check-square"></i> <span>Feedbacks</span></a>

                    </li>






                </ul>
            </div><!-- tab-pane -->

            <!-- ######################## EMAIL MENU ##################### -->


            <!-- ################### CONTACT LIST ################### -->



        </div><!-- tab-content -->

    </div><!-- leftpanelinner -->
</div><!-- leftpanel -->