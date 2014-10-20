$(document).ready(function() {
	// Accordion
		$("#accordion").accordion( {
			header : "h3"
		});

		// Tabs
		$('#tabs').tabs();

		// Dialog
		$('#dialog').dialog( {
			autoOpen : false,
			width : 600,
			buttons : {
				"Ok" : function() {
					$(this).dialog("close");
				},
				"Cancel" : function() {
					$(this).dialog("close");
				}
			}
		});

		// Dialog Link
		$('#dialog_link').click(function() {
			$('#dialog').dialog('open');
			return false;
		});

		// Datepicker
		$('.date_picker').datepicker( {
			inline : true,
			changeYear : true,
			minDate : new Date(1920, 1 - 1, 1),
			dateFormat : 'yy-mm-dd',
			yearRange : '1920:2040'
		});

		// Slider
		$('#slider').slider( {
			range : true,
			values : [ 17, 67 ]
		});

		// Progressbar
		$("#progressbar").progressbar( {
			value : 20
		});

		// hover states on the static widgets
		$('#dialog_link, ul#icons li').hover(function() {
			$(this).addClass('ui-state-hover');
		}, function() {
			$(this).removeClass('ui-state-hover');
		});

		$('.hidden').hide();
	});

function showHide(y, x) {
	$('.show').removeClass('show').addClass('hidden').hide();
	$('.select').removeClass('select').addClass('unselect');
	$(y).removeClass('hidden').addClass('show').show();
	$(x).removeClass('unselect').addClass('select');
}

$("#check_all").live("click", function(event) {
	if ($("#check_all").hasClass('not_checked')) {
		$("#check_all").removeClass('not_checked');
		$(".check-box").attr('checked', true);
	} else {
		$("#check_all").addClass('not_checked');
		$(".check-box").attr('checked', false);
	}
});

function show(y){
	$(y).fadeIn(500);
}

