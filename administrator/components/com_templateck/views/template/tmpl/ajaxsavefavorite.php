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
$app = JFactory::getApplication();
jimport('joomla.filesystem.file');
jimport('joomla.filesystem.folder');

$blocs = $app->input->get('favorite', null, null);
$path = JPATH_ROOT . '/administrator/components/com_templateck/favorites';

$i = count(JFolder::files($path, '.fck3'));
$j = 0;
$error = 0;
while (JFile::exists(JPATH_ROOT . '/administrator/components/com_templateck/favorites/favorite'.$i.'.fck3') && $j < 1000) {
	$i++;
	$j++;
}
if ($j >= 1000) {
	echo 'ERROR reach loop of 1000 files';
	$error = 1;
}

$exportfiledest = JPATH_ROOT . '/administrator/components/com_templateck/favorites/favorite'.$i.'.fck3';
$exportfiletext = $blocs;

if (!JFile::write($exportfiledest, $exportfiletext) || $error == 1) {
	$msg = JText::_('CK_ERROR_CREATING_FAVORITEFILE');
} else {
	$msg = $i;
}
echo $msg;