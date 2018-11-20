<%-- 
    Document   : customerfeedback
    Created on : Sep 20, 2018, 1:09:46 AM
    Author     : Sumith
--%>


        <jsp:include page="inc/customer_top.jsp" /> 
        <section>
            <jsp:include page="inc/customersidebar.jsp" />
            <div class="mainpanel">
 <script>
            getAllCustFeedBack();
        </script>
                <div class="contentpanel">
                    <ol class="breadcrumb breadcrumb-quirk">
                        <li><a href="#"><i class="fa fa-home mr5"></i> Home</a></li>
                        <li class="active">Feedbacks</li>
                    </ol>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="panel">
                                <div class="panel-heading">
                                     <a href="customernewfeedback?uname=<%= request.getParameter("uname") %>" class="btn btn-primary pull-right">Send New</a>
                                    <h4 class="panel-title">Feedbacks</h4>
                                    <p>List Feedbacks Here</p>
                                </div>
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
                    </div>
                </div>
            </div>
        </section>
                           
                         