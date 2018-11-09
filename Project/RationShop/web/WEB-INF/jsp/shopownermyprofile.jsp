<%-- 
    Document   : shopownermyprofile
    Created on : Sep 20, 2018, 11:54:22 PM
    Author     : Sumith
--%>


<jsp:include page="inc/shopowner_top.jsp" /> 
<section>
    <jsp:include page="inc/shopownersidebar.jsp" />
    <script>
        shopownerProfileById();
        getCustomerByShopTable();
         getAllFeedBackFromCustomer();
    </script>

    <div class="mainpanel">

        <div class="contentpanel">

            <div class="row profile-wrapper">
                <div class="col-xs-12 col-md-3 col-lg-2 profile-left">
                    <div class="profile-left-heading">
                        <ul class="panel-options">
                            <li><a><i class="glyphicon glyphicon-option-vertical"></i></a></li>
                        </ul>
                        <a href="#" class="profile-photo"><img class="img-circle img-responsive" src="/RationShop/resources/images/photos/loggeduser1.png" alt=""></a>
                        <h2 class="profile-name" id="h_name">Barbara Balashova</h2>
                        <h4 class="profile-designation">Shop Owner</h4>





                    </div>
                    <div class="profile-left-body">
                        <h4 class="panel-title">Address</h4>
                        <p id="p_address"></p>


                        <hr class="fadeout">

                        <h4 class="panel-title">Location</h4>
                        <p><i class="glyphicon glyphicon-map-marker mr5"></i><span id="p_location"></span></p>
                        <hr class="fadeout">

                        <h4 class="panel-title">PinCode</h4>
                        <p><i class="glyphicon glyphicon-map-marker mr5"></i><span id="p_pincode"></span></p>
                        <hr class="fadeout">
                        <h4 class="panel-title">Gender</h4>
                        <p><i class="glyphicon glyphicon-briefcase mr5"></i> <span id="p_gender"></span></p>
                        <hr class="fadeout">
                        <h4 class="panel-title">Email</h4>
                        <p><i class="glyphicon glyphicon-briefcase mr5"></i> <span id="p_email"></span></p>

                        <hr class="fadeout">

                        <h4 class="panel-title">Contacts</h4>
                        <p><i class="glyphicon glyphicon-phone mr5"></i> <span id="p_contact"></span></p>
                        <h4 class="panel-title">ARDNumber</h4>
                        <p><i class="glyphicon glyphicon-phone mr5"></i> <span id="p_ardno"></span></p>
                        <hr class="fadeout">


                    </div>
                </div>
                <div class="col-md-8 col-lg-8 profile-right">
                    <div class="profile-right-body">
                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs nav-justified nav-line">
                            <li class="active"><a href="#activity" data-toggle="tab"><strong>Customers</strong></a></li>
                            <li><a href="#photos" data-toggle="tab"><strong>FeedBack</strong></a></li>
<!--                            <li><a href="#music" data-toggle="tab"><strong>Music (10)</strong></a></li>
                            <li><a href="#places" data-toggle="tab"><strong>Places (5)</strong></a></li>-->
                        </ul>

                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div class="tab-pane active" id="activity">

                                <div class="panel panel-post-item">

                                    <div class="panel-body">
                                        <table class="table table-responsive">
                                            <thead>
                                                <tr>

                                                    <th class="">Name</th>
                                                    <th class="">Ration No</th>
                                                    <th class="">Aadhar No</th>
                                                    <th class="">Address</th>
                                                    <th class="">Gender</th>
                                                    <th class="">Contact</th>
                                                    <th class="">E-mail</th>
                                                    <th></th>
                                                </tr>
                                            </thead>
                                            <tbody id="tbody_custlist">

                                            </tbody>

                                        </table>
                                    </div>


                                </div><!-- panel panel-post -->



                            </div><!-- tab-pane -->

                            <div class="tab-pane" id="photos">
                                <div class="panel">
                                   
                                    <div class="panel-body">
                                        <div class="table-responsive">
                                            <table class="table nomargin">
                                                <thead>
                                                    <tr>

                                                        <th>Title</th>
                                                        <th>Description</th>
                                                        <th>Name Of User</th>
                                                        <th>Date</th>



                                                    </tr>
                                                </thead>
                                                <tbody id="feedback_list">

                                                </tbody>

                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="music">

                            </div>
                        </div>
                    </div>
                </div>

            </div><!-- row -->

        </div><!-- contentpanel -->
    </div><!-- mainpanel -->

</section>



</section>
</body>
</html>
