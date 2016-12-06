<?php
/**
 * @name		Template Creator CK 3
 * @package		com_templateck
 * @copyright	Copyright (C) 2013. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 * @author		Cedric Keiflin - http://www.template-creator.com - http://www.joomlack.fr
 */
// no direct access
defined('_JEXEC') or die;
$doc = JFactory::getDocument();
?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $doc->language; ?>" lang="<?php echo $doc->language; ?>" dir="<?php echo $doc->direction; ?>">
<head>
<?php
echo $this->loadTemplate('head');
?>
</head>
<body>
<?php foreach (JFactory::getApplication()->getMessageQueue() as $messageArr) {
	if ($messageArr['message']) { 
	?>
		<div id="system-message-container">
			<button class="close" data-dismiss="alert" type="button" onclick="$ck(this).parent().remove();">×</button>
			<div class="alert alert-<?php echo $messageArr['type'] ?>">
				<h4 class="alert-heading">Message</h4>
				<p><?php echo $messageArr['message'] ?></p>
			</div>
		</div>
	<?php
	}
}
?>
<div id="bootstrapload"><link rel="stylesheet" type="text/css" href="<?php echo JUri::base(true) ?>/components/com_templateck/default.css"></div>
<form action="<?php echo JRoute::_('index.php?option=com_templateck&layout=edit&format=raw&id=' . (int) $this->item->id); ?>" enctype="multipart/form-data" method="post" name="adminForm" id="adminForm" class="form-validate">
    <input type="hidden" name="htmlcode" id="htmlcode" value="" />
    <input type="hidden" name="option" value="com_templateck" />
    <input type="hidden" name="id" value="<?php echo $this->item->id; ?>" />
    <input type="hidden" name="task" value="" />
    <input type="hidden" name="controller" value="templateck" />
	<?php echo JHtml::_('form.token'); ?>
	<?php echo $this->loadTemplate('mainmenu'); ?>
	<div id="addblockmanager" style="<?php echo ($this->item->htmlcode) ? '' : 'display:none;' ?>">
		<div class="blocselectheader"><?php echo JText::_('CK_DRAG_TO_ADD_BLOCK') ?></div>
		<div class="blocselectcont"><div class="blocselecttitle"><?php echo JText::_('CK_WRAPPER') ?></div><div class="blocselect wrapper dragtoaddwrapper"></div></div>
		<div class="blocselectcont"><div class="blocselecttitle"><?php echo JText::_('CK_SINGLE_MODULE') ?></div><div class="blocselect singlemodule dragtoadd" data-type="singlemodule"></div></div>
		<div class="blocselectcont"><div class="blocselecttitle"><?php echo JText::_('CK_FLEXIBLES_MODULES') ?></div><div class="blocselect flexiblemodules dragtoadd" data-type="flexiblemodules"></div></div>
		<div class="blocselectcont"><div class="blocselecttitle"><?php echo JText::_('CK_HORIZ_MENU') ?></div><div class="blocselect horizmenu dragtoadd" data-type="horizmenu"></div></div>
		<div class="blocselectcont"><div class="blocselecttitle"><?php echo JText::_('CK_BANNER_LOGO') ?></div><div class="blocselect banner dragtoadd" data-type="banner"></div></div>
		<div class="blocselectcont"><div class="blocselecttitle"><?php echo JText::_('CK_CUSTOM_BLOCK') ?></div><div class="blocselect custombloc dragtoadd" data-type="custombloc"></div></div>
		<div class="clr" style="border-bottom:1px solid #000;"></div>
	</div>
    <div>
		<div id="template_container">
			<div id="code_areas">
				<?php echo $this->loadTemplate('globalinfos'); ?>

				<div id="popup_editionck" class="ckpopup">
				</div>

				<?php echo $this->loadTemplate('favorite'); ?>

				<?php echo $this->loadTemplate('checkmodules'); ?>
				<div id="html_code" class="code_area">
					<div id="htmlconteneur">
						<div id="conteneur" class="focusbar focus">
							<?php
							if ($this->item->htmlcode) {
								echo $this->item->htmlcode;
							} else {
								echo $this->loadTemplate('modeles');
							}
							?>
						</div>
						<div class="clr"></div>
					</div>
					<div class="clr"></div>
				</div>
				<?php echo $this->loadTemplate('package'); ?>

				<div class="clr"></div>
			</div>
			<div class="clr"></div>
		</div>
    </div>
    <div class="clr"></div>
</form>
</body>
<html>