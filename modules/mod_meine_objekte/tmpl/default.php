<!DOCTYPE html>
<html>
<head>
<style>
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
</style>
</head>
<body>

<?php

// no direct access
	defined( '_JEXEC' ) or die( 'Restricted access' );
	include 'handler.php';


	//echo "Ihre NutzerID ist die: ".$nutzerID." mit der E-Mail Adresse: ".$nutzerMail;
	echo "<form method='POST'>";
	echo "<table style = 'width:100%;'>";

// Der Tabellen Kopf ist Statisch und bleibt daher immer gleich
	echo "<thead>";
    echo " 	<tr>";
    echo "  <th>Wählen</th>";
	echo "  <th>HausID</th>";
	echo "  <th>Titel</th>";
	echo "  <th>Stadt</th>";
	echo "  <th>PLZ</th>";
	echo "  <th>Strasse</th>";
	echo "  <th>Hausgrösse</th>";
    echo " </tr>";
 	echo "  </thead>";
// Der Tabellen Körper ist flexibel und wird hier erzeugt
	echo "<tbody>";

	for($j =0; $j<count($result);$j++ ){
		echo "<tr>";

		echo"<th>";
		echo"<input type = 'checkbox' name = '$j'>";
		echo "</th>";
	for($i =0; $i<max(array_map('count', $result));$i++ ){
		echo"<th>";
		print($result[$j][$i]);
		echo "</th>";
	 }
		echo "</tr>";
		
	}
	echo "</tbody>";
	echo "</table>";
	echo "</br>";
	echo "<input type='submit' name='delete' value='Löschen'>";
	echo "</form>";
	//###############################################################################
 ?>


<?php 

	if(isset($_POST['delete'])){
	
		for($k=0; $k<count($result); $k++){
			if(isset($_POST[$k])){
				
				$objekt = $result[$k]['0'];

				$db = JFactory::getDbo();
 
				$query = $db->getQuery(true);
				$query2 = $db->getQuery(true);
 
				// delete all custom keys for user 1001.
				$conditions = array($db->quoteName('id') . ' = '.$objekt);
				$conditions2 = array($db->quoteName('iditem') . ' = '.$objekt);
 
				$query->delete($db->quoteName('#__rem_houses'));
				$query->where($conditions);

				$query2->delete($db->quoteName('#__rem_categories'));
				$query2->where($conditions2);
 
				$db->setQuery($query);
				$result = $db->execute();
				$db->setQuery($query2);
				$result2= $db->execute();
			}
		}
		header("Refresh:0");		
}
?>
</body>
</html>
	

	