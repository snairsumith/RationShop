 <jsp:include page="inc/admin_top.jsp" /> 
        <section>
            <jsp:include page="inc/adminsidebar.jsp" />
    <div class="mainpanel">

        <div class="contentpanel">
            <ol class="breadcrumb breadcrumb-quirk">
                <li><a href="index-2.html"><i class="fa fa-home mr5"></i> Home</a></li>
                <li class="active">New ShopOwner</li>
            </ol>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel">
                        <div class="panel-heading">
                            <h4 class="panel-title">New ShopOwner</h4>
                            <p>Add New ShopOwner here </p>
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                <input type="text" placeholder="Enter Shop Owner Name" id="txtShopOwnerName" class="form-control" />
                            </div>
                            
                            <div class="form-group">
                                <input type="Password" placeholder="Enter Password Here" id="txtPassword" class="form-control" />
                            </div>
                            <div class="form-group">
                                <input type="textarea" placeholder="Enter Shop Owner Address" id="txtShopOwnerAddress" class="form-control" />
                            </div>
                            <div class="form-group">
                                <input type="date" placeholder="Enter Shop Owner Date Of Birth" id="txtShopOwnerDOB" class="form-control" />
                            </div>
                            <div class="form-group">
                                <input type="email" placeholder="Enter Shop Owner Email Id" id="txtShopOwnerEmailId" class="form-control" />
                            </div>
                            <div class="form-group">
                                <input type="number" placeholder="Enter Shop Owner Contact" id="txtShopOwnerContact" class="form-control" />
                            </div>
                            <div class="form-group">
                                <label class="col-md-2 control-label nopaddingtop">Status <span class="text-danger">*</span></label>
                                <div class="col-md-2">
                                    <select class="form-control"  id="cmdSatus">
                                        <option value="1">Verified</option>
                                        <option value="0">Not Verified</option>
                                    </select>
                                </div>
                               

                            </div>
                            <br/><br/>
                            <div class="form-group ">
                                    <label class="col-md-2 control-label nopaddingtop">Gender <span class="text-danger">*</span></label>
                                    <div class="col-md-2">
                                        <label class="radiobox ">
                                            <input id="rdgender" type="radio" name="gender" value="Male" required>
                                            <span>Male</span>
                                        </label>
                                    </div>
                                    <div class="col-md-2">
                                        <label class="radiobox">
                                            <input id="rdgender" type="radio" name="gender" value="Female">
                                            <span>Female</span>
                                        </label>

                                    </div>

                                </div>
                            
                           

                            
                            <div class="row">
                                <div class="col-sm-9 col-sm-offset-3">
                                    <button class="btn btn-success btn-quirk btn-wide mr5" type="button" onclick="shopowner_reg()">Submit</button>
                                    <button type="reset" class="btn btn-quirk btn-wide btn-default">Reset</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>