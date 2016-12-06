<?php

/**
 * @name		Template Creator CK 3
 * @package		com_templateck
 * @copyright	Copyright (C) 2013. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 * @author		Cedric Keiflin - http://www.template-creator.com - http://www.joomlack.fr
 */
// No direct access to this file
defined('_JEXEC') or die('Restricted access');

jimport('joomla.application.component.view');

/**
 * Templatecks View
 */
class TemplateckViewFonts extends JViewLegacy {

	protected $items;
	protected $pagination;
	protected $state;

	/**
	 * Fonts view display method
	 * @return void
	 * */
	function display($tpl = null) {
		JToolBarHelper::title(JText::_('CK_FONTS_MANAGER'), 'home_templateck');
		require_once JPATH_COMPONENT . '/helpers/templateck.php';
		$input = new JInput();
		if ($input->get('layout') == 'installfontsquirrel' || $input->get('layout') == 'installfontgoogle') {
			JToolBarHelper::cancel('font.cancel', 'JTOOLBAR_CANCEL');
		} else {
			JToolBarHelper::trash('fonts.delete');
			JToolBarHelper::custom('font.installFontsquirrel', 'installTheme', 'installTheme', 'CK_INSTALL_FONTSQUIRREL', false);
			JToolBarHelper::custom('font.installFontgoogle', 'installTheme', 'installTheme', 'CK_INSTALL_FONTSGOOGLE', false);
		}

		// Get categories from the model
		$fonts = $this->get('fonts');
		$this->assignRef('fonts', $fonts);

		parent::display($tpl);
	}

	/**
	 * Load the fonts from the db and inject the css in the page
	 * @return void
	 */
	function _callfonts() {
		$fontstyles = '';
		$fontsheets = '';
		$db = JFactory::getDBO();
		$query = "SELECT *
		FROM #__templateck_fonts
		  ";
		$db->setQuery($query);
		$rows = $db->loadObjectList();
		if (!$rows)
			return false;
		foreach ($rows as $row) {
			if (stristr($row->styles, '@import')) 
			{
				$fontsheets .= str_replace(");", "' rel='stylesheet' type='text/css'>", str_replace("@import url(", "<link href='", $row->styles));
			} else {
				$fontstyles .= str_replace("url('", "url('" . JURI::base(true) . "/components/com_templateck/fonts/" . $row->name . "/", $row->styles);
			}
		}
		if ($fontstyles)
			echo "<style type=\"text/css\">" . $fontstyles . "</style>";
		if ($fontsheets)
			echo $fontsheets;
	}

}
