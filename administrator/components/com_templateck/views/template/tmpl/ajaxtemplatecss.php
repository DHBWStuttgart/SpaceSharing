<?php

/**
 * @name		Template Creator CK 3
 * @package		com_templateck
 * @copyright	Copyright (C) 2013. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 * @author		Cedric Keiflin - http://www.template-creator.com - http://www.joomlack.fr
 */
// No direct access to this file
defined('_JEXEC') or die('Restricted access');
$input = new JInput();
$templatename = $input->get('templatename', '', 'string');
$templateid = $input->get('templateid', '', 'int');
$column1width = $input->get('column1width', '', 'float');
$column2ratio = (100 - $column1width) / 100;
$column2widthnoleft = $input->get('column2width', '', 'float');
$column2width = $column2widthnoleft / $column2ratio;
$joomlaversion = $input->get('joomlaversion');
$blocs = $input->get('blocs', '', 'html');
$blocs = str_replace("|di|", "#", $blocs); // ne pas mettre stripslashes
$blocs = json_decode($blocs);
$loadBootstrap = (isset($blocs[0]->blocloadboostrap) && $blocs[0]->blocloadboostrap == '1') ? true : false;

// define the widths
$mainwidth = 100 - $column1width;
$centerwidth = 100 - $column2width;
$centerwidthnoleft = 100 - $column2widthnoleft;
$path = JPATH_ROOT . '/components/com_templateck/projects/' . $templatename;

// define path to file
$templatecssdest = $path . '/css/template.css';
$templatecss_rtldest = $path . '/css/template_rtl.css';
$templatecss_mobiledest = $path . '/css/mobile.css';
$templatecsstext = '';

// create css standard styles
$templatecsstext .= '/* ---------------------------------------
	Standard styles formatting
	created with Template Creator
        on http://www.template-creator.com
-----------------------------------------*/


html {
  height: 101%;
}

body {
  margin: 0;
  padding: 0;
}

body.contentpane {
  background: #fff;
}

* {
    padding: 0;
    margin: 0;
}

h1, h2, h3, h4, h5, h6, div.contentheading, .componentheading {
  padding: 3px 0;
  margin: 0;
  line-height: 1.2;
  font-weight: bold;
  font-style: normal;
}
h1, .componentheading {
  font-size: 1.75em;
}
h2, div.contentheading {
  font-size: 1.5em;
}
h3 {
  font-size: 1.25em;
}
h4 {
  font-size: 1em;
}

ul, ol {
  padding: .75em 0 .75em 0;
  margin: 0 0 0 35px;
}

ul.menu {
	margin: 0;
	padding: 0;
}

ul.menu li {
    list-style: none;
}

p {
  padding: 5px 0;
}

address {
  margin: .75em 0;
  font-style: normal;
}

a:focus {
    outline: none;
}

img {
  border: none;
}

em {
  font-style: italic;
}
strong {
  font-weight: bold;
}

form, fieldset {
  margin: 0;
  padding: 0;
  border: none;
}
input, button, select {
  vertical-align: middle;
}

.clr {
	clear : both;
}
'.($column1width ? '
.column.column1 {
    width: ' . $column1width . '%;
}
' : '') . '
.column.column2 {
    width: ' . $column2width . '%;
}
'.($column1width ? '
.column.main {
    width: ' . $mainwidth . '%;
}
' : '') . '
.column.center {
    width: ' . $centerwidth . '%;
}
'.($column1width ? '
.noleft .center {
    width: ' . $centerwidthnoleft . '%;
}

.noleft .column2 {
    width: ' . $column2widthnoleft . '%;
}

.noleft .main {
    width: 100%;
}
' : '') . '
.noright .column.center {
    width: 100%;
}

.flexiblemodule, .column, .logobloc {
    float: left;
}


';
if ($joomlaversion == 'j3' && !$loadBootstrap) {
	$templatecsstext .= '/* ---------------------------------------
	specific to images
-----------------------------------------*/

ul.actions {
	margin: 0;
}

ul.actions li a {
	text-decoration: none;
}
';
    if (isset($blocs[0]->printsystemimageurl) && $blocs[0]->printsystemimageurl)
        $templatecsstext .= ".print-icon {
	list-style: none;
	display: inline-block;
	height: 16px;
	line-height: 16px;
	padding-left: 20px;
	background: url(../images/system/printButton.png) left center no-repeat;
}

";

    if (isset($blocs[0]->emailsystemimageurl) && $blocs[0]->emailsystemimageurl)
        $templatecsstext .= ".email-icon {
	list-style: none;
	display: inline-block;
	height: 16px;
	line-height: 16px;
	padding-left: 20px;
	background: url(../images/system/emailButton.png) left center no-repeat;
}

";

    if (isset($blocs[0]->editsystemimageurl) && $blocs[0]->editsystemimageurl)
        $templatecsstext .= ".edit-icon {
	list-style: none;
	display: inline-block;
	height: 16px;
	line-height: 16px;
	padding-left: 20px;
	background: url(../images/system/edit.png) left center no-repeat;
}

";
}


$templatecsstext .= '/* ---------------------------------------
	Custom styling
-----------------------------------------*/

';

$template_rtlcsstext = str_replace("float: left;", "float: right;", $templatecsstext);

$cssstyles = new CssStyles();

// create css for mobile responsive design
$cssmobilestyles = new CssMobileStyles();
$templatemobilecsstext = $cssmobilestyles->create($blocs, $column1width, $column2width);
// create css for each bloc
foreach ($blocs as $bloc) {
	if (stristr($bloc->class, 'flexiblemodules'))
//		$flexiblemodulesCss = $cssstyles->createFlexiblemodulesCss($bloc, $bloc->ckid, 'archive');
		$templatecsstext .= $cssstyles->createFlexiblemodulesCss($bloc, $bloc->ckid, 'archive');
		$template_rtlcsstext .= $cssstyles->createFlexiblemodulesCss($bloc, $bloc->ckid, 'archive');
	if (!isset($bloc->isdisabled) || (isset($bloc->isdisabled) && $bloc->isdisabled != 'true') || (isset($bloc->ishidden) && $bloc->ishidden != 'true')) {
		$templatecsstext .= $cssstyles->create($bloc, $bloc->ckid, 'archive', '');
		$template_rtlcsstext .= $cssstyles->create($bloc, $bloc->ckid, 'archive', '', 'rtl');
	}
}

// write CSS for mobile
$templatecss_mobiletext = '
/* ---------------------------------------
	Responsive design code
-----------------------------------------*/

@media screen and (min-width: 1024px) {

.hidemobile5 {
	display: none !important;
}

' . $templatemobilecsstext->resolution5 . '

}

@media screen and (max-width: 1024px) {

img {
	max-width: 100% !important;
        height: auto !important;
}

.container {
	width: 950px !important;
}

.hidemobile4 {
	display: none !important;
}

' . $templatemobilecsstext->resolution4 . '

}

@media screen and (max-width: 950px) {

.container {
	width: 758px !important;
}

.hidemobile3 {
	display: none !important;
}

' . $templatemobilecsstext->resolution3 . '

}

@media screen and (max-width: 758px) {

.container {
	width: 524px !important;
}

.hidemobile2 {
	display: none !important;
}

' . $templatemobilecsstext->resolution2 . '

}

@media screen and (max-width: 524px) {

.container {
	width: 292px !important;
}

.hidemobile1 {
	display: none !important;
}

' . $templatemobilecsstext->resolution1 . '

}
';

// create the file template.css
if (!JFile::write($templatecssdest, $templatecsstext)) {
	$msg = '<p class="errorck">' . JText::_('CK_ERROR_CREATING_TEMPLATECSS') . '</p>';
} else {
	$msg = '<p class="successck">' . JText::_('CK_SUCCESS_CREATING_TEMPLATECSS') . '</p>';
}
echo $msg;

// create the file template_rtl.css
if (!JFile::write($templatecss_rtldest, $template_rtlcsstext)) {
	$msg = '<p class="errorck">' . JText::_('CK_ERROR_CREATING_TEMPLATERTLCSS') . '</p>';
} else {
	$msg = '<p class="successck">' . JText::_('CK_SUCCESS_CREATING_TEMPLATERTLCSS') . '</p>';
}
echo $msg;

// create the file mobile.css
if (!JFile::write($templatecss_mobiledest, $templatecss_mobiletext)) {
	$msg = '<p class="errorck">' . JText::_('CK_ERROR_CREATING_TEMPLATEMOBILECSS') . '</p>';
} else {
	$msg = '<p class="successck">' . JText::_('CK_SUCCESS_CREATING_TEMPLATEMOBILECSS') . '</p>';
}
echo $msg;