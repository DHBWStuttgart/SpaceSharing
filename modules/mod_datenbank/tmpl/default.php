<?php
/**
 * Die Template Datei...
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
 
// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );
 ?>
 

	
	<h2></h2>
<form method="post">
<div>
	<label style="position: relative; display: inline-block;"> Titel des Objektes* </label>
	<input type = "text" size ="5" style="margin-left: 20%;width: 15vw;" name="titel">
	</br>
</div>
<div>
		<label style="position: relative; display: inline-block;">Kategorie:*
			<select  name="kategorie">
				<?php
					//Hier werden die Kategorien, welche aus der Datenbank ausgelesen wurden ausgegeben
					for($i=0; $i<count($funktionsausgabe); $i++){
    				echo "<option>".$funktionsausgabe[$i]["name"];"</option>";
       				 }
				?>
			</select>
		</label>
</div>
	</br>
	</br>
<div>
	<label style="position: relative; display: inline-block;"> Objektbeschreibung* </label>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<textarea name="beschreibung"></textarea>
	</br>
</div>
	</br>
	</br>
<div>
	<input type="file" name=="picture" accept="image/gif, image/jpeg, image/png" value ="Foto auswählen">
</div>
	</br>
	</br>
<div>
	<label style="position: relative; display: inline-block;"> Mietpreis* </label>
	<input type = "text" size ="5" style="margin-left: 20%;width: 15vw;" name="mietpreis">
	</br>
</div>
	</br>
	</br>

<div>
	<label style="position: relative; display: inline-block;"> Stadt* </label>
	<input type = "text" size ="5" style="margin-left: 20%;width: 15vw;" name="stadt">
	</br>
</div>
<div>
	<label style="position: relative; display: inline-block;"> Strasse &amp; Hausnummer*</label>
	<input type = "text" size ="5" style="margin-left: 20%;width: 15vw;" name="strasse">
	</br>
</div>
<div>
	<label style="position: relative; display: inline-block;"> PLZ* </label>
	<input type = "text" size ="5" style="margin-left: 20%;width: 15vw;" name="plz">
	</br>
</div>
	</br>
	</br>
<div>
	<label style="position: relative; display: inline-block;"> ObjektID* </label>
	<input type = "text" size ="5" style="margin-left: 20%;width: 15vw;" name="obid">
	</br>
</div>
<div>
	<label style="position: relative; display: inline-block;"> Objektgrösse* </label>
	<input type = "text" size ="5" style="margin-left: 20%;width: 15vw;" name="groesse">
	</br>
</div>
<div>
	<label style="position: relative; display: inline-block;"> Anzahl der Zimmer *</label>
	<input type = "text" size ="5" style="margin-left: 20%;width: 15vw;" name="zimmer">
	</br>
</div>
<div>
	<label style="position: relative; display: inline-block;">Baujahr*</label>
	<input type = "text" size ="5" style="margin-left: 20%;width: 15vw;" name="baujahr">
	</br>
</div>
<div>
	<label style="position: relative; display: inline-block;"> Anbieter </label>
	<input type = "text" size ="5" style="margin-left: 20%;width: 15vw;" name="anbieter">
	</br>
</div>
<div>
	<label style="position: relative; display: inline-block;"> Kontaktdaten </label>
	<input type = "text" size ="5" style="margin-left: 20%;width: 15vw;" name="kontakt">
	</br>
</div>
</br>
</br>
<div>
<input type = "submit" name ="submit" value="Absenden" size ="5" style="width: 15vw;">
</br>
</div>
</form>

<?php 

	if(isset($_POST['submit'])){
	include 'handler.php';
		
		if(empty($titel) | empty($kategorie) | empty($beschreibung) | empty($mietpreis) | empty($plz) | empty($obid) |
		   empty($strasse) | empty($stadt) | empty($groesse) | empty($zimmer) | empty($baujahr)){

			   echo "<script type='text/javascript'>alert('Bitte füllen Sie alle Felder mit * aus!');</script>";
			   echo $obid.$beschreibung.$mietpreis.$titel.$stadt.$plz.$strasse.$zimmer.$baujahr.$groesse.$anbieter;

		   }
		   //Schreibt das neu eingegebene Objekt in die Datenbank
		   else{
			   //Datenbankverbindung deklarieren 
			   $db = JFactory::getDBO();
			   $query = $db->getQuery(true);
			   //Die notwendigen Spalten auswählen 
			   $columns = array('description', 'link', 'listing_type', 
			   'price', 'priceunit', 'htitle', 'hcountry', 'hregion', 
			   'hcity', 'hzipcode', 'hlocation', 'hlatitude', 'hlongitude', 
			   'map_zoom', 'rooms', 'contacts', 'image_link', 'listing_status', 
			   'property_type', 'year', 'agent', 'area_unit', 'land_area', 
			   'land_area_unit', 'expiration_date', 'lot_size', 'house_size', 'checked_out', 
			   'checked_out_time', 'ordering', 'date', 'hits', 'published', 
			   'approved', 'owneremail', 'pixUpdtedDt', 'language', 'owner_id', 
			   'featured_clicks', 'featured_shows');

			   //Die Werte in ein Array schreiben
			   $values = array("'".$beschreibung."'","'"."'", "'1'", 
			   "'".$mietpreis."'", "'EUR'", "'".$titel."'", "'"."'", "'"."'", 
			   "'".$stadt."'", "'".$plz."'", "'".$strasse."'", "'".$latitude."'", "'".$longitude."'", 
			   '14', "'".$zimmer."'", "'"."'", "'"."'", "'1'", 
			   "'"."'", "'".$baujahr."'", "'"."'", "'"."'", "'"."'", 
			   "'"."'", "'0000-00-00'", "'"."'", "'".$groesse."'", "'0'", 
			   "'0000-00-00 00:00:00.000000'", "'0'", "'0000-00-00 00:00:00.000000'", "'"."'", "'0'", 
			   "'1'", "'".$anbieter."'", "'"."'", "'*'", "'0'", 
			   "'"."'", "'"."'");
			   //Befehl zusammensetzen
			   $query
   				 ->insert($db->quoteName('#__rem_houses'))
  				 ->columns($db->quoteName($columns))
   				 ->values(implode(',', $values));
					//Befehl ausführen
				$db->setQuery($query);
				$db->execute();

				//Die Kategorie muss nun noch festgelegt werden in der Tabelle #__rem_categories
				//Hole dazu die ID von dem Haus, das gerade eben eingefügt wurde
				$houseidabfrage = $db->getQuery(true);
				$houseidabfrage = $db->getQuery(true)
           		 ->select($db->quoteName('id'))
            	 ->from($db->quoteName('#__rem_houses'))
           		 ->order('ordering DESC')
				 ->setLimit('1');
				//Prepare the query
				$db->setQuery($houseidabfrage);
        
				// Lade eine Liste von den Daten, die in Der Datenbank stehen.
				$houseid = $db->loadResult();
				
				//Schreibe nun die Kategorie in die Tabelle #re_categories
				$abfrage = $db->getQuery(true);
				$spalten = array('iditem', 'idcat');
				$werte = array("'".$houseid."'", "'".$katid."'");
				$abfrage
   				 ->insert($db->quoteName('#__rem_categories'))
  				 ->columns($db->quoteName($spalten))
   				 ->values(implode(',', $werte));
					//Befehl ausführen
				$db->setQuery($abfrage);
				$db->execute();

		   }

}
?>
	

	