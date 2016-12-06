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
class TemplateckViewColors extends JViewLegacy {

	protected $items;
	protected $pagination;
	protected $state;

	/**
	 * Fonts view display method
	 * @return void
	 * */
	function display($tpl = null) {
		// JToolBarHelper::title(JText::_('CK_FONTS_MANAGER'), 'home_templateck');
		// require_once JPATH_COMPONENT . '/helpers/templateck.php';
		// $input = new JInput();
		// if ($input->get('layout') == 'installfontsquirrel' || $input->get('layout') == 'installfontgoogle') {
			// JToolBarHelper::cancel('font.cancel', 'JTOOLBAR_CANCEL');
		// } else {
			// JToolBarHelper::trash('fonts.delete');
			// JToolBarHelper::custom('font.installFontsquirrel', 'installTheme', 'installTheme', 'CK_INSTALL_FONTSQUIRREL', false);
			// JToolBarHelper::custom('font.installFontgoogle', 'installTheme', 'installTheme', 'CK_INSTALL_FONTSGOOGLE', false);
		// }
		
		$this->state         = $this->get('State');
		$this->items 		= $this->get('Items');
		$this->pagination    = $this->get('Pagination');
		$this->sortTableFields	= Array('numVotes', 'dateCreated', 'score', 'name', 'numViews', 'top', 'new', 'random');
		$this->directionTableFields	= Array('ASC', 'DESC');

		parent::display($tpl);
	}
}

/*
Example Parameters:
lover	=	COLOURlover
hueOption	=	yellow,orange,red  or  green,violet  or  blue
[Possible Values can be a combination of: red, orange, yellow, green, aqua, blue, violet, and / or fuchsia]
hex	=	00FF33  or  00FF33,CC00FF,DD0033,003333,0033FF
[Possible Values: any valid 6-char hex value or list of up to five (5) hex values, separated by commas]
hex_logic	=	AND  or  OR
Sets the comparison logic for the hex list. Passing AND will find palettes with all provided hex values, passing OR will find palettes with any of the provided hex values.
[Possible Values: AND or OR. Default AND]
keywords	=	search+term
keywordExact	=	0 or 1   [Perform an exact search for the keywords passed. Default 0]
orderCol	=	X   [Where X can be: dateCreated, score, name, numVotes, or numViews]
sortBy	=	X   [Where X can be: ASC or DESC. Default ASC]
numResults	=	20   [Number of results to return, maximum of 100. Default 20]
resultOffset	=	5   [Result offset, for paging. Default 0]
format	=	json or xml   [Result format. Default is xml]
jsonCallback	=	yourCallbackFunction   [Adds a callback to JSON format. Assumes format=json]
showPaletteWidths	=	0 or 1   [Shows palette's color's widths. Default 0]

Requests with orderCol defined will override any /new or /top switch*/
