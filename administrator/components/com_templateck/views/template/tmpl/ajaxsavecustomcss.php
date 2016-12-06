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
$app = JFactory::getApplication();
$templateid = $app->input->get('templateid', '', 'int');
$customcss = $app->input->get('customcss', '', 'raw');
$templatename = $app->input->get('templatename', '', 'string');
$path = JPATH_ROOT . '/components/com_templateck/projects/' . $templatename;

if (JFile::write($path . '/css/custom.css', $customcss)) {
	$msg = JText::_('CK_CUSTOMCSS_SAVE_SUCCESS');
} else {
	$msg = JText::_('CK_CUSTOMCSS_SAVE_FAILED');
}

echo $msg;