
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var baseurl = "http://localhost:8080/RationShop/adminapi";
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
                        window.location.href = "/RationShop/shopowner/shophome";
                    } else if (result == 1) {
                        window.location.href = "/RationShop/customer/customermyprofile";
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
                    window.location.reload()
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
    var state = $("#txtSupplierState").val();
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
                    window.location.reload()
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
    var location="1";
    var ardNo=$("#txtShopOwnerard").val();
    

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
    if(contactno.length<10||contactno.length>11){
        $("#err_shopcontact").text("Not a valid Contact");
        isValid = false;
    }else{
         $("#err_shopcontact").text("");
        isValid = true;
    }
    
   
    if (isValid) {
        var url = baseurl + "/shopowner_reg?name=" + name + "&password=" + password + "&address=" + address + "&dob=" + dob + "&email=" + email + "&contactno=" + contactno + "&gender=" + gender + "&status=&ardNo="+ardNo+"&location="+location+"&pincode="+pincode;
        $.ajax({url: url, success: function (result) {
                if (result == "1") {
                    alert("Shop Owner Added Sucessfully ")
                    window.location.reload()
                } else {
                    alert("Error occured.Please try again after some time ");
                }
            }});
    }
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


function quotasetting_add(){
    var categoryId = $("#CmbCategory").val();
    var itemId = $("#CmbItem").val();
    var quantity = $("#txtQuantity").val();
    var price = $("#txtRate").val();
    var date = $("#txtDate").val();
     var url = baseurl + "/qutosettings?categoryId="+categoryId+"&itemId="+itemId+"&itemQuantity="+quantity+"&itemRate="+price+"&date="+date;
        $.ajax({url: url, success: function (result) {
                if (result == 1) {
                    alert("Quota Settings Allowed")
                    window.location.href="quotalist"
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
    