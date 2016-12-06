/**
 * @name		Template Creator CK 3
 * @package		com_templateck
 * @copyright	Copyright (C) 2013. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 * @author		Cedric Keiflin - http://www.template-creator.com - http://www.joomlack.fr
 */

var $ck = jQuery.noConflict();

/*
 * Functions to manage colors conversion
 *
 */
function hexToR(h) {
	return parseInt((cutHex(h)).substring(0, 2), 16)
}
function hexToG(h) {
	return parseInt((cutHex(h)).substring(2, 4), 16)
}
function hexToB(h) {
	return parseInt((cutHex(h)).substring(4, 6), 16)
}
function cutHex(h) {
	return (h.charAt(0) == "#") ? h.substring(1, 7) : h
}
function hexToRGB(h) {
	return 'rgb(' + hexToR(h) + ',' + hexToG(h) + ',' + hexToB(h) + ')';
}

function setPaletteOnColorPicker(colors, object) {
	SqueezeBox.close();
	colors = colors.split(',');
	$ck('span',$ck('#'+object)).each(function(i, el) {
		$ck(el).css('background-color', '#'+colors[i]);
	});
	$ck('#body').attr('colorpalette', colors);
}

function initSortables() {
	$ck( "#body" ).sortable({
		items: ".wrapper",
		axis: "y",
		handle: "> .editorck .controlMove",
		forcePlaceholderSize: true,
		forceHelperSize: true,
		dropOnEmpty: true,
		tolerance: "pointer",
		placeholder: "placeholder",
		zIndex: 9999,
		sort: function( event, ui ) {
			ui.helper.find('.editorck').hide();
		},
		receive: function( event, ui ) {
			var newblock = $ck(this).find('.blocselect');
			if (ui.sender.hasClass('dragtoaddwrapper')) {
				newblock.css('float', 'none').addClass('ckwait');
				createWrapperBloc(newblock);
			} else {
				newblock.remove();
			}
		}
	});
	
	$ck( ".wrapper > .inner" ).sortable({
		items: "> .ckbloc",
		// containment: "parent",
		axis: "y",
		connectWith: ".wrapper > .inner",
		tolerance: "pointer",
		handle: "> .editorck .controlMove",
		forceHelperSize: true,
		dropOnEmpty: true,
		forcePlaceholderSize: true,
		placeholder: "placeholder",
		zIndex: 9999,
		sort: function( event, ui ) {
			ui.helper.find('.editorck').hide();
		},
		receive: function( event, ui ) {
			var newblock = $ck(this).find('.blocselect');
			if (ui.sender.hasClass('dragtoadd')) {
				newblock.css('float', 'none').addClass('ckwait');
				createBloc(newblock, ui.sender.attr('data-type'));
			} else {
				newblock.remove();
			}
		}
	});
	
	$ck( ".wrapper > .inner > .ckbloc" ).sortable({
		items: " .ckbloc:not(.main .ckbloc)",
		// containment: "parent",
		helper: "clone",
		handle: "> .editorck .controlMove",
		forcePlaceholderSize: true,
		// tolerance: "pointer",
		placeholder: "placeholderchild",
		sort: function( event, ui ) {
			ui.helper.find('.editorck').hide();
		},
		start: function( event, ui ){
			ui.placeholder.width(parseInt($ck('> .inner',ui.helper).width()));
			ui.placeholder.append('<div class="inner" />')
		},
		change: function( event, ui ) {
			// moveBloc(ui);
		}
	});
	
	$ck( ".wrapper .main" ).sortable({
		items: ".column2, .center",
		// containment: "parent",
		helper: "clone",
		handle: "> .editorck .controlMove",
		forcePlaceholderSize: true,
		placeholder: "placeholderchild",
		sort: function( event, ui ) {
			ui.helper.find('.editorck').hide();
		},
		start: function( event, ui ){
			ui.placeholder.width($ck('> .inner',ui.helper).width());
			ui.placeholder.append('<div class="inner" />')
		},
		change: function( event, ui ) {
			// moveBloc(ui);
		}
	});
	
	$ck( ".dragtoadd" ).draggable({
		connectToSortable: ".wrapper > .inner",
		helper: "clone"
		// revert: "invalid"
	});
	
	$ck( ".dragtoaddwrapper" ).draggable({
		connectToSortable: "#body",
		helper: "clone",
		// revert: "invalid"
		stop: function( event, ui ) {
		}
	});
	
}

function jInsertEditorText(text, editor) {
	var newEl = new Element('span').set('html', text);
	var valeur = newEl.getChildren()[0].getAttribute('src');
	$(editor).value = valeur;
	$(editor).fireEvent('change');
}

function initTooltips() {
	new Tips($$('.hasTip'),
			{maxTitleChars: 50, fixed: false});
}

function initModalPopup() {
	SqueezeBox.initialize({});
	SqueezeBox.assign($$('a.modal'), {
		parse: 'rel'
	});
}

function initAccordionStyles() {
	$ck('.menustylesblockaccordion').hide();
	$ck('.ckproperty').each(function(i, tab) {
		tab = $ck(tab);
		$ck('.menustylesblockaccordion', tab).first().show();
		$ck('.menustylesblocktitle', tab).first().addClass('open');
		$ck('.menustylesblocktitle', tab).click(function() {
			if (!$ck(this).hasClass('open')) {
				$ck('.menustylesblockaccordion', tab).slideUp('fast');
				blocstyle = $ck(this).next('.menustylesblockaccordion');
				$ck('.menustylesblocktitle', tab).removeClass('open');
				$ck(this).addClass('open');
				blocstyle.slideDown('fast');
			}
		});
	});

}

function initColorPickers() {
	var startcolor = '';
	$ck('.colorPicker').each(function(i, picker) {
		picker = $ck(picker);
		picker.mousedown(function() {
			if (picker.val()) {
				startcolor = picker.val().replace('#','');
			} else {
				startcolor = 'fff000';
			}
			picker.colpick({
				layout:'full',
				color: startcolor,
				livePreview: true,
				onChange:function(hsb,hex,rgb,el,bySetColor) {
					$ck(el).css('background-color','#'+hex);
					setpickercolor(picker);
					// Fill the text box just if the color was set using the picker, and not the colpickSetColor function.
					if(!bySetColor) $ck(el).val('#' + hex);
				},
				onSubmit:function(hsb,hex,rgb,el,bySetColor) {
					picker.trigger('change');
				},
				onClean: function(button, cal) {
					picker.val('');
					picker.css('background', 'none');
					picker.trigger('change');
				},
				onCopy: function(color, cal) {
					CLIPBOARDCOLORCK = picker.val();
				},
				onPaste: function(color, cal) {
					picker.val(CLIPBOARDCOLORCK);
					picker.css('background', CLIPBOARDCOLORCK);
					picker.trigger('change');
					setpickercolor(picker);
				},
				onPaletteColor: function(hsb,hex,rgb,el,bySetColor) {
					picker.val('#'+hex);
					picker.css('background','#'+hex);
					picker.trigger('change');
					setpickercolor(picker);
				},
			}).keyup(function(){
				$ck(this).colpickSetColor(this.value);
				picker.trigger('change');
			});
		});
	});
}

/**
 * Method to give a black or white color to have a good contrast
 */
function setpickercolor(picker) {
	pickercolor =
			0.213 * hexToR(picker.val()) / 100 +
			0.715 * hexToG(picker.val()) / 100 +
			0.072 * hexToB(picker.val()) / 100
			< 1.5 ? '#FFF' : '#000';
	picker.css('color', pickercolor);
	return pickercolor;
}

function createGradientPreview(prefix) {
	if (!$(prefix + 'gradientpreview'))
		return;
	var area = $(prefix + 'gradientpreview');
	if ($(prefix + 'backgroundcolorstart') && $(prefix + 'backgroundcolorstart').value) {
		$(prefix + 'backgroundcolorend').removeProperty('disabled');
		$(prefix + 'backgroundpositionend').removeProperty('disabled');
	} else {
		$(prefix + 'backgroundcolorend').setProperties({'disabled': 'disabled', 'value': ''});
		$(prefix + 'backgroundcolorend').setStyle('background-color', '');
		$(prefix + 'backgroundpositionend').setProperties({'disabled': 'disabled', 'value': '100'});
	}
	if ($(prefix + 'backgroundcolorend') && $(prefix + 'backgroundcolorend').value) {
		$(prefix + 'backgroundcolorstop1').removeProperty('disabled');
		$(prefix + 'backgroundpositionstop1').removeProperty('disabled');
		$(prefix + 'backgroundopacity').setProperties({'disabled': 'disabled', 'value': ''});
	} else {
		$(prefix + 'backgroundcolorstop1').setProperties({'disabled': 'disabled', 'value': ''});
		$(prefix + 'backgroundcolorstop1').setStyle('background-color', '');
		$(prefix + 'backgroundpositionstop1').setProperties({'disabled': 'disabled', 'value': ''});
		$(prefix + 'backgroundopacity').removeProperty('disabled');
	}
	if ($(prefix + 'backgroundcolorstop1') && $(prefix + 'backgroundcolorstop1').value) {
		$(prefix + 'backgroundcolorstop2').removeProperty('disabled');
		$(prefix + 'backgroundpositionstop2').removeProperty('disabled');
	} else {
		$(prefix + 'backgroundcolorstop2').setProperties({'disabled': 'disabled', 'value': ''});
		$(prefix + 'backgroundcolorstop2').setStyle('background-color', '');
		$(prefix + 'backgroundpositionstop2').setProperties({'disabled': 'disabled', 'value': ''});
	}

	var gradientstop1 = '';
	var gradientstop2 = '';
	var gradientend = '';
	var gradientpositionstop1 = '';
	var gradientpositionstop2 = '';
	var gradientpositionend = '';
	if ($(prefix + 'backgroundpositionstop1') && $(prefix + 'backgroundpositionstop1').value)
		gradientpositionstop1 = $(prefix + 'backgroundpositionstop1').value + '%';
	if ($(prefix + 'backgroundpositionstop2') && $(prefix + 'backgroundpositionstop2').value)
		gradientpositionstop2 = $(prefix + 'backgroundpositionstop2').value + '%';
	if ($(prefix + 'backgroundpositionstop3') && $(prefix + 'backgroundpositionend').value)
		gradientpositionend = $(prefix + 'backgroundpositionend').value + '%';
	if ($(prefix + 'backgroundcolorstop1') && $(prefix + 'backgroundcolorstop1').value)
		gradientstop1 = $(prefix + 'backgroundcolorstop1').value + ' ' + gradientpositionstop1 + ',';
	if ($(prefix + 'backgroundcolorstop2') && $(prefix + 'backgroundcolorstop2').value)
		gradientstop2 = $(prefix + 'backgroundcolorstop2').value + ' ' + gradientpositionstop2 + ',';
	if ($(prefix + 'backgroundcolorend') && $(prefix + 'backgroundcolorend').value)
		gradientend = $(prefix + 'backgroundcolorend').value + ' ' + gradientpositionend;
	var stylecode = '<style type="text/css">'
			+ '#' + prefix + 'gradientpreview {'
			+ 'background:' + $(prefix + 'backgroundcolorstart').value + ';'
			+ 'background-image: -o-linear-gradient(top,' + $(prefix + 'backgroundcolorstart').value + ',' + gradientstop1 + gradientstop2 + gradientend + ');'
			+ 'background-image: -webkit-linear-gradient(top,' + $(prefix + 'backgroundcolorstart').value + ',' + gradientstop1 + gradientstop2 + gradientend + ');'
			+ 'background-image: -webkit-gradient(linear, left top, left bottom,' + $(prefix + 'backgroundcolorstart').value + ',' + gradientstop1 + gradientstop2 + gradientend + ');'
			+ 'background-image: -moz-linear-gradient(top,' + $(prefix + 'backgroundcolorstart').value + ',' + gradientstop1 + gradientstop2 + gradientend + ');'
			+ 'background-image: -ms-linear-gradient(top,' + $(prefix + 'backgroundcolorstart').value + ',' + gradientstop1 + gradientstop2 + gradientend + ');'
			+ 'background-image: linear-gradient(top,' + $(prefix + 'backgroundcolorstart').value + ',' + gradientstop1 + gradientstop2 + gradientend + ');'
			+ '}'
			+ '</style>';
	area.getElement('.injectstyles').set('html', stylecode);
}

function toggleNoeditorMode(button) {
	if ($ck('#body').hasClass('noeditor')) {
		$ck('#body').addClass('editor');
		$ck('#body').removeClass('noeditor');
		$ck(button).removeClass('noeditor');
	} else {
		$ck('#body').addClass('noeditor');
		$ck('#body').removeClass('editor');
		$ck(button).addClass('noeditor');
	}
}

function toggleExpertMode(button) {
	if ($ck('#body').hasClass('expert')) {
		$ck('#body').removeClass('expert');
		$ck(button).removeClass('expert');
	} else {
		$ck('#body').addClass('expert');
		$ck(button).addClass('expert');
	}
}

function checkExpertModeOnPageload() {
	if ($ck('#body').hasClass('expert')) {
		$ck('#mainmenuck .ckexpert').parent().addClass('expert');
	} else {
		$ck('#mainmenuck .ckexpert').parent().removeClass('expert');
	}
}

function toggleThemes(button) {
	if ($ck(button).hasClass('active')) {
		$ck('#showthemes').hide('slow');
		$ck(button).removeClass('active');
	} else {
		$ck('#showthemes').show('slow');
		$ck(button).addClass('active');
	}
}

function cksubmitbuttonsave() {
	$ck('.editorck').remove();
	$ck('.paused').removeClass('paused');
	Joomla.submitbutton('template.save');
}

function toggleBootstrap() {
	if ($ck('#body > .tab_blocstyles').length && $ck('#body > .tab_blocstyles').attr('blocloadboostrap') == '0' || $ck('#joomlaversion').attr('value') != 'j3') {
//		$ck('#body > .tab_blocstyles').attr('blocloadboostrap', '0');
		$ck("#bootstrapload").empty();
		$ck('#bootstrapload').append('<link rel="stylesheet" type="text/css" href="' + URIBASE + '/components/com_templateck/default.css">');
		$ck("#bootstrapload").removeClass('bootstraploaded');
	} else if ($ck('#body > .tab_blocstyles').length && $ck('#body > .tab_blocstyles').attr('blocloadboostrap') == '1') {
		$ck("#bootstrapload").empty();
		$ck('#bootstrapload').append('<link rel="stylesheet" type="text/css" href="' + URIBASE + '/components/com_templateck/bootstrap.css">');
		$ck("#bootstrapload").addClass('bootstraploaded');
	}
}

function toogleWrapperFluid() {
	if (!$ck('#blocwrapperfluid').length && $ck('> .tab_blocstyles', $ck('#body')).length && !$ck('> .tab_blocstyles', $ck('#body')).attr('blocwrapperfluid').length)
		return;
	if ($ck('#blocwrapperfluid').length) {
		value = $ck('#blocwrapperfluid').attr('value');
	} else {
		value = $ck('> .tab_blocstyles', $ck('#body')).attr('blocwrapperfluid');
	}
	if (value == 'fluid') {
		$ck('.container').removeClass('container').addClass('container-fluid');
	} else {
		$ck('.container-fluid').removeClass('container-fluid').addClass('container');
	}
}
/*
function ckaddtofavorite(button) {
	var editionarea = $ck('#popup_editionck');
	fieldslist = new Object();
	$ck('.inputbox', editionarea).each(function(i, el) {
		el = $ck(el);		
		if (el.attr('type') != 'radio') {
			fieldslist[el.attr('id')] = el.attr('value');
		} else {
			if (el.attr('checked')) {
				fieldslist[el.attr('id')] = 'checked';
			} else {
				fieldslist[el.attr('id')] = '';
			}
		}
	});

	favorite = JSON.stringify(fieldslist);
	favorite = favorite.replace(/#/g, "|di|");

	var myurl = URIBASE + "/index.php?option=com_templateck&view=template&layout=ajaxsavefavorite&format=raw";
	$ck.ajax({
		type: "POST",
		url: myurl,
		data: {
			favorite: favorite,
			focusclass: $ck('.focus').attr('class')
			}
	}).done(function(code) {
		alert('ok');
	}).fail(function(code) {
		alert(Joomla.JText._('CK_FAILED', 'Failed'));
	});
	
}
*/
function copytoclipboard(button) {
	CLIPBOARDCK = document.getElements('.inputbox').getProperties('id', 'value');
	alert(Joomla.JText._('CK_COPYTOCLIPBOARD', 'Current styles copied to clipboard !'));
}

function pastefromclipboard(button) {
	if (CLIPBOARDCK) {
		if (!confirm(Joomla.JText._('CK_COPYFROMCLIPBOARD', 'Apply styles from Clipboard ? This will replace all current existing styles.')))
			return;
		CLIPBOARDCK.each(function(field) {
			if ($(field.id)) {
				$(field.id).value = field.value;
			}
		});
	} else {
		alert(Joomla.JText._('CK_CLIPBOARDEMPTY', 'Clipboard is empty'));
	}
}

function validateTemplateName(input) {
	input = $ck(input);
	var name = input.attr('value').replace(/\s/g, "");
	name = name.toLowerCase();
	input.attr('value', name);
}

/*
 * Show the window for global infos (name, date, author...)
 */
function editGlobalinfos() {
	$ck('#infos_code').toggle('fast');
}

/*
 * Function to load the HTML modele in the page
 */
function loadModele(name) {
	var myurl = URIBASE + "/index.php?option=com_templateck&view=template&layout=" + name + "&format=raw";
	$ck.ajax({
		type: "POST",
		url: myurl
	}).done(function(code) {
		$ck("#conteneur").html(code);
		checkModules();
		loadTheme('default', 'no');
		$ck("#addblockmanager").show();
		initSortables();
	}).fail(function(code) {
		alert(Joomla.JText._('CK_FAILED', 'Failed'));
	});
}

function loadTheme(themename, ask) {
	valid = '1';
	valid = confirm(Joomla.JText._('CK_ERASE_WITH_NEW_THEME', 'WARNING : This will erase your data with the new theme, continue ?'));
	if (valid == null || valid == "")
		return;
	$ck(document.body).append('<div id="ckwaitoverlay"></div>');
	var myurl = URIBASE + "/index.php?option=com_templateck&view=template&layout=ajaxloadtheme&format=raw";
	$ck.ajax({
		type: "POST",
		url: myurl,
		data: {themename: themename}
	}).done(function(code) {
		applyTheme(code);
		$ck('#ckwaitoverlay').remove();
	}).fail(function() {
		alert(Joomla.JText._('CK_FAILED', 'Failed'));
		$ck('#ckwaitoverlay').remove();
	});
}

function applyTheme(code) {
	code = code.replace(/\|di\|/g, "#");
	theme = $ck.parseJSON(code);
	$ck('.ckstyle').empty();
	$ck('.ckprops').remove();
	for (i = 0; i < theme.length; i++) {
		bloc = theme[i];
		if (!bloc)
			continue;
		focusblocs = $ck(bloc['type']);
		focusblocs.each(function(k, focusbloc) {
			j = 0;
			focusbloc = $ck(focusbloc);
			while (bloc['ckprops' + j]) {
				blocClass = $ck('<div ' + bloc['ckprops' + j] + ' />').removeClass('ckprops').attr('class');
				$ck('> .' + blocClass, focusbloc).remove();
				focusbloc.prepend('<div ' + bloc['ckprops' + j] + ' />');
				j++;
			}
			if (bloc['style']) {
				blocstyle = bloc['style'].replace(/\|ID\|/g, focusbloc.attr('id')).replace(/\|URIBASE\|/g, URIBASE + "/");
				$ck('> .ckstyle', focusbloc).empty().append('<style>' + blocstyle + '</style>');
			}
		});
	}
	toogleWrapperFluid();
}

function getTheme() {
	var blocs = new Array();
	var types = Array('.body', '.wrapper', '.mainbanner', '.bannerlogo', '.bannermenu', '.bannerlogodesc', '.banner', '.horiznav', '.singlemodule', '.flexiblemodules',
			'.flexiblemodules > .inner > .flexiblemodule:first-child', '.flexiblemodules > .inner > .flexiblemodule:first-child + .flexiblemodule', '.flexiblemodules > .inner > .flexiblemodule:first-child + .flexiblemodule + .flexiblemodule', '.flexiblemodules > .inner > .flexiblemodule:first-child + .flexiblemodule + .flexiblemodule + .flexiblemodule', '.flexiblemodules > .inner > .flexiblemodule:first-child + .flexiblemodule + .flexiblemodule + .flexiblemodule + .flexiblemodule',
			'.maincontent', '.column1', '.main', '.maintop', '.maincenter', '.mainbottom', '.center',
			'.column2', '.centertop', '.centerbottom', '.content');
	for (i = 0; i < types.length; i++) {
		type = types[i];
		if (!$ck(type).length) {
			alert('pas de ' + type + ' dans la page !');
			continue;
		}
		bloc = $ck(type);
		var cssblocs = new Object();
		cssblocs['type'] = type;
		blocstyle = ($ck('> .ckstyle', bloc).length && $ck('> .ckstyle', bloc).html()) ? $ck('> .ckstyle', bloc).html() : '';
		if (blocstyle) {
			var id = new RegExp(bloc.attr('id'), "g");
			blocstyle = blocstyle.replace(id, "|ID|");
			var uri = new RegExp(URIBASE + "/", "g");
			blocstyle = blocstyle.replace(uri, "|URIBASE|");
		}
		cssblocs['style'] = blocstyle;
		$ck('> .ckprops', bloc).each(function(i, ckprops) {
			ckprops = $ck(ckprops);
			text = 'class="' + ckprops.attr('class') + '" ';
			fieldslist = ckprops.attr('fieldslist') ? ckprops.attr('fieldslist').split(',') : Array();
			text += 'fieldslist="' + ckprops.attr('fieldslist') + '" ';
			fieldslist.each(function(fieldname) {
				text += fieldname + '="' + ckprops.attr(fieldname) + '" ';
			});
			cssblocs['ckprops' + i] = text;
		});
		blocs[i] = cssblocs;
	}
	return blocs;
}

function saveTheme() {
	var theme = getTheme();
	theme = JSON.stringify(theme);
	theme = theme.replace(/#/g, "|di|");
	themename = prompt('nom du theme ?');
	if (themename == null || themename == '')
		return;
	var myurl = URIBASE + "/index.php?option=com_templateck&view=template&layout=ajaxsavetheme&format=raw";
	$ck.ajax({
		type: "POST",
		url: myurl,
		data: {theme: theme,
			themename: themename}
	}).done(function(code) {
		$ck("#themefile").html(code);
		checkModules();
	}).fail(function(code) {
		alert(Joomla.JText._('CK_FAILED', 'Failed'));
	});
}

function getFavorite() {
	var bloc = $ck('.cssfocus');
	var cssbloc = new Object();
	cssbloc['class'] = bloc.attr('class');
	blocstyle = ($ck('> .ckstyle', bloc).length && $ck('> .ckstyle', bloc).html()) ? $ck('> .ckstyle', bloc).html() : '';
	if (blocstyle) {
		var id = new RegExp(bloc.attr('id'), "g");
		blocstyle = blocstyle.replace(id, "|ID|");
		var uri = new RegExp(URIBASE + "/", "g");
		blocstyle = blocstyle.replace(uri, "|URIBASE|");
	}
	cssbloc['style'] = blocstyle;
	$ck('> .ckprops', bloc).each(function(i, ckprops) {
		ckprops = $ck(ckprops);
		text = 'class="' + ckprops.attr('class') + '" ';
		fieldslist = ckprops.attr('fieldslist') ? ckprops.attr('fieldslist').split(',') : Array();
		text += 'fieldslist="' + ckprops.attr('fieldslist') + '" ';
		fieldslist.each(function(fieldname) {
			text += fieldname + '="' + ckprops.attr(fieldname) + '" ';
		});
		cssbloc['ckprops' + i] = text;
	});

	return cssbloc;
}

function savefavorite() {
	var favorite = getFavorite();
	var favoriteStyle = favorite['style'];
	favorite = JSON.stringify(favorite);
	favorite = favorite.replace(/#/g, "|di|");
	
	var myurl = URIBASE + "/index.php?option=com_templateck&view=template&layout=ajaxsavefavorite&format=raw";
	$ck.ajax({
		type: "POST",
		url: myurl,
		data: {
			favorite: favorite,
			focusclass: $ck('.focus').attr('class')
			}
	}).done(function(code) {
		if (parseInt(code) == code) {
			$ck('#showfavorites > div').append('<div class="favoritethumb" onmouseout="restoreBeforeFavorite()" onmouseover="previewFavoriteDirect(this)" onclick="loadFavorite(\'favorite' + code + '\', \'favorites\', 1)"><img src="'+URIBASE+'/components/com_templateck/images/favorite.png" style="height:32px;width:32px;margin:0;padding:0;" />'
					+ '<div class="favoritethumbstyles">'+favoriteStyle+'</div>'
					+ '</div>');
			alert(Joomla.JText._('CK_SUCCESS_CREATING_FAVORITEFILE', 'Success !'));
		} else {
			alert(Joomla.JText._('CK_FAILED', 'Failed'));
		}
	}).fail(function(code) {
		alert(Joomla.JText._('CK_FAILED', 'Failed'));
	});
}

function loadFavorite(name, folder, apply, thumb) {
	FAVORITELOCKED = 1;
	valid = '1';
	if (apply == 1) {
		valid = confirm(Joomla.JText._('CK_ERASE_WITH_NEW_FAVORITE', 'WARNING : This will erase your data with the new favorite, continue ?'));
		if (valid == null || valid == "") {
			FAVORITELOCKED = 0;
			restoreBeforeFavorite();
			return;
		}
	} else {
		
	}

	$ck(document.body).append('<div id="ckwaitoverlay"></div>');
	var myurl = URIBASE + "/index.php?option=com_templateck&view=template&layout=ajaxloadfavorite&format=raw";
	$ck.ajax({
		type: "POST",
		url: myurl,
		data: {
			name: name,
			folder: folder
		}
	}).done(function(code) {
		if (apply == 1) {
			applyFavorite(code, thumb);
				closeFavoritePopup();
		} else {
			previewFavorite(code);
		}
		$ck('#ckwaitoverlay').remove();
	}).fail(function() {
		alert(Joomla.JText._('CK_FAILED', 'Failed'));
		$ck('#ckwaitoverlay').remove();
	});
}

function restoreBeforeFavorite() {
	if ( FAVORITELOCKED == 1 )
		return;
	if (BLOCCKSTYLESBACKUP != 'undefined') {
		focusbloc = $ck('.cssfocus');
		$ck('> .ckstyle', focusbloc).empty().html(BLOCCKSTYLESBACKUP);
	}
}

function previewFavoriteDirect(thumb) {
	if ( FAVORITELOCKED == 1 )
		return;
	thumb = $ck(thumb);
	
	focusbloc = $ck('.cssfocus');

	//BLOCCKSTYLESBACKUP = $ck('> .ckstyle', focusbloc).html();
	if (thumb.attr('data-merge') === '1') {
		var stylecode = thumb.find('.favoritethumbstyles').text();
//		var re = /\/\*shadow start\*\/(.*?)\/\*shadow end\*\//gi; 
		var re = /(\/\*shadow start\*\/([\s\S]*)?\/\*shadow end\*\/)/gi; 
		stylecode = stylecode.replace(/\|di\|/g, "#");
		stylecode = stylecode.replace(/\|ID\|/g, focusbloc.attr('id')).replace(/\|URIBASE\|/g, URIBASE + "/");
		var focusblocstyle = $ck('> .ckstyle', focusbloc).text();
		focusblocstyle = focusblocstyle.replace(re, '');
		focusblocstyle = focusblocstyle + stylecode;
		$ck('> .ckstyle', focusbloc).empty().append('<style>' + focusblocstyle + '</style>');
	} else {
		var stylecode = thumb.find('.favoritethumbstyles').html();
		stylecode = stylecode.replace(/\|di\|/g, "#");
		stylecode = stylecode.replace(/\|ID\|/g, focusbloc.attr('id')).replace(/\|URIBASE\|/g, URIBASE + "/");
		$ck('> .ckstyle', focusbloc).empty().append(stylecode);
	}
}

function applyFavorite(code, thumb) {
	focusbloc = $ck('.cssfocus');
	thumb = $ck(thumb);
	code = code.replace(/\|di\|/g, "#");
	bloc = $ck.parseJSON(code);
	
	if (!bloc)
		return;

	j = 0;
	if (thumb.attr('data-merge') === '1') {
		while (bloc['ckprops' + j]) {
			blocClass = $ck('<div ' + bloc['ckprops' + j] + ' />', focusbloc).removeClass('ckprops').attr('class');
			ckpropshtml = $ck('> .' + blocClass, focusbloc);
			var re = /(\/\*shadow start\*\/([\s\S]*)?\/\*shadow end\*\/)/gi;
			blocstyle = bloc['style'].replace(/\|ID\|/g, focusbloc.attr('id')).replace(/\|URIBASE\|/g, URIBASE + "/");
			blocstyle = '/*shadow start*/' + blocstyle + '/*shadow end*/';
			if ($ck('> .ckstyle', focusbloc).html().match(re)) {
				var blocstyle = $ck('> .ckstyle', focusbloc).html().replace(re, blocstyle);
				$ck('> .ckstyle', focusbloc).empty().append(blocstyle);
			} else {
				$ck('> .ckstyle', focusbloc).append(blocstyle);
			}
			if (ckpropshtml.length) {
				var blocmerge = $ck('<div ' + bloc['ckprops' + j] + ' />');
				var fieldslistmerge = blocmerge.attr('fieldslist').split(',');

				for (k=0;k<fieldslistmerge.length;k++) {
					if (! ckpropshtml.attr(fieldslistmerge[k])) {
						ckpropshtml.attr('fieldslist', ckpropshtml.attr('fieldslist') + ',' + fieldslistmerge[k]);
					}
					ckpropshtml.attr(fieldslistmerge[k], blocmerge.attr(fieldslistmerge[k]));
				}
			} else {
				focusbloc.prepend('<div ' + bloc['ckprops' + j] + ' />');
			}
			j++;
		}
	} else {
		$ck('> .ckstyle', focusbloc).empty();
		$ck('> .ckprops', focusbloc).remove();
		while (bloc['ckprops' + j]) {
			blocClass = $ck('<div ' + bloc['ckprops' + j] + ' />', focusbloc).removeClass('ckprops').attr('class');
			$ck('> .' + blocClass, focusbloc).remove();
			focusbloc.prepend('<div ' + bloc['ckprops' + j] + ' />');
			j++;
		}

		if (bloc['style']) {
			blocstyle = bloc['style'].replace(/\|ID\|/g, focusbloc.attr('id')).replace(/\|URIBASE\|/g, URIBASE + "/");
			$ck('> .ckstyle', focusbloc).empty().append('<style>' + blocstyle + '</style>');
		}
	}
	
	FAVORITELOCKED = 0;
}

/*
 * Create the full template archive
 */
function templatePackage(task) {
	if ($ck('#name').attr('value') == '') {
		alert(Joomla.JText._('TEMPLATE_MUST_HAVE_NAME', 'You must give a name to the template'));
		return;
	}

	$ck('#packagestep1').empty();
	$ck('#packagestepcss').empty();
	$ck('#packagestepxml').empty();
	$ck('.packagesteparchive').empty();
	$ck('#joomla_code').fadeIn();
	makeHtmlStep(task);
}

/**
 * Method to return a message if some position have no module published
 */
function checkModules(action) {
	if (!action)
		action = 'test';
	var myurl = URIBASE + "/index.php?option=com_templateck&view=template&layout=ajaxcheckmodules&format=raw"
			+ "&positions=" + $$('.ckbloc[isdisabled!=true]').getProperty('ckmoduleposition')
			+ "&action=" + action;

	var packageRequest = new Request.HTML({
		url: myurl,
		method: 'get',
		update: document.id('modules_code_inner'),
		onRequest: function() {
			// document.id('packagestepxml').set('text', Joomla.JText._('CK_LOADING', 'Loading...'));
		},
		onSuccess: function() {
			// document.id('packagestepxml').set('text', Joomla.JText._('CK_LOAD_SUCCESS_STEP_XML', 'Next step finished with success'));
		},
		onFailure: function() {
			// document.id('packagestepxml').set('text', Joomla.JText._('CK_LOAD_FAILURE_STEP_XML', 'Next step encounter some errors'));
		}
	});
	packageRequest.send();
}


/**
 * Method to return a message if some position have no module published
 */
function showcheckModules() {
	$ck('#modules_code').fadeIn();
	checkModules();
}

/*
 * Method to give a random unique ID
 */
function getUniqueid() {
	var now = new Date().getTime();
	var id = 'ID' + parseInt(now, 10);
	if ($ck('#' + id).length)
		getUniqueid();
	return id;
}

function createWrapperBloc(currentbloc) {
//	var blockid = prompt("Please enter a unique ID for the new wrapper (must be a text)", getWrapperProposal());
//	if (blockid != null && blockid != "" && !$ck('#' + blockid).length) {
//		addBloc('wrapper', blockid, '', currentblocid);
//	} else if ($ck('#' + blockid).length) {
//		alert(Joomla.JText._('CK_INVALID_ID', 'ID invalid or already exist'));
//	}
	addBloc('wrapper', getWrapperProposal(), '', currentbloc);
}

function getWrapperProposal() {
	var i = 1;
	while ($ck('#wrapper' + i).length && i < 1000) {
		i++;
	}
	return 'wrapper' + i;
}

function createBloc(currentbloc, type) {
	idproposal = getIdProposal(type);
	positionsproposal = getPositionsProposal(type).join();
	addBloc(type, idproposal, positionsproposal, currentbloc);
}

function getIdProposal(type) {
	var suggestion;
	switch (type) {
		case 'singlemodule':
		default:
			suggestion = 'module';
			break;
		case 'flexiblemodules':
			suggestion = 'modules';
			break;
		case 'horizmenu':
			suggestion = 'nav';
			break;
		case 'banner':
			suggestion = 'banner';
			break;
		case 'custombloc':
			suggestion = 'custom';
			break;
	}
	var i = 1;
	while ($ck('#' + suggestion + i).length && i < 1000) {
		i++;
	}
	return suggestion + i;
}

function getPositionsProposal(type) {
	var positions = new Array();
	var suggestion = new Array();
	$ck('.ckbloc').each(function(i, bloc) {
		bloc = $ck(bloc);
		if (bloc.attr('ckmoduleposition'))
			positions.push(bloc.attr('ckmoduleposition'));
	});
	i = 0;
	found = 0;
	switch (type) {
		case 'flexiblemodules':
			n = 5;
			break;
		case 'banner':
			n = 2;
			break;
		default:
			n = 1;
			break;
	}
	while (found < n) {
		if ($ck.inArray("position-" + i, positions) == -1) {
			suggestion.push("position-" + i);
			found++;
		}
		i++;
	}
	return suggestion;
}

function showBlocSelection(currentblocid) {
	$ck(document.body).append('<div id="ckwaitoverlay"></div>');
	$ck('.controlfocus').removeClass('controlfocus');
	$ck('#popup_editionck').empty().fadeIn();
	$ck('html, body').animate({scrollTop: 0}, 'slow');
	var myurl = URIBASE + "/index.php?option=com_templateck&view=template&layout=ajaxblocselection&format=raw";
	$ck.ajax({
		type: "POST",
		url: myurl,
		data: {
			currentblocid: currentblocid
		}
	}).done(function(code) {
		$ck('#popup_editionck').append(code);
		$ck('#ckwaitoverlay').remove();
	}).fail(function() {
		alert(Joomla.JText._('CK_FAILED', 'Failed'));
		$ck('#ckwaitoverlay').remove();
	});
}

function addBloc(type, blockid, blockposition, currentbloc) {
	$ck('#popup_editionck').empty().hide();
	var myurl = URIBASE + "/index.php?option=com_templateck&view=template&layout=ajaxcreatebloc&format=raw";
	$ck.ajax({
		type: "POST",
		url: myurl,
		async: false,
		data: {
			tmpl: 'component',
			blockid: blockid,
			blockposition: blockposition,
			fluid: $ck('#body > .tab_blocstyles').attr('blocwrapperfluid'),
			type: type
		}
	}).done(function(code) {
		// if (type == 'wrapper') {
			$ck(currentbloc).fadeOut(500, function() {
				$ck(currentbloc).before(code);
				$ck(currentbloc).remove();
				initSortables();
			});
			
		// } else {
			// $ck(currentbloc + ' > div.inner').prepend(code);

		// }
	}).fail(function() {
		alert(Joomla.JText._('CK_FAILED', 'Failed'));
	});
}

function addControlsOnHover(bloc) {
	bloc = $ck(bloc);
	if ($ck('> .editorck', bloc).length)
		return;
	var timeout;
	bloc.mouseenter(function() {
		addEdition(this);
	});
	bloc.mouseleave(function() {
		el = $ck(this);
//		clearTimeout (el.timeout);
//		el.timeout = setTimeout (function() {
			removeEdition(el);
//		}, 200);
		
	});
//	bloc.dblclick(function() {
//		if (bloc.hasClass('paused')) {
//			removeEdition(this);
//			bloc.removeClass('paused');
//		} else {
//			addEdition(this);
//			bloc.addClass('paused');
//		}
//	});
}

function addEdition(bloc, i) {
	if ($ck('.paused').length) return;
	if (!i)
		i = 0;
	bloc = $ck(bloc);
	if (bloc.hasClass('ui-sortable-helper')) return;
	if ($ck('> .editorck', bloc).length && i == 0)
		return;
	var leftpos = bloc.position().left;
	var toppos = bloc.position().top;
	bloc.css('position','relative');
	var editorclass = '';
	if (i == 0)
		editorclass = ' mainroot';
	var editor = '<div class="editorck' + editorclass + '" id="' + bloc.prop('id') + '-edition"></div>';
	editor = $ck(editor);
	editor.css({
		// 'left': leftpos,
		// 'top': toppos,
		'left': 0,
		'top': 0,
		'position': 'absolute',
		'z-index': 100 + i,
		'width': bloc.outerWidth()
	});
	addEditionControls(editor, bloc);
	bloc.append(editor);
	editor.css('display', 'none').fadeIn('fast');
}

function addEditionControls(editor, bloc) {
	var controlclass = 'innermodule';
	var fadebloc = false;
	if (bloc.hasClass('flexiblemodules')
			|| bloc.hasClass('singlemodule')
			|| bloc.hasClass('maincontent')
			|| bloc.hasClass('mainbanner')
			|| bloc.hasClass('wrapper')
			) {
		controlclass = 'mainleft';
		fadebloc = true;
	}

	var controls = "<div class=\"ckfields " + controlclass + "\">"
			+ "<div class=\"controlDel isControl\" onclick=\"deletebloc('" + bloc.attr('id') + "');\"></div>"
//			+ "<div class=\"controlUp isControl\" onclick=\"moveblocUp('" + bloc.attr('id') + "'," + fadebloc + ");\"></div>"
//			+ "<div class=\"controlDown isControl\" onclick=\"moveblocDown('" + bloc.attr('id') + "'," + fadebloc + ");\"></div>"
			+ "<div class=\"controlMove isControl\"></div>"
			+ "<div class=\"controlCss isControl\" onclick=\"showEditionPopup('" + bloc.attr('id') + "');\"></div>"
			+ "<div class=\"controlFavorite isControl\" onclick=\"showFavoritePopup('" + bloc.attr('id') + "');\"></div>";
	if (bloc.hasClass('flexiblemodules'))
		controls += "<div class=\"controlModules isControl\" onclick=\"showModulesPopup('" + bloc.attr('id') + "')\"></div>";
	if (bloc.hasClass('mainbanner'))
		controls += "<div class=\"controlBanner isControl\" onclick=\"showBannerPopup('" + bloc.attr('id') + "')\"></div>";
	if (bloc.hasClass('maincontent'))
		controls += "<div class=\"controlMaincontent isControl\" onclick=\"showMaincontentPopup('" + bloc.attr('id') + "')\"></div>";
//	if (bloc.hasClass('wrapper')) {
//		controls += "<div class=\"controladdBlock isControl\" onclick=\"showBlocSelection('" + bloc.attr('id') + "')\"></div>";
//		controls += "<div class=\"controladdWrapper isControl\" onclick=\"createWrapperBloc('" + bloc.attr('id') + "')\"></div>";
//	}
	controls += "<span class=\"editorcktitle\" onclick=\"changeBlocId('" + bloc.attr('id') + "')\">" + bloc.attr('id') + "</span>";
	if (bloc.attr('ckmoduleposition'))
		controls += "<span class=\"editorckposition\" onclick=\"changeBlocPosition('" + bloc.attr('id') + "')\">" + bloc.attr('ckmoduleposition') + "</span>";
	controls += "</div>";

	editor.append(controls);
}

function removeEdition(bloc, all) {
	if (!all)
		all = false;
	bloc = $ck(bloc);
	if (bloc.hasClass('paused')) return;
	if (all = true) {
		$ck('.editorck', bloc).remove();
	} else {
		$ck('> .editorck', bloc).remove();
	}
}

function deletebloc(blocid) {
	bloc = $ck('#' + blocid);
	if (confirm('Do you want to delete ?')) {
		bloc.remove();
	}
}

function moveblocUp(blocid, fadebloc) {
	bloc = $ck('#' + blocid);
	var myPrevious = bloc.prev();
	if (myPrevious.length && myPrevious.hasClass('ckbloc')) {
		myPrevious.before(bloc);
		if (fadebloc == true) {
			bloc.css('display', 'none').fadeIn();
			removeEdition($ck(document.body), true);
		}
		removeEdition($ck(document.body), true);
	}
}

function moveblocDown(blocid, fadebloc) {
	bloc = $ck('#' + blocid);
	var myNext = bloc.next();
	if (myNext.length && myNext.hasClass('ckbloc')) {
		myNext.after(bloc);
		if (fadebloc == true) {
			bloc.css('display', 'none').fadeIn();
			removeEdition($ck(document.body));
		}
		removeEdition($ck(document.body));
	}
}

function changeBlocId(blocid) {
	bloc = $ck('#' + blocid);
	if (bloc.attr('id') == 'wrapper')
		return;
	var result = prompt(Joomla.JText._('CK_ENTER_UNIQUE_ID', 'Please enter a unique ID (must be a text)'), bloc.attr('id'));
	if (!result)
		return;
	result = validateName(result);
	if (validateBlocId(result))
		updateIdPosition(blocid, result, '');
}

function changeBlocPosition(blocid) {
	bloc = $ck('#' + blocid);
	var result = prompt(Joomla.JText._('CK_ENTER_UNIQUE_POSITION', 'Please enter a unique Position (must be a text)'), bloc.attr('ckmoduleposition'));
	if (!result)
		return;
	result = validateName(result);
	if (validateBlocPosition(result))
		updateIdPosition(blocid, '', result);
}

function validateBlocId(newid) {
	if (newid != null && newid != "" && !$ck('#' + newid).length) {
		return true;
	} else if ($ck('#' + newid).length) {
		alert(Joomla.JText._('CK_INVALID_ID', 'ID invalid or already exist'));
		return false;
	} else if (newid == null || newid == "") {
		alert(Joomla.JText._('CK_ENTER_VALID_ID', 'Please enter a valid ID'));
		return false;
	}
	return true;
}

function validateName(name) {
	var name = name.replace(/\s/g, "");
	name = name.toLowerCase();
	return name;
}

function validateBlocPosition(newposition) {
	if (newposition == null || newposition == "") {
		alert(Joomla.JText._('CK_ENTER_VALID_POSITION', 'Please enter a valid position'));
		return false;
	}
	var alreadyexists = false;
	$ck('.ckbloc').each(function(i, bloc) {
		bloc = $ck(bloc);
		if (bloc.attr('ckmoduleposition') == newposition && bloc.attr('isdisabled') != 'true') {
			alert(Joomla.JText._('CK_POSITION_ALREADY_USED', 'Position already used'));
			alreadyexists = true;
		}
	});
	return !alreadyexists;
}

function updateIdPosition(blocid, newid, newposition) {
	bloc = $ck('#' + blocid);
	if (newposition) {
		$ck('.editorckposition', bloc).html(newposition);
		bloc.attr('ckmoduleposition', newposition);
	}
	if (newid) {
		$ck('.editorcktitle', bloc).html(newid);
		bloc.attr('id', newid);
	}
}

function showFavoritePopup(blocid) {
	FAVORITELOCKED = 1;
	blocid = '#' + blocid;
	bloc = $ck(blocid);
	$ck('.cssfocus').removeClass('cssfocus');
	bloc.addClass('cssfocus');
	BLOCCKSTYLESBACKUP = $ck('> .ckstyle', bloc).html();
	// $ck('#popup_favoriteck').fadeIn().css('top', parseInt(bloc.position().top) + parseInt(bloc.height()));
	$ck('#popup_favoriteck').fadeIn();
	$ck('#html_code').animate({'left':'310px'});
	$ck('.objid', $ck('#popup_favoriteck')).text(bloc.attr('id'));
	FAVORITELOCKED = 0;
}

function closeFavoritePopup(force) {
	if (! force ) force = false;
	if ( $ck('#popup_favoriteck').hasClass('stick') && !force ) {
		BLOCCKSTYLESBACKUP = $ck('> .ckstyle', $ck('.cssfocus')).html();
		return;
	}
	$ck('#popup_favoriteck').fadeOut();
	$ck('#html_code').animate({'left':'0'});
}

function showEditionPopup(blocid) {
	blocid = '#' + blocid;
	keepAliveAdmin();
	$ck(document.body).append('<div id="ckwaitoverlay"></div>');
	bloc = $ck(blocid);
	$ck('.cssfocus').removeClass('cssfocus');
	bloc.addClass('cssfocus');
	$ck('#popup_editionck').empty().fadeIn();
	$ck('html, body').animate({scrollTop: 0}, 'slow');

	var myurl = URIBASE + "/index.php?option=com_templateck&view=template&layout=ajaxstylescss&format=raw";
	$ck.ajax({
		type: "POST",
		url: myurl,
		data: {
			objclass: bloc.prop('class'),
			expertmode: $ck('#body').hasClass('expert'),
			ckobjid: bloc.prop('id')
		}
	}).done(function(code) {
		$ck('#popup_editionck').append(code);
		$ck('#ckwaitoverlay').remove();
		fillEditionPopup(blocid);
		loadPreviewAreaStyles(blocid);
	}).fail(function() {
		alert(Joomla.JText._('CK_FAILED', 'Failed'));
		$ck('#ckwaitoverlay').remove();
	});
}

function loadPreviewAreaStyles(blocid) {
	bloc = $ck(blocid);
	var blocstyles = $ck('> .ckstyle', bloc).text();
	var replacement = new RegExp(blocid, 'g');
	var previewstyles = blocstyles.replace(replacement, '#previewareabloc'); // /blue/g,"red"
	var editionarea = $ck('#popup_editionck');
	$ck('> .ckstyle', $ck('#previewareabloc')).html('<style type="text/css">'+previewstyles+'</style>');
	$ck('.inputbox', editionarea).change(function() {
		getPreviewAreastylescss('previewareabloc', editionarea, blocid);
	});
	$ck('.colorPicker,.inputbox[type=radio]', editionarea).blur(function() {
		getPreviewAreastylescss('previewareabloc', editionarea, blocid);
	});
}

function forceColorPickerChanges(picker) {
	$ck(picker).trigger('blur');
}

function showModulesPopup(blocid) {
	$ck(document.body).append('<div id="ckwaitoverlay"></div>');
	bloc = $ck('#' + blocid);
	$ck('.cssfocus').removeClass('cssfocus');
	bloc.addClass('cssfocus');
	$ck('#popup_editionck').empty().fadeIn();
	$ck('html, body').animate({scrollTop: 0}, 'slow');
	var myurl = URIBASE + "/index.php?option=com_templateck&view=template&layout=ajaxmodulesmanager&format=raw";
	$ck.ajax({
		type: "POST",
		url: myurl,
		data: {
		}
	}).done(function(code) {
		$ck('#popup_editionck').append(code);
		$ck('#ckwaitoverlay').remove();
	}).fail(function() {
		alert(Joomla.JText._('CK_FAILED', 'Failed'));
		$ck('#ckwaitoverlay').remove();
	});
}

function showBannerPopup(blocid) {
	$ck(document.body).append('<div id="ckwaitoverlay"></div>');
	bloc = $ck('#' + blocid);
	$ck('.cssfocus').removeClass('cssfocus');
	bloc.addClass('cssfocus');
	$ck('#popup_editionck').empty().fadeIn();
	$ck('html, body').animate({scrollTop: 0}, 'slow');
	var myurl = URIBASE + "/index.php?option=com_templateck&view=template&layout=ajaxbannermanager&format=raw";
	$ck.ajax({
		type: "POST",
		url: myurl,
		data: {
		}
	}).done(function(code) {
		$ck('#popup_editionck').append(code);
		$ck('#ckwaitoverlay').remove();
	}).fail(function() {
		alert(Joomla.JText._('CK_FAILED', 'Failed'));
		$ck('#ckwaitoverlay').remove();
	});
}

function showMaincontentPopup(blocid) {
	$ck(document.body).append('<div id="ckwaitoverlay"></div>');
	bloc = $ck('#' + blocid);
	$ck('.cssfocus').removeClass('cssfocus');
	bloc.addClass('cssfocus');
	$ck('#popup_editionck').empty().fadeIn();
	$ck('html, body').animate({scrollTop: 0}, 'slow');
	var myurl = URIBASE + "/index.php?option=com_templateck&view=template&layout=ajaxmaincontentmanager&format=raw";
	$ck.ajax({
		type: "POST",
		url: myurl,
		data: {
		}
	}).done(function(code) {
		$ck('#popup_editionck').append(code);
		$ck('#ckwaitoverlay').remove();
	}).fail(function() {
		alert(Joomla.JText._('CK_FAILED', 'Failed'));
		$ck('#ckwaitoverlay').remove();
	});
}

function showParamsPopup() {
	$ck(document.body).append('<div id="ckwaitoverlay"></div>');
	bloc = $ck('#body');
	$ck('#popup_editionck').empty().fadeIn();
	$ck('html, body').animate({scrollTop: 0}, 'slow');
	var myurl = URIBASE + "/index.php?option=com_templateck&view=template&layout=ajaxparams&format=raw";
	$ck.ajax({
		type: "POST",
		url: myurl,
		data: {
			expertmode: $ck('#body').hasClass('expert'),
			joomlaversion: $ck('#joomlaversion').attr('value')
		}
	}).done(function(code) {
		$ck('#popup_editionck').append(code);
		$ck('#ckwaitoverlay').remove();
		fillEditionPopup('#body');
		loadPreviewAreaStyles('#body');
	}).fail(function() {
		alert(Joomla.JText._('CK_FAILED', 'Failed'));
		$ck('#ckwaitoverlay').remove();
	});
}

function showResponsivePopup() {
	$ck(document.body).append('<div id="ckwaitoverlay"></div>');
	blocs = getBlocks();
	blocs = JSON.stringify(blocs);
	blocs = blocs.replace(/#/g, "|di|");
	bloc = $ck('#body');
	$ck('#popup_editionck').empty().fadeIn();
	var myurl = URIBASE + "/index.php?option=com_templateck&view=template&layout=ajaxresponsive&format=raw";
	$ck.ajax({
		type: "POST",
		url: myurl,
		data: {
			blocs: blocs
		}
	}).done(function(code) {
		$ck('#popup_editionck').append(code);
		$ck('#ckwaitoverlay').remove();
		fillEditionPopup('#body');
	}).fail(function() {
		alert(Joomla.JText._('CK_FAILED', 'Failed'));
		$ck('#ckwaitoverlay').remove();
	});
}

function fillEditionPopup(blocid) {
	bloc = $ck(blocid);
	$ck('> .ckprops', bloc).each(function(i, ckprops) {
		ckprops = $ck(ckprops);
		fieldslist = ckprops.attr('fieldslist') ? ckprops.attr('fieldslist').split(',') : Array();
		fieldslist.each(function(fieldname) {
			if (!$ck('#' + fieldname).length)
				return;
			cssvalue = ckprops.attr(fieldname);
			field = $ck('#' + fieldname);
			if (field.attr('type') == 'radio') {
				if (cssvalue == 'checked') {
					field.attr('checked', 'checked');
				} else {
					field.removeAttr('checked');
				}
			} else if (cssvalue) {
				field.attr('value', cssvalue);
				if (field.hasClass('colorPicker') && field.attr('value')) {
					setpickercolor(field);
					field.css('background-color', field.attr('value'));
					if (field.attr('id').indexOf('backgroundcolorend') != -1) {
						prefix = field.attr('id').replace("backgroundcolorend", "");
						if (prefix && $ck('#blocbackgroundcolorstart').attr('value'))
							createGradientPreview(prefix);
					}
					if (field.attr('id').indexOf('backgroundcolorstart') != -1) {
						prefix = field.attr('id').replace("backgroundcolorstart", "");
						if (prefix && $ck('#blocbackgroundcolorstart').attr('value'))
							createGradientPreview(prefix);
					}
				}
			} else {
				field.attr('value', '');
			}
		});
		// retrocompatibilite banner
		if (!ckprops.attr('logowidth')) {
			$ck('#logowidth').attr('value', ckprops.attr('blocwidth'));
			$ck('#logoheight').attr('value', ckprops.attr('blocheight'));
		}
		// end retrocompatibilite
	});
}

function saveEditionPopup(blocid) {
	var editionarea = $ck('#popup_editionck');
	var focus = blocid ? $ck('#' + blocid) : $ck('.cssfocus');
	$ck('.ckproperty', editionarea).each(function(i, tab) {
		tab = $ck(tab);
		tabid = tab.attr('id');
		(!$ck('> .' + tabid, focus).length) ? createFocusProperty(focus, tabid) : $ck('> .' + tabid, focus).empty();
		focusprop = $ck('> .' + tabid, focus);
		savePopupfields(focusprop, tabid);
		fieldslist = getPopupFieldslist(focus, tabid);
		focusprop.attr('fieldslist', fieldslist);
	});
	if (focus.hasClass('bannerlogo'))
		getPreviewlogo(focus);
	if (focus.hasClass('wrapper') && $ck('> .tab_blocstyles', focus).attr('blocfullwidth') == 1) {
		$ck('> .inner', focus).removeClass('container').removeClass('container-fluid');
	} else if (focus.hasClass('wrapper')) {
		$ck('> .inner', focus).addClass('container');
	}
	toogleWrapperFluid();
	toggleBootstrap();
	getPreviewstylescss(blocid, editionarea);
	if (blocid == 'body') {
		saveCustomCode();
		saveCustomCss();
	}
	editionarea.empty().hide();
}

function saveCustomCode() {
	if (!$ck('#customcode').length) return;
	var customcode = $ck('#customcode').attr('value');
	customcode = JSON.stringify(customcode);
	
	var myurl = URIBASE + "/index.php?option=com_templateck&view=template&layout=ajaxsavecustomcode&format=raw";
	$ck.ajax({
		type: "POST",
		url: myurl,
		data: {
			templateid: TEMPLATEID,
			customcode: customcode
		}
	}).done(function(code) {

	}).fail(function() {
		alert(Joomla.JText._('CK_FAILED_CUSTOMCODE', 'Failed to save Custom Code'));
	});
}

function saveCustomCss() {
	if (!$ck('#customcss').length) return;
	
	var customcss = $ck('#customcss').attr('value');
	// customcss = JSON.stringify(customcss);
	
	var myurl = URIBASE + "/index.php?option=com_templateck&view=template&layout=ajaxsavecustomcss&format=raw";
	$ck.ajax({
		type: "POST",
		url: myurl,
		data: {
			templateid: TEMPLATEID,
			templatename: $ck('#name').val(),
			customcss: customcss
		}
	}).done(function(code) {

	}).fail(function() {
		alert(Joomla.JText._('CK_FAILED_CUSTOMCSS', 'Failed to save Custom CSS'));
	});
}

function getPreviewlogo(focus) {
	var logoimg = $ck('img', focus);
	if ($ck('> .tab_blocstyles', focus).attr('logoheight'))
		logoimg.attr('height', $ck('> .tab_blocstyles', focus).attr('logoheight'));
	if ($ck('> .tab_blocstyles', focus).attr('logowidth'))
		logoimg.attr('width', $ck('> .tab_blocstyles', focus).attr('logowidth'));
	if ($ck('> .tab_blocstyles', focus).attr('blocbackgroundimageurl')) {
		focus.css('background', 'none');
		logoimg.attr('src', URIROOT + '/' + $ck('> .tab_blocstyles', focus).attr('blocbackgroundimageurl'));
	}
	
	logofieldslist = $ck('> .tab_blocstyles', focus).attr('fieldslist');
	if (logofieldslist.toLowerCase().indexOf('blocwidth') == -1)
		logofieldslist += ',blocwidth';
	if (logofieldslist.toLowerCase().indexOf('blocheight') == -1)
		logofieldslist += ',blocheight';
	
	$ck('> .tab_blocstyles', focus).attr('fieldslist', logofieldslist);
}

function createFocusProperty(focus, tabid) {
	focus.prepend('<div class="' + tabid + ' ckprops" />')
}

function savePopupfields(focusprop, tabid) {
	$ck('.inputbox', $ck('#' + tabid)).each(function(i, field) {
		field = $ck(field);
		if (field.attr('type') != 'radio') {
			if (field.attr('value') && field.attr('value') != 'default') {
				focusprop.attr(field.attr('id'), field.attr('value'));
			} else {
				focusprop.removeAttr(field.attr('id'));
			}
		} else {
			if (field.attr('checked')) {
				focusprop.attr(field.attr('id'), 'checked');
			} else {
				focusprop.removeAttr(field.attr('id'));
			}
		}
	});
}

function getPopupFieldslist(focus, tabid) {
	fieldslist = new Array();
	$ck('.inputbox', $ck('#' + tabid)).each(function(i, el) {
		if ($ck(el).attr('value') && $ck(el).attr('value') != 'default')
			fieldslist.push($ck(el).attr('id'));
	});
	if (tabid == 'tab_blocstyles' && (focus.hasClass('bannerlogo') || focus.hasClass('banner') || focus.hasClass('bannermenu')) )
		fieldslist.push('blocwidth');
	return fieldslist.join(',');
}

function saveResponsivePopup() {
	$ck('.blocresolution').each(function(i, resolution) {
		attribute = $ck(resolution).attr('id');
		$ck('.ckbloc', resolution).each(function(j, responsivebloc) {
			responsivebloc = $ck(responsivebloc);
			responsiveblocid = responsivebloc.attr('ckid');
			$ck('#' + responsiveblocid).attr(attribute, responsivebloc.attr('ckmobile'));
		});
	});
	$ck('#popup_editionck').empty().hide();
}

function getdefaultwidth(nbmodules) {
	defaultwidths = new Array();
	defaultwidth = 100 / parseInt(nbmodules);
	for (i = 0; i < nbmodules; i++) {
		defaultwidths.push(defaultwidth);
	}
	return defaultwidths;
}

function saveModulesPopup() {
	var editionarea = $ck('#popup_editionck');
	var focus = $ck('.cssfocus');
	numberofmodules = $ck('#modulenumberselect').attr('value');
	focus.attr('numberofmodules', numberofmodules);
	var focusfieldslist = new Array();
	$ck('.modulemanagercontainer').each(function(i, modulesrow) {
		modulesrow = $ck(modulesrow);
		nbmodules = modulesrow.attr('nbmodules');
		moduleswidth = new Array();
		$ck('.modulewidthselect', modulesrow).each(function(j, module) {
			module = $ck(module);
			moduleswidth.push(parseFloat(module.attr('value')));
		});
		focus.attr('moduleswidth' + (i + 2), moduleswidth.join(','));
		focus.attr('isdisabledmodule' + (i + 2), modulesrow.hasClass('disabled'));
		focus.find('.flexiblemodule:eq(' + (i + 1) + ')').attr('isdisabled', modulesrow.hasClass('disabled'));

	});

	moduleswidth = focus.attr('moduleswidth' + numberofmodules) ? focus.attr('moduleswidth' + numberofmodules).split(',') : getdefaultwidth(numberofmodules);
	$ck('.flexiblemodule', focus).each(function(i, module) {
		module = $ck(module);
		module.css('width', parseFloat(moduleswidth[i]) + '%');
		focusfieldslist.push('moduleswidth' + (i + 2));
		focusfieldslist.push('isdisabledmodule' + (i + 2));
	});
	focusfieldslist.push('numberofmodules');
	focus.attr('paramslist', focusfieldslist.join(','));
	editionarea.empty().hide();
}

function saveMaincontentPopup() {
	var editionarea = $ck('#popup_editionck');
	var focus = $ck('.cssfocus');
	$ck('.maincontentmanager').each(function(i, module) {
		module = $ck(module);
		var target = module.attr('target');
		focus.attr('isdisabledmodule' + target, module.hasClass('disabled'));
		focus.find('.' + target).attr('isdisabled', module.hasClass('disabled'));
	});
	if ((focus.find('.maintop').attr('isdisabled') == 'true' && focus.find('.mainbottom').attr('isdisabled') == 'true')
			|| focus.find('.column2').attr('isdisabled') == 'true') {
		focus.find('.maincenter').attr('ishidden', 'true');
	} else {
		focus.find('.maincenter').attr('ishidden', 'false');
	}
	if (focus.find('.centertop').attr('isdisabled') == 'true'
			&& focus.find('.centerbottom').attr('isdisabled') == 'true') {
		focus.find('.content').attr('ishidden', 'true');
	} else {
		focus.find('.content').attr('ishidden', 'false');
	}
	if (focus.find('.column2').attr('isdisabled') == 'true') {
		focus.addClass('norightcol');
		focus.find('.center').attr('ishidden', 'true');
	} else {
		focus.removeClass('norightcol');
		focus.find('.center').attr('ishidden', 'false');
	}
	if (focus.find('.column1').attr('isdisabled') == 'true') {
		focus.addClass('noleftcol');
		focus.find('.main').attr('ishidden', 'true');
	} else {
		focus.removeClass('noleftcol');
		focus.find('.main').attr('ishidden', 'false');
	}
	focus.find('.column1').attr('blocwidth', $ck('#blocwidthselectleft').attr('value'));
	focus.find('.column2').attr('blocwidth', $ck('#blocwidthselectright').attr('value'));
	updateColumnsWidth();
	editionarea.empty().hide();
}

function updateColumnsWidth() {
	var focus = $ck('.cssfocus');
	var column1width = focus.find('.column1').attr('blocwidth');
	var mainwidth = focus.find('.column1').attr('isdisabled') == 'true' ? '100%' : (100 - parseFloat(column1width)) + '%';
	var rightwidthratio = parseFloat((100 - parseFloat(column1width))/100);
	var column2width = (parseFloat(focus.find('.column2').attr('blocwidth')) / rightwidthratio) + '%';
	var centerwidth = focus.find('.column2').attr('isdisabled') == 'true' ? '100%' : (100 - parseFloat(column2width)) + '%';
	focus.find('.column1').css('width', column1width);
	focus.find('.main').css('width', mainwidth);
	focus.find('.column2').css('width', column2width);
	focus.find('.center').css('width', centerwidth);
}

function saveBannerPopup() {
	var editionarea = $ck('#popup_editionck');
	var focus = $ck('.cssfocus');
	$ck('.bannermanager').each(function(i, module) {
		module = $ck(module);
		var target = module.attr('target');
		focus.attr('isdisabledmodule' + target, module.hasClass('disabled'));
		focus.find('.' + target).attr('isdisabled', module.hasClass('disabled'));
	});

	logotabblocstyles = focus.find('.bannerlogo > .tab_blocstyles');
	if (logotabblocstyles.length) {
		logofieldslist = logotabblocstyles.attr('fieldslist');
		if (logofieldslist.toLowerCase().indexOf('blocwidth') == -1) logofieldslist += ',blocwidth';
		logotabblocstyles.attr('fieldslist', logofieldslist);
	}
	
	moduletabblocstyles = focus.find('.banner > .tab_blocstyles');
	if (moduletabblocstyles.length) {
		modulefieldslist = moduletabblocstyles.attr('fieldslist');
		if (modulefieldslist.toLowerCase().indexOf('blocwidth') == -1) modulefieldslist += ',blocwidth';
		moduletabblocstyles.attr('fieldslist', modulefieldslist);
	}
	
	menutabblocstyles = focus.find('.bannermenu > .tab_blocstyles');
	if (menutabblocstyles.length) {
		menufieldslist = menutabblocstyles.attr('fieldslist');
		if (menufieldslist.toLowerCase().indexOf('blocwidth') == -1) menufieldslist += ',blocwidth';
		menutabblocstyles.attr('fieldslist', menufieldslist);
	}

	focus.find('.bannerlogo > .tab_blocstyles').attr('blocwidth', $ck('#blocwidthselectlogo').attr('value'));
	focus.find('.banner > .tab_blocstyles').attr('blocwidth', $ck('#blocwidthselectmodule').attr('value'));
	focus.find('.bannermenu > .tab_blocstyles').attr('blocwidth', $ck('#blocwidthselectmenu').attr('value'));

	focus.find('.bannerlogo').css('width', $ck('#blocwidthselectlogo').attr('value'));
	focus.find('.banner').css('width', $ck('#blocwidthselectmodule').attr('value'));
	focus.find('.bannermenu').css('width', $ck('#blocwidthselectmenu').attr('value'));
	
	editionarea.empty().hide();
}

function getPreviewstylescss(blocid, editionarea) {
	if (!editionarea)
		editionarea = document.body;
	var focus = blocid ? $ck('#' + blocid) : $ck('.cssfocus');
	var fieldslist = new Array();
	$ck('.inputbox', editionarea).each(function(i, el) {
		if ($ck(el).attr('value'))
			fieldslist.push($ck(el).attr('id'));
	});
	fields = new Object();
	$ck('> .ckprops', focus).each(function(i, ckprops) {
		ckprops = $ck(ckprops);
		fieldslist = ckprops.attr('fieldslist') ? ckprops.attr('fieldslist').split(',') : Array();
		fieldslist.each(function(fieldname) {
			fields[fieldname] = ckprops.attr(fieldname);
		});
	});
	fields = JSON.stringify(fields);
	var myurl = URIBASE + "/index.php?option=com_templateck&view=template&layout=ajaxrendercss&format=raw";
	$ck.ajax({
		type: "POST",
		url: myurl,
		data: {
			objclass: focus.prop('class'),
			ckobjid: focus.prop('id'),
			action: 'preview',
			fields: fields
		}
	}).done(function(code) {
		$ck('> .ckstyle', focus).empty().append(code);
		if (BLOCCKSTYLESBACKUP != 'undefined') {
			BLOCCKSTYLESBACKUP = $ck('> .ckstyle', focus).html();
		}
	}).fail(function() {
		alert(Joomla.JText._('CK_FAILED', 'Failed'));
	});
}

function getPreviewAreastylescss(blocid, editionarea, focus) {
	if (!editionarea)
		editionarea = document.body;
	if (!focus) {
		focus = $ck('.cssfocus');
	} else {
		focus = $ck(focus);
	}
	var fieldslist = new Array();
	fields = new Object();
	$ck('.inputbox', editionarea).each(function(i, el) {
		el = $ck(el);
		fields[el.attr('name')] = el.attr('value');
		if (el.attr('type') == 'radio') {
			if (el.attr('checked')) {
				fields[el.attr('id')] = 'checked';
			} else {
				fields[el.attr('id')] = '';
			}
		}
	});
	$ck('> .ckprops', focus).each(function(i, ckprops) {
		ckprops = $ck(ckprops);
		fieldslist = ckprops.attr('fieldslist') ? ckprops.attr('fieldslist').split(',') : Array();
		fieldslist.each(function(fieldname) {
			if (typeOf(fields[fieldname]) == 'null') 
				fields[fieldname] = ckprops.attr(fieldname);
		});
	});
	fields = JSON.stringify(fields);
	var myurl = URIBASE + "/index.php?option=com_templateck&view=template&layout=ajaxrendercss&format=raw";
	$ck.ajax({
		type: "POST",
		url: myurl,
		data: {
			objclass: focus.prop('class'),
			ckobjid: blocid,
			action: 'preview',
			fields: fields
		}
	}).done(function(code) {
		$ck('> .ckstyle', $ck('#' + blocid)).empty().append(code);
	}).fail(function() {
		alert(Joomla.JText._('CK_FAILED', 'Failed'));
	});
}

function loadTab_menustyles() {
	bloc = $ck('#tab_menustyles');
	if (bloc.html())
		return;
	bloc.append('<div id="ckwaitoverlay"></div>');
	var myurl = URIBASE + "/index.php?option=com_templateck&view=template&layout=ajaxtabmenustyles&format=raw";
	$ck.ajax({
		type: "POST",
		url: myurl,
		data: {
			objclass: bloc.prop('class'),
			ckobjid: bloc.prop('id')
		}
	}).done(function(code) {
		bloc.empty().append(code);
		fillEditionPopup('#' + $ck('.cssfocus').attr('id'));
		loadPreviewAreaStyles('#' + $ck('.cssfocus').attr('id'));
	}).fail(function() {
		alert(Joomla.JText._('CK_FAILED', 'Failed'));
	});
}

function loadTab_customcode() {
	bloc = $ck('#tab_customcode');
	if (bloc.html())
		return;
	bloc.append('<div id="ckwaitoverlay"></div>');
	var myurl = URIBASE + "/index.php?option=com_templateck&view=template&layout=ajaxtabcustomcode&format=raw";
	$ck.ajax({
		type: "POST",
		url: myurl,
		data: {
			templateid: TEMPLATEID
		}
	}).done(function(code) {
		bloc.empty().append(code);
	}).fail(function() {
		alert(Joomla.JText._('CK_FAILED', 'Failed'));
	});
}

function loadTab_customcss() {
	bloc = $ck('#tab_customcss');
	if (bloc.html())
		return;
	bloc.append('<div id="ckwaitoverlay"></div>');
	var myurl = URIBASE + "/index.php?option=com_templateck&view=template&layout=ajaxtabcustomcss&format=raw";
	$ck.ajax({
		type: "POST",
		url: myurl,
		data: {
			templateid: TEMPLATEID,
			templatename: $ck('#name').val()
		}
	}).done(function(code) {
		bloc.empty().append(code);
	}).fail(function() {
		alert(Joomla.JText._('CK_FAILED', 'Failed'));
	});
}

/* ----------------------------------------------------------------------------------------------------------------------------------------
 TEMPLATE CREATION AND PREVIEW
 ---------------------------------------------------------------------------------------------------------------------------------------------*/

function getBlocks() {
	var blocs = new Array();
	var cssblocs = new Object();
	var i = 0;
	$ck('.ckbloc').each(function(j, bloc) {
		bloc = $ck(bloc);
		if (bloc.attr('isdisabled') != 'true') {
			var cssblocs = new Object();
			var fieldslist = new Array();
			cssblocs['class'] = bloc.attr('class');
			cssblocs['ckid'] = bloc.attr('id');
			if (bloc.attr('id') == "body" || bloc.attr('id') == "wrapper")
				cssblocs['ckid'] = bloc.attr('id');
			cssblocs['ckclass'] = bloc.attr('ckclass');
			cssblocs['ckmoduleposition'] = bloc.attr('ckmoduleposition');
			cssblocs['ckmodulestyle'] = bloc.attr('ckmodulestyle');
			cssblocs['ckresponsive1'] = bloc.attr('ckresponsive1');
			cssblocs['ckresponsive2'] = bloc.attr('ckresponsive2');
			cssblocs['ckresponsive3'] = bloc.attr('ckresponsive3');
			cssblocs['ckresponsive4'] = bloc.attr('ckresponsive4');
			cssblocs['ckresponsive5'] = bloc.attr('ckresponsive5');
			cssblocs['isdisabled'] = bloc.attr('isdisabled');
			cssblocs['ishidden'] = bloc.attr('ishidden');
			if (bloc.attr('fieldslist'))
				fieldslist = bloc.attr('fieldslist').split(",");
			paramslist = bloc.attr('paramslist') ? bloc.attr('paramslist').split(",") : Array();
			$ck('> .ckprops', bloc).each(function(i, ckprops) {
				ckprops = $ck(ckprops);
				fieldslist = ckprops.attr('fieldslist') ? ckprops.attr('fieldslist').split(',') : Array();
				fieldslist.each(function(fieldname) {
					cssblocs[fieldname] = ckprops.attr(fieldname);
				});
			});
			paramslist.each(function(fieldname) {
				cssblocs[fieldname] = bloc.attr(fieldname);
			});
			blocs[i] = cssblocs;
			i++;
		}
	});

	return blocs;
}


/**
 *
 * Function create htmlcode and folder structure and begin the process
 */
function makeHtmlStep(task) {
	blocs = getBlocks();
	blocs = JSON.stringify(blocs);
	blocs = blocs.replace(/#/g, "|di|");
	var htmlcode = makeHtmlOutput();

	var myurl = URIBASE + "/index.php?option=com_templateck&view=template&layout=ajaxindex&format=raw";
	$ck.ajax({
		type: "POST",
		url: myurl,
		data: {
			bodycode: htmlcode["body"],
			headcode: htmlcode["head"],
			joomlaversion: $ck('#joomlaversion').attr('value'),
			templatename: $ck('#name').attr('value'),
			creationdate: $ck('#creationdate').attr('value'),
			author: $ck('#author').attr('value'),
			authorEmail: $ck('#authoremail').attr('value'),
			authorUrl: $ck('#authorurl').attr('value'),
			copyright: $ck('#copyright').attr('value'),
			license: $ck('#license').attr('value'),
			version: $ck('#version').attr('value'),
			description: $ck('#description').attr('value'),
			blocs: blocs,
			id: TEMPLATEID,
			makearchive: task
		}
	}).done(function(code) {
		$ck('#packagestep1').empty().append(code);
		$ck('#packagestep1').append(Joomla.JText._('CK_LOAD_SUCCESS_STEP1', 'Step 1 finished with success'));
		makeCssStep(task);
	}).fail(function() {
		$ck('#packagestep1').empty();
		$ck('#packagestep1').append(Joomla.JText._('CK_LOAD_FAILURE_STEP1', 'Step 1 encounter some errors'));
	});
}

/**
 *
 * Function to generate template.css file
 */
function makeCssStep(task) {
	blocs = getBlocks();
	blocs = JSON.stringify(blocs);
	blocs = blocs.replace(/#/g, "|di|");

	var myurl = URIBASE + "/index.php?option=com_templateck&view=template&layout=ajaxtemplatecss&format=raw";
	$ck.ajax({
		type: "POST",
		url: myurl,
		data: {
			templatename: $ck('#name').attr('value'),
			joomlaversion: $ck('#joomlaversion').attr('value'),
			column1width: COLUMN1WIDTH,
			column2width: COLUMN2WIDTH,
			blocs: blocs,
			templateid: TEMPLATEID
		}
	}).done(function(code) {
		$ck('#packagestepcss').empty().append(code);
		$ck('#packagestepcss').append(Joomla.JText._('CK_LOAD_SUCCESS_STEP_CSS', 'Next step finished with success'));
		makeXmlStep(task);
	}).fail(function() {
		$ck('#packagestepcss').empty();
		$ck('#packagestepcss').append(Joomla.JText._('CK_LOAD_FAILURE_STEP_CSS', 'Next step encounter some errors'));
	});
}

/**
 *
 * Function to generate XML file
 */
function makeXmlStep(task) {
	blocs = getBlocks();
	blocs = JSON.stringify(blocs);
	blocs = blocs.replace(/#/g, "|di|");
	
	var positions = [];
	$ck('.ckbloc').each(function(i, bloc) {
		bloc = $ck(bloc);
		if (bloc.attr('ckmoduleposition') && bloc.attr('isdisabled') != 'true')
			positions.push(bloc.attr('ckmoduleposition'));
	});

	var myurl = URIBASE + "/index.php?option=com_templateck&view=template&layout=ajaxxml&format=raw";
	$ck.ajax({
		type: "POST",
		url: myurl,
		data: {
			templatename: $ck('#name').attr('value'),
			joomlaversion: $ck('#joomlaversion').attr('value'),
			creationdate: $ck('#creationdate').attr('value'),
			author: $ck('#author').attr('value'),
			authorEmail: $ck('#authoremail').attr('value'),
			authorUrl: $ck('#authorurl').attr('value'),
			copyright: $ck('#copyright').attr('value'),
			license: $ck('#license').attr('value'),
			version: $ck('#version').attr('value'),
			description: $ck('#description').attr('value'),
			blocs: blocs,
			positions: positions
		}
	}).done(function(code) {
		$ck('#packagestepxml').empty().append(code);
		$ck('#packagestepxml').append(Joomla.JText._('CK_LOAD_SUCCESS_STEP_XML', 'Next step finished with success'));
		if (task == 'package' || task == 'copy') {
			makeArchiveStep(task);
		} else {
			makePreviewStep();
		}
	}).fail(function() {
		$ck('#packagestepxml').empty();
		$ck('#packagestepxml').append(Joomla.JText._('CK_LOAD_FAILURE_STEP_XML', 'Next step encounter some errors'));
	});

}

/**
 *
 * Function to generate the preview button
 */

function makePreviewStep() {
	var myurl = URIROOT + "/index.php?option=com_content&templatename=" + $ck('#name').attr('value') + "&template=templatecreatorck&tmpl=preview";
	var previewlink = '<p styles="padding:15px"><a class="ckpreview ckbuttonstyle" href="' + myurl + '" target="_blank">' + Joomla.JText._('CK_PREVIEW_TEMPLATE', 'Preview the template') + '</a></p>';
	$ck('.packagesteparchive').append(previewlink);
}

/**
 *
 * Function to generate the ZIP archive
 */

function makeArchiveStep(task) {
	var myurl = URIBASE + "/index.php?option=com_templateck&view=template&layout=ajaxarchive&format=raw";
	$ck.ajax({
		type: "POST",
		url: myurl,
		data: {
			templatename: $ck('#name').attr('value'),
			saveintemplate: task
		}
	}).done(function(code) {
		$ck('.packagesteparchive').empty().append(code);
	}).fail(function() {
		$ck('.packagesteparchive').empty();
		$ck('.packagesteparchive').append(Joomla.JText._('CK_LOAD_FAILURE_STEP_ARCHIVE', 'Archive encounter some errors'));
	});
}

/**
 *
 * Function to generate final html code
 */
function makeHtmlOutput() {
	var code = new Array("head", "body");
	code["head"] = '';
	code["body"] = '';
	var j = 0;
	var customcode = '';
	iW = 0; // index for wrappers
	$ck('.ckbloc').each(function(i, bloc) {
		bloc = $ck(bloc);
		var retrievecode = '';
		// retrieve id for the block
		var blocid = '';
		if (bloc.attr("id")) {
			blocid = ' id="' + bloc.attr("id") + '"';
		}

		// retrieve id for the block
		var blocmoduleposition = '';
		if (bloc.attr("ckmoduleposition")) {
			blocmoduleposition = bloc.attr("ckmoduleposition");
		}

		// retrieve class for the bloc
		var blocclass = '';
		if (bloc.attr("ckclass")) {
			blocclass = ' class="' + bloc.attr("ckclass") + '"';
		} else {
			blocclass = '';
		}

		// retrieve style for the module
		var blocmodulestyle = ' style="xhtml"';
		if (bloc.attr("ckmodulestyle")) {
			blocmodulestyle = ' style="' + bloc.attr("ckmodulestyle") + '"';
		}

		// Begin the modules code construction
		// construct single module code
		if (bloc.hasClass('singlemodule')) {
			retrievecode = makeHtmlSingleModule(bloc, blocmoduleposition, blocid, blocclass, blocmodulestyle);
			code["body"] += retrievecode["body"];
		}

		// construct flexible module code
		if (bloc.hasClass('flexiblemodules')) {
			retrievecode = makeHtmlFlexibleModules(bloc, blocid, blocclass, j);
			code["body"] += retrievecode["body"];
			code["head"] += retrievecode["head"];
		}

		// construct banner and logo block code
		if (bloc.hasClass('mainbanner') && !$ck('.bannermenu', bloc).length) {
			retrievecode = makeHtmlOldBanner(bloc, blocid, blocclass);
			code["body"] += retrievecode["body"];
		} else if (bloc.hasClass('mainbanner') && $ck('.bannermenu', bloc).length) {
			retrievecode = makeHtmlBanner(bloc, blocid, blocclass);
			code["body"] += retrievecode["body"];
		}

		// construct horizontal menu code
		if (bloc.hasClass('horiznav')) {
			retrievecode = makeHtmlHorizNav(bloc, blocmoduleposition, blocid, blocclass, blocmodulestyle);
			code["body"] += retrievecode["body"];
		}

		// construct custom block code
		if (bloc.hasClass('custombloc')) {
			customcode = $ck('div.customcont', bloc).text().replace(/#/g, "|di|");
			code["body"] += '|tab|<div' + blocid + blocclass + '>|rr|'
					+ '|tab||tab|<div class="inner">' + customcode + '</div>|rr|'
					+ '|tab|</div>|rr|';
		}

		// construct simple 3 cols component layout code
		if (bloc.hasClass('wrapper')) {
			retrievecode = makeWrapper(bloc, blocid, blocclass, iW);
			code["body"] += retrievecode["body"];
			code["head"] += retrievecode["head"];
			iW++;
		}

		// construct complex component layout code
		if (bloc.hasClass('maincontent')) {
			retrievecode = makeHtmlMaincontent(bloc, blocid, blocclass, blocmodulestyle, j);
			code["body"] += retrievecode["body"];
			code["head"] += retrievecode["head"];
		}

		j++;
	});

	return code;
}

/***********************************************
 * modules html creation *
 * *********************************************/

/**
 * Function to render a wrapper
 *
 */
function makeWrapper(bloc, blocid, blocclass, iW) {
	var code = new Array("head", "body");
	code["head"] = '';
	code["body"] = '';
	if (iW == 0) {
		code["body"] = '<div' + blocid + blocclass + '>|rr|'
				+ '|tab|<div class="' + $ck('.inner', bloc).attr('class') + '">|rr|';
	} else {
		code["body"] = '|tab|</div>|rr|'
				+ '</div>|rr|'
				+ '<div' + blocid + blocclass + '>|rr|'
				+ '|tab|<div class="' + $ck('.inner', bloc).attr('class') + '">|rr|';

	}
	return code;
}

/**
 * Function to render a single module
 *
 */
function makeHtmlSingleModule(bloc, blocmoduleposition, blocid, blocclass, blocmodulestyle) {
	var code = new Array("head", "body");
	code["head"] = '';
	code["body"] = '';

	code["body"] = '|tab|<?php if ($this->countModules(\'' + blocmoduleposition + '\')) : ?>|rr|'
			+ '|tab|<div' + blocid + blocclass + '>|rr|'
			+ '|tab||tab|<div class="inner clearfix">|rr|'
			+ '|tab||tab||tab|<jdoc:include type="modules" name="' + blocmoduleposition + '"' + blocmodulestyle + ' />|rr|'
			+ '|tab||tab|</div>|rr|'
			+ '|tab|</div>|rr|'
			+ '|tab|<?php endif; ?>|rr||rr|';
	return code;
}


/**
 * Function to render some flexible modules
 *
 */
function makeHtmlFlexibleModules(bloc, blocid, blocclass, j) {
	// initialisation
	bloc = $ck(bloc);
	var code = new Array("head", "body");
	code["head"] = '';
	code["body"] = '';

	code["body"] += '|tab|<?php if ($nbmodules' + j + ') : ?>|rr|'
			+ '|tab|<div' + blocid + blocclass + '>|rr|'
			+ '|tab||tab|<div class="inner clearfix <?php echo \'n\'.$nbmodules' + j + ' ?>">|rr|';

	code["head"] += '<?php|rr|'
			+ '$nbmodules' + j + ' = ';

	$ck('.flexiblemodule', bloc).each(function(i, module) {
		module = $ck(module);
		if (module.attr('isdisabled') != 'true') {
			if (i > 0)
				code["head"] += ' + ';
			// retrieve data for the block
			module.ckid = module.attr("id") ? ' id="' + module.attr("id") + '"' : '';
			module.classe = module.attr("ckclass") ? module.attr("ckclass") : '';
			module.jdocstyle = module.attr("ckmodulestyle") ? ' style="' + module.attr("ckmodulestyle") + '"' : ' style="xhtml"';
			module.jdocposition = module.attr("ckmoduleposition") ? module.attr("ckmoduleposition") : '';

			code["body"] += '|tab||tab||tab|<?php if ($this->countModules(\'' + module.jdocposition + '\')) : ?>|rr|'
					+ '|tab||tab||tab|<div' + module.ckid + ' class="flexiblemodule ' + module.classe + '">|rr|'
					+ '|tab||tab||tab||tab|<div class="inner clearfix">|rr|'
					+ '|tab||tab||tab||tab||tab|<jdoc:include type="modules" name="' + module.jdocposition + '"' + module.jdocstyle + ' />|rr|'
					+ '|tab||tab||tab||tab|</div>|rr|'
					+ '|tab||tab||tab|</div>|rr|'
					+ '|tab||tab||tab|<?php endif; ?>|rr|';

			code["head"] += '(bool)$this->countModules(\'' + module.jdocposition + '\')';
		}
	});
	code["body"] += '|tab||tab||tab|<div class="clr"></div>|rr|'
			+ '|tab||tab|</div>|rr|'
			+ '|tab|</div>|rr|'
			+ '|tab|<?php endif; ?>|rr||rr|';

	code["head"] += ';|rr|'
			+ '?>|rr||rr|';

	return code;
}

/**
 * Function to render a banner with logo
 *
 */
function makeHtmlBanner(bloc, blocid, blocclass) {
	// initialisation
	var code = new Array("head", "body");
	code["head"] = '';
	code["body"] = '';

	code["body"] += '|tab|<div' + blocid + blocclass + '>|rr|'
			+ '|tab||tab|<div class="inner clearfix">|rr|';

	$ck('.ckbloc', bloc).each(function(i, module) {
		module = $ck(module);
		// retrieve data for the block
		module.ckid = module.attr("id") ? ' id="' + module.attr("id") + '"' : '';
		module.classe = module.attr("ckclass") ? ' class="' + module.attr("ckclass") + '"' : ' class="logobloc"';
		module.jdocstyle = module.attr("ckmodulestyle") ? ' style="' + module.attr("ckmodulestyle") + '"' : ' style="xhtml"';
		module.jdocposition = module.attr("ckmoduleposition") ? module.attr("ckmoduleposition") : '';

		if (module.hasClass('bannerlogo')) {
			module.logoimage = $ck('img', module) ? $ck('img', module).attr('src').split("/").reverse()[0] : '';
			module.logowidth = $ck('.tab_blocstyles', module).attr("logowidth") ? ' width="<?php echo $this->params->get(\''+module.attr("id")+'_logowidth\', \'' + testUnit($ck('.tab_blocstyles', module).attr("logowidth")) + '\') ?>"' : '';
			module.logoheight = $ck('.tab_blocstyles', module).attr("logoheight") ? ' height="<?php echo $this->params->get(\''+module.attr("id")+'_logoheight\', \'' + testUnit($ck('.tab_blocstyles', module).attr("logoheight")) + '\') ?>"' : '';

			logodesc = $ck('> .inner > .bannerlogodesc', module);
			logodesccode = '';
			if (logodesc.length) {
				logodesccode = '|tab||tab||tab||tab||tab|<?php if ($this->params->get(\''+module.attr("id")+'_logodescription\')) { ?>|rr|'
						+ '|tab||tab||tab||tab||tab|<div class="bannerlogodesc">|rr|'
						+ '|tab||tab||tab||tab||tab||tab|<div class="inner clearfix"><?php echo htmlspecialchars($this->params->get(\''+module.attr("id")+'_logodescription\'));?></div>|rr|'
						+ '|tab||tab||tab||tab||tab|</div>|rr|'
						+ '|tab||tab||tab||tab||tab|<?php } ?>|rr|';
			}

			code["body"] += '|tab||tab||tab|<div' + module.ckid + module.classe + '>|rr|'
					+ '|tab||tab||tab||tab|<div class="inner clearfix">|rr|'
					+ '|tab||tab||tab||tab||tab|<?php if ($this->params->get(\''+module.attr("id")+'_logolink\')) { ?>|rr|'
					+ '|tab||tab||tab||tab||tab|<a href="<?php echo htmlspecialchars($this->params->get(\''+module.attr("id")+'_logolink\')); ?>">|rr|'
					+ '|tab||tab||tab||tab||tab|<?php } ?>|rr|'
					+ '|tab||tab||tab||tab||tab||tab|<img src="<?php echo $this->params->get(\''+module.attr("id")+'_logoimgsrc\', $this->baseurl . \'/templates/\' . $this->template . \'/images/' + module.logoimage + '\') ?>"' + module.logowidth + module.logoheight + ' alt="<?php echo htmlspecialchars($this->params->get(\''+module.attr("id")+'_logotitle\',\'\'));?>" />|rr|'
					+ '|tab||tab||tab||tab||tab|<?php if ($this->params->get(\''+module.attr("id")+'_logolink\')) { ?>|rr|'
					+ '|tab||tab||tab||tab||tab|</a>|rr|'
					+ '|tab||tab||tab||tab||tab|<?php } ?>|rr|'
					+ logodesccode
					+ '|tab||tab||tab||tab|</div>|rr|'
					+ '|tab||tab||tab|</div>|rr|';


		} else if (!module.hasClass('bannerlogodesc') && (module.attr('isdisabled') == 'false' || !module.attr('isdisabled'))) {
			code["body"] += '|tab||tab||tab|<?php if ($this->countModules(\'' + module.jdocposition + '\')) : ?>|rr|'
					+ '|tab||tab||tab|<div' + module.ckid + module.classe + '>|rr|'
					+ '|tab||tab||tab||tab|<div class="inner clearfix">|rr|'
					+ '|tab||tab||tab||tab||tab|<jdoc:include type="modules" name="' + module.jdocposition + '"' + module.jdocstyle + ' />|rr|'
					+ '|tab||tab||tab||tab|</div>|rr|'
					+ '|tab||tab||tab|</div>|rr|'
					+ '|tab||tab||tab|<?php endif; ?>|rr|';
		}

	});
	code["body"] += '|tab||tab|<div class="clr"></div>|rr|'
			+ '|tab||tab|</div>|rr|'
			+ '|tab|</div>|rr|';

	return code;
}

/**
 * Function to render a banner with logo (old method)
 *
 */
function makeHtmlOldBanner(bloc, blocid, blocclass) {
	// initialisation
	var code = new Array("head", "body");
	code["head"] = '';
	code["body"] = '';

	code["body"] += '|tab|<div' + blocid + blocclass + '>|rr|'
			+ '|tab||tab|<div class="inner clearfix">|rr|';

	$ck('.ckbloc', bloc).each(function(i, module) {
		module = $ck(module);
		// retrieve data for the block
		module.ckid = module.attr("id") ? ' id="' + module.attr("id") + '"' : '';
		module.classe = module.attr("ckclass") ? ' class="' + module.attr("ckclass") + '"' : ' class="logobloc"';
		module.jdocstyle = module.attr("ckmodulestyle") ? ' style="' + module.attr("ckmodulestyle") + '"' : ' style="xhtml"';
		module.jdocposition = module.attr("ckmoduleposition") ? module.attr("ckmoduleposition") : '';

		if (module.hasClass('bannerlogo')) {
			module.logoimage = $ck('img', module) ? $ck('img', module).attr('src').split("/").reverse()[0] : '';
			module.logowidth = $ck('.tab_blocstyles', module).attr("blocwidth") ? ' width="' + $ck('.tab_blocstyles', module).attr("blocwidth") + 'px"' : '';
			module.logoheight = $ck('.tab_blocstyles', module).attr("blocheight") ? ' height="' + $ck('.tab_blocstyles', module).attr("blocheight") + 'px"' : '';

			logodesc = $ck('> .inner > .bannerlogodesc', module);
			logodesccode = '';
			if (logodesc.length) {
				logodesccode = '|tab||tab||tab||tab||tab|<?php if ($this->params->get(\'logodescription\')) { ?>|rr|'
						+ '|tab||tab||tab||tab||tab|<div class="bannerlogodesc">|rr|'
						+ '|tab||tab||tab||tab||tab||tab|<div class="inner clearfix"><?php echo htmlspecialchars($this->params->get(\'logodescription\'));?></div>|rr|'
						+ '|tab||tab||tab||tab||tab|</div>|rr|'
						+ '|tab||tab||tab||tab||tab|<?php } ?>|rr|';
			}

			code["body"] += '|tab||tab||tab|<div' + module.ckid + module.classe + '>|rr|'
					+ '|tab||tab||tab||tab|<div class="inner clearfix">|rr|'
					+ '|tab||tab||tab||tab||tab|<?php if ($this->params->get(\'logolink\')) { ?>|rr|'
					+ '|tab||tab||tab||tab||tab|<a href="<?php echo htmlspecialchars($this->params->get(\'logolink\')); ?>">|rr|'
					+ '|tab||tab||tab||tab||tab|<?php } ?>|rr|'
					+ '|tab||tab||tab||tab||tab||tab|<img src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/images/' + module.logoimage + '"' + module.logowidth + module.logoheight + ' alt="<?php echo htmlspecialchars($this->params->get(\'logotitle\'));?>" />|rr|'
					+ '|tab||tab||tab||tab||tab|<?php if ($this->params->get(\'logolink\')) { ?>|rr|'
					+ '|tab||tab||tab||tab||tab|</a>|rr|'
					+ '|tab||tab||tab||tab||tab|<?php } ?>|rr|'
					+ logodesccode
					+ '|tab||tab||tab||tab|</div>|rr|'
					+ '|tab||tab||tab|</div>|rr|';


		} else if (!module.hasClass('bannerlogodesc')) {
			code["body"] += '|tab||tab||tab|<?php if ($this->countModules(\'' + module.jdocposition + '\')) : ?>|rr|'
					+ '|tab||tab||tab|<div' + module.ckid + module.classe + '>|rr|'
					+ '|tab||tab||tab||tab|<div class="inner clearfix">|rr|'
					+ '|tab||tab||tab||tab||tab|<jdoc:include type="modules" name="' + module.jdocposition + '"' + module.jdocstyle + ' />|rr|'
					+ '|tab||tab||tab||tab|</div>|rr|'
					+ '|tab||tab||tab|</div>|rr|'
					+ '|tab||tab||tab|<?php endif; ?>|rr|';
		}

	});
	code["body"] += '|tab||tab|<div class="clr"></div>|rr|'
			+ '|tab||tab|</div>|rr|'
			+ '|tab|</div>|rr|';

	return code;
}


/**
 * Function to render a horizontal menu
 *
 */
function makeHtmlHorizNav(bloc, blocmoduleposition, blocid, blocclass, blocmodulestyle) {
	// initialisation
	var code = new Array("head", "body");
	code["head"] = '';
	code["body"] = '';

	code["body"] = '|tab|<?php if ($this->countModules(\'' + blocmoduleposition + '\')) : ?>|rr|'
			+ '|tab|<div' + blocid + blocclass + '>|rr|'
			+ '|tab||tab|<div class="inner clearfix">|rr|'
			+ '<label for="' + blocmoduleposition + '-mobileck" class="mobileckhambuger_togglerlabel" style="display:none;">&#x2261</label>'
			+ '<input id="' + blocmoduleposition + '-mobileck" class="mobileckhambuger_toggler" type="checkbox" style="display:none;"/>'
			+ '|tab||tab||tab|<jdoc:include type="modules" name="' + blocmoduleposition + '" />|rr|'
			+ '|tab||tab|</div>|rr|'
			+ '|tab|</div>|rr|'
			+ '|tab|<?php endif; ?>|rr||rr|';
	return code;
}

/*
 * Function to render a complex component layout
 *
 */

function makeHtmlMaincontent(bloc, blocid, blocclass, j) {
	var code = new Array("head", "body");
	code["head"] = '';
	code["body"] = '';

	column1width = 0;
	column2width = 0;

	// begin the global container
	code["body"] += '|tab|<div' + blocid + blocclass + ' class="maincontent <?php echo $mainclass ?>">|rr|'
			+ '|tab||tab|<div class="inner clearfix">|rr|';
	column1enabled = 1;
	column1 = '';
	column2enabled = 1;
	column2 = '';
	$ck('.ckbloc', bloc).each(function(i, column) {
		column = $ck(column);

		column.ckid = column.attr("id") ? ' id="' + column.attr("id") + '"' : '';
		column.classe = column.attr("ckclass") ? column.attr("ckclass") : '';
		column.jdocstyle = column.attr("ckmodulestyle") ? ' style="' + column.attr("ckmodulestyle") + '"' : ' style="xhtml"';
		column.jdocposition = column.attr("ckmoduleposition") ? column.attr("ckmoduleposition") : '';

		// if the first big column
		if (column.hasClass('column1') && column.attr('isdisabled') != "true") {
			column1 = column.jdocposition;
			column1width = column.attr('blocwidth') ? column.attr('blocwidth') : '200';
			code["body"] += '|tab||tab|<?php if ($this->countModules(\'' + column1 + '\')) : ?>|rr|'
					+ '|tab||tab||tab|<div' + column.ckid + ' class="column column1' + column.classe + '">|rr|'
					+ '|tab||tab||tab||tab|<div class="inner clearfix">|rr|'
					+ '|tab||tab||tab||tab||tab|<jdoc:include type="modules" name="' + column1 + '"' + column.jdocstyle + ' />|rr|'
					+ '|tab||tab||tab||tab|</div>|rr|'
					+ '|tab||tab||tab|</div>|rr|'
					+ '|tab||tab||tab|<?php endif; ?>|rr|';
		} else if (column.hasClass('column1') && column.attr('isdisabled') == "true") {
			column1enabled = 0;
		}


		// if the main container column - look into to search for other blocks
		if (column.hasClass('main')) {
			if (column.attr('ishidden') != "true")
				code["body"] += '|tab||tab||tab|<div' + column.ckid + ' class="column main row-fluid' + column.classe + '">|rr|'
						+ '|tab||tab||tab||tab|<div class="inner clearfix">|rr|';

			// look for sub columns
			$ck('.ckbloc', column).each(function(h, subcolumn) {
				subcolumn = $ck(subcolumn);

				subcolumn.ckid = subcolumn.attr("id") ? ' id="' + subcolumn.attr("id") + '"' : '';
				subcolumn.classe = subcolumn.attr("ckclass") ? subcolumn.attr("ckclass") : '';
				subcolumn.jdocstyle = subcolumn.attr("ckmodulestyle") ? ' style="' + subcolumn.attr("ckmodulestyle") + '"' : ' style="xhtml"';
				subcolumn.jdocposition = subcolumn.attr("ckmoduleposition") ? subcolumn.attr("ckmoduleposition") : '';

				if ((subcolumn.hasClass('maintop') || subcolumn.hasClass('mainbottom')) && subcolumn.attr('isdisabled') != "true") {
					subcolumn.classe = (subcolumn.classe) ? 'class="' + subcolumn.classe + '"' : '';
					code["body"] += '|tab||tab||tab||tab||tab|<?php if ($this->countModules(\'' + subcolumn.jdocposition + '\')) : ?>|rr|'
							+ '|tab||tab||tab||tab||tab|<div' + subcolumn.ckid + subcolumn.classe + '>|rr|'
							+ '|tab||tab||tab||tab||tab||tab|<div class="inner clearfix">|rr|'
							+ '|tab||tab||tab||tab||tab||tab||tab|<jdoc:include type="modules" name="' + subcolumn.jdocposition + '"' + subcolumn.jdocstyle + ' />|rr|'
							+ '|tab||tab||tab||tab||tab||tab|</div>|rr|'
							+ '|tab||tab||tab||tab||tab|</div>|rr|'
							+ '|tab||tab||tab||tab||tab|<?php endif; ?>|rr|';
				}

				if (subcolumn.hasClass('maincenter')) {
					// begin the center container
					if (subcolumn.attr('ishidden') != "true")
						code["body"] += '|tab||tab||tab||tab||tab|<div' + subcolumn.ckid + ' class="maincenter ' + column.classe + '">|rr|'
								+ '|tab||tab||tab||tab||tab||tab|<div class="inner clearfix">|rr|';

					$ck('.ckbloc', subcolumn).each(function(g, centercolumn) {
						centercolumn = $ck(centercolumn);

						centercolumn.ckid = centercolumn.attr("id") ? ' id="' + centercolumn.attr("id") + '"' : '';
						centercolumn.classe = centercolumn.attr("ckclass") ? centercolumn.attr("ckclass") : '';
						centercolumn.jdocstyle = centercolumn.attr("ckmodulestyle") ? ' style="' + centercolumn.attr("ckmodulestyle") + '"' : ' style="xhtml"';
						centercolumn.jdocposition = centercolumn.attr("ckmoduleposition") ? centercolumn.attr("ckmoduleposition") : '';

						if (centercolumn.hasClass('column2') && centercolumn.attr('isdisabled') != "true") {
							column2 = centercolumn.jdocposition;
							column2width = centercolumn.attr('blocwidth') ? centercolumn.attr('blocwidth') : '200';
							code["body"] += '|tab||tab||tab||tab||tab||tab||tab|<?php if ($this->countModules(\'' + column2 + '\')) : ?>|rr|'
									+ '|tab||tab||tab||tab||tab||tab||tab|<div' + centercolumn.ckid + ' class="column column2' + centercolumn.classe + '">|rr|'
									+ '|tab||tab||tab||tab||tab||tab||tab||tab|<div class="inner clearfix">|rr|'
									+ '|tab||tab||tab||tab||tab||tab||tab||tab||tab|<jdoc:include type="modules" name="' + column2 + '"' + centercolumn.jdocstyle + ' />|rr|'
									+ '|tab||tab||tab||tab||tab||tab||tab||tab|</div>|rr|'
									+ '|tab||tab||tab||tab||tab||tab||tab|</div>|rr|'
									+ '|tab||tab||tab||tab||tab||tab||tab|<?php endif; ?>|rr|';
						} else if (centercolumn.hasClass('column2') && centercolumn.attr('isdisabled') == "true") {
							column2enabled = 0;
						}

						if (centercolumn.hasClass('center')) {
							if (centercolumn.attr('ishidden') != "true")
								code["body"] += '|tab||tab||tab||tab||tab||tab||tab|<div' + centercolumn.ckid + ' class="column center ' + centercolumn.classe + '">|rr|'
										+ '|tab||tab||tab||tab||tab||tab||tab||tab|<div class="inner">|rr|';

							// look for sub blocks
							$ck('.ckbloc', centercolumn).each(function(f, centerbloc) {
								centerbloc = $ck(centerbloc);

								centerbloc.ckid = centerbloc.attr("id") ? ' id="' + centerbloc.attr("id") + '"' : '';
								centerbloc.classe = centerbloc.attr("ckclass") ? centerbloc.attr("ckclass") : '';
								centerbloc.jdocstyle = centerbloc.attr("ckmodulestyle") ? ' style="' + centerbloc.attr("ckmodulestyle") + '"' : ' style="xhtml"';
								centerbloc.jdocposition = centerbloc.attr("ckmoduleposition") ? centerbloc.attr("ckmoduleposition") : '';

								if ((centerbloc.hasClass('centertop') || centerbloc.hasClass('centerbottom')) && centerbloc.attr('isdisabled') != "true") {
									code["body"] += '|tab||tab||tab||tab||tab||tab||tab||tab||tab|<?php if ($this->countModules(\'' + centerbloc.jdocposition + '\')) : ?>|rr|'
											+ '|tab||tab||tab||tab||tab||tab||tab||tab||tab|<div' + centerbloc.ckid + ' class="' + centerbloc.classe + '">|rr|'
											+ '|tab||tab||tab||tab||tab||tab||tab||tab||tab||tab|<div class="inner clearfix">|rr|'
											+ '|tab||tab||tab||tab||tab||tab||tab||tab||tab||tab||tab|<jdoc:include type="modules" name="' + centerbloc.jdocposition + '"' + centerbloc.jdocstyle + ' />|rr|'
											+ '|tab||tab||tab||tab||tab||tab||tab||tab||tab||tab|</div>|rr|'
											+ '|tab||tab||tab||tab||tab||tab||tab||tab||tab|</div>|rr|'
											+ '|tab||tab||tab||tab||tab||tab||tab||tab||tab|<?php endif; ?>|rr|';
								}

								if (centerbloc.hasClass('content')) {
									if (centerbloc.attr('ishidden') != "true")
										code["body"] += '|tab||tab||tab||tab||tab||tab||tab||tab||tab|<div' + centerbloc.ckid + ' class="' + centerbloc.classe + '">|rr|'
												+ '|tab||tab||tab||tab||tab||tab||tab||tab||tab||tab|<div class="inner clearfix">|rr|';

									code["body"] += '|tab||tab||tab||tab||tab||tab||tab||tab||tab||tab||tab|<jdoc:include type="message" />|rr|'
											+ '|tab||tab||tab||tab||tab||tab||tab||tab||tab||tab||tab|<jdoc:include type="component" />|rr|';


									if (centerbloc.attr('ishidden') != "true")
										code["body"] += '|tab||tab||tab||tab||tab||tab||tab||tab||tab||tab|</div>|rr|'
									+'|tab||tab||tab||tab||tab||tab||tab||tab||tab|</div>|rr|';

								}
							});

							if (centercolumn.attr('ishidden') != "true")
								code["body"] += '|tab||tab||tab||tab||tab||tab||tab||tab|</div>|rr|'
										+ '|tab||tab||tab||tab||tab||tab||tab|</div>|rr|';

						}
					});

					// close the center container
					if (subcolumn.attr('ishidden') != "true")
						code["body"] += '|tab||tab||tab||tab||tab||tab||tab|<div class="clr"></div>|rr|'
								+ '|tab||tab||tab||tab||tab||tab|</div>|rr|'
								+ '|tab||tab||tab||tab||tab|</div>|rr|';
				}

			});

			// close main container column
			if (column.attr('ishidden') != "true")
				code["body"] += '|rr|'
						+ '|tab||tab||tab||tab|</div>|rr|'
						+ '|tab||tab||tab|</div>|rr|';
		}
	});


	// end floating and close the global container
	code["body"] += '|tab||tab||tab|<div class="clr"></div>|rr|'
			+ '|tab||tab|</div>|rr|'
			+ '|tab|</div>|rr|';

	code["head"] += '<?php|rr|'
			+ '$mainclass = "";|rr|';
	if (column1enabled == 1) {
		code["head"] += 'if (!$this->countModules(\'' + column1 + '\')) { $mainclass .= " noleft";}|rr|';
	} else {
		code["head"] += '$mainclass .= " noleft";|rr|';
	}
	if (column2enabled == 1) {
		code["head"] += 'if (!$this->countModules(\'' + column2 + '\')) { $mainclass .= " noright";}|rr|';
	} else {
		code["head"] += '$mainclass .= " noright";|rr|';
	}
	code["head"] += '$mainclass = trim($mainclass); ?>|rr||rr|';

	window['COLUMN1WIDTH'] = column1width;
	window['COLUMN2WIDTH'] = column2width;

	return code;
}

function testUnit(value, defaultunit) {
	if (!defaultunit) defaultunit = "px";
	if (value.toLowerCase().indexOf('px') > -1 || value.toLowerCase().indexOf('em') > -1 || value.toLowerCase().indexOf('%') > -1)
		return value;

	return value + defaultunit;
}