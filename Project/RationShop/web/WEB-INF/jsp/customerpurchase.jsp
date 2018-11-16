<%-- 
    Document   : customerpurchase
    Created on : Sep 20, 2018, 1:35:46 AM
    Author     : Sumith
--%>

        <jsp:include page="inc/customer_top.jsp" /> 
        <section>
            <jsp:include page="inc/customersidebar.jsp" />
            <div class="mainpanel">
  <script>
            getuserCategoryId();
            
            
            
        </script>
                <div class="contentpanel">
                    <ol class="breadcrumb breadcrumb-quirk">
                        <li><a href="#"><i class="fa fa-home mr5"></i> Home</a></li>
                        <li class="active">Purchase</li>
                    </ol>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="panel">
                                <div class="panel-heading">
                                    <h4 class="panel-title">Purchase</h4>
                                    <p> Purchase From Here</p>
                                    <input type="hidden" value="" id="hdCategoryId"/>
                                </div>
                                <div class="panel-body">
                                    <div class="table-responsive">
                                        <table class="table nomargin">
                                            <thead>
                                                <tr>

                                                    <th>Item Name</th>
                                                    <th>Price</th>
                                                    <th>Quantity</th>
                                                    <th>Date</th>
                                                    <th></th>
                                                  

                                                    
                                                </tr>
                                            </thead>
                                            <tbody id="tblist">
                                                <tr>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>

                                                </tr>
                                            </tbody>

                                        </table>
                                    </div>
                                </div>
                            </div>
                          
                            </section>


                            </body>
                            </html>

