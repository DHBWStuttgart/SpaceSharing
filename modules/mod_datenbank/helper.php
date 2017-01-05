<?php
/**
 * Helper Datei für Datenbank Testmodul
 * 
 * @package    Joomla.Tutorials
 * @subpackage Modules
 * @link http://dev.joomla.org/component/option,com_jd-wiki/Itemid,31/id,tutorials:modules/
 * @license        GNU/GPL, see LICENSE.php
 * mod_helloworld is free software. This version may have been modified pursuant
 * to the GNU General Public License, and as distributed it includes or
 * is derivative of works licensed under the GNU General Public License or
 * other free or open source software licenses.
 */
class modDatenbankHelper
{
    /**
     * Retrieves the hello message
     *
     * @param array $params An object containing the module parameters
     * @access public
     */    
    public static function getFunktion( $params )
    {
        //Stelle eine Datenbankverbindung her
		$db = JFactory::getDbo();
		//Die Abfrage
		$query = $db->getQuery(true)
            ->select($db->quoteName('name'))
            ->from($db->quoteName('#__rem_main_categories'));
		//Prepare the query
		$db->setQuery($query);
        
		// Lade eine Liste von den Daten, die in Der Datenbank stehen.
		$row = $db->loadAssocList();
		//Return das Array
		return $row;

/*
for($i=0; $i<count($row); $i++){
    echo $row[$i]["name"];
    echo "</br>";
        }
        */

    
    }
}
?>