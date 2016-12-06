<?php
if (!defined('_VALID_MOS') && !defined('_JEXEC')) {
    die('Direct Access to ' . basename(__FILE__) . ' is not allowed.');
}
/**
 *
 * @package  RealEstateManager
 * @copyright 2012 Andrey Kvasnevskiy-OrdaSoft(akbet@mail.ru); Rob de Cleen(rob@decleen.com); 
 * Homepage: http://www.ordasoft.com
 * @version: 3.9 Free
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL
 * */
$mosConfig_absolute_path = $GLOBALS['mosConfig_absolute_path'] = JPATH_SITE;

require_once($mosConfig_absolute_path . "/components/com_realestatemanager/compat.joomla1.5.php");
require_once($mosConfig_absolute_path . "/administrator/components/com_realestatemanager/install.realestatemanager.helper.php");
require_once ($mosConfig_absolute_path . "/components/com_realestatemanager/realestatemanager.class.php");
require_once ($mosConfig_absolute_path . "/components/com_realestatemanager/functions.php");
require_once ($mosConfig_absolute_path . "/administrator/components/com_realestatemanager/realestatemanager.class.conf.php");
require_once ($mosConfig_absolute_path . "/administrator/components/com_realestatemanager/realestatemanager.class.others.php");

$GLOBALS['realestatemanager_configuration'] = $realestatemanager_configuration;



if (!defined('_JLEGACY')) {
    $GLOBALS['path'] = $mosConfig_live_site . "/components/com_realestatemanager/images/";
} else {
    $GLOBALS['path'] = $mosConfig_live_site . "/administrator/components/com_realestatemanager/images/";
}
$path = $GLOBALS['path'];


if (version_compare(JVERSION, "1.6.0", "lt")) {

    function com_install() {
        return com_install2();
    }

}

function updateRemConfigurationVersion() {
    global $realestatemanager_configuration, $mosConfig_absolute_path;
    $xml = JFactory::getXml($mosConfig_absolute_path . "/administrator/components/com_realestatemanager/realestatemanager.xml");
    $realestatemanager_configuration['release']['version'] = (string)$xml->version;
    $realestatemanager_configuration['release']['date'] = (string)$xml->creationDate;
    mosRealEstateManagerOthers::setParams();
    unset($xml);
}

function update_to_version_3_6(){
  global $database,$currentVersion,$currentnumber;

    $database->setQuery("SELECT * FROM #__rem_version");
    $version = $database->loadAssoc();

    if($version['version'] == '3.5' && $version['number'] == 'Free'){
        $query = "ALTER TABLE #__rem_orders
                    ADD COLUMN `fk_houses_htitle` VARCHAR( 255 ) NOT NULL";
        $database->setQuery($query);
        $database->query();
        $query = "ALTER TABLE #__rem_orders_details
                    ADD COLUMN `fk_houses_htitle` VARCHAR( 255 ) NOT NULL";
        $database->setQuery($query);
        $database->query();
    }
    
  echo "Creating table for video source... ";
  $query = "CREATE TABLE IF NOT EXISTS #__rem_video_source (
    `id` int(11) unsigned NOT NULL auto_increment,
    `fk_house_id`int(11) DEFAULT NULL,
    `sequence_number` int(11) DEFAULT NULL,
    `src` varchar(255) DEFAULT NULL,
    `type` varchar(255) DEFAULT NULL,
    `media`varchar(255) DEFAULT NULL,
    `youtube`varchar(255) DEFAULT NULL,
     FOREIGN KEY (`fk_house_id`) REFERENCES #__rem_houses(`id`),
     PRIMARY KEY (`id`)
    ) ENGINE=MyISAM AUTO_INCREMENT=2  COLLATE utf8_general_ci ";
  $database->setQuery($query);
  $database->query();
  echo $database->getErrorMsg();
  if (array_search($database->getPrefix() . "rem_video_source", $database->getTableList(), true))
    echo "[Ok]<br />"; 
  else
    exit;

  echo "Creating table for track source... ";
  $query = "CREATE TABLE IF NOT EXISTS #__rem_track_source (
    `id` int(11) unsigned NOT NULL auto_increment,
    `fk_house_id`int(11) DEFAULT NULL,
    `sequence_number` int(11) DEFAULT NULL,
    `src` varchar(255) DEFAULT NULL,
    `kind` varchar(255) DEFAULT NULL,
    `scrlang` varchar(255) DEFAULT NULL,
    `label` varchar(255) DEFAULT NULL,
     FOREIGN KEY (`fk_house_id`) REFERENCES #__rem_houses(`id`),
     PRIMARY KEY (`id`)
    ) ENGINE=MyISAM AUTO_INCREMENT=2  COLLATE utf8_general_ci ";
  $database->setQuery($query);
  $database->query();
  echo $database->getErrorMsg();
  if (array_search($database->getPrefix() . "rem_track_source", $database->getTableList(), true))
    echo "[Ok]<br />"; 
  else
    exit;
    
//IGNORE deleted dublicate entry
  $query = "ALTER IGNORE TABLE #__rem_const
      ADD UNIQUE  const(`const`)";
  $database->setQuery($query);
  $database->query();

  $query = "ALTER IGNORE TABLE #__rem_languages
      ADD UNIQUE  lang_code(`lang_code`)";
  $database->setQuery($query);
  $database->query();
            
  return;
}

function update_to_version_3_7(){
  global $database,$currentVersion,$currentnumber;

  $query = "ALTER IGNORE TABLE #__rem_orders
      ADD COLUMN `paypal_paykay` VARCHAR( 255 ) NOT NULL";
  $database->setQuery($query);
  $database->query();

  $query = "ALTER IGNORE TABLE #__rem_orders_details
      ADD COLUMN `paypal_paykay` VARCHAR( 255 ) NOT NULL";
  $database->setQuery($query);
  $database->query();

  $query = "ALTER IGNORE TABLE #__rem_photos
      ADD COLUMN `img_ordering` int(11) NULL";
  $database->setQuery($query);
  $database->query();
  
  $query =  "ALTER IGNORE TABLE #__rem_houses ADD COLUMN pixUpdtedDt varchar(100) default ''";
  $database->setQuery($query);
  $database->query();
            
  return;
}

function update_to_version_3_9 () {
    global $database;
    $query = "CREATE TABLE IF NOT EXISTS `#__rem_users_wishlist` ( 
             `id` int(11) NOT NULL auto_increment, 
             `fk_houseid` int(11) DEFAULT NULL, 
             `fk_userid` int(11) DEFAULT NULL, 
              FOREIGN KEY (`fk_houseid`) REFERENCES #__rem_houses(`id`), 
              FOREIGN KEY (`fk_userid`) REFERENCES #__users(`id`), 
              PRIMARY KEY (`id`) 
             ) ENGINE=MyISAM AUTO_INCREMENT=2  COLLATE utf8_general_ci";
    $database->setQuery($query);
    $database->query();
    echo $database->getErrorMsg();
    if (array_search($database->getPrefix() . "rem_users_wishlist", $database->getTableList(), true))
        echo "[Ok]<br />"; 
    else
        exit;

    return;
}

function com_install2() {
    global $database, $mosConfig_absolute_path, $mosConfig_live_site, $realestatemanager_configuration;
    echo "<br>Checking the PHP version...";

    //**********************   begin check version PHP   ***********************
    $is_warning = false;

    if ((phpversion()) < 5) {
        ?>
        <center>
            <table width="100%" border="0">
                <tr>
                    <td>
                        <code>Installation status: <font color="red">fault</font></code>
                    </td>
                </tr>
                <tr>
                    <td>
                        <code><font color="red">This component works correctly under PHP version 5.0 and higher.</font></code>
                    </td>
                </tr>
            </table>
        </center>

        <?php
        return '<h2><font color="red">Component installation fault</font></h2>';
    }

    //******************   end check version PHP   ******************************
    echo "Ok<br>Checking XSL extension...";
    //******************   begin check xsl extension   *****************
    if (!(class_exists('XsltProcessor'))) {
        $is_warning = true;
        ?>
        <center>
            <table width="100%" border="0">
                <tr>
                    <td>
                        <code><font color="red">XSL extension not found! In order for csv export to work, you need to compile PHP5 with support for the XSL extension!</font></code>
                    </td>
                </tr>
            </table>
        </center>
        <?php
    }
    //*******************   end check xsl extension   **********************
    echo "Ok<br>Checking PHP-Xml extension...";
    //******************   begin check php-xml extension   *****************
    if (!(class_exists('domDocument'))) {
        $is_warning = true;
        ?>
        <center>
            <table width="100%" border="0">
                <tr>
                    <td>
                        <code><font color="red">PHP-Xml extension not found! In order for xml export to work, you need to compile PHP5 with support for the PHP-Xml extension!</font></code>
                    </td>
                </tr>
            </table>
        </center>
        <?php
    }
    //*******************   end check php-xml extension   **********************
    echo "Ok<br>Checking CURL extension...";
    //********************   begin check CURL extension   ******************
    if (!(function_exists('curl_init'))) {
        $is_warning = true;
        ?>
        <center>
            <table width="100%" border="0">
                <tr>
                    <td>
                        <code><font color="red">CURL extension not found! In order for Photo download to work, you need to compile PHP5 with support for the CURL extension!</font></code>
                    </td>
                </tr>
            </table>
        </center>
        <?php
    }
    //****************   end check CURL extension   ***********************
    echo "Ok<br>Checking GD extension...";
    //*************   begin check GD extension   *************************
    if (!(function_exists('imagefontwidth'))) {
        $is_warning = true;
        ?>
        <center>
            <table width="100%" border="0">
                <tr>
                    <td>
                        <code><font color="red">GD extension not found! In order for CAPTCHA picture works correctly, you need to compile PHP5 with support for the GD extension!</font></code>
                    </td>
                </tr>
            </table>
        </center>
        <?php
    }
    //************************   end check GD extension   ******************
    echo "Ok<br>Installing database...";

    //******************   database ******************

    $tableList = $database->getTableList();
    echo 'cheking database<br/>';

    $table_prefix = $database->getPrefix(); // for 1.6

    echo 'cheking database<br/>';
    if (array_search($table_prefix . 'rem_version', $tableList)) {
        $database->setQuery("SELECT * FROM #__rem_version");
        $version = $database->loadAssoc();
    }

    if (array_search($table_prefix . 'rem_houses', $tableList)) {
        $database->setQuery("SELECT * FROM #__rem_houses");
        $reallibr = $database->loadResult();
    }
    else
        $reallibr = '';
    if ($reallibr) {
        echo 'database already exist<br/>';
        switch ($version['version']) {
            case 2.1:
                $query = "ALTER TABLE #__rem_houses 
                    ADD COLUMN hzipcode varchar(50) NOT NULL default '',
                    ADD COLUMN area_unit varchar(45) default '',
                    ADD COLUMN land_area varchar(45) default '',
                    ADD COLUMN land_area_unit varchar(45) default '',
                    ADD COLUMN featured_shows varchar(100) default '',
                    ADD COLUMN featured_clicks varchar(100) default ''";
                    
                    
                $database->setQuery($query);
                $database->query();

                $query = "ALTER TABLE #__rem_main_categories                    
                    ADD COLUMN `language` varchar(250) default '*'";
                $database->setQuery($query);
                $database->query();


                $query = "CREATE TABLE IF NOT EXISTS `#__rem_rent_sal` (
        		`id` int(11) unsigned NOT NULL auto_increment,
        		`fk_houseid` int(11),
        		`monthW` int(4) NOT NULL default 0,
        		`yearW` int(4) NOT NULL default 0,
        		`week` varchar(1250) default '',
        		`weekend` varchar(1250) default '',
        		`midweek` varchar(1250) default '',
                `price_from` DATE NOT NULL ,
                `price_to` DATE NOT NULL ,
                `special_price` FLOAT NOT NULL ,
                `comment_price` VARCHAR( 1000 ) NOT NULL ,
                `priceunit` VARCHAR( 255 ) NOT NULL,
		 PRIMARY KEY  (`id`)		
		) ENGINE=MyISAM AUTO_INCREMENT=2 CHARACTER SET `utf8`;";
                $database->setQuery($query);
                $database->query();


                $query = "ALTER TABLE #__rem_houses 
                    ADD COLUMN `extra1` varchar(250) default '',
                    ADD COLUMN `extra2` varchar(250) default '',
                    ADD COLUMN `extra3` varchar(250) default '',
                    ADD COLUMN `extra4` varchar(250) default '',
                    ADD COLUMN `extra5` varchar(250) default '',
                    ADD COLUMN `extra6` varchar(250) default '',
                    ADD COLUMN `extra7` varchar(250) default '',
                    ADD COLUMN `extra8` varchar(250) default '',
                    ADD COLUMN `extra9` varchar(250) default '',
                    ADD COLUMN `extra10` varchar(250) default '',
                    ADD COLUMN `language` varchar(250) default '',
                    ADD COLUMN `owner_id` int(9) default 0,
                    ADD COLUMN `rooms` int(11) default null,
                    ADD COLUMN `house_size` varchar(50) default '',
                    ADD COLUMN `garages` varchar(50) default ''";

                $database->setQuery($query);
                $database->query();

                $query = "CREATE TABLE IF NOT EXISTS #__rem_feature_houses (
                `id` int(11) unsigned NOT NULL auto_increment,
                `fk_houseid` int(11) NOT NULL default 0,
                `fk_featureid` int(11) NOT NULL default 0,
                PRIMARY KEY  (`id`),
                FOREIGN KEY (`fk_houseid`) REFERENCES #__rem_houses(`id`),
                FOREIGN KEY (`fk_featureid`) REFERENCES #__rem_feature(`id`),
                INDEX (`fk_houseid`,`fk_featureid`)
                ) ENGINE=MyISAM AUTO_INCREMENT=2 COLLATE utf8_general_ci";
                $database->setQuery($query);
                $database->query();

                $query = "CREATE TABLE IF NOT EXISTS #__rem_const (
                `id` int(11) unsigned NOT NULL auto_increment,
                `const` varchar(250) default '',
                `sys_type` varchar(250) default '',
                PRIMARY KEY  (`id`)
                ) ENGINE=MyISAM AUTO_INCREMENT=2 COLLATE utf8_general_ci";
                $database->setQuery($query);
                $database->query();

                $query = "CREATE TABLE IF NOT EXISTS #__rem_languages (
                `id` int(11) unsigned NOT NULL auto_increment,
                `lang_code` char(7),
                `title` varchar(250) default '',
                `sef` char(7),
                PRIMARY KEY  (`id`)
                ) ENGINE=MyISAM AUTO_INCREMENT=2 COLLATE utf8_general_ci";
                $database->setQuery($query);
                $database->query();

                $query = "CREATE TABLE IF NOT EXISTS #__rem_const_languages (
                `id` int(11) unsigned NOT NULL auto_increment,
                `fk_constid` int(11) NOT NULL default 0,
                `fk_languagesid` int(11) NOT NULL default 0,
                `value_const` varchar(2000) default '',                
                PRIMARY KEY  (`id`),
                UNIQUE (`fk_constid`,`fk_languagesid`),
                FOREIGN KEY (`fk_constid`) REFERENCES #__rem_const(`id`),
                FOREIGN KEY (`fk_languagesid`) REFERENCES #__rem_languages(`id`)
                ) ENGINE=MyISAM AUTO_INCREMENT=2 COLLATE utf8_general_ci";
                $database->setQuery($query);
                $database->query();


                $query = " CREATE TABLE IF NOT EXISTS `#__rem_mime_types` (
            `mime_ext` text,
            `mime_type` text
          ) ENGINE=MyISAM AUTO_INCREMENT=2 COLLATE utf8_general_ci";
                $database->setQuery($query);
                $database->query();

            $query = "CREATE TABLE IF NOT EXISTS `#__rem_orders` (
              `id` int(11) NOT NULL AUTO_INCREMENT,
              `fk_user_id` int(11) DEFAULT NULL,
              `fk_houses_htitle` varchar(255) NOT NULL DEFAULT '',
              `email` varchar(255) NOT NULL DEFAULT '',
              `name` varchar(255) NOT NULL DEFAULT '',
              `status` varchar(255) NOT NULL DEFAULT '',
              `order_date` DATETIME,
              `fk_house_id` int(11) DEFAULT NULL,
              `txn_type` varchar(255) NOT NULL DEFAULT '',
              `txn_id` varchar(255) NOT NULL DEFAULT '',
              `payer_id` varchar(255) NOT NULL DEFAULT '',
              `payer_status` varchar(255) NOT NULL DEFAULT '',
              `order_calculated_price` varchar(255) NOT NULL DEFAULT '',
              `order_price` int(11) DEFAULT NULL,
              `order_currency_code` varchar(255) NOT NULL DEFAULT '',
                PRIMARY KEY (`id`)
            ) ENGINE=MyISAM  DEFAULT CHARSET=utf8; ";
                $database->setQuery($query);
                $database->query();
            
            $query = "CREATE TABLE IF NOT EXISTS `#__rem_orders_details` (
                `id` int(11) NOT NULL AUTO_INCREMENT,
                `fk_order_id` int(11) DEFAULT NULL,
                `fk_user_id` int(11) DEFAULT NULL,
                `fk_houses_htitle` varchar(255) NOT NULL DEFAULT '',
                `email` varchar(255) NOT NULL DEFAULT '',
                `name` varchar(255) NOT NULL DEFAULT '',
                `status` varchar(255) NOT NULL DEFAULT '',
                `order_date` DATETIME,
                `fk_house_id` int(11) DEFAULT NULL,
                `txn_type` varchar(255) NOT NULL DEFAULT '',
                `txn_id` varchar(255) NOT NULL DEFAULT '',
                `payer_id` varchar(255) NOT NULL DEFAULT '',
                `payer_status` varchar(255) NOT NULL DEFAULT '',
                `order_calculated_price` varchar(255) NOT NULL DEFAULT '',
                `order_price` int(11) DEFAULT NULL,
                `order_currency_code` varchar(255) NOT NULL DEFAULT '',
                `payment_details` text NOT NULL DEFAULT '',
                PRIMARY KEY (`id`)
             ) ENGINE=MyISAM  DEFAULT CHARSET=utf8;";
                $database->setQuery($query);
                $database->query();
            

                $query = "ALTER TABLE #__rem_houses ADD COLUMN `associate_house` varchar(255) default null";
                $database->setQuery($query);
                $database->query();

                $query = "ALTER TABLE #__rem_main_categories ADD COLUMN `associate_category` varchar(255) default null";
                $database->setQuery($query);
                $database->query();
                
                $query = "ALTER TABLE #__rem_rent_sal 
                          ADD COLUMN `price_from` DATE NOT NULL,	
                          ADD COLUMN `price_to` DATE NOT NULL ,
                          ADD COLUMN `special_price` FLOAT NOT NULL ,
                          ADD COLUMN `comment_price` VARCHAR( 1000 ) NOT NULL ,
                          ADD COLUMN `priceunit` VARCHAR( 255 ) NOT NULL";
                $database->setQuery($query);
                $database->query();
                
                update_to_version_3_6();
                update_to_version_3_7();
                update_to_version_3_9();
                //load language
                loadConstRem();
                loadDataMime();
                break;
            case 2.2:

                $query = "CREATE TABLE IF NOT EXISTS `#__rem_rent_sal` (
        		`id` int(11) unsigned NOT NULL auto_increment,
        		`fk_houseid` int(11),
        		`monthW` int(4) NOT NULL default 0,
        		`yearW` int(4) NOT NULL default 0,
        		`week` varchar(1250) default '',
        		`weekend` varchar(1250) default '',
        		`midweek` varchar(1250) default '',
        		`price_from` DATE NOT NULL ,
                `price_to` DATE NOT NULL ,
                `special_price` FLOAT NOT NULL ,
                `comment_price` VARCHAR( 1000 ) NOT NULL ,
                `priceunit` VARCHAR( 255 ) NOT NULL,
		 PRIMARY KEY  (`id`)		 
		) ENGINE=MyISAM AUTO_INCREMENT=2 CHARACTER SET `utf8`;";
                $database->setQuery($query);
                $database->query();

                $query = "ALTER TABLE #__rem_houses 
                    ADD COLUMN `extra1` varchar(250) default '',
                    ADD COLUMN `extra2` varchar(250) default '',
                    ADD COLUMN `extra3` varchar(250) default '',
                    ADD COLUMN `extra4` varchar(250) default '',
                    ADD COLUMN `extra5` varchar(250) default '',
                    ADD COLUMN `extra6` varchar(250) default '',
                    ADD COLUMN `extra7` varchar(250) default '',
                    ADD COLUMN `extra8` varchar(250) default '',
                    ADD COLUMN `extra9` varchar(250) default '',
                    ADD COLUMN `extra10` varchar(250) default '',
                    ADD COLUMN `language` varchar(250) default '*',
                    ADD COLUMN `owner_id` int(9) default 0,
                    ADD COLUMN `rooms` int(11) default null,
                    ADD COLUMN `house_size` varchar(50) default '',
                    ADD COLUMN `garages` varchar(50) default ''";
                $database->setQuery($query);
                $database->query();

                $query = "ALTER TABLE #__rem_main_categories                    
                    ADD COLUMN `language` varchar(250) default '*'";
                $database->setQuery($query);
                $database->query();

                $query = "CREATE TABLE IF NOT EXISTS #__rem_feature_houses (
                `id` int(11) unsigned NOT NULL auto_increment,
                `fk_houseid` int(11) NOT NULL default 0,
                `fk_featureid` int(11) NOT NULL default 0,
                PRIMARY KEY  (`id`),
                FOREIGN KEY (`fk_houseid`) REFERENCES #__rem_houses(`id`),
                FOREIGN KEY (`fk_featureid`) REFERENCES #__rem_feature(`id`),
                INDEX (`fk_houseid`,`fk_featureid`)
                ) ENGINE=MyISAM AUTO_INCREMENT=2 COLLATE utf8_general_ci";
                $database->setQuery($query);
                $database->query();

                $query = "CREATE TABLE IF NOT EXISTS #__rem_const (
                `id` int(11) unsigned NOT NULL auto_increment,
                `const` varchar(250) default '',
                `sys_type` varchar(250) default '',
                PRIMARY KEY  (`id`)
                ) ENGINE=MyISAM AUTO_INCREMENT=2 COLLATE utf8_general_ci";
                $database->setQuery($query);
                $database->query();

                $query = " CREATE TABLE IF NOT EXISTS `#__rem_mime_types` (
            `mime_ext` text,
            `mime_type` text
          ) ENGINE=MyISAM AUTO_INCREMENT=2 COLLATE utf8_general_ci";
                $database->setQuery($query);
                $database->query();

                $query = "CREATE TABLE IF NOT EXISTS #__rem_languages (
                `id` int(11) unsigned NOT NULL auto_increment,
                `lang_code` char(7),
                `title` varchar(250) default '',
                `sef` char(7),
                PRIMARY KEY  (`id`)
                ) ENGINE=MyISAM AUTO_INCREMENT=2 COLLATE utf8_general_ci";
                $database->setQuery($query);
                $database->query();

                $query = "CREATE TABLE IF NOT EXISTS #__rem_const_languages (
                        `id` int(11) unsigned NOT NULL auto_increment,
                        `fk_constid` int(11) NOT NULL default 0,
                        `fk_languagesid` int(11) NOT NULL default 0,
                        `value_const` varchar(2000) default '',                
                        PRIMARY KEY  (`id`),
                        UNIQUE (`fk_constid`,`fk_languagesid`),
                        FOREIGN KEY (`fk_constid`) REFERENCES #__rem_const(`id`),
                        FOREIGN KEY (`fk_languagesid`) REFERENCES #__rem_languages(`id`)
                        ) ENGINE=MyISAM AUTO_INCREMENT=2 COLLATE utf8_general_ci";
                $database->setQuery($query);
                $database->query();

            $query = "CREATE TABLE IF NOT EXISTS `#__rem_orders` (
              `id` int(11) NOT NULL AUTO_INCREMENT,
              `fk_user_id` int(11) DEFAULT NULL,
              `fk_houses_htitle` varchar(255) NOT NULL DEFAULT '',
              `email` varchar(255) NOT NULL DEFAULT '',
              `name` varchar(255) NOT NULL DEFAULT '',
              `status` varchar(255) NOT NULL DEFAULT '',
              `order_date` DATETIME,
              `fk_house_id` int(11) DEFAULT NULL,
              `txn_type` varchar(255) NOT NULL DEFAULT '',
              `txn_id` varchar(255) NOT NULL DEFAULT '',
              `payer_id` varchar(255) NOT NULL DEFAULT '',
              `payer_status` varchar(255) NOT NULL DEFAULT '',
              `order_calculated_price` varchar(255) NOT NULL DEFAULT '',
              `order_price` int(11) DEFAULT NULL,
              `order_currency_code` varchar(255) NOT NULL DEFAULT '',
                PRIMARY KEY (`id`)
            ) ENGINE=MyISAM  DEFAULT CHARSET=utf8; ";
                $database->setQuery($query);
                $database->query();
            
            $query = "CREATE TABLE IF NOT EXISTS `#__rem_orders_details` (
                `id` int(11) NOT NULL AUTO_INCREMENT,
                `fk_order_id` int(11) DEFAULT NULL,
                `fk_user_id` int(11) DEFAULT NULL,
                `fk_houses_htitle` varchar(255) NOT NULL DEFAULT '',
                `email` varchar(255) NOT NULL DEFAULT '',
                `name` varchar(255) NOT NULL DEFAULT '',
                `status` varchar(255) NOT NULL DEFAULT '',
                `order_date` DATETIME,
                `fk_house_id` int(11) DEFAULT NULL,
                `txn_type` varchar(255) NOT NULL DEFAULT '',
                `txn_id` varchar(255) NOT NULL DEFAULT '',
                `payer_id` varchar(255) NOT NULL DEFAULT '',
                `payer_status` varchar(255) NOT NULL DEFAULT '',
                `order_calculated_price` varchar(255) NOT NULL DEFAULT '',
                `order_price` int(11) DEFAULT NULL,
                `order_currency_code` varchar(255) NOT NULL DEFAULT '',
                `payment_details` text NOT NULL DEFAULT '',
                PRIMARY KEY (`id`)
             ) ENGINE=MyISAM  DEFAULT CHARSET=utf8;";
                $database->setQuery($query);
                $database->query();

                $query = "ALTER TABLE #__rem_houses ADD COLUMN `associate_house` varchar(255) default null";
                $database->setQuery($query);
                $database->query();

                $query = "ALTER TABLE #__rem_main_categories ADD COLUMN `associate_category` varchar(255) default null";
                $database->setQuery($query);
                $database->query();
                
                $query = "ALTER TABLE #__rem_rent_sal 
                          ADD COLUMN `price_from` DATE NOT NULL,	
                          ADD COLUMN `price_to` DATE NOT NULL ,
                          ADD COLUMN `special_price` FLOAT NOT NULL ,
                          ADD COLUMN `comment_price` VARCHAR( 1000 ) NOT NULL ,
                          ADD COLUMN `priceunit` VARCHAR( 255 ) NOT NULL";
                $database->setQuery($query);
                $database->query();
                
                update_to_version_3_6();
                update_to_version_3_7();
                update_to_version_3_9();
                //load language
                loadConstRem();
                loadDataMime();
                break;
            case 2.3:

                $query = "ALTER TABLE #__rem_houses 
                    ADD COLUMN `extra1` varchar(250) default '',
                    ADD COLUMN `extra2` varchar(250) default '',
                    ADD COLUMN `extra3` varchar(250) default '',
                    ADD COLUMN `extra4` varchar(250) default '',
                    ADD COLUMN `extra5` varchar(250) default '',
                    ADD COLUMN `extra6` varchar(250) default '',
                    ADD COLUMN `extra7` varchar(250) default '',
                    ADD COLUMN `extra8` varchar(250) default '',
                    ADD COLUMN `extra9` varchar(250) default '',
                    ADD COLUMN `extra10` varchar(250) default '',
                    ADD COLUMN `language` varchar(250) default '*',
                    ADD COLUMN `owner_id` int(9) default 0";
                $database->setQuery($query);
                $database->query();

                $query = "ALTER TABLE #__rem_main_categories                    
                    ADD COLUMN `language` varchar(250) default '*'";
                $database->setQuery($query);
                $database->query();

                $query = "CREATE TABLE IF NOT EXISTS #__rem_feature_houses (
                `id` int(11) unsigned NOT NULL auto_increment,
                `fk_houseid` int(11) NOT NULL default 0,
                `fk_featureid` int(11) NOT NULL default 0,
                PRIMARY KEY  (`id`),
                FOREIGN KEY (`fk_houseid`) REFERENCES #__rem_houses(`id`),
                FOREIGN KEY (`fk_featureid`) REFERENCES #__rem_feature(`id`),
                INDEX (`fk_houseid`,`fk_featureid`)
                ) ENGINE=MyISAM AUTO_INCREMENT=2 COLLATE utf8_general_ci";
                $database->setQuery($query);
                $database->query();

                $query = "CREATE TABLE IF NOT EXISTS #__rem_const (
                `id` int(11) unsigned NOT NULL auto_increment,
                `const` varchar(250) default '',
                `sys_type` varchar(250) default '',
                PRIMARY KEY  (`id`)
                ) ENGINE=MyISAM AUTO_INCREMENT=2 COLLATE utf8_general_ci";
                $database->setQuery($query);
                $database->query();

                $query = "CREATE TABLE IF NOT EXISTS #__rem_languages (
                `id` int(11) unsigned NOT NULL auto_increment,
                `lang_code` char(7),
                `title` varchar(250) default '',
                `sef` char(7),
                PRIMARY KEY  (`id`)
                ) ENGINE=MyISAM AUTO_INCREMENT=2 COLLATE utf8_general_ci";
                $database->setQuery($query);
                $database->query();

                $query = "CREATE TABLE IF NOT EXISTS #__rem_const_languages (
                `id` int(11) unsigned NOT NULL auto_increment,
                `fk_constid` int(11) NOT NULL default 0,
                `fk_languagesid` int(11) NOT NULL default 0,
                `value_const` varchar(2000) default '',                
                PRIMARY KEY  (`id`),
                UNIQUE (`fk_constid`,`fk_languagesid`),
                FOREIGN KEY (`fk_constid`) REFERENCES #__rem_const(`id`),
                FOREIGN KEY (`fk_languagesid`) REFERENCES #__rem_languages(`id`)
                ) ENGINE=MyISAM AUTO_INCREMENT=2 COLLATE utf8_general_ci";
                $database->setQuery($query);
                $database->query();

            $query = "CREATE TABLE IF NOT EXISTS `#__rem_orders` (
              `id` int(11) NOT NULL AUTO_INCREMENT,
              `fk_user_id` int(11) DEFAULT NULL,
              `fk_houses_htitle` varchar(255) NOT NULL DEFAULT '',
              `email` varchar(255) NOT NULL DEFAULT '',
              `name` varchar(255) NOT NULL DEFAULT '',
              `status` varchar(255) NOT NULL DEFAULT '',
              `order_date` DATETIME,
              `fk_house_id` int(11) DEFAULT NULL,
              `txn_type` varchar(255) NOT NULL DEFAULT '',
              `txn_id` varchar(255) NOT NULL DEFAULT '',
              `payer_id` varchar(255) NOT NULL DEFAULT '',
              `payer_status` varchar(255) NOT NULL DEFAULT '',
              `order_calculated_price` varchar(255) NOT NULL DEFAULT '',
              `order_price` int(11) DEFAULT NULL,
              `order_currency_code` varchar(255) NOT NULL DEFAULT '',
                PRIMARY KEY (`id`)
            ) ENGINE=MyISAM  DEFAULT CHARSET=utf8; ";
                $database->setQuery($query);
                $database->query();
            
            $query = "CREATE TABLE IF NOT EXISTS `#__rem_orders_details` (
                `id` int(11) NOT NULL AUTO_INCREMENT,
                `fk_order_id` int(11) DEFAULT NULL,
                `fk_user_id` int(11) DEFAULT NULL,
                `fk_houses_htitle` varchar(255) NOT NULL DEFAULT '',
                `email` varchar(255) NOT NULL DEFAULT '',
                `name` varchar(255) NOT NULL DEFAULT '',
                `status` varchar(255) NOT NULL DEFAULT '',
                `order_date` DATETIME,
                `fk_house_id` int(11) DEFAULT NULL,
                `txn_type` varchar(255) NOT NULL DEFAULT '',
                `txn_id` varchar(255) NOT NULL DEFAULT '',
                `payer_id` varchar(255) NOT NULL DEFAULT '',
                `payer_status` varchar(255) NOT NULL DEFAULT '',
                `order_calculated_price` varchar(255) NOT NULL DEFAULT '',
                `order_price` int(11) DEFAULT NULL,
                `order_currency_code` varchar(255) NOT NULL DEFAULT '',
                `payment_details` text NOT NULL DEFAULT '',
                PRIMARY KEY (`id`)
             ) ENGINE=MyISAM  DEFAULT CHARSET=utf8;";
                $database->setQuery($query);
                $database->query();

                $query = "ALTER TABLE #__rem_houses ADD COLUMN `associate_house` varchar(255) default null,
                          ADD COLUMN `rooms` int(11) default null,
                          ADD COLUMN `house_size` varchar(50) default '',
                          ADD COLUMN `garages` varchar(50) default ''";
                $database->setQuery($query);
                $database->query();

                $query = "ALTER TABLE #__rem_main_categories ADD COLUMN `associate_category` varchar(255) default null";
                $database->setQuery($query);
                $database->query();
                
                $query = "ALTER TABLE #__rem_rent_sal 
                          ADD COLUMN `price_from` DATE NOT NULL,	
                          ADD COLUMN `price_to` DATE NOT NULL ,
                          ADD COLUMN `special_price` FLOAT NOT NULL ,
                          ADD COLUMN `comment_price` VARCHAR( 1000 ) NOT NULL ,
                          ADD COLUMN `priceunit` VARCHAR( 255 ) NOT NULL";
                $database->setQuery($query);
                $database->query();

                update_to_version_3_6();
                update_to_version_3_7();
                update_to_version_3_9();
                //load language
                loadConstRem();
                loadDataMime();
                break;
            case 3.0:
//added in 3.3
            $query = "CREATE TABLE IF NOT EXISTS `#__rem_orders` (
              `id` int(11) NOT NULL AUTO_INCREMENT,
              `fk_user_id` int(11) DEFAULT NULL,
              `fk_houses_htitle` varchar(255) NOT NULL DEFAULT '',
              `email` varchar(255) NOT NULL DEFAULT '',
              `name` varchar(255) NOT NULL DEFAULT '',
              `status` varchar(255) NOT NULL DEFAULT '',
              `order_date` DATETIME,
              `fk_house_id` int(11) DEFAULT NULL,
              `txn_type` varchar(255) NOT NULL DEFAULT '',
              `txn_id` varchar(255) NOT NULL DEFAULT '',
              `payer_id` varchar(255) NOT NULL DEFAULT '',
              `payer_status` varchar(255) NOT NULL DEFAULT '',
              `order_calculated_price` varchar(255) NOT NULL DEFAULT '',
              `order_price` int(11) DEFAULT NULL,
              `order_currency_code` varchar(255) NOT NULL DEFAULT '',
                PRIMARY KEY (`id`)
            ) ENGINE=MyISAM  DEFAULT CHARSET=utf8; ";
                $database->setQuery($query);
                $database->query();
            
            $query = "CREATE TABLE IF NOT EXISTS `#__rem_orders_details` (
                `id` int(11) NOT NULL AUTO_INCREMENT,
                `fk_order_id` int(11) DEFAULT NULL,
                `fk_user_id` int(11) DEFAULT NULL,
                `fk_houses_htitle` varchar(255) NOT NULL DEFAULT '',
                `email` varchar(255) NOT NULL DEFAULT '',
                `name` varchar(255) NOT NULL DEFAULT '',
                `status` varchar(255) NOT NULL DEFAULT '',
                `order_date` DATETIME,
                `fk_house_id` int(11) DEFAULT NULL,
                `txn_type` varchar(255) NOT NULL DEFAULT '',
                `txn_id` varchar(255) NOT NULL DEFAULT '',
                `payer_id` varchar(255) NOT NULL DEFAULT '',
                `payer_status` varchar(255) NOT NULL DEFAULT '',
                `order_calculated_price` varchar(255) NOT NULL DEFAULT '',
                `order_price` int(11) DEFAULT NULL,
                `order_currency_code` varchar(255) NOT NULL DEFAULT '',
                `payment_details` text NOT NULL DEFAULT '',
                PRIMARY KEY (`id`)
             ) ENGINE=MyISAM  DEFAULT CHARSET=utf8;";
                $database->setQuery($query);
                $database->query();

                $query = "ALTER TABLE #__rem_houses 
                ADD COLUMN `associate_house` varchar(255) default null,
                ADD COLUMN `rooms` int(11) default null,
                ADD COLUMN `house_size` varchar(50) default '',
                ADD COLUMN `garages` varchar(50) default ''";
                $database->setQuery($query);
                $database->query();

                $query = "ALTER TABLE #__rem_main_categories ADD COLUMN `associate_category` varchar(255) default null";
                $database->setQuery($query);
                $database->query();
                
                $query = "ALTER TABLE #__rem_rent_sal 
                          ADD COLUMN `price_from` DATE NOT NULL,	
                          ADD COLUMN `price_to` DATE NOT NULL ,
                          ADD COLUMN `special_price` FLOAT NOT NULL ,
                          ADD COLUMN `comment_price` VARCHAR( 1000 ) NOT NULL ,
                          ADD COLUMN `priceunit` VARCHAR( 255 ) NOT NULL";
                $database->setQuery($query);
                $database->query();

                update_to_version_3_6();
                update_to_version_3_7();
                update_to_version_3_9();
                //load language
                loadConstRem();
                loadDataMime();
                break; 
            case 3.3:
                //added in 3.5
                
                $query = "ALTER TABLE #__rem_houses 
                    ADD COLUMN `rooms` int(11) default null,
                    ADD COLUMN `house_size` varchar(50) default '',
                    ADD COLUMN `garages` varchar(50) default ''";
                $database->setQuery($query);
                $database->query();
                
                $query = "ALTER TABLE #__rem_orders
                    CHANGE `data` `order_date` DATETIME NULL DEFAULT NULL,
                    CHANGE `fk_vehicle_id` `fk_house_id` INT( 11 ) NULL DEFAULT NULL ,
                    ADD COLUMN `order_currency_code` VARCHAR( 255 ) NOT NULL ,
                    ADD COLUMN `order_price` INT( 11 ) NULL AFTER `payer_status`,
                    ADD COLUMN `fk_houses_htitle` VARCHAR( 255 ) NOT NULL ,
                    ADD COLUMN `order_calculated_price` VARCHAR( 255 ) NULL ";
                $database->setQuery($query);
                $database->query();
                
                $query = "CREATE TABLE IF NOT EXISTS `#__rem_orders_details` (
                    `id` int(11) NOT NULL AUTO_INCREMENT,
                    `fk_order_id` int(11) DEFAULT NULL,
                    `fk_user_id` int(11) DEFAULT NULL,
                    `fk_houses_htitle` varchar(255) NOT NULL DEFAULT '',
                    `email` varchar(255) NOT NULL DEFAULT '',
                    `name` varchar(255) NOT NULL DEFAULT '',
                    `status` varchar(255) NOT NULL DEFAULT '',
                    `order_date` DATETIME,
                    `fk_house_id` int(11) DEFAULT NULL,
                    `txn_type` varchar(255) NOT NULL DEFAULT '',
                    `txn_id` varchar(255) NOT NULL DEFAULT '',
                    `payer_id` varchar(255) NOT NULL DEFAULT '',
                    `payer_status` varchar(255) NOT NULL DEFAULT '',
                    `order_calculated_price` varchar(255) NOT NULL DEFAULT '',
                    `order_price` int(11) DEFAULT NULL,
                    `order_currency_code` varchar(255) NOT NULL DEFAULT '',
                    `payment_details` text NOT NULL DEFAULT '',
                    PRIMARY KEY (`id`)
                 ) ENGINE=MyISAM  DEFAULT CHARSET=utf8;";
                $database->setQuery($query);
                $database->query();

                update_to_version_3_6();
                update_to_version_3_7();
                update_to_version_3_9();
                //load language
                loadConstRem();
                loadDataMime();
            break;  

            case 3.5:
                update_to_version_3_6();
                update_to_version_3_7();
                update_to_version_3_9();
                loadConstRem();
                loadDataMime();
              break;          

            case 3.6:
                update_to_version_3_7();
                update_to_version_3_9();
                loadConstRem();
                loadDataMime();
                break;

            case 3.7:
            case 3.8:
                update_to_version_3_9(); 
                loadConstRem();
                loadDataMime();
                break;

            default:
                echo "Updated";
                break;
                echo 'end upgrading database';
        }
        updateRemConfigurationVersion();
        $vers = explode(' ', $realestatemanager_configuration['release']['version']);
        $versi = substr($vers[0],0,3);
        $query = "UPDATE #__rem_version 
                  SET version = '" . $versi . "', number = '" . $vers[1] . "' 
                  WHERE id = 2";
        $database->setQuery($query);
        $database->query();
        echo $database->getErrorMsg();
    } else {// If database doesnt exists, create it
        echo '<br/>install database <br/>';
        $query = "DROP TABLE IF EXISTS `#__rem_const`, `#__rem_languages`, `#__rem_const_languages`, `#__rem_feature`, `#__rem_feature_houses`, 
					`#__rem_rent_sal`, `#__rem_rent`, `#__rem_rent_request`, `#__rem_buying_request`,`#__rem_review`, `#__rem_suggestion`, 
					`#__rem_categories`, `#__rem_photos`, `#__rem_version`, `#__rem_houses`, `#__rem_main_categories`, 
					`#__rem_mime_types`, `#__rem_orders`, `#__rem_users_wishlist`";
        $database->setQuery($query);
        $database->query();
        echo $database->getErrorMsg();

        // for 1.6
        echo "Creating table for main_categories... ";
        $query = "CREATE TABLE IF NOT EXISTS `#__rem_main_categories` (
            `id` int(11) NOT NULL AUTO_INCREMENT,
            `parent_id` int(11) NOT NULL DEFAULT '0',
            `associate_category` varchar(255) default null,
            `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
            `title` varchar(255) NOT NULL DEFAULT '',
            `name` varchar(255) NOT NULL DEFAULT '',
            `alias` varchar(255) NOT NULL DEFAULT '',
            `image` varchar(255) NOT NULL DEFAULT '',
            `section` varchar(50) NOT NULL DEFAULT '',
            `image_position` varchar(30) NOT NULL DEFAULT '',
            `description` text NOT NULL,
            `published` tinyint(1) NOT NULL DEFAULT '0',
            `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
            `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
            `editor` varchar(50) DEFAULT NULL,
            `ordering` int(11) NOT NULL DEFAULT '0',
            `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
            `count` int(11) NOT NULL DEFAULT '0',
            `params` text NOT NULL,
            `params2` text NOT NULL,
            `language` varchar(50) DEFAULT '*',
            PRIMARY KEY (`id`),
            KEY `cat_idx` (`section`,`published`,`access`),
            KEY `idx_access` (`access`),
            KEY `idx_checkout` (`checked_out`)
          ) ENGINE=MyISAM  DEFAULT  COLLATE utf8_general_ci AUTO_INCREMENT=46 ; ";
        $database->setQuery($query);
        $database->query();
        echo $database->getErrorMsg();
        if (array_search($database->getPrefix() . "rem_main_categories", $database->getTableList(), true))
            echo "[Ok]<br />"; else
            exit;

        echo "Creating table for houses... ";
        $query = "CREATE TABLE IF NOT EXISTS #__rem_houses (
              id int(11) unsigned NOT NULL auto_increment,
              asset_id int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
              houseid varchar(20) NOT NULL default '0',
              catid int(11) NOT NULL default '0',
              sid int(11) NOT NULL default '0',
              fk_rentid int(11) default '0',
              associate_house varchar(255) default null,

              description text NOT NULL default '',
              link varchar(250) NOT NULL default '',
              listing_type varchar(45) NOT NULL default '',
              price varchar(14) NOT NULL default '',
              priceunit varchar(14) NOT NULL default '',
              htitle varchar(200) NOT NULL default '',

              hcountry varchar(50) NOT NULL default '',
              hregion varchar(50) NOT NULL default '',
              hcity varchar(50) NOT NULL default '',
              hzipcode varchar(50) NOT NULL default '',
              hlocation varchar(100) NOT NULL default '',
              hlatitude varchar(20) NOT NULL default '',
              hlongitude varchar(20) NOT NULL default '',
              map_zoom varchar(5) NOT NULL default '',  

              rooms int(11) default '0',
              bathrooms int(11) default '0',
              contacts varchar(250) default '',
              image_link varchar(200) default '',
              listing_status varchar(45) default '',
              property_type varchar(45) default '',
              year varchar(4) default '',

              agent varchar(45) default '',
              area_unit varchar(45) default '',
              land_area varchar(45) default '',
              land_area_unit varchar(45) default '',
              expiration_date date default '0000-00-00',
              lot_size varchar(45) default '',
              house_size varchar(45) default '',
              garages varchar(50) default '',

              `checked_out` int(11) NOT NULL default '0',
              `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
              `ordering` int(11) NOT NULL default '0',
              `date` datetime NOT NULL default '0000-00-00 00:00:00',
              `hits` int(11) NOT NULL default '0',
              `edok_link` varchar(200) default '',
              `published` tinyint(1) NOT NULL default '0',
              `approved` tinyint(1) NOT NULL default '1',
              `owneremail` VARCHAR(50) default '',
              `featured_clicks` varchar(100) default '',
              `featured_shows` varchar(100) default '',
              `pixUpdtedDt` varchar(100) default '',
              
              `extra1` varchar(250) default '',
              `extra2` varchar(250) default '',
              `extra3` varchar(250) default '',
              `extra4` varchar(250) default '',
              `extra5` varchar(250) default '',
              `extra6` varchar(250) default '',
              `extra7` varchar(250) default '',
              `extra8` varchar(250) default '',
              `extra9` varchar(250) default '',
              `extra10` varchar(250) default '',
              `language` varchar(250) default '*',
              `owner_id` int(9) default 0,
              PRIMARY KEY  (`id`),
              INDEX (`catid`)

              ) ENGINE=MyISAM AUTO_INCREMENT=2 CHARACTER SET `utf8`";
        $database->setQuery($query);
        $database->query();
        echo $database->getErrorMsg();
        if (array_search($database->getPrefix() . "rem_houses", $database->getTableList(), true))
            echo "[Ok]<br />"; else
            exit;

        echo "Creating table for photos... ";
        $query = "CREATE TABLE IF NOT EXISTS `#__rem_photos` (
              `id` int(11) unsigned NOT NULL auto_increment,
              `fk_houseid` int(11),
              `thumbnail_img` varchar(250) default '',
              `main_img` varchar(250) default '',
              `img_ordering` int(11) NULL,
              PRIMARY KEY  (`id`),
              FOREIGN KEY (`fk_houseid`) REFERENCES #__rem_houses(`id`)
              ) ENGINE=MyISAM AUTO_INCREMENT=2 CHARACTER SET `utf8`;";
        $database->setQuery($query);
        $database->query();
        echo $database->getErrorMsg();
        if (array_search($database->getPrefix() . "rem_photos", $database->getTableList(), true))
            echo "[Ok]<br />"; else
            exit;

        echo "Creating table for rent... ";
        $query = "CREATE TABLE IF NOT EXISTS `#__rem_rent` (
              `id` int(11) unsigned NOT NULL auto_increment,
              `fk_houseid` int(11) NOT NULL default 0,
              `fk_userid` int(11),
              `rent_from` datetime NOT NULL default '0000-00-00 00:00:00',
              `rent_until` datetime,
              `rent_return` datetime,
              `checked_out` int(11) NOT NULL default 0,
              `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
              `user_name` VARCHAR(150),
              `user_email` VARCHAR(100),
              `user_mailing` TEXT default '',
              PRIMARY KEY  (`id`),
              FOREIGN KEY (`fk_userid`) REFERENCES #__users(`id`),
              FOREIGN KEY (`fk_houseid`) REFERENCES #__rem_houses(`id`)
              ) ENGINE=MyISAM AUTO_INCREMENT=2 CHARACTER SET `utf8`;";
        $database->setQuery($query);
        $database->query();
        echo $database->getErrorMsg();
        if (array_search($database->getPrefix() . "rem_rent", $database->getTableList(), true))
            echo "[Ok]<br />"; else
            exit;

        echo "Creating table for rent_request... ";  // --
        $query = "CREATE TABLE IF NOT EXISTS `#__rem_rent_request` (
              `id` int(11) unsigned NOT NULL auto_increment,
              `fk_houseid` int(11) NOT NULL default 0,
              `fk_userid` int(11),
              `rent_from` date NOT NULL default '0000-00-00',
              `rent_until` date,
              `rent_request` datetime NOT NULL default '0000-00-00 00:00:00',
              `checked_out` int(11) NOT NULL default 0,
              `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
              `user_name` VARCHAR(150),
              `user_email` VARCHAR(100),
              `user_mailing` TEXT default '',
              `status` int(1) default 0,
              PRIMARY KEY  (`id`),
              FOREIGN KEY (`fk_userid`) REFERENCES #__users(`id`),
              FOREIGN KEY (`fk_houseid`) REFERENCES #__rem_houses(`id`)
              ) ENGINE=MyISAM AUTO_INCREMENT=2 CHARACTER SET `utf8`;";
        $database->setQuery($query);
        $database->query();
        echo $database->getErrorMsg();
        if (array_search($database->getPrefix() . "rem_rent_request", $database->getTableList(), true))
            echo "[Ok]<br />"; else
            exit;

        echo "Creating table for buying_request... ";
        $query = "CREATE TABLE IF NOT EXISTS `#__rem_buying_request` (
                `id` int(11) unsigned NOT NULL auto_increment,
                `fk_houseid` int(11) NOT NULL default 0,
                `fk_userid` int(11),
                `buying_request` datetime NOT NULL default '0000-00-00 00:00:00',
                `checked_out` int(11) NOT NULL default 0,
                `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
                `customer_name` varchar(250) default '',
                `customer_email` varchar(250) default '',
                `customer_phone` TEXT default '',
                `customer_comment` TEXT default '',
                `status` int(1) default 0,
                PRIMARY KEY  (`id`),
                FOREIGN KEY (`fk_userid`) REFERENCES #__users(`id`),
                FOREIGN KEY (`fk_houseid`) REFERENCES #__rem_houses(`id`)
            ) ENGINE=MyISAM AUTO_INCREMENT=2 CHARACTER SET `utf8`;";
        $database->setQuery($query);
        $database->query();
        echo $database->getErrorMsg();
        if (array_search($database->getPrefix() . "rem_buying_request", $database->getTableList(), true))
            echo "[Ok]<br />"; else
            exit;


        echo "Creating table for orders... ";
        $query = "CREATE TABLE IF NOT EXISTS `#__rem_orders` (
          `id` int(11) NOT NULL AUTO_INCREMENT,
          `fk_user_id` int(11) DEFAULT NULL,
          `fk_houses_htitle` varchar(255) NOT NULL DEFAULT '',
          `email` varchar(255) NOT NULL DEFAULT '',
          `name` varchar(255) NOT NULL DEFAULT '',
          `status` varchar(255) NOT NULL DEFAULT '',
          `order_date` DATETIME,
          `fk_house_id` int(11) DEFAULT NULL,
          `txn_type` varchar(255) NOT NULL DEFAULT '',
          `txn_id` varchar(255) NOT NULL DEFAULT '',
          `payer_id` varchar(255) NOT NULL DEFAULT '',
          `payer_status` varchar(255) NOT NULL DEFAULT '',
          `order_calculated_price` varchar(255) NOT NULL DEFAULT '',
          `order_price` int(11) DEFAULT NULL,
          `order_currency_code` varchar(255) NOT NULL DEFAULT '',
          `paypal_paykay` varchar(255) NOT NULL DEFAULT '',
            PRIMARY KEY (`id`)
        ) ENGINE=MyISAM  DEFAULT CHARSET=utf8; ";
            $database->setQuery($query);
            $database->query();
            echo $database->getErrorMsg();
            if (array_search($database->getPrefix() . "rem_orders", $database->getTableList(), true))
        echo "[Ok]<br />"; else
        exit;
            
        echo "Creating table for orders details... ";
        $query = "CREATE TABLE IF NOT EXISTS `#__rem_orders_details` (
            `id` int(11) NOT NULL AUTO_INCREMENT,
            `fk_order_id` int(11) DEFAULT NULL,
            `fk_user_id` int(11) DEFAULT NULL,
            `fk_houses_htitle` varchar(255) NOT NULL DEFAULT '',
            `email` varchar(255) NOT NULL DEFAULT '',
            `name` varchar(255) NOT NULL DEFAULT '',
            `status` varchar(255) NOT NULL DEFAULT '',
            `order_date` DATETIME,
            `fk_house_id` int(11) DEFAULT NULL,
            `txn_type` varchar(255) NOT NULL DEFAULT '',
            `txn_id` varchar(255) NOT NULL DEFAULT '',
            `payer_id` varchar(255) NOT NULL DEFAULT '',
            `payer_status` varchar(255) NOT NULL DEFAULT '',
            `order_calculated_price` varchar(255) NOT NULL DEFAULT '',
            `order_price` int(11) DEFAULT NULL,
            `order_currency_code` varchar(255) NOT NULL DEFAULT '',
            `payment_details` text NOT NULL DEFAULT '',
            `paypal_paykay` varchar(255) NOT NULL DEFAULT '',
            PRIMARY KEY (`id`)
         ) ENGINE=MyISAM  DEFAULT CHARSET=utf8;";
            $database->setQuery($query);
            $database->query();
            echo $database->getErrorMsg();
            if (array_search($database->getPrefix() . "rem_orders", $database->getTableList(), true))
        echo "[Ok]<br />"; else
        exit;
            
        echo "Creating table for video source... ";
          $query = "CREATE TABLE IF NOT EXISTS #__rem_video_source (
            `id` int(11) unsigned NOT NULL auto_increment,
            `fk_house_id`int(11) DEFAULT NULL,
            `sequence_number` int(11) DEFAULT NULL,
            `src` varchar(255) DEFAULT NULL,
            `type` varchar(255) DEFAULT NULL,
            `media`varchar(255) DEFAULT NULL,
            `youtube`varchar(255) DEFAULT NULL,
             FOREIGN KEY (`fk_house_id`) REFERENCES #__rem_houses(`id`),
             PRIMARY KEY (`id`)
            ) ENGINE=MyISAM AUTO_INCREMENT=2  COLLATE utf8_general_ci ";
          $database->setQuery($query);
          $database->query();
          echo $database->getErrorMsg();
          if (array_search($database->getPrefix() . "rem_video_source", $database->getTableList(), true))
            echo "[Ok]<br />"; 
          else
            exit;

          echo "Creating table for track source... ";
          $query = "CREATE TABLE IF NOT EXISTS #__rem_track_source (
            `id` int(11) unsigned NOT NULL auto_increment,
            `fk_house_id`int(11) DEFAULT NULL,
            `sequence_number` int(11) DEFAULT NULL,
            `src` varchar(255) DEFAULT NULL,
            `kind` varchar(255) DEFAULT NULL,
            `scrlang` varchar(255) DEFAULT NULL,
            `label` varchar(255) DEFAULT NULL,
             FOREIGN KEY (`fk_house_id`) REFERENCES #__rem_houses(`id`),
             PRIMARY KEY (`id`)
            ) ENGINE=MyISAM AUTO_INCREMENT=2  COLLATE utf8_general_ci ";
          $database->setQuery($query);
          $database->query();
          echo $database->getErrorMsg();
          if (array_search($database->getPrefix() . "rem_track_source", $database->getTableList(), true))
            echo "[Ok]<br />"; 
          else
            exit;

        echo "Creating table for review... ";
        $query = "CREATE TABLE IF NOT EXISTS `#__rem_review` (
              `id` int(11) unsigned NOT NULL auto_increment,
              `fk_houseid` int(11) NOT NULL default 0,
              `fk_userid` int(11),
              `user_name` VARCHAR(150),
              `user_email` VARCHAR(100),
              `date` datetime NOT NULL default '0000-00-00 00:00:00',
              `rating` int(2) default 0,
              `title` varchar(250) default '',
              `comment` TEXT,
              `published` tinyint(1) NOT NULL default '0',
              PRIMARY KEY  (`id`),
              FOREIGN KEY (`fk_userid`) REFERENCES #__users(`id`),
              FOREIGN KEY (`fk_houseid`) REFERENCES #__rem_houses(`id`)
              ) ENGINE=MyISAM AUTO_INCREMENT=2 CHARACTER SET `utf8`;";
        $database->setQuery($query);
        $database->query();
        echo $database->getErrorMsg();
        if (array_search($database->getPrefix() . "rem_review", $database->getTableList(), true))
            echo "[Ok]<br />"; else
            exit;


        echo "Creating table for rent sale... ";
        $query = "CREATE TABLE IF NOT EXISTS `#__rem_rent_sal` (
		`id` int(11) unsigned NOT NULL auto_increment,
		`fk_houseid` int(11),
		`monthW` int(4) NOT NULL default 0,
		`yearW` int(4) NOT NULL default 0,
		`week` varchar(1250) default '',
		`weekend` varchar(1250) default '',
		`midweek` varchar(1250) default '',
		`price_from` DATE NOT NULL ,
                `price_to` DATE NOT NULL ,
                `special_price` FLOAT NOT NULL ,
                `comment_price` VARCHAR( 1000 ) NOT NULL ,
                `priceunit` VARCHAR( 255 ) NOT NULL,
		 PRIMARY KEY  (`id`)
		) ENGINE=MyISAM AUTO_INCREMENT=2 CHARACTER SET `utf8`;";
        $database->setQuery($query);
        $database->query();
        echo $database->getErrorMsg();
        if (array_search($database->getPrefix() . "rem_rent_sal", $database->getTableList(), true))
            echo "[Ok]<br />"; else
            exit;

        echo "Creating table for feature... ";
        $query = "CREATE TABLE IF NOT EXISTS `#__rem_feature` (
		`id` int(11) unsigned NOT NULL auto_increment,
		`name` varchar(250) default '',
		`categories` varchar(250) default '',
		`published` tinyint(1) NOT NULL DEFAULT '0',
		`image_link` varchar(250) default '',
		PRIMARY KEY  (`id`)
		) ENGINE=MyISAM AUTO_INCREMENT=2 CHARACTER SET `utf8`;";
        $database->setQuery($query);
        $database->query();
        echo $database->getErrorMsg();
        if (array_search($database->getPrefix() . "rem_feature", $database->getTableList(), true))
            echo "[Ok]<br />"; else
            exit;

        echo "Creating table for feature_rem_houses... ";
        $query = "CREATE TABLE IF NOT EXISTS #__rem_feature_houses (
                `id` int(11) unsigned NOT NULL auto_increment,
                `fk_houseid` int(11) NOT NULL default 0,
                `fk_featureid` int(11) NOT NULL default 0,
                PRIMARY KEY  (`id`),
                FOREIGN KEY (`fk_houseid`) REFERENCES #__rem_houses(`id`),
                FOREIGN KEY (`fk_featureid`) REFERENCES #__rem_feature(`id`),
                INDEX (`fk_houseid`,`fk_featureid`)
                ) ENGINE=MyISAM AUTO_INCREMENT=2 COLLATE utf8_general_ci";
        $database->setQuery($query);
        $database->query();
        echo $database->getErrorMsg();
        if (array_search($database->getPrefix() . "rem_feature_houses", $database->getTableList(), true))
            echo "[Ok]<br />"; else
            exit;

        echo "Creating table for const ... ";
        $query = "CREATE TABLE IF NOT EXISTS #__rem_const (
                `id` int(11) unsigned NOT NULL auto_increment,
                `const` varchar(250) default '',
                `sys_type` varchar(250) default '',
                PRIMARY KEY  (`id`),
                UNIQUE (`const`)
                ) ENGINE=MyISAM AUTO_INCREMENT=2 COLLATE utf8_general_ci";
        $database->setQuery($query);
        $database->query();
        echo $database->getErrorMsg();
        if (array_search($database->getPrefix() . "rem_const", $database->getTableList(), true))
            echo "[Ok]<br />"; else
            exit;

        echo "Creating table for languages ... ";
        $query = "CREATE TABLE IF NOT EXISTS #__rem_languages (
                `id` int(11) unsigned NOT NULL auto_increment,
                `lang_code` char(7),
                `title` varchar(250) default '',
                `sef` char(7),
                PRIMARY KEY  (`id`),
                UNIQUE (`lang_code`)
                ) ENGINE=MyISAM AUTO_INCREMENT=2 COLLATE utf8_general_ci";
        $database->setQuery($query);
        $database->query();
        echo $database->getErrorMsg();
        if (array_search($database->getPrefix() . "rem_languages", $database->getTableList(), true))
            echo "[Ok]<br />"; else
            exit;

        echo "Creating table for const ... ";
        $query = "CREATE TABLE IF NOT EXISTS #__rem_const_languages (
                `id` int(11) unsigned NOT NULL auto_increment,
                `fk_constid` int(11) NOT NULL default 0,
                `fk_languagesid` int(11) NOT NULL default 0,
                `value_const` varchar(2000) default '',                
                PRIMARY KEY  (`id`),
                UNIQUE (`fk_constid`,`fk_languagesid`),
                FOREIGN KEY (`fk_constid`) REFERENCES #__rem_const(`id`),
                FOREIGN KEY (`fk_languagesid`) REFERENCES #__rem_languages(`id`)
                ) ENGINE=MyISAM AUTO_INCREMENT=2 COLLATE utf8_general_ci";
        $database->setQuery($query);
        $database->query();
        echo $database->getErrorMsg();
        if (array_search($database->getPrefix() . "rem_const_languages", $database->getTableList(), true))
            echo "[Ok]<br />"; else
            exit;

        echo "Creating table for mime_types ... ";
        $query = " CREATE TABLE IF NOT EXISTS `#__rem_mime_types` (
            `mime_ext` text,
            `mime_type` text
          ) ENGINE=MyISAM AUTO_INCREMENT=2 COLLATE utf8_general_ci";
        $database->setQuery($query);
        $database->query();
        if (array_search($database->getPrefix() . "rem_mime_types", $database->getTableList(), true))
            echo "[Ok]<br />"; else
            exit;

        echo "Creating table for version ... ";
        $query = "CREATE TABLE IF NOT EXISTS #__rem_version (
                `id` int(11) unsigned NOT NULL auto_increment,
                `version` varchar(11) NOT NULL default 0,
                `number` varchar(11),
                PRIMARY KEY  (`id`),
                INDEX (`id`)
                ) ENGINE=MyISAM AUTO_INCREMENT=2 CHARACTER SET `utf8`";
        $database->setQuery($query);
        $database->query();
        echo $database->getErrorMsg();
        if (array_search($database->getPrefix() . "rem_version", $database->getTableList(), true))
            echo "[Ok]<br />"; else
            exit;

        updateRemConfigurationVersion();
        $vers = explode(' ', $realestatemanager_configuration['release']['version']);
        $versi = substr($vers[0],0,3);
        $query = "INSERT INTO #__rem_version (`version`,`number`) VALUES ('$versi','$vers[1]')";
        $database->setQuery($query);
        $database->query();
        echo $database->getErrorMsg();

        echo "Creating table for categories ... ";
        $query = "CREATE TABLE IF NOT EXISTS #__rem_categories (
                `id` int(11) unsigned NOT NULL auto_increment,
                `iditem` int(11) NOT NULL default 0,
                `idcat` int(11),
                PRIMARY KEY  (`id`),
                FOREIGN KEY (`iditem`) REFERENCES #__rem_houses(`id`),
                FOREIGN KEY (`idcat`) REFERENCES #__rem_main_categories(`id`)
                ) ENGINE=MyISAM AUTO_INCREMENT=2 CHARACTER SET `utf8`";
        $database->setQuery($query);
        $database->query();
        echo $database->getErrorMsg();
        if (array_search($database->getPrefix() . "rem_categories", $database->getTableList(), true))
            echo "[Ok]<br />"; else
            exit;

        echo "Creating table for wishlist ... ";
        $query = "CREATE TABLE IF NOT EXISTS `#__rem_users_wishlist` ( 
                 `id` int(11) NOT NULL auto_increment, 
                 `fk_houseid` int(11) DEFAULT NULL, 
                 `fk_userid` int(11) DEFAULT NULL, 
                  FOREIGN KEY (`fk_houseid`) REFERENCES #__rem_houses(`id`), 
                  FOREIGN KEY (`fk_userid`) REFERENCES #__users(`id`), 
                  PRIMARY KEY (`id`) 
                 ) ENGINE=MyISAM AUTO_INCREMENT=2  COLLATE utf8_general_ci";
        $database->setQuery($query);
        $database->query();
        echo $database->getErrorMsg();
        if (array_search($database->getPrefix() . "rem_users_wishlist", $database->getTableList(), true))
            echo "[Ok]<br />"; 
        else
            exit;


        echo "end install database<br/>";
    } // End of creation new database
        //load language
        loadConstRem();
        loadDataMime();

    //add sample data
    $database->setQuery("SELECT * FROM #__rem_houses");
    $realestatemanager = $database->loadResult();
    require_once ($mosConfig_absolute_path . "/administrator/components/com_realestatemanager/realestatemanager.class.impexp.php");
    if (!isset($realestatemanager)) {
        mosRealEstateManagerImportExport :: importHousesXML($mosConfig_absolute_path . "/administrator/components/com_realestatemanager/exports/sample_data.xml", null);
        echo "Sample data loaded<br/>";
    }

    //******************   end database ******************

    if (!$is_warning)
        echo "<h2 style='color:#0f0;'>Import sample data - OK</h2>";
    DMInstallHelper::setAdminMenuImages();

    # Show installation result to user
    ?>
    <center>
        <table width="100%" border="0">
            <tr>
                <td>
                    <strong>RealEstateManager</strong><br/>
                    <br/>
                    This component is published under the <a href="<?php echo $mosConfig_live_site . "/components/com_realestatemanager/doc/LICENSE.txt"; ?>"
                                                             target="new">License</a>.
                </td>
            </tr>
            <tr>
                <td>
                    <code>Installation: <font color="green">successfull</font></code>
                </td>
            </tr>
        </table>
    </center>

    <?php
    if ($is_warning)
        return '<h2><font color="red">The RealEstateManager Component installed with a warning about a missing PHP extension! Please read carefully and uninstall RealEstateManager. Next fix your PHP installation and then install RealEstateManager again.</font></h2>';
}

function loadDataMime() {
    global $database;
    $query = "INSERT INTO `#__rem_mime_types` VALUES 
    ('ez', 'application/andrew-inset'),
    ('aw', 'application/applixware'),
    ('atom', 'application/atom+xml'),
    ('atomcat', 'application/atomcat+xml'),
    ('atomsvc', 'application/atomsvc+xml'),
    ('ccxml', 'application/ccxml+xml'),
    ('cdmia', 'application/cdmi-capability'),
    ('cdmic', 'application/cdmi-container'),
    ('cdmid', 'application/cdmi-domain'),
    ('cdmio', 'application/cdmi-object'),
    ('cdmiq', 'application/cdmi-queue'),
    ('cu', 'application/cu-seeme'),
    ('davmount', 'application/davmount+xml'),
    ('dbk', 'application/docbook+xml'),
    ('dssc', 'application/dssc+der'),
    ('xdssc', 'application/dssc+xml'),
    ('ecma', 'application/ecmascript'),
    ('emma', 'application/emma+xml'),
    ('epub', 'application/epub+zip'),
    ('exi', 'application/exi'),
    ('pfr', 'application/font-tdpfr'),
    ('gml', 'application/gml+xml'),
    ('gpx', 'application/gpx+xml'),
    ('gxf', 'application/gxf'),
    ('stk', 'application/hyperstudio'),
    ('ink', 'application/inkml+xml'),
    ('inkml', 'application/inkml+xml'),
    ('ipfix', 'application/ipfix'),
    ('jar', 'application/java-archive'),
    ('ser', 'application/java-serialized-object'),
    ('class', 'application/java-vm'),
    ('js', 'application/javascript'),
    ('json', 'application/json'),
    ('jsonml', 'application/jsonml+json'),
    ('lostxml', 'application/lost+xml'),
    ('hqx', 'application/mac-binhex40'),
    ('cpt', 'application/mac-compactpro'),
    ('mads', 'application/mads+xml'),
    ('mrc', 'application/marc'),
    ('mrcx', 'application/marcxml+xml'),
    ('ma', 'application/mathematica'),
    ('nb', 'application/mathematica'),
    ('mb', 'application/mathematica'),
    ('mathml', 'application/mathml+xml'),
    ('mbox', 'application/mbox'),
    ('mscml', 'application/mediaservercontrol+xml'),
    ('metalink', 'application/metalink+xml'),
    ('meta4', 'application/metalink4+xml'),
    ('mets', 'application/mets+xml'),
    ('mods', 'application/mods+xml'),
    ('m21', 'application/mp21'),
    ('mp21', 'application/mp21'),
    ('mp4s', 'application/mp4'),
    ('doc', 'application/msword'),
    ('dot', 'application/msword'),
    ('mxf', 'application/mxf'),
    ('bin', 'application/octet-stream'),
    ('dms', 'application/octet-stream'),
    ('lrf', 'application/octet-stream'),
    ('mar', 'application/octet-stream'),
    ('so', 'application/octet-stream'),
    ('dist', 'application/octet-stream'),
    ('distz', 'application/octet-stream'),
    ('pkg', 'application/octet-stream'),
    ('bpk', 'application/octet-stream'),
    ('dump', 'application/octet-stream'),
    ('elc', 'application/octet-stream'),
    ('deploy', 'application/octet-stream'),
    ('oda', 'application/oda'),
    ('opf', 'application/oebps-package+xml'),
    ('ogx', 'application/ogg'),
    ('omdoc', 'application/omdoc+xml'),
    ('onetoc', 'application/onenote'),
    ('onetoc2', 'application/onenote'),
    ('onetmp', 'application/onenote'),
    ('onepkg', 'application/onenote'),
    ('oxps', 'application/oxps'),
    ('xer', 'application/patch-ops-error+xml'),
    ('pdf', 'application/pdf'),
    ('pgp', 'application/pgp-encrypted'),
    ('asc', 'application/pgp-signature'),
    ('sig', 'application/pgp-signature'),
    ('prf', 'application/pics-rules'),
    ('p10', 'application/pkcs10'),
    ('p7m', 'application/pkcs7-mime'),
    ('p7c', 'application/pkcs7-mime'),
    ('p7s', 'application/pkcs7-signature'),
    ('p8', 'application/pkcs8'),
    ('ac', 'application/pkix-attr-cert'),
    ('cer', 'application/pkix-cert'),
    ('crl', 'application/pkix-crl'),
    ('pkipath', 'application/pkix-pkipath'),
    ('pki', 'application/pkixcmp'),
    ('pls', 'application/pls+xml'),
    ('ai', 'application/postscript'),
    ('eps', 'application/postscript'),
    ('ps', 'application/postscript'),
    ('cww', 'application/prs.cww'),
    ('pskcxml', 'application/pskc+xml'),
    ('rdf', 'application/rdf+xml'),
    ('rif', 'application/reginfo+xml'),
    ('rnc', 'application/relax-ng-compact-syntax'),
    ('rl', 'application/resource-lists+xml'),
    ('rld', 'application/resource-lists-diff+xml'),
    ('rs', 'application/rls-services+xml'),
    ('gbr', 'application/rpki-ghostbusters'),
    ('mft', 'application/rpki-manifest'),
    ('roa', 'application/rpki-roa'),
    ('rsd', 'application/rsd+xml'),
    ('rss', 'application/rss+xml'),
    ('rtf', 'application/rtf'),
    ('sbml', 'application/sbml+xml'),
    ('scq', 'application/scvp-cv-request'),
    ('scs', 'application/scvp-cv-response'),
    ('spq', 'application/scvp-vp-request'),
    ('spp', 'application/scvp-vp-response'),
    ('sdp', 'application/sdp'),
    ('setpay', 'application/set-payment-initiation'),
    ('setreg', 'application/set-registration-initiation'),
    ('shf', 'application/shf+xml'),
    ('smi', 'application/smil+xml'),
    ('smil', 'application/smil+xml'),
    ('rq', 'application/sparql-query'),
    ('srx', 'application/sparql-results+xml'),
    ('gram', 'application/srgs'),
    ('grxml', 'application/srgs+xml'),
    ('sru', 'application/sru+xml'),
    ('ssdl', 'application/ssdl+xml'),
    ('ssml', 'application/ssml+xml'),
    ('tei', 'application/tei+xml'),
    ('teicorpus', 'application/tei+xml'),
    ('tfi', 'application/thraud+xml'),
    ('tsd', 'application/timestamped-data'),
    ('plb', 'application/vnd.3gpp.pic-bw-large'),
    ('psb', 'application/vnd.3gpp.pic-bw-small'),
    ('pvb', 'application/vnd.3gpp.pic-bw-var'),
    ('tcap', 'application/vnd.3gpp2.tcap'),
    ('pwn', 'application/vnd.3m.post-it-notes'),
    ('aso', 'application/vnd.accpac.simply.aso'),
    ('imp', 'application/vnd.accpac.simply.imp'),
    ('acu', 'application/vnd.acucobol'),
    ('atc', 'application/vnd.acucorp'),
    ('acutc', 'application/vnd.acucorp'),
    ('air', 'application/vnd.adobe.air-application-installer-package+zip'),
    ('fcdt', 'application/vnd.adobe.formscentral.fcdt'),
    ('fxp', 'application/vnd.adobe.fxp'),
    ('fxpl', 'application/vnd.adobe.fxp'),
    ('xdp', 'application/vnd.adobe.xdp+xml'),
    ('xfdf', 'application/vnd.adobe.xfdf'),
    ('ahead', 'application/vnd.ahead.space'),
    ('azf', 'application/vnd.airzip.filesecure.azf'),
    ('azs', 'application/vnd.airzip.filesecure.azs'),
    ('azw', 'application/vnd.amazon.ebook'),
    ('acc', 'application/vnd.americandynamics.acc'),
    ('ami', 'application/vnd.amiga.ami'),
    ('apk', 'application/vnd.android.package-archive'),
    ('cii', 'application/vnd.anser-web-certificate-issue-initiation'),
    ('fti', 'application/vnd.anser-web-funds-transfer-initiation'),
    ('atx', 'application/vnd.antix.game-component'),
    ('mpkg', 'application/vnd.apple.installer+xml'),
    ('m3u8', 'application/vnd.apple.mpegurl'),
    ('swi', 'application/vnd.aristanetworks.swi'),
    ('iota', 'application/vnd.astraea-software.iota'),
    ('aep', 'application/vnd.audiograph'),
    ('mpm', 'application/vnd.blueice.multipass'),
    ('bmi', 'application/vnd.bmi'),
    ('rep', 'application/vnd.businessobjects'),
    ('cdxml', 'application/vnd.chemdraw+xml'),
    ('mmd', 'application/vnd.chipnuts.karaoke-mmd'),
    ('cdy', 'application/vnd.cinderella'),
    ('cla', 'application/vnd.claymore'),
    ('rp9', 'application/vnd.cloanto.rp9'),
    ('c4g', 'application/vnd.clonk.c4group'),
    ('c4d', 'application/vnd.clonk.c4group'),
    ('c4f', 'application/vnd.clonk.c4group'),
    ('c4p', 'application/vnd.clonk.c4group'),
    ('c4u', 'application/vnd.clonk.c4group'),
    ('c11amc', 'application/vnd.cluetrust.cartomobile-config'),
    ('c11amz', 'application/vnd.cluetrust.cartomobile-config-pkg'),
    ('csp', 'application/vnd.commonspace'),
    ('cdbcmsg', 'application/vnd.contact.cmsg'),
    ('cmc', 'application/vnd.cosmocaller'),
    ('clkx', 'application/vnd.crick.clicker'),
    ('clkk', 'application/vnd.crick.clicker.keyboard'),
    ('clkp', 'application/vnd.crick.clicker.palette'),
    ('clkt', 'application/vnd.crick.clicker.template'),
    ('clkw', 'application/vnd.crick.clicker.wordbank'),
    ('wbs', 'application/vnd.criticaltools.wbs+xml'),
    ('pml', 'application/vnd.ctc-posml'),
    ('ppd', 'application/vnd.cups-ppd'),
    ('car', 'application/vnd.curl.car'),
    ('pcurl', 'application/vnd.curl.pcurl'),
    ('dart', 'application/vnd.dart'),
    ('rdz', 'application/vnd.data-vision.rdz'),
    ('uvf', 'application/vnd.dece.data'),
    ('uvvf', 'application/vnd.dece.data'),
    ('uvd', 'application/vnd.dece.data'),
    ('uvvd', 'application/vnd.dece.data'),
    ('uvt', 'application/vnd.dece.ttml+xml'),
    ('uvvt', 'application/vnd.dece.ttml+xml'),
    ('uvx', 'application/vnd.dece.unspecified'),
    ('uvvx', 'application/vnd.dece.unspecified'),
    ('uvz', 'application/vnd.dece.zip'),
    ('uvvz', 'application/vnd.dece.zip'),
    ('fe_launch', 'application/vnd.denovo.fcselayout-link'),
    ('dna', 'application/vnd.dna'),
    ('mlp', 'application/vnd.dolby.mlp'),
    ('dpg', 'application/vnd.dpgraph'),
    ('dfac', 'application/vnd.dreamfactory'),
    ('kpxx', 'application/vnd.ds-keypoint'),
    ('ait', 'application/vnd.dvb.ait'),
    ('svc', 'application/vnd.dvb.service'),
    ('geo', 'application/vnd.dynageo'),
    ('mag', 'application/vnd.ecowin.chart'),
    ('nml', 'application/vnd.enliven'),
    ('esf', 'application/vnd.epson.esf'),
    ('msf', 'application/vnd.epson.msf'),
    ('qam', 'application/vnd.epson.quickanime'),
    ('slt', 'application/vnd.epson.salt'),
    ('ssf', 'application/vnd.epson.ssf'),
    ('es3', 'application/vnd.eszigno3+xml'),
    ('et3', 'application/vnd.eszigno3+xml'),
    ('ez2', 'application/vnd.ezpix-album'),
    ('ez3', 'application/vnd.ezpix-package'),
    ('fdf', 'application/vnd.fdf'),
    ('mseed', 'application/vnd.fdsn.mseed'),
    ('seed', 'application/vnd.fdsn.seed'),
    ('dataless', 'application/vnd.fdsn.seed'),
    ('gph', 'application/vnd.flographit'),
    ('ftc', 'application/vnd.fluxtime.clip'),
    ('fm', 'application/vnd.framemaker'),
    ('frame', 'application/vnd.framemaker'),
    ('maker', 'application/vnd.framemaker'),
    ('book', 'application/vnd.framemaker'),
    ('fnc', 'application/vnd.frogans.fnc'),
    ('ltf', 'application/vnd.frogans.ltf'),
    ('fsc', 'application/vnd.fsc.weblaunch'),
    ('oas', 'application/vnd.fujitsu.oasys'),
    ('oa2', 'application/vnd.fujitsu.oasys2'),
    ('oa3', 'application/vnd.fujitsu.oasys3'),
    ('fg5', 'application/vnd.fujitsu.oasysgp'),
    ('bh2', 'application/vnd.fujitsu.oasysprs'),
    ('ddd', 'application/vnd.fujixerox.ddd'),
    ('xdw', 'application/vnd.fujixerox.docuworks'),
    ('xbd', 'application/vnd.fujixerox.docuworks.binder'),
    ('fzs', 'application/vnd.fuzzysheet'),
    ('txd', 'application/vnd.genomatix.tuxedo'),
    ('ggb', 'application/vnd.geogebra.file'),
    ('ggt', 'application/vnd.geogebra.tool'),
    ('gex', 'application/vnd.geometry-explorer'),
    ('gre', 'application/vnd.geometry-explorer'),
    ('gxt', 'application/vnd.geonext'),
    ('g2w', 'application/vnd.geoplan'),
    ('g3w', 'application/vnd.geospace'),
    ('gmx', 'application/vnd.gmx'),
    ('kml', 'application/vnd.google-earth.kml+xml'),
    ('kmz', 'application/vnd.google-earth.kmz'),
    ('gqf', 'application/vnd.grafeq'),
    ('gqs', 'application/vnd.grafeq'),
    ('gac', 'application/vnd.groove-account'),
    ('ghf', 'application/vnd.groove-help'),
    ('gim', 'application/vnd.groove-identity-message'),
    ('grv', 'application/vnd.groove-injector'),
    ('gtm', 'application/vnd.groove-tool-message'),
    ('tpl', 'application/vnd.groove-tool-template'),
    ('vcg', 'application/vnd.groove-vcard'),
    ('hal', 'application/vnd.hal+xml'),
    ('zmm', 'application/vnd.handheld-entertainment+xml'),
    ('hbci', 'application/vnd.hbci'),
    ('les', 'application/vnd.hhe.lesson-player'),
    ('hpgl', 'application/vnd.hp-hpgl'),
    ('hpid', 'application/vnd.hp-hpid'),
    ('hps', 'application/vnd.hp-hps'),
    ('jlt', 'application/vnd.hp-jlyt'),
    ('pcl', 'application/vnd.hp-pcl'),
    ('pclxl', 'application/vnd.hp-pclxl'),
    ('sfd', 'application/vnd.hydrostatix.sof-data'),
    ('mpy', 'application/vnd.ibm.minipay'),
    ('afp', 'application/vnd.ibm.modcap'),
    ('listafp', 'application/vnd.ibm.modcap'),
    ('list3820', 'application/vnd.ibm.modcap'),
    ('irm', 'application/vnd.ibm.rights-management'),
    ('sc', 'application/vnd.ibm.secure-container'),
    ('icc', 'application/vnd.iccprofile'),
    ('icm', 'application/vnd.iccprofile'),
    ('igl', 'application/vnd.igloader'),
    ('ivp', 'application/vnd.immervision-ivp'),
    ('ivu', 'application/vnd.immervision-ivu'),
    ('igm', 'application/vnd.insors.igm'),
    ('xpw', 'application/vnd.intercon.formnet'),
    ('xpx', 'application/vnd.intercon.formnet'),
    ('i2g', 'application/vnd.intergeo'),
    ('qbo', 'application/vnd.intu.qbo'),
    ('qfx', 'application/vnd.intu.qfx'),
    ('rcprofile', 'application/vnd.ipunplugged.rcprofile'),
    ('irp', 'application/vnd.irepository.package+xml'),
    ('xpr', 'application/vnd.is-xpr'),
    ('fcs', 'application/vnd.isac.fcs'),
    ('jam', 'application/vnd.jam'),
    ('rms', 'application/vnd.jcp.javame.midlet-rms'),
    ('jisp', 'application/vnd.jisp'),
    ('joda', 'application/vnd.joost.joda-archive'),
    ('ktz', 'application/vnd.kahootz'),
    ('ktr', 'application/vnd.kahootz'),
    ('karbon', 'application/vnd.kde.karbon'),
    ('chrt', 'application/vnd.kde.kchart'),
    ('kfo', 'application/vnd.kde.kformula'),
    ('flw', 'application/vnd.kde.kivio'),
    ('kon', 'application/vnd.kde.kontour'),
    ('kpr', 'application/vnd.kde.kpresenter'),
    ('kpt', 'application/vnd.kde.kpresenter'),
    ('ksp', 'application/vnd.kde.kspread'),
    ('kwd', 'application/vnd.kde.kword'),
    ('kwt', 'application/vnd.kde.kword'),
    ('htke', 'application/vnd.kenameaapp'),
    ('kia', 'application/vnd.kidspiration'),
    ('kne', 'application/vnd.kinar'),
    ('knp', 'application/vnd.kinar'),
    ('skp', 'application/vnd.koan'),
    ('skd', 'application/vnd.koan'),
    ('skt', 'application/vnd.koan'),
    ('skm', 'application/vnd.koan'),
    ('sse', 'application/vnd.kodak-descriptor'),
    ('lasxml', 'application/vnd.las.las+xml'),
    ('lbd', 'application/vnd.llamagraphics.life-balance.desktop'),
    ('lbe', 'application/vnd.llamagraphics.life-balance.exchange+xml'),
    ('123', 'application/vnd.lotus-1-2-3'),
    ('apr', 'application/vnd.lotus-approach'),
    ('pre', 'application/vnd.lotus-freelance'),
    ('nsf', 'application/vnd.lotus-notes'),
    ('org', 'application/vnd.lotus-organizer'),
    ('scm', 'application/vnd.lotus-screencam'),
    ('lwp', 'application/vnd.lotus-wordpro'),
    ('portpkg', 'application/vnd.macports.portpkg'),
    ('mcd', 'application/vnd.mcd'),
    ('mc1', 'application/vnd.medcalcdata'),
    ('cdkey', 'application/vnd.mediastation.cdkey'),
    ('mwf', 'application/vnd.mfer'),
    ('mfm', 'application/vnd.mfmp'),
    ('flo', 'application/vnd.micrografx.flo'),
    ('igx', 'application/vnd.micrografx.igx'),
    ('mif', 'application/vnd.mif'),
    ('daf', 'application/vnd.mobius.daf'),
    ('dis', 'application/vnd.mobius.dis'),
    ('mbk', 'application/vnd.mobius.mbk'),
    ('mqy', 'application/vnd.mobius.mqy'),
    ('msl', 'application/vnd.mobius.msl'),
    ('plc', 'application/vnd.mobius.plc'),
    ('txf', 'application/vnd.mobius.txf'),
    ('mpn', 'application/vnd.mophun.application'),
    ('mpc', 'application/vnd.mophun.certificate'),
    ('xul', 'application/vnd.mozilla.xul+xml'),
    ('cil', 'application/vnd.ms-artgalry'),
    ('cab', 'application/vnd.ms-cab-compressed'),
    ('xls', 'application/vnd.ms-excel'),
    ('xlm', 'application/vnd.ms-excel'),
    ('xla', 'application/vnd.ms-excel'),
    ('xlc', 'application/vnd.ms-excel'),
    ('xlt', 'application/vnd.ms-excel'),
    ('xlw', 'application/vnd.ms-excel'),
    ('xlam', 'application/vnd.ms-excel.addin.macroenabled.12'),
    ('xlsb', 'application/vnd.ms-excel.sheet.binary.macroenabled.12'),
    ('xlsm', 'application/vnd.ms-excel.sheet.macroenabled.12'),
    ('xltm', 'application/vnd.ms-excel.template.macroenabled.12'),
    ('eot', 'application/vnd.ms-fontobject'),
    ('chm', 'application/vnd.ms-htmlhelp'),
    ('ims', 'application/vnd.ms-ims'),
    ('lrm', 'application/vnd.ms-lrm'),
    ('thmx', 'application/vnd.ms-officetheme'),
    ('cat', 'application/vnd.ms-pki.seccat'),
    ('stl', 'application/vnd.ms-pki.stl'),
    ('ppt', 'application/vnd.ms-powerpoint'),
    ('pps', 'application/vnd.ms-powerpoint'),
    ('pot', 'application/vnd.ms-powerpoint'),
    ('ppam', 'application/vnd.ms-powerpoint.addin.macroenabled.12'),
    ('pptm', 'application/vnd.ms-powerpoint.presentation.macroenabled.12'),
    ('sldm', 'application/vnd.ms-powerpoint.slide.macroenabled.12'),
    ('ppsm', 'application/vnd.ms-powerpoint.slideshow.macroenabled.12'),
    ('potm', 'application/vnd.ms-powerpoint.template.macroenabled.12'),
    ('mpp', 'application/vnd.ms-project'),
    ('mpt', 'application/vnd.ms-project'),
    ('docm', 'application/vnd.ms-word.document.macroenabled.12'),
    ('dotm', 'application/vnd.ms-word.template.macroenabled.12'),
    ('wps', 'application/vnd.ms-works'),
    ('wks', 'application/vnd.ms-works'),
    ('wcm', 'application/vnd.ms-works'),
    ('wdb', 'application/vnd.ms-works'),
    ('wpl', 'application/vnd.ms-wpl'),
    ('xps', 'application/vnd.ms-xpsdocument'),
    ('mseq', 'application/vnd.mseq'),
    ('mus', 'application/vnd.musician'),
    ('msty', 'application/vnd.muvee.style'),
    ('taglet', 'application/vnd.mynfc'),
    ('nlu', 'application/vnd.neurolanguage.nlu'),
    ('ntf', 'application/vnd.nitf'),
    ('nitf', 'application/vnd.nitf'),
    ('nnd', 'application/vnd.noblenet-directory'),
    ('nns', 'application/vnd.noblenet-sealer'),
    ('nnw', 'application/vnd.noblenet-web'),
    ('ngdat', 'application/vnd.nokia.n-gage.data'),
    ('n', 'application/vnd.nokia.n-gage.symbian.install'),
    ('rpst', 'application/vnd.nokia.radio-preset'),
    ('rpss', 'application/vnd.nokia.radio-presets'),
    ('edm', 'application/vnd.novadigm.edm'),
    ('edx', 'application/vnd.novadigm.edx'),
    ('ext', 'application/vnd.novadigm.ext'),
    ('odc', 'application/vnd.oasis.opendocument.chart'),
    ('otc', 'application/vnd.oasis.opendocument.chart-template'),
    ('odb', 'application/vnd.oasis.opendocument.database'),
    ('odf', 'application/vnd.oasis.opendocument.formula'),
    ('odft', 'application/vnd.oasis.opendocument.formula-template'),
    ('odg', 'application/vnd.oasis.opendocument.graphics'),
    ('otg', 'application/vnd.oasis.opendocument.graphics-template'),
    ('odi', 'application/vnd.oasis.opendocument.image'),
    ('oti', 'application/vnd.oasis.opendocument.image-template'),
    ('odp', 'application/vnd.oasis.opendocument.presentation'),
    ('otp', 'application/vnd.oasis.opendocument.presentation-template'),
    ('ods', 'application/vnd.oasis.opendocument.spreadsheet'),
    ('ots', 'application/vnd.oasis.opendocument.spreadsheet-template'),
    ('odt', 'application/vnd.oasis.opendocument.text'),
    ('odm', 'application/vnd.oasis.opendocument.text-master'),
    ('ott', 'application/vnd.oasis.opendocument.text-template'),
    ('oth', 'application/vnd.oasis.opendocument.text-web'),
    ('xo', 'application/vnd.olpc-sugar'),
    ('dd2', 'application/vnd.oma.dd2+xml'),
    ('oxt', 'application/vnd.openofficeorg.extension'),
    ('pptx', 'application/vnd.openxmlformats-officedocument.presentationml.presentation'),
    ('sldx', 'application/vnd.openxmlformats-officedocument.presentationml.slide'),
    ('ppsx', 'application/vnd.openxmlformats-officedocument.presentationml.slideshow'),
    ('potx', 'application/vnd.openxmlformats-officedocument.presentationml.template'),
    ('xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'),
    ('xltx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.template'),
    ('docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document'),
    ('dotx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.template'),
    ('mgp', 'application/vnd.osgeo.mapguide.package'),
    ('dp', 'application/vnd.osgi.dp'),
    ('esa', 'application/vnd.osgi.subsystem'),
    ('pdb', 'application/vnd.palm'),
    ('pqa', 'application/vnd.palm'),
    ('oprc', 'application/vnd.palm'),
    ('paw', 'application/vnd.pawaafile'),
    ('str', 'application/vnd.pg.format'),
    ('ei6', 'application/vnd.pg.osasli'),
    ('efif', 'application/vnd.picsel'),
    ('wg', 'application/vnd.pmi.widget'),
    ('plf', 'application/vnd.pocketlearn'),
    ('pbd', 'application/vnd.powerbuilder6'),
    ('box', 'application/vnd.previewsystems.box'),
    ('mgz', 'application/vnd.proteus.magazine'),
    ('qps', 'application/vnd.publishare-delta-tree'),
    ('ptid', 'application/vnd.pvi.ptid1'),
    ('qxd', 'application/vnd.quark.quarkxpress'),
    ('qxt', 'application/vnd.quark.quarkxpress'),
    ('qwd', 'application/vnd.quark.quarkxpress'),
    ('qwt', 'application/vnd.quark.quarkxpress'),
    ('qxl', 'application/vnd.quark.quarkxpress'),
    ('qxb', 'application/vnd.quark.quarkxpress'),
    ('bed', 'application/vnd.realvnc.bed'),
    ('mxl', 'application/vnd.recordare.musicxml'),
    ('musicxml', 'application/vnd.recordare.musicxml+xml'),
    ('cryptonote', 'application/vnd.rig.cryptonote'),
    ('cod', 'application/vnd.rim.cod'),
    ('rm', 'application/vnd.rn-realmedia'),
    ('rmvb', 'application/vnd.rn-realmedia-vbr'),
    ('link66', 'application/vnd.route66.link66+xml'),
    ('st', 'application/vnd.sailingtracker.track'),
    ('see', 'application/vnd.seemail'),
    ('sema', 'application/vnd.sema'),
    ('semd', 'application/vnd.semd'),
    ('semf', 'application/vnd.semf'),
    ('ifm', 'application/vnd.shana.informed.formdata'),
    ('itp', 'application/vnd.shana.informed.formtemplate'),
    ('iif', 'application/vnd.shana.informed.interchange'),
    ('ipk', 'application/vnd.shana.informed.package'),
    ('twd', 'application/vnd.simtech-mindmapper'),
    ('twds', 'application/vnd.simtech-mindmapper'),
    ('mmf', 'application/vnd.smaf'),
    ('teacher', 'application/vnd.smart.teacher'),
    ('sdkm', 'application/vnd.solent.sdkm+xml'),
    ('sdkd', 'application/vnd.solent.sdkm+xml'),
    ('dxp', 'application/vnd.spotfire.dxp'),
    ('sfs', 'application/vnd.spotfire.sfs'),
    ('sdc', 'application/vnd.stardivision.calc'),
    ('sda', 'application/vnd.stardivision.draw'),
    ('sdd', 'application/vnd.stardivision.impress'),
    ('smf', 'application/vnd.stardivision.math'),
    ('sdw', 'application/vnd.stardivision.writer'),
    ('vor', 'application/vnd.stardivision.writer'),
    ('sgl', 'application/vnd.stardivision.writer-global'),
    ('smzip', 'application/vnd.stepmania.package'),
    ('sm', 'application/vnd.stepmania.stepchart'),
    ('sxc', 'application/vnd.sun.xml.calc'),
    ('stc', 'application/vnd.sun.xml.calc.template'),
    ('sxd', 'application/vnd.sun.xml.draw'),
    ('std', 'application/vnd.sun.xml.draw.template'),
    ('sxi', 'application/vnd.sun.xml.impress'),
    ('sti', 'application/vnd.sun.xml.impress.template'),
    ('sxm', 'application/vnd.sun.xml.math'),
    ('sxw', 'application/vnd.sun.xml.writer'),
    ('sxg', 'application/vnd.sun.xml.writer.global'),
    ('stw', 'application/vnd.sun.xml.writer.template'),
    ('sus', 'application/vnd.sus-calendar'),
    ('susp', 'application/vnd.sus-calendar'),
    ('svd', 'application/vnd.svd'),
    ('sis', 'application/vnd.symbian.install'),
    ('sisx', 'application/vnd.symbian.install'),
    ('xsm', 'application/vnd.syncml+xml'),
    ('bdm', 'application/vnd.syncml.dm+wbxml'),
    ('xdm', 'application/vnd.syncml.dm+xml'),
    ('tao', 'application/vnd.tao.intent-module-archive'),
    ('pcap', 'application/vnd.tcpdump.pcap'),
    ('cap', 'application/vnd.tcpdump.pcap'),
    ('dmp', 'application/vnd.tcpdump.pcap'),
    ('tmo', 'application/vnd.tmobile-livetv'),
    ('tpt', 'application/vnd.trid.tpt'),
    ('mxs', 'application/vnd.triscape.mxs'),
    ('tra', 'application/vnd.trueapp'),
    ('ufd', 'application/vnd.ufdl'),
    ('ufdl', 'application/vnd.ufdl'),
    ('utz', 'application/vnd.uiq.theme'),
    ('umj', 'application/vnd.umajin'),
    ('unityweb', 'application/vnd.unity'),
    ('uoml', 'application/vnd.uoml+xml'),
    ('vcx', 'application/vnd.vcx'),
    ('vsd', 'application/vnd.visio'),
    ('vst', 'application/vnd.visio'),
    ('vss', 'application/vnd.visio'),
    ('vsw', 'application/vnd.visio'),
    ('vis', 'application/vnd.visionary'),
    ('vsf', 'application/vnd.vsf'),
    ('wbxml', 'application/vnd.wap.wbxml'),
    ('wmlc', 'application/vnd.wap.wmlc'),
    ('wmlsc', 'application/vnd.wap.wmlscriptc'),
    ('wtb', 'application/vnd.webturbo'),
    ('nbp', 'application/vnd.wolfram.player'),
    ('wpd', 'application/vnd.wordperfect'),
    ('wqd', 'application/vnd.wqd'),
    ('stf', 'application/vnd.wt.stf'),
    ('xar', 'application/vnd.xara'),
    ('xfdl', 'application/vnd.xfdl'),
    ('hvd', 'application/vnd.yamaha.hv-dic'),
    ('hvs', 'application/vnd.yamaha.hv-script'),
    ('hvp', 'application/vnd.yamaha.hv-voice'),
    ('osf', 'application/vnd.yamaha.openscoreformat'),
    ('osfpvg', 'application/vnd.yamaha.openscoreformat.osfpvg+xml'),
    ('saf', 'application/vnd.yamaha.smaf-audio'),
    ('spf', 'application/vnd.yamaha.smaf-phrase'),
    ('cmp', 'application/vnd.yellowriver-custom-menu'),
    ('zir', 'application/vnd.zul'),
    ('zirz', 'application/vnd.zul'),
    ('zaz', 'application/vnd.zzazz.deck+xml'),
    ('vxml', 'application/voicexml+xml'),
    ('wgt', 'application/widget'),
    ('hlp', 'application/winhlp'),
    ('wsdl', 'application/wsdl+xml'),
    ('wspolicy', 'application/wspolicy+xml'),
    ('7z', 'application/x-7z-compressed'),
    ('abw', 'application/x-abiword'),
    ('ace', 'application/x-ace-compressed'),
    ('dmg', 'application/x-apple-diskimage'),
    ('aab', 'application/x-authorware-bin'),
    ('x32', 'application/x-authorware-bin'),
    ('u32', 'application/x-authorware-bin'),
    ('vox', 'application/x-authorware-bin'),
    ('aam', 'application/x-authorware-map'),
    ('aas', 'application/x-authorware-seg'),
    ('bcpio', 'application/x-bcpio'),
    ('torrent', 'application/x-bittorrent'),
    ('blb', 'application/x-blorb'),
    ('blorb', 'application/x-blorb'),
    ('bz', 'application/x-bzip'),
    ('bz2', 'application/x-bzip2'),
    ('boz', 'application/x-bzip2'),
    ('cbr', 'application/x-cbr'),
    ('cba', 'application/x-cbr'),
    ('cbt', 'application/x-cbr'),
    ('cbz', 'application/x-cbr'),
    ('cb7', 'application/x-cbr'),
    ('vcd', 'application/x-cdlink'),
    ('cfs', 'application/x-cfs-compressed'),
    ('chat', 'application/x-chat'),
    ('pgn', 'application/x-chess-pgn'),
    ('nsc', 'application/x-conference'),
    ('cpio', 'application/x-cpio'),
    ('csh', 'application/x-csh'),
    ('deb', 'application/x-debian-package'),
    ('udeb', 'application/x-debian-package'),
    ('dgc', 'application/x-dgc-compressed'),
    ('dir', 'application/x-director'),
    ('dcr', 'application/x-director'),
    ('dxr', 'application/x-director'),
    ('cst', 'application/x-director'),
    ('cct', 'application/x-director'),
    ('cxt', 'application/x-director'),
    ('w3d', 'application/x-director'),
    ('fgd', 'application/x-director'),
    ('swa', 'application/x-director'),
    ('wad', 'application/x-doom'),
    ('ncx', 'application/x-dtbncx+xml'),
    ('dtb', 'application/x-dtbook+xml'),
    ('res', 'application/x-dtbresource+xml'),
    ('dvi', 'application/x-dvi'),
    ('evy', 'application/x-envoy'),
    ('eva', 'application/x-eva'),
    ('bdf', 'application/x-font-bdf'),
    ('gsf', 'application/x-font-ghostscript'),
    ('psf', 'application/x-font-linux-psf'),
    ('otf', 'application/x-font-otf'),
    ('pcf', 'application/x-font-pcf'),
    ('snf', 'application/x-font-snf'),
    ('ttf', 'application/x-font-ttf'),
    ('ttc', 'application/x-font-ttf'),
    ('pfa', 'application/x-font-type1'),
    ('pfb', 'application/x-font-type1'),
    ('pfm', 'application/x-font-type1'),
    ('afm', 'application/x-font-type1'),
    ('woff', 'application/x-font-woff'),
    ('arc', 'application/x-freearc'),
    ('spl', 'application/x-futuresplash'),
    ('gca', 'application/x-gca-compressed'),
    ('ulx', 'application/x-glulx'),
    ('gnumeric', 'application/x-gnumeric'),
    ('gramps', 'application/x-gramps-xml'),
    ('gtar', 'application/x-gtar'),
    ('hdf', 'application/x-hdf'),
    ('install', 'application/x-install-instructions'),
    ('iso', 'application/x-iso9660-image'),
    ('jnlp', 'application/x-java-jnlp-file'),
    ('latex', 'application/x-latex'),
    ('lzh', 'application/x-lzh-compressed'),
    ('lha', 'application/x-lzh-compressed'),
    ('mie', 'application/x-mie'),
    ('prc', 'application/x-mobipocket-ebook'),
    ('mobi', 'application/x-mobipocket-ebook'),
    ('application', 'application/x-ms-application'),
    ('lnk', 'application/x-ms-shortcut'),
    ('wmd', 'application/x-ms-wmd'),
    ('wmz', 'application/x-msmetafile'),
    ('xbap', 'application/x-ms-xbap'),
    ('mdb', 'application/x-msaccess'),
    ('obd', 'application/x-msbinder'),
    ('crd', 'application/x-mscardfile'),
    ('clp', 'application/x-msclip'),
    ('exe', 'application/x-msdownload'),
    ('dll', 'application/x-msdownload'),
    ('com', 'application/x-msdownload'),
    ('bat', 'application/x-msdownload'),
    ('msi', 'application/x-msdownload'),
    ('mvb', 'application/x-msmediaview'),
    ('m13', 'application/x-msmediaview'),
    ('m14', 'application/x-msmediaview'),
    ('wmf', 'application/x-msmetafile'),
    ('emf', 'application/x-msmetafile'),
    ('emz', 'application/x-msmetafile'),
    ('mny', 'application/x-msmoney'),
    ('pub', 'application/x-mspublisher'),
    ('scd', 'application/x-msschedule'),
    ('trm', 'application/x-msterminal'),
    ('wri', 'application/x-mswrite'),
    ('nc', 'application/x-netcdf'),
    ('cdf', 'application/x-netcdf'),
    ('nzb', 'application/x-nzb'),
    ('p12', 'application/x-pkcs12'),
    ('pfx', 'application/x-pkcs12'),
    ('p7b', 'application/x-pkcs7-certificates'),
    ('spc', 'application/x-pkcs7-certificates'),
    ('p7r', 'application/x-pkcs7-certreqresp'),
    ('rar', 'application/x-rar-compressed'),
    ('ris', 'application/x-research-info-systems'),
    ('sh', 'application/x-sh'),
    ('shar', 'application/x-shar'),
    ('swf', 'application/x-shockwave-flash'),
    ('xap', 'application/x-silverlight-app'),
    ('sql', 'application/x-sql'),
    ('sit', 'application/x-stuffit'),
    ('sitx', 'application/x-stuffitx'),
    ('srt', 'application/x-subrip'),
    ('sv4cpio', 'application/x-sv4cpio'),
    ('sv4crc', 'application/x-sv4crc'),
    ('t3', 'application/x-t3vm-image'),
    ('gam', 'application/x-tads'),
    ('tar', 'application/x-tar'),
    ('tcl', 'application/x-tcl'),
    ('tex', 'application/x-tex'),
    ('tfm', 'application/x-tex-tfm'),
    ('texinfo', 'application/x-texinfo'),
    ('texi', 'application/x-texinfo'),
    ('obj', 'application/x-tgif'),
    ('ustar', 'application/x-ustar'),
    ('src', 'application/x-wais-source'),
    ('der', 'application/x-x509-ca-cert'),
    ('crt', 'application/x-x509-ca-cert'),
    ('fig', 'application/x-xfig'),
    ('xlf', 'application/x-xliff+xml'),
    ('xpi', 'application/x-xpinstall'),
    ('xz', 'application/x-xz'),
    ('z1', 'application/x-zmachine'),
    ('z2', 'application/x-zmachine'),
    ('z3', 'application/x-zmachine'),
    ('z4', 'application/x-zmachine'),
    ('z5', 'application/x-zmachine'),
    ('z6', 'application/x-zmachine'),
    ('z7', 'application/x-zmachine'),
    ('z8', 'application/x-zmachine'),
    ('xaml', 'application/xaml+xml'),
    ('xdf', 'application/xcap-diff+xml'),
    ('xenc', 'application/xenc+xml'),
    ('xhtml', 'application/xhtml+xml'),
    ('xht', 'application/xhtml+xml'),
    ('xml', 'application/xml'),
    ('xsl', 'application/xml'),
    ('dtd', 'application/xml-dtd'),
    ('xop', 'application/xop+xml'),
    ('xpl', 'application/xproc+xml'),
    ('xslt', 'application/xslt+xml'),
    ('xspf', 'application/xspf+xml'),
    ('mxml', 'application/xv+xml'),
    ('xhvml', 'application/xv+xml'),
    ('xvml', 'application/xv+xml'),
    ('xvm', 'application/xv+xml'),
    ('yang', 'application/yang'),
    ('yin', 'application/yin+xml'),
    ('zip', 'application/zip'),
    ('zip', 'application/x-zip'),
    ('adp', 'audio/adpcm'),
    ('au', 'audio/basic'),
    ('snd', 'audio/basic'),
    ('mid', 'audio/midi'),
    ('midi', 'audio/midi'),
    ('kar', 'audio/midi'),
    ('rmi', 'audio/midi'),
    ('mp4a', 'audio/mp4'),
    ('mpga', 'audio/mpeg'),
    ('mp2', 'audio/mpeg'),
    ('mp2a', 'audio/mpeg'),
    ('mp3', 'audio/mpeg'),
    ('m2a', 'audio/mpeg'),
    ('m3a', 'audio/mpeg'),
    ('oga', 'audio/ogg'),
    ('ogg', 'audio/ogg'),
    ('spx', 'audio/ogg'),
    ('s3m', 'audio/s3m'),
    ('sil', 'audio/silk'),
    ('uva', 'audio/vnd.dece.audio'),
    ('uvva', 'audio/vnd.dece.audio'),
    ('eol', 'audio/vnd.digital-winds'),
    ('dra', 'audio/vnd.dra'),
    ('dts', 'audio/vnd.dts'),
    ('dtshd', 'audio/vnd.dts.hd'),
    ('lvp', 'audio/vnd.lucent.voice'),
    ('pya', 'audio/vnd.ms-playready.media.pya'),
    ('ecelp4800', 'audio/vnd.nuera.ecelp4800'),
    ('ecelp7470', 'audio/vnd.nuera.ecelp7470'),
    ('ecelp9600', 'audio/vnd.nuera.ecelp9600'),
    ('rip', 'audio/vnd.rip'),
    ('weba', 'audio/webm'),
    ('aac', 'audio/x-aac'),
    ('aif', 'audio/x-aiff'),
    ('aiff', 'audio/x-aiff'),
    ('aifc', 'audio/x-aiff'),
    ('caf', 'audio/x-caf'),
    ('flac', 'audio/x-flac'),
    ('mka', 'audio/x-matroska'),
    ('m3u', 'audio/x-mpegurl'),
    ('wax', 'audio/x-ms-wax'),
    ('wma', 'audio/x-ms-wma'),
    ('ram', 'audio/x-pn-realaudio'),
    ('ra', 'audio/x-pn-realaudio'),
    ('rmp', 'audio/x-pn-realaudio-plugin'),
    ('wav', 'audio/x-wav'),
    ('xm', 'audio/xm'),
    ('cdx', 'chemical/x-cdx'),
    ('cif', 'chemical/x-cif'),
    ('cmdf', 'chemical/x-cmdf'),
    ('cml', 'chemical/x-cml'),
    ('csml', 'chemical/x-csml'),
    ('xyz', 'chemical/x-xyz'),
    ('bmp', 'image/bmp'),
    ('cgm', 'image/cgm'),
    ('g3', 'image/g3fax'),
    ('gif', 'image/gif'),
    ('ief', 'image/ief'),
    ('jpeg', 'image/jpeg'),
    ('jpg', 'image/jpeg'),
    ('jpe', 'image/jpeg'),
    ('ktx', 'image/ktx'),
    ('png', 'image/png'),
    ('btif', 'image/prs.btif'),
    ('sgi', 'image/sgi'),
    ('svg', 'image/svg+xml'),
    ('svgz', 'image/svg+xml'),
    ('tiff', 'image/tiff'),
    ('tif', 'image/tiff'),
    ('psd', 'image/vnd.adobe.photoshop'),
    ('uvi', 'image/vnd.dece.graphic'),
    ('uvvi', 'image/vnd.dece.graphic'),
    ('uvg', 'image/vnd.dece.graphic'),
    ('uvvg', 'image/vnd.dece.graphic'),
    ('sub', 'text/vnd.dvb.subtitle'),
    ('djvu', 'image/vnd.djvu'),
    ('djv', 'image/vnd.djvu'),
    ('dwg', 'image/vnd.dwg'),
    ('dxf', 'image/vnd.dxf'),
    ('fbs', 'image/vnd.fastbidsheet'),
    ('fpx', 'image/vnd.fpx'),
    ('fst', 'image/vnd.fst'),
    ('mmr', 'image/vnd.fujixerox.edmics-mmr'),
    ('rlc', 'image/vnd.fujixerox.edmics-rlc'),
    ('mdi', 'image/vnd.ms-modi'),
    ('wdp', 'image/vnd.ms-photo'),
    ('npx', 'image/vnd.net-fpx'),
    ('wbmp', 'image/vnd.wap.wbmp'),
    ('xif', 'image/vnd.xiff'),
    ('webp', 'image/webp'),
    ('3ds', 'image/x-3ds'),
    ('ras', 'image/x-cmu-raster'),
    ('cmx', 'image/x-cmx'),
    ('fh', 'image/x-freehand'),
    ('fhc', 'image/x-freehand'),
    ('fh4', 'image/x-freehand'),
    ('fh5', 'image/x-freehand'),
    ('fh7', 'image/x-freehand'),
    ('ico', 'image/x-icon'),
    ('sid', 'image/x-mrsid-image'),
    ('pcx', 'image/x-pcx'),
    ('pic', 'image/x-pict'),
    ('pct', 'image/x-pict'),
    ('pnm', 'image/x-portable-anymap'),
    ('pbm', 'image/x-portable-bitmap'),
    ('pgm', 'image/x-portable-graymap'),
    ('ppm', 'image/x-portable-pixmap'),
    ('rgb', 'image/x-rgb'),
    ('tga', 'image/x-tga'),
    ('xbm', 'image/x-xbitmap'),
    ('xpm', 'image/x-xpixmap'),
    ('xwd', 'image/x-xwindowdump'),
    ('eml', 'message/rfc822'),
    ('mime', 'message/rfc822'),
    ('igs', 'model/iges'),
    ('iges', 'model/iges'),
    ('msh', 'model/mesh'),
    ('mesh', 'model/mesh'),
    ('silo', 'model/mesh'),
    ('dae', 'model/vnd.collada+xml'),
    ('dwf', 'model/vnd.dwf'),
    ('gdl', 'model/vnd.gdl'),
    ('gtw', 'model/vnd.gtw'),
    ('mts', 'model/vnd.mts'),
    ('vtu', 'model/vnd.vtu'),
    ('wrl', 'model/vrml'),
    ('vrml', 'model/vrml'),
    ('x3db', 'model/x3d+binary'),
    ('x3dbz', 'model/x3d+binary'),
    ('x3dv', 'model/x3d+vrml'),
    ('x3dvz', 'model/x3d+vrml'),
    ('x3d', 'model/x3d+xml'),
    ('x3dz', 'model/x3d+xml'),
    ('appcache', 'text/cache-manifest'),
    ('ics', 'text/calendar'),
    ('ifb', 'text/calendar'),
    ('css', 'text/css'),
    ('csv', 'text/csv'),
    ('html', 'text/html'),
    ('htm', 'text/html'),
    ('n3', 'text/n3'),
    ('txt', 'text/plain'),
    ('text', 'text/plain'),
    ('conf', 'text/plain'),
    ('def', 'text/plain'),
    ('list', 'text/plain'),
    ('log', 'text/plain'),
    ('in', 'text/plain'),
    ('dsc', 'text/prs.lines.tag'),
    ('rtx', 'text/richtext'),
    ('sgml', 'text/sgml'),
    ('sgm', 'text/sgml'),
    ('tsv', 'text/tab-separated-values'),
    ('t', 'text/troff'),
    ('tr', 'text/troff'),
    ('roff', 'text/troff'),
    ('man', 'text/troff'),
    ('me', 'text/troff'),
    ('ms', 'text/troff'),
    ('ttl', 'text/turtle'),
    ('uri', 'text/uri-list'),
    ('uris', 'text/uri-list'),
    ('urls', 'text/uri-list'),
    ('vcard', 'text/vcard'),
    ('curl', 'text/vnd.curl'),
    ('dcurl', 'text/vnd.curl.dcurl'),
    ('scurl', 'text/vnd.curl.scurl'),
    ('mcurl', 'text/vnd.curl.mcurl'),
    ('fly', 'text/vnd.fly'),
    ('flx', 'text/vnd.fmi.flexstor'),
    ('gv', 'text/vnd.graphviz'),
    ('3dml', 'text/vnd.in3d.3dml'),
    ('spot', 'text/vnd.in3d.spot'),
    ('jad', 'text/vnd.sun.j2me.app-descriptor'),
    ('wml', 'text/vnd.wap.wml'),
    ('wmls', 'text/vnd.wap.wmlscript'),
    ('s', 'text/x-asm'),
    ('asm', 'text/x-asm'),
    ('c', 'text/x-c'),
    ('cc', 'text/x-c'),
    ('cxx', 'text/x-c'),
    ('cpp', 'text/x-c'),
    ('h', 'text/x-c'),
    ('hh', 'text/x-c'),
    ('dic', 'text/x-c'),
    ('f', 'text/x-fortran'),
    ('for', 'text/x-fortran'),
    ('f77', 'text/x-fortran'),
    ('f90', 'text/x-fortran'),
    ('java', 'text/x-java-source'),
    ('opml', 'text/x-opml'),
    ('p', 'text/x-pascal'),
    ('pas', 'text/x-pascal'),
    ('nfo', 'text/x-nfo'),
    ('etx', 'text/x-setext'),
    ('sfv', 'text/x-sfv'),
    ('uu', 'text/x-uuencode'),
    ('vcs', 'text/x-vcalendar'),
    ('vcf', 'text/x-vcard'),
    ('3gp', 'video/3gpp'),
    ('3g2', 'video/3gpp2'),
    ('h261', 'video/h261'),
    ('h263', 'video/h263'),
    ('h264', 'video/h264'),
    ('jpgv', 'video/jpeg'),
    ('jpm', 'video/jpm'),
    ('jpgm', 'video/jpm'),
    ('mj2', 'video/mj2'),
    ('mjp2', 'video/mj2'),
    ('mp4', 'video/mp4'),
    ('mp4v', 'video/mp4'),
    ('mpg4', 'video/mp4'),
    ('mpeg', 'video/mpeg'),
    ('mpg', 'video/mpeg'),
    ('mpe', 'video/mpeg'),
    ('m1v', 'video/mpeg'),
    ('m2v', 'video/mpeg'),
    ('ogv', 'video/ogg'),
    ('qt', 'video/quicktime'),
    ('mov', 'video/quicktime'),
    ('uvh', 'video/vnd.dece.hd'),
    ('uvvh', 'video/vnd.dece.hd'),
    ('uvm', 'video/vnd.dece.mobile'),
    ('uvvm', 'video/vnd.dece.mobile'),
    ('uvp', 'video/vnd.dece.pd'),
    ('uvvp', 'video/vnd.dece.pd'),
    ('uvs', 'video/vnd.dece.sd'),
    ('uvvs', 'video/vnd.dece.sd'),
    ('uvv', 'video/vnd.dece.video'),
    ('uvvv', 'video/vnd.dece.video'),
    ('dvb', 'video/vnd.dvb.file'),
    ('fvt', 'video/vnd.fvt'),
    ('mxu', 'video/vnd.mpegurl'),
    ('m4u', 'video/vnd.mpegurl'),
    ('pyv', 'video/vnd.ms-playready.media.pyv'),
    ('uvu', 'video/vnd.uvvu.mp4'),
    ('uvvu', 'video/vnd.uvvu.mp4'),
    ('viv', 'video/vnd.vivo'),
    ('webm', 'video/webm'),
    ('f4v', 'video/x-f4v'),
    ('fli', 'video/x-fli'),
    ('flv', 'video/x-flv'),
    ('m4v', 'video/x-m4v'),
    ('mkv', 'video/x-matroska'),
    ('mk3d', 'video/x-matroska'),
    ('mks', 'video/x-matroska'),
    ('mng', 'video/x-mng'),
    ('asf', 'video/x-ms-asf'),
    ('asx', 'video/x-ms-asf'),
    ('vob', 'video/x-ms-vob'),
    ('wm', 'video/x-ms-wm'),
    ('wmv', 'video/x-ms-wmv'),
    ('wmx', 'video/x-ms-wmx'),
    ('wvx', 'video/x-ms-wvx'),
    ('avi', 'video/x-msvideo'),
    ('movie', 'video/x-sgi-movie'),
    ('smv', 'video/x-smv'),
    ('ice', 'x-conference/x-cooltalk');";
    $database->setQuery($query);
    $database->query();
}

