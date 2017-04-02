// JavaScript Document

if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
window.location = "http://wap.mobiletrain.org/javaee.html"; //可以换成http地址
$(".base_fixed").css({"display":"table-cell"})
}