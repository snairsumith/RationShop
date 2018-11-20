
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var baseurl = "http://localhost:8080/RationShop/adminapi";
var commonurl = "http://localhost:8080/RationShop/commonApi/";
$(document).ready(function () {

});
function login() {
    var username = $("#txtUsername").val();
    var password = $("#txtPassword").val();
    var isValid = true;
    if (username != "") {
        isValid = true;
        $("#err_uname").text("");
    } else {
        isValid = false;
        $("#err_uname").text("username required");
    }

    if (password != "") {
        isValid = true;
        $("#err_pwd").text("");
    } else {
        isValid = false;
        $("#err_pwd").text("password required");
    }


    if (isValid) {
        var url = baseurl + "/commonlogin?username=" + username + "&password=" + password;
        $.ajax({url: url, success: function (result) {
                if (result != "fail") {
                    if (result == 2) {

                        window.location.href = "/RationShop/admin/adminhome";
                    } else if (result == 3) {
                        localStorage.setItem("username", username);
                        window.location.href = "/RationShop/shopowner/shophome";
                    } else if (result == 1) {
                         localStorage.setItem("username", username);
                        window.location.href = "/RationShop/customer/customermyprofile?uname="+username;
                    }

                }
            }});
    }


}

function addItem() {
    var itemname = $("#txtItemName").val();
    var itemdesc = $("#txtItemDescription").val();

    var isvalid = true;
    if (itemname != "") {
        isvalid = true;
        $("#err_additem").text("");
    } else {
        isvalid = false;
        $("#err_additem").text("Item required");
    }

    if (isvalid) {
        var url = baseurl + "/additem?itemname=" + itemname + "&itemdesc=" + itemdesc
        $.ajax({url: url, success: function (result) {
                if (result == "1") {
                    alert("Item added sucessfully ")
                    window.location.href = "itemdetails";
                } else {
                    alert("Error occoured.Please try again after some time ");
                }
            }});
    }
}

function shopowner_reg() {
    var name = $("#txtShopOwnerName").val();
    var password = $("#txtPassword").val();
    var address = $("#txtShopOwnerAddress").val();
    var dob = $("#txtShopOwnerDOB").val();
    var email = $("#txtShopOwnerEmailId").val();
    var contactno = $("#txtShopOwnerContact").val();
    var gender = $("#rdgender").val();
    var status = $("#cmdSatus").val();
    var url = baseurl + "/shopowner_reg?name=" + name + "&password=" + password + "&address=" + address + "&dob=" + dob + "&email=" + email + "&contactno=" + contactno + "&gender=" + gender + "&status=" + status;
    $.ajax({url: url, success: function (result) {
            if (result == "1") {
                alert("Shop owner added sucessfully ")
                window.location.reload()
            } else {
                alert("Error occoured.Please try again after some time ");
            }
        }});
}
function addsuppliers() {
    var name = $("#txtSupplierName").val();
    var address = $("#txtSupplierAddress").val();
    var state = $("#txtShopOwnerstate").val();
    var email = $("#txtSupplierEmailId").val();
    var contact = $("#txtSupplierContact").val();
    if (!emailValidation(email)) {
        $("#err_email").text("Required Valid Email");
        isValid = false;
    } else {
        $("#err_email").text("");
        isValid = true;
    }

    if (contact.length < 10 || contact.length > 11) {
        $("#err_contact").text("Required Valid Contact");
        isValid = false;
    } else {
        $("#err_contact").text("");
        isValid = true;
    }
    if (isValid) {


        var url = baseurl + "/addsuppliers?name=" + name + "&address=" + address + "&state=" + state + "&email=" + email + "&contact=" + contact;
        $.ajax({url: url, success: function (result) {
                if (result == "1") {
                    alert("Supplier added sucessfully ")
                    window.location.href = "suppliersdetails";
                } else {
                    alert("Error occoured.Please try again after some time ");
                }
            }});
    }
}
function shopowner_reg() {
    var name = $("#txtShopOwnerName").val();
    var contactno = $("#txtShopOwnercontact").val();
    var gender = $("#rdgender").val();
    var status = $("#cmdSatus").val();
    var password = $("#txtPassword").val();
    var address = $("#txtShopOwnerAddress").val();
    var dob = $("#txtShopOwnerDOB").val();
    var email = $("#txtShopOwnerEmailId").val();
    var pincode = $("#txtShopOwnerpincode").val();
    var location = $("#txtShopOwnerdistrict").val();
    var ardNo = $("#txtShopOwnerard").val();


    var isValid = true;
    if (name == "") {
        $("#err_shopname").text("Username Required");
        isValid = false;
    } else {
        $("#err_shopname").text("");
        isValid = true;
    }

    if (password == "") {
        $("#err_shoppass").text("Password Required");
        isValid = false;
    } else {
        $("#err_shoppass").text("");
        isValid = true;
    }
    if (ardNo == "") {
        $("#err_shopard").text("ARD No Required");
        isValid = false;
    } else {
        $("#err_shopard").text("");
        isValid = true;
    }
    if (pincode == "") {
        $("#err_shoppin").text("Pincode Required");
        isValid = false;
    } else {
        $("#err_shoppin").text("");
        isValid = true;
    }
    if (!emailValidation(email)) {
        $("#err_shopemail").text("Required Valid Email");
        isValid = false;
    } else {
        $("#err_shopemail").text("");
        isValid = true;
    }
    if (contactno.length < 10 || contactno.length > 11) {
        $("#err_shopcontact").text("Not a valid Contact");
        isValid = false;
    } else {
        $("#err_shopcontact").text("");
        isValid = true;
    }


    if (isValid) {
        var url = baseurl + "/shopowner_reg?name=" + name + "&password=" + password + "&address=" + address + "&dob=" + dob + "&email=" + email + "&contactno=" + contactno + "&gender=" + gender + "&status=&ardNo=" + ardNo + "&location=" + location + "&pincode=" + pincode;
        $.ajax({url: url, success: function (result) {
                if (result == "1") {
                    alert("Shop Owner Added Sucessfully ")
                    window.location.href = "shopownerslist";
                } else {
                    alert("Error occured.Please try again after some time ");
                }
            }});
    }
}


function updateCustomer() {
    var CustomerName = $("#txtCustomerName").val();
    var RationCardNo = $("#txtcustomerrationcardnumber").val();
    var Address = $("#txtcustomerAddress").val();
    var AadharNo = $("#txtcustomeradharnumber").val();
    var DOB = $("#txtcustomerDOB").val();
    var EmailId = $("#txtcustomerEmailId").val();
    var ContactNo = $("#txtcustomerContact").val();
    var Gender = $("#rdGender").val();
    var username = localStorage.getItem("username");
    var password = $("#txtPassword").val();
    var CategoryId=$("#cmbCategory").val();
    var CustomerId=$("#hdCustomerId").val();
    var url = baseurl + "/updateCustomer?CustomerName=" + CustomerName + "&RationCardNo=" + RationCardNo + "&Address=" + Address + "&AadharNo=" + AadharNo + "&DOB=" + DOB + "&EmailId=" + EmailId + "&ContactNo=" + ContactNo + "&Gender=" + Gender + "&ShopOwnerId=" + username + "&Password=" + password+"&CategoryId="+CategoryId+"&CustomerId="+CustomerId;

    $.ajax({url: url, success: function (result) {
            if (result == "1") {
                alert("Customer update sucessfully ")
                window.location.href="customermyprofile?uname="+username;
            } else {
                alert("Error occoured.Please try again after some time ");
            }
        }});
}
function cust_reg() {
    var name = $("#txtCustomerName").val();
    var address = $("#Customerrationcardnumber").val();
    var dob = $("#txtCustomeradharnumber").val();
    var address = $("#CustomerAddress").val();
    var dob = $("#txtCustomerDOB").val();
    var email = $("#txtCustomerEmailId").val();
    var contactno = $("#txtcustomerContact").val();
    var gender = $("#rdgender").val();
    var status = $("#cmdSatus").val();
    var isValid = true;
    if (name == "") {
        $("#err_username").text("Username Required");
        isValid = false;
    } else {
        $("#err_username").text("");
        isValid = true;
    }
    var password = $("#txtPassword").val();
    if (password == "") {
        $("#err_password").text("Password Required");
        isValid = false;
    } else {
        $("#err_password").text("");
        isValid = true;
    }

    if (!emailValidation(email)) {
        $("#err_email").text("Required valid Email ");
        isValid = false;
    } else {
        $("#err_email").text("");
        isValid = true;
    }


    if (isValid) {
        var url = baseurl + "/shopowner_reg?name=" + name + "&password=" + password + "&address=" + address + "&dob=" + dob + "&email=" + email + "&contactno=" + contactno + "&gender=" + gender + "&status=" + status;
        $.ajax({url: url, success: function (result) {
                if (result == "1") {
                    alert("Customer Added Sucessfully ")
                    window.location.reload()
                } else {
                    alert("Error occured.Please try again after some time ");
                }
            }});
    }
}


function quotasetting_add() {
    var categoryId = $("#CmbCategory").val();
    var itemId = $("#CmbItem").val();
    var quantity = $("#txtQuantity").val();
    var price = $("#txtRate").val();
    var date = $("#txtDate").val();
    var url = baseurl + "/qutosettings?categoryId=" + categoryId + "&itemId=" + itemId + "&itemQuantity=" + quantity + "&itemRate=" + price + "&date=" + date;
    $.ajax({url: url, success: function (result) {
            if (result == 1) {
                alert("Quota Settings Allowed")
                window.location.href = "quotalist"
            } else {
                alert("Error occured.Please try again after some time ");
            }
        }});
}

function getalldistrict() {
    var parentid = $("#txtShopOwnerstate").val();
    var url = commonurl + "/getalllocation?ParentId=" + parentid;
    $.ajax({url: url, success: function (result) {
            $.each(result, function (key, val) {
                $('#txtShopOwnerdistrict')
                        .append($("<option></option>")
                                .attr("value", val.locationId)
                                .text(val.locationName));

            });
        }});

}
function getallocation() {
    var parentid = $("#txtShopOwnerdistrict").val();
    var url = commonurl + "/getalllocation?ParentId=" + parentid;
    $('#txtShopOwnerlocation')
            .empty()
    $.ajax({url: url, success: function (result) {
            $.each(result, function (key, val) {
                $('#txtShopOwnerlocation')
                        .append($("<option></option>")
                                .attr("value", val.locationId)
                                .text(val.locationName));

            });
        }});

}

function getsupplier() {
    var id = $("#cmbSupplier").val();
    var url = baseurl + "/getsupplier?supplierid=" + id;
    $.ajax({url: url, success: function (result) {
            $.each(result, function (key, val) {
                $("#h3_custname").text(val.suppliername);
                $("#p_address").text(val.supplieraddress);
                $("#p_phone").text("PH No: " + val.contact);
            });
        }});


}

function insertPurchaseItem() {
    var itemid = $("#cmbItem").val();
    var price = $("#txtPrice").val();
    var qty = $("#txtQuantity").val();
    var purchaseid = $("#txtInvoiceNumber").val();
    var url = baseurl + "/insertpurchseItem?itemId=" + itemid + "&price=" + price + "&qty=" + qty + "&purchaseid=" + purchaseid;
    $.ajax({url: url, success: function (result) {
            if (result == "1") {
                getAllPurchaseItem();
                $("#isItemInsert").val("1");
                $("#cmbItem").val("0");
                $("#txtPrice").val("");
                $("#txtQuantity").val("");
            } else {
                alert("Error occured.Please try again after some time ");
            }
        }});

}

function insertPurchase() {
    var isInsertItem = $("#isItemInsert").val();
    if (isInsertItem == 1) {
        var supplierId = $("#cmbSupplier").val();
        var invoicedate = $("#txtInvoiceDate").val();
        var invoiceduedate = $("#txtInvoiceDueDate").val();
        var purchaseid = $("#txtInvoiceNumber").val();
        var url = baseurl + "/insertpurchse?supplierId=" + supplierId + "&invoicedate=" + invoicedate + "&invoiceduedate=" + invoiceduedate + "&purchaseid=" + purchaseid;
        $.ajax({url: url, success: function (result) {
                if (result == "1") {
                    alert("Items Purchased Sucessfully")
                    window.location.reload()
                } else {
                    alert("Error occured.Please try again after some time ");
                }
            }});
    } else {
        alert("Please Add any Item then continue");
    }
}

function getAllPurchaseItem() {
    var id = $("#txtInvoiceNumber").val();
    var url = baseurl + "/getAllPurchaseItem?purchaseid=" + id;
    $("#tblItem").html("");
    $.ajax({url: url, success: function (result) {
            $.each(result, function (key, val) {
                $("#tblItem").append("<tr><td>" + val.itemName + "</td><td>" + val.quantity + "</td><td>" + val.rate + "</td><td>" + val.totalAmount + "</td>");
            });
        }});
}
function getAllPurchaseReport() {
    var to = $("#txttodate").val();
     var from = $("#txtfromdate").val();
      $("#tlist").html("");
    var url = baseurl + "/getPurchaseReport?PurchaseFrom=" + from+"&PurchaseTo="+to;
    $("#tblItem").html("");
    $.ajax({url: url, success: function (result) {
            $.each(result, function (key, val) {
                $("#tlist").append("<tr><td>" + val.purchaseId + "</td><td>" + val.supplierName + "</td><td>" + val.purcahseDate + "</td><td>" + val.totalAmount + "</td>");
            });
        }});
}
function insertstockassing() {
    var shopownerId = $("#txtselectshopowner").val();
    var itemId = $("#cmbItem").val();
    var quota = $("#txtassignedquota").val();
    var amount = $("#txtamount").val();
    var month = $("#txtmonth").val();
    var url = baseurl + "/insertstockassing?shopownerId=" + shopownerId + "&itemId=" + itemId + "&quota=" + quota + "&amount=" + amount + "&month=" + month;
    $.ajax({url: url, success: function (result) {
            if (result == "1") {
                alert("Quota Assigned Sucessfully")
                window.location.reload()
            } else {
                alert("Error occured.Please try again after some time ");
            }
        }});
}

function getAllFeedBack() {
    var senderType = $("#cmbChooseSender").val();

    $("#feedback_list").html("");
    if (senderType == "customer") {
        var url = baseurl + "/getAllFeedBackCustomer";
        $.ajax({url: url, success: function (result) {
                $.each(result, function (key, val) {
                    $("#feedback_list").append("<tr><td>" + val.title + "</td><td>" + val.description + "</td><td>" + val.senderName + "</td><td>" + val.dateOfSend + "</td></tr>");

                });
            }});
    } else {
        var url = baseurl + "/getAllFeedBackShop";
        $.ajax({url: url, success: function (result) {
                $.each(result, function (key, val) {
                    $("#feedback_list").append("<tr><td>" + val.title + "</td><td>" + val.description + "</td><td>" + val.senderName + "</td><td>" + val.dateOfSend + "</td></tr>");

                });
            }});
    }
}

function getAllCustFeedBack() {
    
    $("#feedback_list").html("");
    var shopownerId = localStorage.getItem("username");
        var url = baseurl + "/getAllFeedBackCustomerGet?username="+shopownerId;
        $.ajax({url: url, success: function (result) {
                $.each(result, function (key, val) {
                    $("#feedback_list").append("<tr><td>" + val.title + "</td><td>" + val.description + "</td><td>" + val.senderName + "</td><td>" + val.dateOfSend + "</td></tr>");

                });
            }});
   
}
function insertNotification() {
    var url="";
    var RoleType = $("#cmbRole").val();
    var Title = $("#txtTitle").val();
    var Description = $("#txtDescription").val();
    if(RoleType==3){
        url = commonurl + "/insertNotification?RoleType=" + RoleType + "&Title=" + Title + "&Description=" + Description+"&CategoryType=0";
    }else{
        url = commonurl + "/insertNotification?RoleType=1&Title=" + Title + "&Description=" + Description+"&CategoryType="+RoleType;
    }
    $.ajax({url: url, success: function (result) {
            if (result == "1") {
                alert("Notification Send Sucessfully")
                window.location.reload()
            } else {
                alert("Error occured.Please try again after some time ");
            }
        }});
}
function emailValidation(email) {
    var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    return regex.test(email);
}
function shopownermyprofiles() {
    var name = $("#txtName").val();
    var address = $("#txtAddress").val();

    var email = $("#txtEmailId").val();
    var contact = $("#txtContact").val();
    if (!emailValidation(email)) {
        $("#err_email").text("Required Valid Email");
        isValid = false;
    } else {
        $("#err_email").text("");
        isValid = true;
    }

    if (contact.length < 10 || contact.length > 11) {
        $("#err_contact").text("Required Valid Contact");
        isValid = false;
    } else {
        $("#err_contact").text("");
        isValid = true;
    }

}

function userProfileById() {
    var shopownerId = localStorage.getItem("username");
    var url = baseurl + "/getsuserbyid?shopusername=" + shopownerId;
    $.ajax({url: url, success: function (result) {
            $.each(result, function (key, val) {
                $("#h_name").text(val.customerName);
                $("#p_address").text(val.address);
                $("#p_location").text(val.locationName);
                $("#p_pincode").text(val.pinCode);
                $("#p_contact").text(val.contact);
                $("#p_email").text(val.customerEmail);
                $("#p_ardno").text(val.rationCardNo);
                $("#p_gender").text(val.gender);
                $("#p_adharno").text(val.aadharCardNo);
            });
        }});

}
function getuserProfileById() {
    var username = localStorage.getItem("username");
    var ShopOwnerId="";
    var url = baseurl + "/getsuserbyid?shopusername=" + username;
    $.ajax({url: url, success: function (result) {
            $.each(result, function (key, val) {
               $("#hdShopId").val(val.shopOwnerId);
            });
        }});
    
    
}
async function getuserCategoryId() {
    var username = localStorage.getItem("username");
    var ShopOwnerId="";
    var url = baseurl + "/getsuserbyid?shopusername=" + username;
    $.ajax({url: url, success: function (result) {
            $.each(result, function (key, val) {
               $("#hdCategoryId").val(val.categoryId);
               getAllItemsByCategoryId(val.categoryId);
            });
        }});
    
    
}
function shopSendFeedBack() {
    var optionId = $("#cmbChooseReciver").val();
    var ReciverId = "";
    if (optionId == "shop") {
        ReciverId = $("#hdShopId").val();
    } else {
        ReciverId = "admin";
    }
    var Title = $("#txtName").val();
    var Description = $("#txtDescription").val();
    var SenderId = localStorage.getItem("username");
    var Type = 3;
    var url = commonurl + "/sendFeedBack?Title=" + Title + "&Description=" + Description + "&SenderId=" + SenderId + "&ReciverId=" + ReciverId + "&Type=" + Type;
    $.ajax({url: url, success: function (result) {
            if (result == "1") {
                alert("Feedback Send Sucessfully")
                window.location.reload()
            } else {
                alert("Error occured.Please try again after some time ");
            }
        }});
}

function getAllItemsByCategoryId(categoryId) {
    
    $("#tblist").html("");
//    var categoryId = $("#hdCategoryId").val();
        var url = baseurl + "/getAllPurchaseItemByCustomer?categoryId="+categoryId;
        $.ajax({url: url, success: function (result) {
                $.each(result, function (key, val) {
                    $("#tblist").append("<tr><td>" + val.itemName + "</td><td>" + val.rate + "</td><td>" + val.quantity + "</td><td>" + val.date + "</td><td><a href='#'>Buy Now</a></td></tr>");

                });
            }});
   
}
function checkDate(){
        var dateString = $("#txtInvoiceDate").val();
        var myDate = new Date(dateString);
        var today = new Date();
        if ( myDate > today ) { 
            alert("You cannot enter a date in the future!");
            $("#btnPurchase").attr("disabled", "disabled");
            $("#txtInvoiceDate").val("");
        }else{
            $("#btnPurchase").removeAttr("disabled");       
        }
       
}