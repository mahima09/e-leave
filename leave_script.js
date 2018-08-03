// angular ka swagat
// leaveSysApp is name of the app
var app=angular.module('leaveSysApp',[]);
// console.log(app);
// adding route to a website
// controller is used to create a controller
/*app.controller('statusController',function($scope){
$scope.leave_status=[{
	num:'1',
	sub: "Moe",
	sub: "Moe",
	status:"approved",
	date:'12-june-2017'
},
{
num:'2',
sub:"Moeji",
sub:"Moeji",
status:"not approved",
date:'12-june-2017'
}]
})*/


window.onload=function()  {

$('#menu .btn1').on('click',function(){
$('#display .apply_leave').removeClass('hidden');
$('#display .start').addClass('hidden');
$('#display .status').addClass('hidden');
$('#app #display .report').addClass('hidden');
});

$('#menu .btn2').on('click',function(){
$("#history").DataTable();
$('#display .status').removeClass('hidden');
$('#display .start').addClass('hidden');
$('#display .apply_leave').addClass('hidden');
$('#app #display .report').addClass('hidden');
});

$('#menu .btn3').on('click',function(){
$('#app #display .report').removeClass('hidden');
$('#display .start').addClass('hidden');
$('#display .apply_leave').addClass('hidden');
$('#display .status').addClass('hidden');

});

$('#menu1 .btn1').on('click',function(){
$("#history1").DataTable();
$('#display1 .status').removeClass('hidden');
$('#display1 .start').addClass('hidden');
$('#display1 .leave-approved').addClass('hidden');
});

$('#wrapper1 #display1 .item').on('click',function(){
$('#display1 .leave-approved').removeClass('hidden');
$('#display1 .status').addClass('hidden');
$('#display1 .start').addClass('hidden');
});

$('#app .left-nav').hover(function(){
$('div .indicator').animate({ width: 'toggle'},0);
$('.step span').removeClass('hidden');
});

$(".input-group .eye").on("click",function(){
	if(document.querySelector("#user-pass").type=="password")
	{
		$("#user-pass").attr("type","text")
		$("#open").removeClass('glyphicon glyphicon-eye-close').addClass('glyphicon glyphicon-eye-open');
	}
	else
	{
		$("#user-pass").attr("type","password")
		$("#open").removeClass('glyphicon glyphicon-eye-open').addClass('glyphicon glyphicon-eye-close');
	
	}		
});
var readURL = function(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $('.profile-pic').attr('src', e.target.result);
        }

        reader.readAsDataURL(input.files[0]);
    }
}

$('.p-image .file-upload').on('change',function(){
readURL(this);
})
$('.p-image .upload-button').on('click',function(){
$('.p-image .file-upload').click();
})

//for admin start
/*var readURL1 = function(input1) {
    if (input1.files && input1.files[0]) {
        var reader1 = new FileReader();

        reader1.onload = function (e) {
            $('.circle1 .profile-pic1').attr('src', e.target.result);
        }

        reader1.readAsDataURL(input1.files[0]);
    }
}

$('.menu1 .p-image1 .file-upload').on('change',function(){
readURL1(this);
})
$('.menu1 .p-image1 .upload-button1').on('click',function(){
$('.menu1 .p-image1 .file-upload').click();
})*/
//for admin end



}
// var show=document.querySelector('input');
// var data=show.ng-disabled;
// if(data=="loginForm.$valid")
// {
// 	$('.form-style #user-button').attr('data-balloon',"😃 Want's login with us! click on login button")
// }
$(".buttons .sub").on("click",function(){
	var p=document.querySelector("#user-pass").value;
	console.log(p);
	var r=document.querySelector("#user-repass").value;
	console.log(r);
if (p==r) {
	alert("valid");
	}
else
{
	alert("invalid credential");
}
}
);

