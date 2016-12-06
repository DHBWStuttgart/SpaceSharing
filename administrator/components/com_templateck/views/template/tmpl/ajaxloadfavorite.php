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
jimport('joomla.filesystem.file');
jimport('joomla.filesystem.folder');

$app = JFactory::getApplication();
$input = new JInput();
$name = $input->get('name', '', 'string');
$folder = $input->get('folder', '', 'string');

$path = JPATH_ROOT . '/administrator/components/com_templateck/'.$folder.'/';

$content = JFile::read($path . $name . '.fck3');
echo $content;