/*** 下拉 和 跳转脚本 ***/
function golink() {
	var m = document.getElementById("m").options[document.getElementById("m").selectedIndex].value;
	var d = document.getElementById("d").options[document.getElementById("d").selectedIndex].value;
	if((d=="30")&&(m=="2")){
		return false;
	}
	if(d=="31"){
		if((m=="2")||(m=="4")||(m=="6")||(m=="9")||(m=="11"))
			return false;
	}
	location.href = m + "_" + d + ".html";
}
function do_all(i) {
	if(i == "show"){
		$('#menu p').show();
	}else{
		$('#menu p').hide();
	}
}
function initMenu() {
  $('#menu p').hide();
  $('#menu li a').click(
    function() {
        $(this).next().slideToggle('normal');
      }
    );
  }
$(document).ready(function() {initMenu();scroll_news();});