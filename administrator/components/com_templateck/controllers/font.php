<?php

/**
 * @name		Template Creator CK 3
 * @package		com_templateck
 * @copyright	Copyright (C) 2013. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 * @author		Cedric Keiflin - http://www.template-creator.com - http://www.joomlack.fr
 */
// No direct access to this file
defined('_JEXEC') or die();

jimport('joomla.application.component.controllerform');

class TemplateckControllerFont extends JControllerForm {

	/**
	 * constructor (registers additional tasks to methods)
	 * @return void
	 */
	function __construct() {
		parent::__construct();
	}

	/**
	 * display input form to select a zip file
	 * @return void
	 */
	function installTheme() {
		JRequest::setVar('view', 'fonts');
		JRequest::setVar('layout', 'install');

		parent::display();
	}

	/**
	 * display input form to select a zip file
	 * @return void
	 */
	function installFontsquirrel() {
		JRequest::setVar('view', 'fonts');
		JRequest::setVar('layout', 'installfontsquirrel');

		parent::display();
	}

	/**
	 * display input form to select a zip file
	 * @return void
	 */
	function installFontgoogle() {
		JRequest::setVar('view', 'fonts');
		JRequest::setVar('layout', 'installfontgoogle');

		parent::display();
	}

	/**
	 * import a font from fontsquirrel
	 * @return void
	 */
	function importzipfromsquirrel() {
		$model = $this->getModel('font');
		if (!$model->installFontsquirrel()) {
			$msg = JText::_('CK_INSTALL_FONT_ERROR');
			$link = 'index.php?option=com_templateck&view=fonts&layout=install';
			$type = 'error';
		} else {
			$msg = JText::_('CK_FONT_INSTALLED');
			$link = 'index.php?option=com_templateck&view=fonts';
			$type = 'message';
		}

		$this->setRedirect($link, $msg, $type);
	}

	/**
	 * import a font from google
	 * @return void
	 */
	function importstylesfromgoogle() {
		$model = $this->getModel('font');
		if (!$model->installFontgoogle()) {
			$msg = JText::_('CK_INSTALL_FONT_ERROR');
			$link = 'index.php?option=com_templateck&view=fonts&layout=install';
			$type = 'error';
		} else {
			$msg = JText::_('CK_FONT_INSTALLED');
			$link = 'index.php?option=com_templateck&view=fonts';
			$type = 'message';
		}

		$this->setRedirect($link, $msg, $type);
	}

}
