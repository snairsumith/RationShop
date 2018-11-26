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

 <!-- Modal -->
                    <div class="modal bounceIn animated" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    <h4 class="modal-title" id="myModalLabel">Update Sales Here</h4>
                                </div>
                                <div class="modal-body">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                    <label class="col-sm-3 control-label">Required Quantity <span class="text-danger">*</span></label>    
                                                    <div class="col-sm-8">
                                                        <input type="text" placeholder="Enter Quantity/Litre" id="txtQuantity" class="form-control" />
                                                    </div>
                                                
                                            </div>
                                            
                                            <div class="form-group">
                                                <input type="hidden"  id="hdAllotementId" />
                                            </div>      
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                    <button type="button" class="btn btn-primary" onclick="insertSalesItemCustomer()">Buy</button>
                                </div>
                            </div><!-- modal-content -->
                        </div><!-- modal-dialog -->
                    </div><!-- modal -->
                            </body>
                            </html>

