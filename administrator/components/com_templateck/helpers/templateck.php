<?php

/**
 * @name		Template Creator CK 3
 * @package		com_templateck
 * @copyright	Copyright (C) 2013. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 * @author		Cedric Keiflin - http://www.template-creator.com - http://www.joomlack.fr
 */
// No direct access
defined('_JEXEC') or die;

/**
 * Templateck helper.
 */
class TemplateckHelper {

	/**
	 * Configure the Linkbar.
	 */
	public static function addSubmenu($vName = '') {
		// load jQuery for joomla 2.5
		if (version_compare(JVERSION, '3.0.0') < 0) {
			$doc = JFactory::getDocument();
			$doc->addScript(JUri::base(true) . '/components/com_maximenuck/assets/jquery.min.js');
			$doc->addScript(JUri::base(true) . '/components/com_maximenuck/assets/jquery-noconflict.js');
		}

		JSubMenuHelper::addEntry(
				JText::_('COM_TEMPLATECK_TITLE_TEMPLATES'), 'index.php?option=com_templateck&view=templates', $vName == 'templates'
		);
		JSubMenuHelper::addEntry(
				JText::_('CK_SUBMENU_FONTS'), 'index.php?option=com_templateck&view=fonts', $vName == 'fonts'
		);
		JSubMenuHelper::addEntry(
				JText::_('CK_ABOUT') . '<span class="templateckchecking"></span>', 'index.php?option=com_templateck&view=about', $vName == 'about'
		);
		JSubMenuHelper::addEntry(
				JText::_('CK_HELP'), 'index.php?option=com_templateck&view=help', $vName == 'help'
		);
	
		// add the ajax method to check for an update
		$js_checking = 'jQuery(document).ready(function (){
				jQuery(\'.templateckchecking\').each(function(i ,el){
					jQuery.ajax({
						type: "POST",
						url: \'' . JUri::root(true) . '/administrator/index.php?option=com_templateck&task=check_update\',
						data: {
	}
					}).done(function(response) {
						response = response.trim();
						if ( response.substring(0,7).toLowerCase() == \'error\' ) {
							// alert(response);
							// show_ckmodal(response);
						} else {
							jQuery(el).append(response);
	}
					}).fail(function() {
						// alert(Joomla.JText._(\'CK_FAILED\', \'Failed\'));
					});
				});
			});';
		$doc = JFactory::getDocument();
		$doc->addScriptDeclaration($js_checking);
		}

	/**
	 * Gets a list of the actions that can be performed.
	 *
	 * @return	JObject
	 * @since	1.6
	 */
	public static function getActions() {
		$user = JFactory::getUser();
		$result = new JObject;

		$assetName = 'com_templateck';

		$actions = array(
			'core.admin', 'core.manage', 'core.create', 'core.edit', 'core.edit.own', 'core.edit.state', 'core.delete'
		);

		foreach ($actions as $action) {
			$result->set($action, $user->authorise($action, $assetName));
		}

		return $result;
	}

}
