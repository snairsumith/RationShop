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
                getAllItemByCategoryId(val.categoryId);
            });
        }});


}

function insertSalesItem() {
    var itemid = $("#txtItemId").val();
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

function insertSalesItemCustomer() {
//    var itemid = $("#cmbItem").val();
//    var price = $("#txtPrice").val();
//    var qty = $("#txtQuantity").val();
//    var purchaseid = $("#txtInvoiceNumber").val();
//    var url = baseurl + "/insertsalseItem?itemId=" + itemid + "&price=" + price + "&qty=" + qty + "&purchaseid=" + purchaseid;
//    $.ajax({url: url, success: function (result) {
//            if (result == "1") {
//                $("#isItemInsert").val("1");
//                getAllSalesItem();
//                 $("#cmbItem").val("0");
//                $("#txtPrice").val("");
//                $("#txtQuantity").val("");
//            } else {
//                alert("Error occured.Please try again after some time ");
//            }
//        }});

aler("Sucessfully Purchase");

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
    function shopownerProfileByIdInEditProfile() {
    var shopownerId = localStorage.getItem("username");
    var url = baseurl + "/getshopownerbyid?shopusername=" + shopownerId;
    $.ajax({url: url, success: function (result) {
            $.each(result, function (key, val) {
                $("#txtShopOwnerName").val(val.name);
                $("#txtShopOwnerAddress").val(val.address);
                $("#txtShopOwnerpincode").val(val.pinCode);
                $("#txtShopOwnercontact").val(val.mobile);
                
                $("#txtShopOwnerard").val(val.ardnumber);
               
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
    var url="";
    var RoleType = $("#cmbRole").val();
    var Title = $("#txtTitle").val();
    var Description = $("#txtDescription").val();
    if(RoleType==2){
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


function getAllItemByCategoryId(categoryId) {
   
    var url = baseurl + "/getItemByCategory?CategoryId=" + categoryId;
    $('#cmbItem').html("");
    $.ajax({url: url, success: function (result) {
            $.each(result, function (key, val) {
                $('#cmbItem')
                        .append($("<option></option>")
                                .attr("value", val.date)
                                .text(val.itemName));

            });
        }});

}

function getItemByAllotement() {
   var AllotementId=$("#cmbItem").val();
   
    var url = baseurl + "/getItemByAllotementId?AllotmentId=" + AllotementId;
    $.ajax({url: url, success: function (result) {
            $.each(result, function (key, val) {
                $("#txtPrice").val(val.rate);
                $("#txtQuantity").val(val.quantity);
                $("#txtItemId").val(val.date);
                
            });
        }});

}


function shopowner_update() {
    var name = $("#txtShopOwnerName").val();
    var password = $("#txtPassword").val();
    var address = $("#txtShopOwnerAddress").val();
    var dob = $("#txtShopOwnerDOB").val();
    var email = $("#txtShopOwnerEmailId").val();
    var contactno = $("#txtShopOwnerContact").val();
    var gender = $("#rdgender").val();
    var status = $("#cmdSatus").val();
    var username=localStorage.getItem("username");
    var url = baseurl + "/shopowner_update?name=" + name + "&password=" + password + "&address=" + address + "&dob=" + dob + "&email=" + email + "&contactno=" + contactno + "&gender=" + gender + "&status=" + status+"&username="+username;
    $.ajax({url: url, success: function (result) {
            if (result == "1") {
                alert("Shop owner added sucessfully ")
                window.location.reload()
            } else {
                alert("Error occoured.Please try again after some time ");
            }
        }});
}