<?php
/**
 * @name		Template Creator CK 3
 * @package		com_templateck
 * @copyright	Copyright (C) 2013. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 * @author		Cedric Keiflin - http://www.template-creator.com - http://www.joomlack.fr
 */
// no direct access
defined('_JEXEC') or die;
$this->_callfonts();
$lang = JFactory::getLanguage();
$lang->load('com_templateck', JPATH_ADMINISTRATOR);
$lang->load('com_templateck', JPATH_SITE);
?>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<base href="<?php echo JUri::root() ?>/index.php/component/templateck/" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Template Creator CK</title>
<script type="text/javascript">
	var URIROOT = "<?php echo JUri::root(true); ?>";
	var URIBASE = "<?php echo JUri::base(true); ?>";
	var TEMPLATEID = "<?php echo $this->item->id; ?>";
	var CLIPBOARDCK = '';
	var CLIPBOARDCOLORCK = '';
	var BLOCCKSTYLESBACKUP = '';
	var FAVORITELOCKED = '';
</script>
<link rel="stylesheet" href="<?php echo JUri::base(true) ?>/components/com_templateck/assets/modal.css" type="text/css" />
<link rel="stylesheet" href="<?php echo JUri::base(true) ?>/components/com_templateck/assets/colpick.css" type="text/css" />
<link rel="stylesheet" href="<?php echo JUri::base(true) ?>/components/com_templateck/assets/templateck_template.css" type="text/css" />
<script src="<?php echo JUri::base(true) ?>/components/com_templateck/assets/jquery.min.js" type="text/javascript"></script>
<script src="<?php echo JUri::base(true) ?>/components/com_templateck/assets/jquery-noconflict.js" type="text/javascript"></script>
<script src="<?php echo JUri::base(true) ?>/components/com_templateck/assets/jquery-ui-1.10.4.custom.min.js" type="text/javascript"></script>
<script src="<?php echo JUri::base(true) ?>/components/com_templateck/assets/mootools-core.js" type="text/javascript"></script>
<script src="<?php echo JUri::base(true) ?>/components/com_templateck/assets/core.js" type="text/javascript"></script>
<script src="<?php echo JUri::base(true) ?>/components/com_templateck/assets/mootools-more.js" type="text/javascript"></script>
<script src="<?php echo JUri::base(true) ?>/components/com_templateck/assets/modal.js" type="text/javascript"></script>
<script src="<?php echo JUri::base(true) ?>/components/com_templateck/assets/validate.js" type="text/javascript"></script>
<script src="<?php echo JUri::base(true) ?>/components/com_templateck/assets/templateck_template.js" type="text/javascript"></script>
<script src="<?php echo JUri::base(true) ?>/components/com_templateck/assets/colpick.js" type="text/javascript"></script>
<script type="text/javascript">
	function keepAliveAdmin() {
		var myAjax = new Request({method: "get", url: "<?php echo JUri::root(true); ?>/administrator/index.php"}).send();
	}

	Joomla.submitbutton = function(task) {

		$ck('#htmlcode').attr('value', $ck('#conteneur').html());
		if (task == 'template.cancel' || document.formvalidator.isValid(document.id('adminForm'))) {
			Joomla.submitform(task);
		}
		else {
			alert('<?php echo $this->escape(JText::_('JGLOBAL_VALIDATION_FORM_FAILED')); ?>');
		}
	}
	$ck(document).ready(function() {
		$ck('.ckbloc', $ck('#body')).each(function(i, bloc) {
			addControlsOnHover(bloc);
		});
		$ck('.alert-message > a.close').click(function() {
			$ck(this).parent().remove();
		});
		checkModules();
//		$ck('#body').removeClass('expert');
		checkExpertModeOnPageload();
		toggleBootstrap();
		keepAliveAdmin();
		initSortables();
	});

	function keepAlive() {	var myAjax = new Request({method: "get", url: "index.php"}).send();} 
	window.addEvent("domready", function(){ keepAlive.periodical(600000); });
	window.addEvent('domready', function() {
		$$('.hasTip').each(function(el) {
			var title = el.get('title');
			if (title) {
				var parts = title.split('::', 2);
				el.store('tip:title', parts[0]);
				el.store('tip:text', parts[1]);
			}
		});
		var JTooltips = new Tips($$('.hasTip'), {"maxTitleChars": 50,"fixed": false});
	});
	window.addEvent('domready', function() {

		SqueezeBox.initialize({});
		SqueezeBox.assign($$('a.modal'), {
			parse: 'rel'
		});
	});  
		
    (function() {
      var strings = {
		  "TEMPLATE_MUST_HAVE_NAME":"<?php echo JText::_('TEMPLATE_MUST_HAVE_NAME') ?>",
		  "TEMPLATE_MUST_HAVE_WIDTH":"<?php echo JText::_('TEMPLATE_MUST_HAVE_WIDTH') ?>",
		  "CK_LOADING":"<?php echo JText::_('CK_LOADING') ?>",
		  "CK_LOAD_SUCCESS_STEP1":"<?php echo JText::_('CK_LOAD_SUCCESS_STEP1') ?>",
		  "CK_LOAD_FAILURE_STEP1":"<?php echo JText::_('CK_LOAD_FAILURE_STEP1') ?>",
		  "CK_LOAD_SUCCESS_STEP_ARCHIVE":"<?php echo JText::_('CK_LOAD_SUCCESS_STEP_ARCHIVE') ?>",
		  "CK_LOAD_FAILURE_STEP_ARCHIVE":"<?php echo JText::_('CK_LOAD_FAILURE_STEP_ARCHIVE') ?>",
		  "CK_LOAD_SUCCESS_STEP_XML":"<?php echo JText::_('CK_LOAD_SUCCESS_STEP_XML') ?>",
		  "CK_LOAD_FAILURE_STEP_XML":"<?php echo JText::_('CK_LOAD_FAILURE_STEP_XML') ?>",
		  "CK_LOAD_SUCCESS_STEP_CSS":"<?php echo JText::_('CK_LOAD_SUCCESS_STEP_CSS') ?>",
		  "CK_LOAD_FAILURE_STEP_CSS":"<?php echo JText::_('CK_LOAD_FAILURE_STEP_CSS') ?>",
		  "CK_PREVIEW_TEMPLATE":"<?php echo JText::_('CK_PREVIEW_TEMPLATE') ?>",
		  "CK_ONLY_ONE_COMPONENT":"<?php echo JText::_('CK_ONLY_ONE_COMPONENT') ?>",
		  "CK_COPYTOCLIPBOARD":"<?php echo JText::_('CK_COPYTOCLIPBOARD') ?>",
		  "CK_COPYFROMCLIPBOARD":"<?php echo JText::_('CK_COPYFROMCLIPBOARD') ?>",
		  "CK_CLIPBOARDEMPTY":"<?php echo JText::_('CK_CLIPBOARDEMPTY') ?>",
		  "TEMPLATE_MUST_HAVE_CONTENT":"<?php echo JText::_('TEMPLATE_MUST_HAVE_CONTENT') ?>",
		  "CK_INVALID_ID":"<?php echo JText::_('CK_INVALID_ID') ?>",
		  "CK_ENTER_VALID_ID":"<?php echo JText::_('CK_ENTER_VALID_ID') ?>",
		  "CK_ENTER_VALID_POSITION":"<?php echo JText::_('CK_ENTER_VALID_POSITION') ?>",
		  "CK_ENTER_UNIQUE_ID":"<?php echo JText::_('CK_ENTER_UNIQUE_ID') ?>",
		  "CK_ENTER_UNIQUE_POSITION":"<?php echo JText::_('CK_ENTER_UNIQUE_POSITION') ?>",
		  "CK_POSITION_ALREADY_USED":"<?php echo JText::_('CK_POSITION_ALREADY_USED') ?>",
		  "CK_CHOOSE_BLOC_TYPE":"<?php echo JText::_('CK_CHOOSE_BLOC_TYPE') ?>",
		  "CK_ERASE_WITH_NEW_THEME":"<?php echo JText::_('CK_ERASE_WITH_NEW_THEME') ?>",
		  "JLIB_FORM_FIELD_INVALID":"<?php echo JText::_('JLIB_FORM_FIELD_INVALID') ?>",
		  "CK_FAILED_CUSTOMCSS":"<?php echo JText::_('CK_FAILED_CUSTOMCSS') ?>"};
      if (typeof Joomla == 'undefined') {
        Joomla = {};
        Joomla.JText = strings;
      }
      else {
        Joomla.JText.load(strings);
      }
    })();
  </script>
