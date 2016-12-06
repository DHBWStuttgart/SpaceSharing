<?php

/**
 * @name		Template Creator CK 3
 * @package		com_templateck
 * @copyright	Copyright (C) 2013. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 * @author		Cedric Keiflin - http://www.template-creator.com - http://www.joomlack.fr
 */
// No direct access
defined('_JEXEC') or die;

class TemplateckController extends JControllerLegacy {

	/**
	 * Method to display a view.
	 *
	 * @param	boolean			$cachable	If true, the view output will be cached
	 * @param	array			$urlparams	An array of safe url parameters and their variable types, for valid values see {@link JFilterInput::clean()}.
	 *
	 * @return	JController		This object to support chaining.
	 * @since	1.5
	 */
	public function display($cachable = false, $urlparams = false) {
		require_once JPATH_COMPONENT . '/helpers/templateck.php';

		// Load the left sidebar.
		TemplateckHelper::addSubmenu(JRequest::getCmd('view', 'templates'));

		$input = new JInput();
		$view = $input->get('view', 'templates');
		$input->set('view', $view);

		parent::display();

		return $this;
	}

	/**
	* Check updates for the component, module, or plugins
	*/
	public function check_update() {
		error_reporting(0); // to avoid errors to be triggered
		if ( version_compare(self::get_latest_version(), self::get_current_version() ) > 0 ) {
			$update_status = '<span class="badge-alertck">' . JText::_('CK_UPDATE_NOTIFICATION') . '</span>';
		} else {
			$update_status = '';
		}

		echo $update_status;
		die;
	}

	/**
	 * Check if a new version is available
	 * 
	 * @return false, or the latest version
	 */
	public static function get_latest_version() {
		$release_notes = self::get_release_notes();
		$latest_version = false;
		if ($release_notes !== false) {
			$test_version = preg_match('/\*(.*?)\n/', $release_notes, $results);
			$latest_version = trim($results[1]);
//			$is_uptodate = version_compare($latest_version, self::get_current_version() ) > 0 ? false : true;
		}

		return $latest_version;
	}
	
	/*
	 * Get a variable from the manifest file (actually, from the manifest cache).
	 * 
	 * @return the current version
	 */
	public static function get_current_version() {
		$db = JFactory::getDbo();
		$db->setQuery('SELECT manifest_cache FROM #__extensions WHERE name = "com_templateck"');
		$manifest = json_decode($db->loadResult(), true);

		return $manifest['version'];
	}

	/**
	 * Get the release notes content
	 * 
	 * @return false or the file content
	 */
	public static function get_release_notes() {
		$url = 'http://www.template-creator.com/tck_update.txt';
		return @file_get_contents($url);
	}
	
	/**
	 * Check if you have the latest version
	 * 
	 * @return boolean, true if outdated
	 */
	public static function is_outdated() {
		return version_compare(self::get_latest_version(), self::get_current_version() ) > 0;
	}

}
