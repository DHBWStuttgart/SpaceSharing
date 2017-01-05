<?php 

$titel          =  " ";
$beschreibung   =  " ";
$kategorie      =  " ";
$obid           =  " ";
$mietpreis      =  " ";
$strasse        =  " ";
$stadt          =  " ";
$plz            =  " ";
$obart          =  " ";
$groesse        =  " ";
$zimmer         =  " ";
$baujahr        =  " ";
$anbieter       =  " ";
$adresse        =  " ";
$latitude       =  " ";
$longitude      =  " ";
$katid          =  " ";



$titel = $_POST["titel"];         
$beschreibung = $_POST['beschreibung'];   
$kategorie = $_POST['kategorie'];      
$obid = $_POST['obid'];           
$mietpreis = $_POST['mietpreis'];      
$strasse = $_POST['strasse'];       
$stadt = $_POST['stadt'];          
$plz = $_POST['plz'];            
$obart = $_POST['obart'];          
$groesse = $_POST['groesse'];        
$zimmer = $_POST['zimmer'];        
$baujahr = $_POST['baujahr'];   
$anbieter = $_POST['anbieter']; 

 // Get lat and long by address         
        $address = $strasse." " . $stadt; // Google HQ
        $prepAddr = str_replace(' ','+',$address);
        $geocode=file_get_contents('https://maps.google.com/maps/api/geocode/json?address='.$prepAddr.'&sensor=false');
        $output= json_decode($geocode);
        $latitude = $output->results[0]->geometry->location->lat;
        $longitude = $output->results[0]->geometry->location->lng;

       //Hole dir die entsprechende KategorieID aus der Datenbank
        //Stelle eine Datenbankverbindung her
		$db = JFactory::getDbo();
		//Die Abfrage
		$query = $db->getQuery(true)
            ->select($db->quoteName('id'))
            ->from($db->quoteName('#__rem_main_categories'))
            ->where($db->quoteName('name') . ' LIKE '. $db->quote($kategorie));
		//Prepare the query
		$db->setQuery($query);
        
		// Lade eine Liste von den Daten, die in Der Datenbank stehen.
		$katid = $db->loadResult();

?>