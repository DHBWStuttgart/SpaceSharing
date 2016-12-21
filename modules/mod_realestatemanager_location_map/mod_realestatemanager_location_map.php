<?php
/**
 * @version 3.0
 * @package RealEstateManager LocationMap
 * @copyright 2009 OrdaSoft
 * @author  2012 Andrey Kvasnevskiy-OrdaSoft(akbet@mail.ru)
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL
 * @description Location map for RealEstateManager
*/

/** ensure this file is being included by a parent file */
defined( '_JEXEC' ) or die( 'Restricted access' );
if(!defined('DS')){
    define('DS',DIRECTORY_SEPARATOR);
}
require_once (dirname(__FILE__).'/helper.php');
$doc = JFactory::getDocument();
$doc->addStyleSheet(JURI::base(true).'/components/com_realestatemanager/includes/realestatemanager.css');
$list = modLocationHelper::getLink($params);

require JModuleHelper::getLayoutPath('mod_realestatemanager_location_map',$params->get('layout', 'default'));
