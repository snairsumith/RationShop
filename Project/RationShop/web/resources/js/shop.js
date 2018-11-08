/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var baseurl = "http://localhost:8080/RationShop/shopownerapi";
var commonurl="http://localhost:8080/RationShop/commonApi/";
$(document).ready(function () {
    
   
});

function getAllowedQuota(){
    var month=$("#cmbMonth").val();
    var username=localStorage.getItem("username");
    var url = baseurl + "/getallowedquota?shopusername="+username+"&month="+month;
    $("#tbody_quota").html("");
    var htm="";
       $.ajax({url: url, success: function (result) {
                $.each( result, function( key, val ) {
                     $("#tbody_quota").append("<tr><td>"+val.itemName+"</td><td>"+val.quota+"</td><td>"+val.amount+"</td></tr>");
                });
            }});
        
   
}