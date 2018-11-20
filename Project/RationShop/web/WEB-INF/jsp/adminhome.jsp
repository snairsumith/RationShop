<%-- 
    Document   : additem
    Created on : Aug 30, 2018, 11:56:56 PM
    Author     : MinusBugspc1
--%>
        <%@page import="java.sql.ResultSet"%>
<%@page import="LiibraryFunction.DBFunctions"%>
   <%
                                            DBFunctions db = new DBFunctions();
                                            int SupplierCount=0;
                                            int IteamCount=0;
                                            int SalesCount=0;
                                            int PurchaseCount=0;
                                            String sql = "select count(*) as CountSup from supplier";
                                            ResultSet rs = db.SelectQuery(sql);
                                            String sql1 = "select count(*) as CountItem from item";
                                            ResultSet rs1 = db.SelectQuery(sql1);
                                            if(rs.next()){
                                               SupplierCount=rs.getInt("CountSup");
                                            }
                                            if(rs1.next()){
                                               IteamCount=rs1.getInt("CountItem");
                                            }
                                            String sql2 = "select count(*) as CountSales from item";
                                            ResultSet rs2 = db.SelectQuery(sql2);
                                            if(rs2.next()){
                                               SalesCount=rs2.getInt("CountSales");
                                            }
                                            String sql3 = "select count(*) as PurchaseCount from purchase";
                                            ResultSet rs3 = db.SelectQuery(sql3);
                                            if(rs3.next()){
                                               PurchaseCount=rs3.getInt("PurchaseCount");
                                            }
                                           
%>
<jsp:include page="inc/admin_top.jsp" /> 
<section>
    <jsp:include page="inc/adminsidebar.jsp" />
    <div class="mainpanel">

        <div class="contentpanel">

            <div class="row">
                <div class="row panel-statistics">
                    <div class="col-sm-6">
                        <div class="panel panel-updates">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-xs-7 col-lg-8">
                                        <h4 class="panel-title text-success">Items</h4>
                                        <h3> <%= IteamCount %></h3>
                                        <div class="progress">
                                            <div style="width: 75.7%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="75.7" role="progressbar" class="progress-bar progress-bar-success">
                                                <span class="sr-only"></span>
                                            </div>
                                        </div>
                                        <p>Added item for this month:<%= IteamCount %></p>
                                    </div>
                                   
                                </div>
                            </div>
                        </div><!-- panel -->
                    </div><!-- col-sm-6 -->

                    <div class="col-sm-6">
                        <div class="panel panel-danger-full panel-updates">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-xs-7 col-lg-8">
                                        <h4 class="panel-title text-warning">suppliers</h4>
                                        <h3><%= SupplierCount %></h3>
                                        <div class="progress">
                                            <div style="width: 39.9%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="<%= SupplierCount %>" role="progressbar" class="progress-bar progress-bar-warning">
                                                <span class="sr-only"></span>
                                            </div>
                                        </div>
                                        <p>
                                            Total Registered Suppliers: <%= SupplierCount %>
                                        </p>
                                    </div>
                                   
                                </div>
                            </div>
                        </div><!-- panel -->
                    </div><!-- col-sm-6 -->

                    <div class="col-sm-6">
                        <div class="panel panel-success-full panel-updates">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-xs-7 col-lg-8">
                                        <h4 class="panel-title text-success">Total Sales</h4>
                                        <h3><%= SalesCount %></h3>
                                        <div class="progress">
                                            <div style="width: 55.4%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="55.4" role="progressbar" class="progress-bar progress-bar-info">
                                                <span class="sr-only">55.4% Complete (success)</span>
                                            </div>
                                        </div>
                                        <p>Sold sales for this month: <%= SalesCount %></p>
                                    </div>
                                  
                                </div>
                            </div>
                        </div><!-- panel -->
                    </div><!-- col-sm-6 -->

                    <div class="col-sm-6">
                        <div class="panel panel-updates">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-xs-7 col-lg-8">
                                        <h4 class="panel-title text-danger">Total Purchase</h4>
                                        <h3><%= PurchaseCount %></h3>
                                        <div class="progress">
                                            <div style="width: 22.1%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="22.1" role="progressbar" class="progress-bar progress-bar-danger">
                                                <span class="sr-only">22.1% Complete (success)</span>
                                            </div>
                                        </div>
                                        <p>Total Purchase count for this month: <%= PurchaseCount %></p>
                                    </div>
                                   
                                </div>
                            </div>
                        </div><!-- panel -->
                    </div><!-- col-sm-6 -->

                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>

