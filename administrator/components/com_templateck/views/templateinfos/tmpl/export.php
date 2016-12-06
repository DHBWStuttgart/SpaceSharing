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
jimport('joomla.filesystem.file');
include_once JPATH_COMPONENT . '/helpers/ZipArchiver.php';
JHtml::_('behavior.formvalidation');
JHtml::_('stylesheet', 'administrator/components/com_templateck/assets/templateck_template.css');
?>
<script type="text/javascript">
	Joomla.submitbutton = function(task)
	{
		if (task == 'template.cancel' || document.formvalidator.isValid(document.id('exportGabarit'))) {
			Joomla.submitform(task, document.getElementById('exportGabarit'));
		}
		else {
			alert('<?php echo $this->escape(JText::_('JGLOBAL_VALIDATION_FORM_FAILED')); ?>');
		}
	}
</script>

<?php
$path = JPATH_ROOT . '/components/com_templateck/projects';
$exportfiledest = $path . '/' . $this->item->name . '.tck3';
$this->item->htmlcode = str_replace(JUri::root(true), "|URIBASE|", $this->item->htmlcode);
$exportfiletext = json_encode($this->item);

// delete the gabarit folder and recreate it, so it is empty
if (JFolder::exists($path . '/' . $this->item->name . '_gabarit/')) {
	JFolder::delete($path . '/' . $this->item->name . '_gabarit/');
}
JFolder::create($path . '/' . $this->item->name . '_gabarit/');

// replace the path for <img /> tags
preg_match_all('/ <img src=\\\"(.*?)\\\"/i', $exportfiletext, $imgs);
foreach ($imgs[1] as $i => $file) {
	$filename = explode('/', $file);
	$filename = end($filename);
	$exportfiletext = str_replace($file, '|URIBASE|\/images\/' . $this->item->name . '\/' . $filename , $exportfiletext);
}

// replace the path for imageurl data
preg_match_all('/imageurl=\\\"(.*?)\\\"/i', $exportfiletext, $files);
foreach ($files[1] as $i => $file) {
	$filename = explode('/', $file);
	$filename = end($filename);
	$exportfiletext = str_replace($file, 'images\/' . $this->item->name . '\/' . $filename , $exportfiletext);

// save the images
	if (! JFile::copy(JPATH_ROOT . '/' . stripslashes($file), $path . '/' . $this->item->name . '_gabarit/' . $filename) ) {
		$msg = '<p class="error">' . JText::_('CK_ERROR_COPY_IMAGE') . ' : ' . JPATH_ROOT . '/' . stripslashes($file) . '</p>';
	} else {
		$msg = '<p class="successck">' . JText::_('CK_SUCCESS_COPY_IMAGE') . ' : ' . JPATH_ROOT . '/' . stripslashes($file) . '</p>';
	}
	echo '<p>' . $msg . '</p>';
}


// create the file .tck3
if (!JFile::write($exportfiledest, $exportfiletext)) {
	$msg = '<p class="error">' . JText::_('CK_ERROR_CREATE_GABARIT') . '</p>';
} else {
	$msg = '<p class="successck">' . JText::_('CK_SUCCESS_CREATE_GABARIT') . '</p>';
}
echo '<p>' . $msg . '</p>';

// save the gabarit file
if (! JFile::copy($exportfiledest, $path . '/' . $this->item->name . '_gabarit/' . $this->item->name . '.tck3' ) ) {
	$msg = '<p class="error">' . JText::_('CK_ERROR_COPY_GABARIT') . '</p>';
} else {
	$msg = '<p class="successck">' . JText::_('CK_SUCCESS_COPY_GABARIT') . '</p>';
}
echo '<p>' . $msg . '</p>';


// save the html folder
if (JFolder::exists( $path . '/' . $this->item->name . '/html' ) ) {
	JFolder::create($path . '/' . $this->item->name . '_gabarit/html');
	JFolder::copy($path . '/' . $this->item->name . '/html', $path . '/' . $this->item->name . '_gabarit/html/', '', true);
}

// save the custom.css file
if (JFile::exists( $path . '/' . $this->item->name . '/css/custom.css' ) ) {
	JFolder::create($path . '/' . $this->item->name . '_gabarit/');
	JFile::copy($path . '/' . $this->item->name . '/css/custom.css', $path . '/' . $this->item->name . '_gabarit/custom.css' );
}

$files = JFolder::files($path . '/' . $this->item->name . '_gabarit/', false, true, true);
$exporter = new ZipArchiver();
$isSuccess = $exporter->create($files, '.tck3z', $path . '/' . $this->item->name . '_gabarit', true);
?>
<form action="<?php echo JRoute::_('index.php'); ?>" enctype="multipart/form-data" method="post" name="adminForm" id="exportGabarit" class="form-validate">
	<?php

// create button to download the package
	echo '<p style="padding: 15px;"><a class="ckdownload" style="background: #3D3D3D;border-radius: 3px;color: #E1E1E1;cursor: pointer;margin: 3px;padding: 2px 5px;text-decoration: none;" target="_blank" href="' . JURI::root() . 'components/com_templateck/projects/' . $this->item->name . '_gabarit.tck3z">' . JText::_('CK_DOWNLOAD_GABARIT') . '</a></p>';
	?>
    <input type="hidden" name="option" value="com_templateck" />
    <input type="hidden" name="id" value="" />
    <input type="hidden" name="task" value="" />
    <input type="hidden" name="controller" value="template" />
	<?php echo JHtml::_('form.token'); ?>
</form>