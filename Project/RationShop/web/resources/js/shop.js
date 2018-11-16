/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var baseurl = "http://localhost:8080/RationShop/shopownerapi";
var commonurl = "http://localhost:8080/RationShop/commonApi/";
$(document).ready(function () {


});

function getAllowedQuota() {
    var month = $("#cmbMonth").val();
    var username = localStorage.getItem("username");
    var url = baseurl + "/getallowedquota?shopusername=" + username + "&month=" + month;
    $("#tbody_quota").html("");
    var htm = "";
    $.ajax({url: url, success: function (result) {
            $.each(result, function (key, val) {
                $("#tbody_quota").append("<tr><td>" + val.itemName + "</td><td>" + val.quota + "</td><td>" + val.amount + "</td></tr>");
            });
        }});


}
function insertCustomer() {
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
    var url = baseurl + "/insertCustomer?CustomerName=" + CustomerName + "&RationCardNo=" + RationCardNo + "&Address=" + Address + "&AadharNo=" + AadharNo + "&DOB=" + DOB + "&EmailId=" + EmailId + "&ContactNo=" + ContactNo + "&Gender=" + Gender + "&ShopOwnerId=" + username + "&Password=" + password+"&CategoryId="+CategoryId;

    $.ajax({url: url, success: function (result) {
            if (result == "1") {
                alert("Customer added sucessfully ")
                window.location.reload()
            } else {
                alert("Error occoured.Please try again after some time ");
            }
        }});
}

function getCustomerByShop() {
    var shopownerId = localStorage.getItem("username");
    var url = baseurl + "/getcustomerbyshop?shopusername=" + shopownerId;
    $.ajax({url: url, success: function (result) {
            $.each(result, function (key, val) {
                $('#cmbCustomer')
                        .append($("<option></option>")
                                .attr("value", val.customerId)
                                .text(val.customerName));

            });
        }});

}
function getCustomerByShopTable() {
    var shopownerId = localStorage.getItem("username");
    var url = baseurl + "/getcustomerbyshop?shopusername=" + shopownerId;
    $("#tbody_custlist").html("");
    $.ajax({url: url, success: function (result) {
            $.each(result, function (key, val) {
                $("#tbody_custlist").append("<tr><td>" + val.customerName + "</td><td>" + val.rationCardNo + "</td><td>" + val.aadharCardNo + "</td><td>" + val.address + "</td><td>" + val.gender + "</td><td>" + val.contact + "</td><td>" + val.customerEmail + "</td></tr>");

            });
        }});

}
function getcustomerBYId() {
    var id = $("#cmbCustomer").val();
    var url = baseurl + "/getcustomerbyid?CustomerId=" + id;
    $.ajax({url: url, success: function (result) {
            $.each(result, function (key, val) {
                $("#h3_custname").text(val.customerName);
                $("#p_address").text("AadharNo :" + val.aadharCardNo);
                $("#p_email").text("Ration No :" + val.rationCardNo);
                $("#p_phone").text("Email: " + val.customerEmail);
            });
        }});


}

function insertSalesItem() {
    var itemid = $("#cmbItem").val();
    var price = $("#txtPrice").val();
    var qty = $("#txtQuantity").val();
    var purchaseid = $("#txtInvoiceNumber").val();
    var url = baseurl + "/insertsalseItem?itemId=" + itemid + "&price=" + price + "&qty=" + qty + "&purchaseid=" + purchaseid;
    $.ajax({url: url, success: function (result) {
            if (result == "1") {
                $("#isItemInsert").val("1");
                getAllSalesItem();
                 $("#cmbItem").val("0");
                $("#txtPrice").val("");
                $("#txtQuantity").val("");
            } else {
                alert("Error occured.Please try again after some time ");
            }
        }});

}
function getAllSalesItem() {
    var id = $("#txtInvoiceNumber").val();
    var url = baseurl + "/getAllSalesItem?purchaseid=" + id;
    $("#tblItem").html("");
    $.ajax({url: url, success: function (result) {
            $.each(result, function (key, val) {
                $("#tblItem").append("<tr><td>" + val.itemName + "</td><td>" + val.quantity + "</td><td>" + val.rate + "</td><td>" + val.totalAmount + "</td>");
            });
        }});
}

function insertSales() {
     var isInsertItem=$("#isItemInsert").val();
    if(isInsertItem==1){
    var supplierId = $("#cmbCustomer").val();
    var invoicedate = $("#txtInvoiceDate").val();
    var purchaseid = $("#txtInvoiceNumber").val();
    var url = baseurl + "/insertsales?supplierId=" + supplierId + "&invoicedate=" + invoicedate + "&purchaseid=" + purchaseid;
    $.ajax({url: url, success: function (result) {
            if (result == "1") {
                alert("Items Purchased Sucessfully")
                window.location.reload()
            } else {
                alert("Error occured.Please try again after some time ");
            }
        }});
    }else{
         alert("Please Add any Item then continue");
    }
}

function shopownerProfileById() {
    var shopownerId = localStorage.getItem("username");
    var url = baseurl + "/getshopownerbyid?shopusername=" + shopownerId;
    $.ajax({url: url, success: function (result) {
            $.each(result, function (key, val) {
                $("#h_name").text(val.name);
                $("#p_address").text(val.address);
                $("#p_location").text(val.locationName);
                $("#p_pincode").text(val.pinCode);
                $("#p_contact").text(val.mobile);
                $("#p_email").text(val.email);
                $("#p_ardno").text(val.ardnumber);
                $("#p_gender").text(val.gender);
            });
        }});

}


function showChooseOptionForFeedBack() {
    var optionId = $("#cmbChooseReciver").val();
    if (optionId == "customer") {
        $("#cmbCustomer").css("display", "block");
    } else {
        $("#cmbCustomer").css("display", "none");
    }
}

function shopSendFeedBack() {
    var optionId = $("#cmbChooseReciver").val();
    var ReciverId = "";
    if (optionId == "customer") {
        ReciverId = $("#cmbCustomer").val();
    } else {
        ReciverId = "admin";
    }
    var Title = $("#txtName").val();
    var Description = $("#txtDescription").val();
    var SenderId = localStorage.getItem("username");
    var Type = 2;
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

function getAllFeedBackFromCustomer() {
    var ReciverId = localStorage.getItem("username");
    var url = baseurl + "/getAllFeedBackFromCustomer?shopusername=" + ReciverId;
    $.ajax({url: url, success: function (result) {
            $.each(result, function (key, val) {
                $("#feedback_list").append("<tr><td>" + val.title + "</td><td>" + val.description + "</td><td>" + val.senderName + "</td><td>" + val.dateOfSend + "</td></tr>");

            });
        }});
}

function insertNotification() {
    var RoleType = $("#cmbRole").val();
    var Title = $("#txtTitle").val();
    var Description = $("#txtDescription").val();
    var url = commonurl + "/insertNotification?RoleType=" + RoleType + "&Title=" + Title + "&Description=" + Description;
    $.ajax({url: url, success: function (result) {
            if (result == "1") {
                alert("Notification Send Sucessfully")
                window.location.reload()
            } else {
                alert("Error occured.Please try again after some time ");
            }
        }});
}

function getAllSalesItemByCustoer() {
    var id = $("#cmbCustomer").val();
    var url = baseurl + "/getCustomerWiseReportSale?CustomerId=" + id;
    $("#tblItem").html("");
    $.ajax({url: url, success: function (result) {
            $.each(result, function (key, val) {
                $("#tblItem").append("<tr><td>" + val.itemName + "</td><td>" + val.quantity + "</td><td>" + val.rate + "</td><td>" + val.totalAmount + "</td><td>" + val.date + "</td></tr>");
            });
        }});
}