
<jsp:include page="inc/shopowner_top.jsp" /> 
<section>
    <jsp:include page="inc/shopownersidebar.jsp" />
    <div class="mainpanel">

        <div class="contentpanel">
            <ol class="breadcrumb breadcrumb-quirk">
                <li><a href="#"><i class="fa fa-home mr5"></i> Home</a></li>
                <li class="active">Alloted Quota</li>
            </ol>


            <div class="row">
                <div class="col-md-12">
                    <div class="panel">
                        <div class="panel-heading">
                            <h4 class="panel-title">Alloted Quota</h4>
                            <p>View Your Allotments Here</p>
                        </div>

                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Select Month</label>
                                       
                                        <select id="cmbMonth" class="form-control" onchange="getAllowedQuota()">
                                            <option value="0">Select Month</option>
                                            <%
                                                for (int i = 1; i < 13; i++) { 
                                             %>
                                             <option value=<%= i %>><%=  i %></option>
                                                        
                                               <%
                                                }
                                                %>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table nomargin">
                                            <thead>
                                                <tr>

                                                    <th>Item Name</th>
                                                    <th>Quantity</th>
                                                    <th>Rate</th>



                                                    <th></th>
                                                </tr>
                                            </thead>
                                            <tbody id="tbody_quota">
                                                
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
