/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function(){
    $("#sgnin").click(function(){
        $("#signinForm").show();
        $("#sgnin").hide();
        $("#regForm").hide();
        $("#ho").hide();
       $("#pab").hide();
       $("#ho").hide();
       $("#reg").hide();
        
    });
    $("#reg").click(function(){
       $("#ho").show();
       $("#pab").show();
       $("#reg").hide();
       $("#sgnin").hide();
       $("#para").show();
    });
    $("#ho").click(function(){
        $("#hospForm").show();
        $("#sgnin").hide();
        $("#regForm").hide();
        $("#ho").hide();
       $("#pab").hide();
       $("#reg").hide();
       $("#para").hide();
    });
    $("#pab").click(function(){
        $("#regForm").show();
        $("#sgnin").hide();
        $("#ho").hide();
        $("#pab").hide();
       $("#reg").hide();
       $("#para").hide();
    });
    $("#recent").click(function (){
        $("#ptable").show();
        $("#t").show();
    });
    $("#navsign").click(function (){
        $("#signinForm").show();
        $("#sgnin").hide();
        $("#reg").hide();
    });
});
