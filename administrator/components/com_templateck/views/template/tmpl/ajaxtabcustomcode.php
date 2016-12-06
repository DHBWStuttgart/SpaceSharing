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
$templateid = $app->input->get('templateid', ''); 

$db = JFactory::getDbo();
$query = ' SELECT options FROM #__templateck_templates' .
		' WHERE id = ' . $templateid;
$db->setQuery($query);
$customcode = $db->loadResult();
?>
<table>
	<tr>
		<td style="vertical-align:top;">
			<div class="layoutinfos">
				<div class="layoutinfostitle"><?php echo JText::_('CK_PAGECUSTOMCODE_INFOS'); ?></div>
				<div class="layoutinfosdesc"><?php echo JText::_('CK_PAGECUSTOMCODE_DESC'); ?></div>
			</div>
		</td>
		<td style="vertical-align:top;">
			<textarea id="customcode" cols="50" rows="20" style="color: #777;"><?php echo $customcode; ?></textarea>
		</td>
	</tr>
</table>

