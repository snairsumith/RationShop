<%-- 
    Document   : purchaseentry
    Created on : Aug 31, 2018, 1:08:39 AM
    Author     : MinusBugspc1
--%>

<%@page import="java.util.Calendar"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="LiibraryFunction.DBFunctions"%>
<jsp:include page="inc/admin_top.jsp" /> 
<section>
    <jsp:include page="inc/adminsidebar.jsp" />
    <div class="mainpanel">

        <div class="contentpanel">
            <ol class="breadcrumb breadcrumb-quirk">
                <li><a href="#"><i class="fa fa-home mr5"></i> Home</a></li>
                <li class="active">Purchase Entry</li>
            </ol>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel">
                        <div class="panel-heading">
                            <h4 class="panel-title">Purchase Entry</h4>
                            <p>Enter Purchase Details Here</p>
                        </div>
                        <div class="panel-body">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <select id="cmbSupplier" class="form-control" onchange="getsupplier()">
                                        <option>Select Supplier</option>
                                        <%
                                            String sql = "select * from  supplier";
                                            DBFunctions db = new DBFunctions();
                                            ResultSet rs = db.SelectQuery(sql);
                                            while (rs.next()) {
                                        %>
                                        <option value=<%= rs.getString("supplierid")%>><%= rs.getString("suppliername")%></option>
                                        <%
                                            }
                                        %>
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
                                        String randomNumber = "PU" + String.format("%04d", r.nextInt(1001)) + now.get(Calendar.MILLISECOND);

                                    %>
                                    <input type="text" value="<%= randomNumber%>" placeholder="Enter Invoice Number" id="txtInvoiceNumber" class="form-control" />
                                </div>
                                <div class="form-group">
                                    <input type="date"  value="<%= now.get(Calendar.DATE)%>" placeholder="Enter Invoice Date" id="txtInvoiceDate" class="form-control" />
                                </div>
                                <div class="form-group">
                                    <input type="date" placeholder="Enter Invoice Due Date" id="txtInvoiceDueDate" class="form-control" />
                                </div>
                                <div class="form-group">
                                    <button class="btn btn-success btn-quirk btn-wide mr5" onclick="insertPurchase()">Save</button>
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
                                        <select id="cmbItem" class="form-control">
                                            <option value="0">Select Item</option>
                                            <%
                                                String sql1 = "select * from item";

                                                ResultSet rs1 = db.SelectQuery(sql1);
                                                while (rs1.next()) {
                                            %>
                                            <option value=<%= rs1.getInt("ItemId")%>><%= rs1.getString("ItemName")%></option>
                                            <%
                                                }
                                            %>
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
                                        <button class="btn btn-success btn-quirk btn-wide mr5 " onclick="insertPurchaseItem()">Add</button>
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
