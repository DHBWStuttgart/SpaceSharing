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
defined( '_JOMRES_INITCHECK' ) or die( 'Direct Access to this file is not allowed.' );
// ################################################################

class j02300regprop1 {
	function __construct()
		{
		// Must be in all minicomponents. Minicomponents with templates that can contain editable text should run $this->template_touch() else just return
		$MiniComponents = jomres_singleton_abstract::getInstance( 'mcHandler' );
		if ($MiniComponents->template_touch)
			{
			$this->template_touchable=false; 
			return;
			}
		
		$siteConfig = jomres_singleton_abstract::getInstance( 'jomres_config_site_singleton' );
		$jrConfig   = $siteConfig->get();
		
		$thisJRUser = jomres_singleton_abstract::getInstance( 'jr_user' );
		
		if ( $jrConfig['selfRegistrationAllowed'] == "0" && !$thisJRUser->superPropertyManager )
			return;

		//get selected country
		$selectedCountry = jomresGetParam( $_REQUEST, 'new_property_country', "" );
		if ( $selectedCountry == "" )
			{
			$selectedCountry = $jrConfig['limit_property_country_country'];
			}
		
		$output = array();
		$propertyRegion = "";

		//setup countries and regions dropdowns
		if ($jrConfig['limit_property_country'] == "0")
			{
			$output['REGIONDROPDOWN'] = setupRegions( $selectedCountry, $propertyRegion );
			$output['COUNTRIESDROPDOWN'] = createCountriesDropdown( $selectedCountry,"new_property_country", false );
			}
		else
			{
			$output['REGIONDROPDOWN'] = setupRegions( $jrConfig['limit_property_country_country'], $propertyRegion );
			$output['COUNTRIESDROPDOWN'] = getSimpleCountry( $jrConfig['limit_property_country_country'] );
			}

		$output['PAGETITLE']										=jr_gettext('_JOMRES_COM_MR_NEWPROPERTY','_JOMRES_COM_MR_NEWPROPERTY',false);
		$output['HCOUNTRY']											=jr_gettext('_JOMRES_COM_MR_VRCT_PROPERTY_HEADER_COUNTRY','_JOMRES_COM_MR_VRCT_PROPERTY_HEADER_COUNTRY',false);
		$output['HREGION']											=jr_gettext('_JOMRES_COM_MR_VRCT_PROPERTY_HEADER_REGION','_JOMRES_COM_MR_VRCT_PROPERTY_HEADER_REGION',false);
		$output['HNAME']											=jr_gettext('_JRPORTAL_PROPERTIES_PROPERTYNAME','_JRPORTAL_PROPERTIES_PROPERTYNAME',false);
		$output['HEMAIL']											=jr_gettext('_JOMRES_COM_MR_VRCT_PROPERTY_HEADER_EMAIL','_JOMRES_COM_MR_VRCT_PROPERTY_HEADER_EMAIL',false);
		$output['_JOMRES_FIELDS_HIGHLIGHTED_ARE_REQUIRED']			=jr_gettext('_JOMRES_FIELDS_HIGHLIGHTED_ARE_REQUIRED','_JOMRES_FIELDS_HIGHLIGHTED_ARE_REQUIRED',false);
		
		$output['JOMRES_PROPERTY_REGISTRATION_INSTRUCTIONS_TITLE']			=jr_gettext('JOMRES_PROPERTY_REGISTRATION_INSTRUCTIONS_TITLE','JOMRES_PROPERTY_REGISTRATION_INSTRUCTIONS_TITLE',false);
		$output['JOMRES_PROPERTY_REGISTRATION_INSTRUCTIONS_NOTE1']			=jr_gettext('JOMRES_PROPERTY_REGISTRATION_INSTRUCTIONS_NOTE1','JOMRES_PROPERTY_REGISTRATION_INSTRUCTIONS_NOTE1',false);
		$output['JOMRES_PROPERTY_REGISTRATION_INSTRUCTIONS_NOTE2']			=jr_gettext('JOMRES_PROPERTY_REGISTRATION_INSTRUCTIONS_NOTE2','JOMRES_PROPERTY_REGISTRATION_INSTRUCTIONS_NOTE2',false);
		
		$output['HPROPERTY_TYPE']=jr_gettext('_JOMRES_FRONT_PTYPE','_JOMRES_FRONT_PTYPE',false);
		$output['PROPERTY_TYPE_DROPDOWN']=getPropertyTypeDropdown('' , true);
		
		$pageoutput[]=$output;
		$tmpl = new patTemplate();
		$tmpl->setRoot( JOMRES_TEMPLATEPATH_BACKEND );
		$tmpl->readTemplatesFromInput( 'register_property1.html');
		$tmpl->addRows( 'pageoutput',$pageoutput);
		$tmpl->displayParsedTemplate();
		}

	// This must be included in every Event/Mini-component
	function getRetVals()
		{
		return null;
		}
	}
