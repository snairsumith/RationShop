<%-- 
    Document   : shopsales
    Created on : Sep 21, 2018, 12:01:38 AM
    Author     : Sumith
--%>


        <%@page import="LiibraryFunction.DBFunctions"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<jsp:include page="inc/shopowner_top.jsp" /> 
 <script>
        getCustomerByShop();
    </script>
        <section>
            <jsp:include page="inc/shopownersidebar.jsp" />
            <div class="mainpanel">
  <div class="contentpanel">
            <ol class="breadcrumb breadcrumb-quirk">
                <li><a href="#"><i class="fa fa-home mr5"></i> Home</a></li>
                <li class="active">Sales Entry</li>
            </ol>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel">
                        <div class="panel-heading">
                            <h4 class="panel-title">Sales Entry</h4>
                            <p>Enter Sales Details Here</p>
                        </div>
                        <div class="panel-body">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <select id="cmbCustomer" class="form-control" onchange="getcustomerBYId()">
                                        <option>Select Customer</option>
                                        
                                    </select>
                                </div>
                                <div class="form-group">
                                    <div class="panel-body">
                                        <h3 id="h3_custname"></h3>
                                        <div class="text-muted font-bold m-b-xs">
                                            <p id="p_address"></p></div>
                                        <p id="p_email"></p>
                                        <p id="p_phone"></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">

                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <%
                                        Random r = new Random();
                                        Calendar now = Calendar.getInstance();
                                        String randomNumber = "SALE" + String.format("%04d", r.nextInt(1001)) + now.get(Calendar.MILLISECOND);

                                    %>
                                    <input type="text" value="<%= randomNumber%>" placeholder="Enter Invoice Number" id="txtInvoiceNumber" class="form-control" />
                                </div>
                                <div class="form-group">
                                    <input type="date"  value="<%= now.get(Calendar.DATE)%>" placeholder="Enter Invoice Date" id="txtInvoiceDate" class="form-control" />
                                </div>
                             
                                <div class="form-group">
                                    <button class="btn btn-success btn-quirk btn-wide mr5" onclick="insertSales()">Save</button>
                                     <input type="hidden" value="0" id="isItemInsert"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <select id="cmbItem" class="form-control" onchange="getItemByAllotement()">
                                            <option value="0">Select Item</option>
                                          
                                        </select>

                                    </div>
                                </div>

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <input type="text" placeholder="Enter Price" id="txtPrice" class="form-control" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <input type="text" placeholder="Enter Quantity" id="txtQuantity" class="form-control" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <button class="btn btn-success btn-quirk btn-wide mr5 " onclick="insertSalesItem()">Add</button>
                                    </div>
                                </div>
                            </div>
                           <div class="row">
                                <div class="col-md-12">
                                    <div class="panel">
                                        <div class="panel-body">
                                            <div class="row">
                                                <table class="table">
                                                    <thead>
                                                    <th>Item Name</th>
                                                    <th>Quantity</th>
                                                    <th>Rate</th>
                                                    <th>Total Amount</th>
                                                    
                                                    </thead>
                                                    <tbody id="tblItem">
                                                        
                                                    </tbody>
                                                </table>
                                            </div>
                                                
                                        </div>
                                            
                                    </div>
                                        
                                </div>
                            </div>


                        </div>
                    </div>
                </div>
            </div>
        </div>
            </div>
        </section>
