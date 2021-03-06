<?php
/**
 * Core file
 *
 * @author Vince Wooll <sales@jomres.net>
 * @version Jomres 9.8.18
 * @package Jomres
 * @copyright	2005-2016 Vince Wooll
 * Jomres (tm) PHP, CSS & Javascript files are released under both MIT and GPL2 licenses. This means that you can choose the license that best suits your project, and use it accordingly.
 **/

// ################################################################
defined( '_JOMRES_INITCHECK' ) or die( '' );
// ################################################################

class j00011manager_option_01_tariffs
	{
	function __construct( $componentArgs )
		{
		// Must be in all minicomponents. Minicomponents with templates that can contain editable text should run $this->template_touch() else just return
		$MiniComponents = jomres_singleton_abstract::getInstance( 'mcHandler' );
		if ( $MiniComponents->template_touch )
			{
			$this->template_touchable = true; return;
			}
		$property_uid=getDefaultProperty();
		$mrConfig=getPropertySpecificSettings($property_uid);
		
		if ($mrConfig['tariffmode']!='0' || $mrConfig[ 'is_real_estate_listing' ] == '1' )
			return;

		$this->cpanelButton = jomres_mainmenu_option( JOMRES_SITEPAGE_URL . "&task=edit_tariffs_normal", 'PropertyAdmin.png', jr_gettext( '_JOMRES_COM_MR_LISTTARIFF_TITLE', '_JOMRES_COM_MR_LISTTARIFF_TITLE', false, false ) . " &amp; " . jr_gettext( '_JOMRES_COM_MR_VRCT_TAB_ROOM', '_JOMRES_COM_MR_VRCT_TAB_ROOM', false, false ), null, jr_gettext( "_JOMRES_CUSTOMCODE_JOMRESMAINMENU_RECEPTION_SETTINGS", '_JOMRES_CUSTOMCODE_JOMRESMAINMENU_RECEPTION_SETTINGS', false, false ) );
		}

	function touch_template_language()
		{
		$output = array ();

		$output[ ] = jr_gettext( "_JOMRES_CUSTOMCODE_JOMRESMAINMENU_RECEPTION_SETTINGS", '_JOMRES_CUSTOMCODE_JOMRESMAINMENU_RECEPTION_SETTINGS' );

		foreach ( $output as $o )
			{
			echo $o;
			echo "<br/>";
			}
		}

	// This must be included in every Event/Mini-component
	function getRetVals()
		{
		return $this->cpanelButton;
		}
	}

?>