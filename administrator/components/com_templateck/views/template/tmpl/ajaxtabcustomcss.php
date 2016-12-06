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
$templatename = $app->input->get('templatename', '', 'string');
$path = JPATH_ROOT . '/components/com_templateck/projects/' . $templatename;

// $db = JFactory::getDbo();
// $query = ' SELECT options FROM #__templateck_templates' .
		// ' WHERE id = ' . (int) $templateid;
// $db->setQuery($query);
// $customcode = $db->loadResult();
$customcss = '';
// test if a custom css exists
if (JFile::exists($path . '/css/custom.css')) {
	$customcss = JFile::read($path . '/css/custom.css');
} else {
	echo JText::_('CK_NO_CUSTOMCSS_FILE_FOUND');
}
?>
<table>
	<tr>
		<td style="vertical-align:top;">
			<div class="layoutinfos">
				<div class="layoutinfostitle"><?php echo JText::_('CK_PAGECUSTOMCSS_INFOS'); ?></div>
				<div class="layoutinfosdesc"><?php echo JText::_('CK_PAGECUSTOMCSS_DESC'); ?></div>
			</div>
		</td>
		<td style="vertical-align:top;">
			<textarea id="customcss" cols="50" rows="20" style="color: #777;"><?php echo $customcss; ?></textarea>
		</td>
	</tr>
</table>

