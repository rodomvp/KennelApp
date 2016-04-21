// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(window).load(function(){<!--from w  ww.  j  a  v a 2  s  .c  o m-->
//save the selector so you don't have to do the lookup everytime
$dropdown = $("#contextMenu");
	$(".actionButton").mouseover(function() {
	    //get row ID
	    var id = $(this).closest("tr").children().first().html();
	    //move dropdown menu
	    $(this).after($dropdown);
	    //save changes link
	    // example $dropdown.find(".payLink").attr("href", "/transaction/pay?id="+id);
	    $dropdown.find(".payLink").attr("href", "/patients/1");
	    //show dropdown
	    $(this).dropdown();
	});
});
