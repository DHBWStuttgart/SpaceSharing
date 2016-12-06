<?php

/**
 * @name		Template Creator CK 3
 * @package		com_templateck
 * @copyright	Copyright (C) 2013. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 * @author		Cedric Keiflin - http://www.template-creator.com - http://www.joomlack.fr
 */
// No direct access.
defined('_JEXEC') or die;
jimport('joomla.filesystem.folder');
jimport('joomla.filesystem.file');
jimport('joomla.application.component.modeladmin');

/**
 * Templateck model.
 */
class TemplateckModelTemplateinfos extends JModelAdmin {

	/**
	 * @var		string	The prefix to use with controller messages.
	 * @since	1.6
	 */
	protected $text_prefix = 'COM_TEMPLATECK';

	/**
	 * Returns a reference to the a Table object, always creating it.
	 *
	 * @param	type	The table type to instantiate
	 * @param	string	A prefix for the table class name. Optional.
	 * @param	array	Configuration array for model. Optional.
	 * @return	JTable	A database object
	 * @since	1.6
	 */
	public function getTable($type = 'Template', $prefix = 'TemplateckTable', $config = array()) {
		return JTable::getInstance($type, $prefix, $config);
	}

	/**
	 * Method to get the record form.
	 *
	 * @param	array	$data		An optional array of data for the form to interogate.
	 * @param	boolean	$loadData	True if the form is to load its own data (default case), false if not.
	 * @return	JForm	A JForm object on success, false on failure
	 * @since	1.6
	 */
	public function getForm($data = array(), $loadData = true) {
		// Initialise variables.
		$app = JFactory::getApplication();

		// Get the form.
		$form = $this->loadForm('com_templateck.templateinfos', 'templateinfos', array('control' => 'jform', 'load_data' => $loadData));
		if (empty($form)) {
			return false;
		}

		return $form;
	}

	/**
	 * Method to get the data that should be injected in the form.
	 *
	 * @return	mixed	The data for the form.
	 * @since	1.6
	 */
	protected function loadFormData() {
		// Check the session for previously entered form data.
		$data = JFactory::getApplication()->getUserState('com_templateck.edit.templateinfos.data', array());

		if (empty($data)) {
			$data = $this->getItem();
		}

		return $data;
	}

	/**
	 * Method to get a single record.
	 *
	 * @param	integer	The id of the primary key.
	 *
	 * @return	mixed	Object on success, false on failure.
	 * @since	1.6
	 */
	public function getItem($pk = null) {

		if ($pk == null) {
			$input = new JInput(); //var_dump($input->get('id', '', 'array'));
			$input = $input->get('id', '', 'array');
			$pk = isset($input[0]) ? (int) $input[0] : null;
			$this->setState('templateinfos.id', $pk);
		}
		if ($item = parent::getItem($pk)) {

			//Do any procesing on fields here if needed
		}


		return $item;
	}

	/**
	 * Prepare and sanitise the table prior to saving.
	 *
	 * @since	1.6
	 */
	protected function prepareTable($table) {
		jimport('joomla.filter.output');

		if (empty($table->id)) {

			// Set ordering to the last item if not set
			if (@$table->ordering === '') {
				$db = JFactory::getDbo();
				$db->setQuery('SELECT MAX(ordering) FROM #__templateck_templates');
				$max = $db->loadResult();
				$table->ordering = $max + 1;
			}
		}
	}

	/**
	 * Method to store a record
	 *
	 * @access	public
	 * @return	boolean	True on success
	 */
	function copy() {

		$row = $this->getTable();
		$data = $this->getItem();
		$data->id = 0;
		$data->name .= '(copy)';

		// Bind the form fields to the table
		if (!$row->bind($data)) {
			$this->setError($this->_db->getErrorMsg());
			return false;
		}

		// Make sure the record is valid
		if (!$row->check()) {
			$this->setError($this->_db->getErrorMsg());
			return false;
		}

		// Store the table to the database
		if (!$row->store()) {
			$this->setError($row->getErrorMsg());
			return false;
		}

		// $this->setId($row->id);

		return true;
	}

	/**
	 * Method to install a gabarit
	 *
	 * @access	public
	 * @return	true on success
	 */
	public function installGabarit() {
		if (!is_array(JRequest::getVar('file', '', 'files', 'array')))
			return false;

		// include file and zip archive libraries
		jimport('joomla.filesystem.file');

		// declare some variables
		$app = JFactory::getApplication();
		$file = JRequest::getVar('file', '', 'files', 'array');

		//Clean up filename to get rid of strange characters like spaces etc
		$filename = JFile::makeSafe($file['name']);

		// check if the file exists
		if (JFile::getExt($filename) != 'tck3' && JFile::getExt($filename) != 'tck3z') {
			$msg = JText::_('CK_NOT_TCK3_AND_NOT_TCK3Z_FILE');
			$app->redirect("index.php?option=com_templateck&view=templateinfos&layout=install", $msg, 'error');
			return false;
		}
		if (JFile::getExt($filename) === 'tck3') {
			if (! $this->import_tck3_file($file) ) {
				return false;
			}
		} else if (JFile::getExt($filename) === 'tck3z') {
			if (! $this->import_tck3z_file($file) ) {
				return false;
			}
		}

		return true;
	}
	
	private function import_tck3_file($file) {
		$app = JFactory::getApplication();

		//Set up the source and destination of the file
		$src = $file['tmp_name'];

		// check if the file exists
		if (!$src || !JFile::exists($src)) {
			$msg = JText::_('CK_FILE_NOT_EXISTS');
			$app->redirect("index.php?option=com_templateck&view=templateinfos&layout=install", $msg, 'error');
			return false;
		}

		// read the file
		if (!$filecontent = JFile::read($src)) {
			$msg = JText::_('CK_UNABLE_READ_FILE');
			$app->redirect("index.php?option=com_templateck&view=templateinfos&layout=install", $msg, 'error');
			return false;
		}

		// get the two parts, template and mobile data
		$filecontent = str_replace("|URIBASE|", JUri::root(true), $filecontent);
		$gabarittmp = explode("||TCK||", $filecontent);
		$gabarit = isset($gabarittmp[0]) ? json_decode($gabarittmp[0]) : json_decode($filecontent);
		if ($gabarit === null)
			return false;
		$gabaritmobile = isset($gabarittmp[1]) ? json_decode($gabarittmp[1]) : json_decode('{}');
		$gabarit->id = '0'; // set id to 0 to automatically increment value in database
		$gabarit->htmlcode = stripslashes($gabarit->htmlcode);
		$row = $this->getTable();
		// Bind the form fields to the table
		if (!$row->bind($gabarit)) {
			$this->setError($this->_db->getErrorMsg());
			return false;
		}

		// Make sure the record is valid
		if (!$row->check()) {
			$this->setError($this->_db->getErrorMsg());
			return false;
		}

		// Store the table to the database
		if (!$row->store()) {
			$this->setError($row->getErrorMsg());
			return false;
		}

		// store the mobile data
		if (isset($gabaritmobile->id)) {
			// set id to 0 to automatically increment value in database
			$gabaritmobile->id = '0';
			// set the correct templateid
			$gabaritmobile->templateid = $row->id;
			if (!$this->save_item($gabaritmobile, 'mobile'))
				return false;
		}

		return true;
	}
	
	private function import_tck3z_file($file) {
		include_once JPATH_COMPONENT . '/helpers/zip.php';

		// instanciate ZIP archiver
		$archiver = new CKArchiveZip();

		// extract archive
		$gabarit_folder_name = JFile::stripext($file['name']);
		$template_folder_name = str_replace('_gabarit', '', $gabarit_folder_name);
		$dest_extracted_zip_folder = JPATH_ROOT . '/tmp/' . $gabarit_folder_name;
		$isSuccess = $archiver->extract($file['tmp_name'], $dest_extracted_zip_folder, $options = array());
		// var_dump($isSuccess);var_dump($file);var_dump(JPATH_ROOT . '/tmp');
		if ($isSuccess === false) {
			return false;
}

		// import the tck3 gabarit file
		$gabarit_file = array('tmp_name' => $dest_extracted_zip_folder . '/' . $template_folder_name . '.tck3');
		if ($this->import_tck3_file($gabarit_file) === false) {
			return false;
		}

		// create the destination folder for images
		if (! JFolder::exists( JPATH_ROOT . '/images/' . $template_folder_name ) ) {
			JFolder::create( JPATH_ROOT . '/images/' . $template_folder_name );
		}
		// copy the images
		$exclude_files = array('tck3','css','php');
		$files = JFolder::files($dest_extracted_zip_folder, false, true, true);
		foreach ($files as $file) {
			$filename = explode('/', $file);
			$filename = end($filename);
			if (! in_array(JFile::getExt($file), $exclude_files) ) {
				JFile::copy($file, JPATH_ROOT . '/images/' . $template_folder_name . '/' . $filename);
			}
		}

		// copy the custom.css file
		if ( JFile::exists($dest_extracted_zip_folder . '/custom.css' ) ) {
			// create the destination folder for css
			if (! JFolder::exists( JPATH_ROOT . '/components/com_templateck/projects/' . $template_folder_name . '/css' ) ) {
				JFolder::create( JPATH_ROOT . '/components/com_templateck/projects/' . $template_folder_name . '/css' );
			}
			JFile::copy($dest_extracted_zip_folder . '/custom.css', JPATH_ROOT . '/components/com_templateck/projects/'. $template_folder_name . '/css/custom.css' );
		}

		// copy the html folder
		if ( JFolder::exists( $dest_extracted_zip_folder . '/html' ) ) {
			// create the destination folder for css
			if (! JFolder::exists( JPATH_ROOT . '/components/com_templateck/projects/' . $template_folder_name . '/html' ) ) {
				JFolder::create( JPATH_ROOT . '/components/com_templateck/projects/' . $template_folder_name . '/html' );
			}
			JFolder::copy($dest_extracted_zip_folder . '/html', JPATH_ROOT . '/components/com_templateck/projects/' . $template_folder_name . '/html', '', true);
		}

		// remove the copy from the tmp folder
		JFolder::delete($dest_extracted_zip_folder);

		return true;
	}
}