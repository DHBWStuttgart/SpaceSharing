<?php 

$user = JFactory::getUser();
 
if (!$user->guest) {
  $nutzerMail = $user->email;

  $db = JFactory::getDBO();
  $query = $db->getQuery(true);
  $query = $db->getQuery(true)
      ->select($db->quoteName(array('id','htitle','hcity','hzipcode','hlocation','house_size')))
      ->from($db->quoteName('#__rem_houses'))
      ->where($db->quoteName('owneremail'). ' LIKE '. $db->quote($nutzerMail));
	//Prepare the query
	$db->setQuery($query);
        
	// Lade eine Liste von den Daten, die in Der Datenbank stehen.
	$result = $db->loadRowList();

}else{
      echo "Sie sind nicht eingeloggt, also wird Ihnen auch nichts angezeigt! ";
}
?>