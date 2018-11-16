<%-- 
    Document   : customermyprofile
    Created on : Sep 20, 2018, 12:37:14 AM
    Author     : Sumith
--%>


        <jsp:include page="inc/customer_top.jsp" /> 
        <section>
            <jsp:include page="inc/customersidebar.jsp" />
            <div class="mainpanel">
                <script>
                    userProfileById();
                    </script>
                <div class="contentpanel">
                    <ol class="breadcrumb breadcrumb-quirk">
                        <li><a href="#"><i class="fa fa-home mr5"></i> Home</a></li>
                        <li class="active">My Profile</li>
                    </ol>
                    <div class="row profile-wrapper">
                <div class="col-xs-12 col-md-12 col-lg-12 profile-left">
                    <div class="profile-left-heading">
                        <ul class="panel-options">
                            <li><a><i class="glyphicon glyphicon-option-vertical"></i></a></li>
                        </ul>
                        <a href="#" class="profile-photo"><img class="img-circle img-responsive" src="/RationShop/resources/images/photos/loggeduser1.png" alt=""></a>
                        <h2 class="profile-name" id="h_name">Barbara Balashova</h2>
                        <h4 class="profile-designation">Customer</h4>

                        <!--<a href="#" class="btn btn-danger btn-quirk btn-block profile-btn-follow">Edit</a>-->



                    </div>
                    <div class="profile-left-body">
                        <h4 class="panel-title">Address</h4>
                        <p id="p_address"></p>


                        <hr class="fadeout">

                       
                        <h4 class="panel-title">Gender</h4>
                        <p><i class="glyphicon glyphicon-briefcase mr5"></i> <span id="p_gender"></span></p>
                        <hr class="fadeout">
                        <h4 class="panel-title">Email</h4>
                        <p><i class="glyphicon glyphicon-briefcase mr5"></i> <span id="p_email"></span></p>

                        <hr class="fadeout">

                        <h4 class="panel-title">Contacts</h4>
                        <p><i class="glyphicon glyphicon-phone mr5"></i> <span id="p_contact"></span></p>
                        <h4 class="panel-title">Ration Catrd No</h4>
                        <p><i class="glyphicon glyphicon-phone mr5"></i> <span id="p_ardno"></span></p>
                        <hr class="fadeout">
                        <h4 class="panel-title">Ration Catrd No</h4>
                        <p><i class="glyphicon glyphicon-phone mr5"></i> <span id="p_adharno"></span></p>
                        <hr class="fadeout">


                    </div>
                </div>
              

            </div><!-- row -->
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>
