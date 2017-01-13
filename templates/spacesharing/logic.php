<?php defined( '_JEXEC' ) or die; 

// variables
$app = JFactory::getApplication();
$doc = JFactory::getDocument(); 
$menu = $app->getMenu();
$active = $app->getMenu()->getActive();
$params = $app->getParams();
$pageclass = $params->get('pageclass_sfx');
$tpath = $this->baseurl.'/templates/'.$this->template;
$templateparams	= $app->getTemplate(true)->params;
$user             = JFactory::getUser();

// generator tag
$this->setGenerator(null);

// js
JHtml::_('jquery.framework');
$doc->addScript($tpath.'/bootstrap/js/bootstrap.min.js');

//css
$doc->addStyleSheet($tpath.'/font-awesome/css/font-awesome.css');
$doc->addStyleSheet($tpath.'/bootstrap/css/bootstrap.css');
$doc->addStyleSheet($tpath.'/css/custom_style.css');


// Get Parameter
$logo     = $this->params->get('logo');
$ftext    = $this->params->get('ftext');
$Name     = $this->params->get('Name');
$SuH      = $this->params->get('SuH');
$PLZ      = $this->params->get('PLZ');
$Ort      = $this->params->get('Ort');
$Telefon  = $this->params->get('Telefon');
$Mail     = $this->params->get('Mail');
$breites_layout = $this->params->get('breites_layout');

?>