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
        $("#err_email").text("email not valid required");
        isValid = false;
    } else {
        $("#err_email").text("");
        isValid = true;
    }

    if (contact.length < 10 || contact.length > 11) {
        $("#err_contact").text("contact not valid");
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

function emailValidation(email) {
    var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    return regex.test(email);
}