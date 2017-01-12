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
<form method="post" class="form-horizontal">
<div class="form-group">
	<label style="position: relative; display: inline-block;" class="control-label col-sm-2"> Titel des Objektes* </label>
	<input type = "text" size ="5" style="margin-left: 20%;width: 30vw;" name="titel" class="form-control">
	</br>
</div>
<div class="form-group">
		<label style="position: relative; display: inline-block;" class="control-label col-sm-2"> Kategorie:*
			<select name="kategorie" style="margin-left: 130%; width: 30vw;" class="form-control">
				<?php
					//Hier werden die Kategorien, welche aus der Datenbank ausgelesen wurden, ausgegeben
					for($i=0; $i<count($funktionsausgabe); $i++){
    				echo "<option>".$funktionsausgabe[$i]["name"];"</option>";
       				 }
				?>
			</select>
		</label>
</div>
	</br>
	</br>
<div class="form-group">
	<label style="position: relative; display: inline-block;" class="control-label col-sm-2"> Objektbeschreibung* </label>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<textarea name="beschreibung" style="margin-left: 20%; width: 30vw; height: 30vw;" class="form-control"></textarea>
	</br>
</div>
	</br>
	</br>
<div class="form-group">
	<label style="position: relative; display: inline-block;" class="control-label col-sm-2"> Foto* </label>
	<input type="file" name=="picture" accept="image/gif, image/jpeg, image/png" style="margin-left: 20%; width: 30vw;" value="Foto auswählen" class="form-control">
</div>
	</br>
	</br>
<div class="form-group">
	<label style="position: relative; display: inline-block;" class="control-label col-sm-2"> Mietpreis* </label>
	<input type = "text" size ="5" style="margin-left: 20%; width: 30vw;" name="mietpreis" class="form-control">
	</br>
</div>
	</br>
	</br>
<div class="form-group">
	<label style="position: relative; display: inline-block;" class="control-label col-sm-2"> Strasse &amp; Hausnummer* </label>
	<input type = "text" size ="5" style="margin-left: 20%; width: 30vw;" name="strasse" class="form-control">
	</br>
</div>
<div class="form-group">
	<label style="position: relative; display: inline-block;" class="control-label col-sm-2"> PLZ* </label>
	<input type = "text" size ="5" style="margin-left: 20%; width: 30vw;" name="plz" class="form-control">
	</br>
</div>
<div class="form-group">
	<label style="position: relative; display: inline-block;" class="control-label col-sm-2"> Stadt* </label>
	<input type = "text" size ="5" style="margin-left: 20%; width: 30vw;" name="stadt" class="form-control">
	</br>
</div>
	</br>
	</br>
<div class="form-group">
	<label style="position: relative; display: inline-block;" class="control-label col-sm-2"> ObjektID* </label>
	<input type = "text" size ="5" style="margin-left: 20%; width: 30vw;" name="obid" class="form-control">
	</br>
</div>
<div class="form-group">
	<label style="position: relative; display: inline-block;" class="control-label col-sm-2"> Objektgrösse* </label>
	<input type = "text" size ="5" style="margin-left: 20%; width: 30vw;" name="groesse" class="form-control">
	</br>
</div>
<div class="form-group">
	<label style="position: relative; display: inline-block;" class="control-label col-sm-2"> Anzahl der Zimmer *</label>
	<input type = "text" size ="5" style="margin-left: 20%; width: 30vw;" name="zimmer" class="form-control">
	</br>
</div>
<div class="form-group">
	<label style="position: relative; display: inline-block;" class="control-label col-sm-2">Baujahr*</label>
	<input type = "text" size ="5" style="margin-left: 20%; width: 30vw;" name="baujahr" class="form-control">
	</br>
</div>
<div class="form-group">
	<label style="position: relative; display: inline-block;" class="control-label col-sm-2"> Anbieter </label>
	<input type = "text" size ="5" style="margin-left: 20%; width: 30vw;" name="anbieter" class="form-control">
	</br>
</div>
<div class="form-group">
	<label style="position: relative; display: inline-block;" class="control-label col-sm-2"> Kontaktdaten </label>
	<input type = "text" size ="5" style="margin-left: 20%; width: 30vw;" name="kontakt" class="form-control">
	</br>
</div>
</br>
</br>
<div class="form-group">
<input type = "submit" name ="submit" value="Absenden" size ="5" style="margin-left: 25%; width: 20vw;" class="form-control btn btn-primary">
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
	

	