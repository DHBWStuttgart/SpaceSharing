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
$customcode = $app->input->get('customcode', '', 'raw');

$db = JFactory::getDbo();
$query = $db->getQuery(true);

$fields = array(
	$db->quoteName('options') . '=' . $customcode
);
$conditions = array(
	$db->quoteName('id') . '=' . $templateid
);

$query->update($db->quoteName('#__templateck_templates'))->set($fields)->where($conditions);
$db->setQuery($query);
if ($result = $db->query()) {
	return true;
} else {
	return false;
}