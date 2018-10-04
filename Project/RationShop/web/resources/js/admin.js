/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var baseurl="http://localhost:8080/RationShop/adminapi";
$(document).ready(function(){
    
});
function login(){
    var username=$("#txtUsername").val();
    var password=$("#txtPassword").val();
    if(username==""||password==""){
        alert("please fill the blank field");
    }else{
        
    
    var url=baseurl+"/adminlogin?username="+username+"&password="+password;
    $.ajax({url: url, success: function(result){
        if(result=="sucess"){
            window.location.href="/RationShop/admin/adminhome";
        }else{
            alert("Incorrect username and passwor");
        }
    }});
    }
   
}

function addItem(){
    var itemname=$("#txtItemName").val();
    var itemdesc=$("#txtItemDescription").val();
    var itemprice=$("#txtItemPrice").val();
    var itemqty=$("#txtItemQuantity").val();
  
    
    var url=baseurl+"/additem?itemname="+itemname+"&itemdesc="+itemdesc+"&itemprice="+itemprice+"&itemquantity="+itemqty
    $.ajax({url: url, success: function(result){
        if(result=="1"){
            alert("Item added sucessfully ")
            window.location.reload()
        }else{
            alert("Error occoured.Please try again after some time ");
        }
    }});
}