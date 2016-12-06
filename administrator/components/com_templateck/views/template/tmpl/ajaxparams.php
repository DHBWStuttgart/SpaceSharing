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
$app = JFactory::getApplication();
$expertmode = $app->input->get('expertmode', false);
$joomlaversion = $app->input->get('joomlaversion', false);
$menustyles = new MenuStyles();
$imagespath = JUri::base(true) . '/components/com_templateck/images/menustyles/';
?>
<div class="ckpopupoverlay"></div>
<div class="ckpopupheader">
    <div class="ckpopuplogo"></div>
    <div class="ckpopuptitle"><?php echo JText::_('CK_PARAMS_EDIT'); ?></div>
    <div style="float:right;">
        <div class="ckclose ckcancel" onclick="$ck('#popup_editionck').empty().hide();"><?php echo JText::_('CK_CANCEL'); ?></div>
        <div class="ckclose cksave" onclick="saveEditionPopup('body');"><?php echo JText::_('CK_VALIDATE'); ?></div>
    </div>
    <div class="clr"></div>
</div>
<div id="elementscontainer">
    <div class="menulink current" tab="tab_blocstyles"><?php echo JText::_('CK_PAGE'); ?></div>
    <div class="menulink" tab="tab_titlestyles"><?php echo JText::_('CK_TITLES'); ?></div>
    <div class="menulink" tab="tab_buttonstyles"><?php echo JText::_('CK_BUTTONS_AND_FORMS'); ?></div>
    <div class="menulink" tab="tab_systemimagesstyles"><?php echo JText::_('CK_SYSTEMIMAGES'); ?></div>
	<div class="menulink" tab="tab_tablestyles"><?php echo JText::_('CK_TABLE'); ?></div>
	<div class="menulink" tab="tab_customcode" onmousedown="loadTab_customcode();"><?php echo JText::_('CK_CUSTOMCODE'); ?></div>
	<div class="menulink" tab="tab_customcss" onmousedown="loadTab_customcss();"><?php echo JText::_('CK_CUSTOMCSS'); ?></div>
    <div class="clr"></div>
    <div id="elementscontent">
        <div class="tab menustyles current ckproperty" id="tab_blocstyles">
            <table>
                <tr>
					<td style="vertical-align:top;">
						<div class="layoutinfos">
							<div class="layoutinfostitle"><?php echo JText::_('CK_PAGEPARAMS_INFOS'); ?></div>
							<div class="layoutinfosdesc"><?php echo JText::_('CK_PAGEPARAMS_DESC'); ?></div>
						</div>
					</td>
					<td style="vertical-align:top;">
						<div class=""><?php echo $menustyles->createBlocStyles('bloc', 'body', $expert = false, $showlinks = true, $joomlaversion); ?></div>
					</td>
				</tr>
            </table>
            <div class="clr"></div>
        </div>
        <div class="tab menustyles ckproperty" id="tab_titlestyles">

            <div class="menulink2 current" tab="tab_titleh1styles"><?php echo JText::_('CK_H1'); ?></div>
            <div class="menulink2" tab="tab_titleh2styles"><?php echo JText::_('CK_H2'); ?></div>
            <div class="menulink2" tab="tab_titleh3styles"><?php echo JText::_('CK_H3'); ?></div>
            <div class="menulink2" tab="tab_titleh4styles"><?php echo JText::_('CK_H4'); ?></div>
            <div class="menulink2" tab="tab_titleh5styles"><?php echo JText::_('CK_H5'); ?></div>
            <div class="menulink2" tab="tab_titleh6styles"><?php echo JText::_('CK_H6'); ?></div>
            <div class="clr"></div>
            <table>
                <tr>
					<td style="vertical-align:top;">
						<div class="layoutinfos">
							<div class="layoutinfostitle"><?php echo JText::_('CK_PAGETITLES_INFOS'); ?></div>
							<div class="layoutinfosdesc"><?php echo JText::_('CK_PAGETITLES_DESC'); ?></div>
						</div>
					</td>
					<td style="vertical-align:top;">
						<div class="tab2 menustyles current" id="tab_titleh1styles">
							<?php echo $menustyles->createNormalStyles('h1title'); ?>
						</div>
						<div class="tab2 menustyles" id="tab_titleh2styles">
							<?php echo $menustyles->createNormalStyles('h2title'); ?>
						</div>
						<div class="tab2 menustyles" id="tab_titleh3styles">
							<?php echo $menustyles->createNormalStyles('h3title'); ?>
						</div>
						<div class="tab2 menustyles" id="tab_titleh4styles">
							<?php echo $menustyles->createNormalStyles('h4title'); ?>
						</div>
						<div class="tab2 menustyles" id="tab_titleh5styles">
							<?php echo $menustyles->createNormalStyles('h5title'); ?>
						</div>
						<div class="tab2 menustyles" id="tab_titleh6styles">
							<?php echo $menustyles->createNormalStyles('h6title'); ?>
						</div>
					</td>
				</tr>
            </table>
            <div class="clr"></div>
        </div>
        <div class="tab menustyles ckproperty" id="tab_buttonstyles">
            <div class="menulink2 current" tab="tab_readmorebuttonstyles"><?php echo JText::_('CK_READMORE'); ?></div>
            <div class="menulink2" tab="tab_pagenavbuttonstyles"><?php echo JText::_('CK_PAGENAV'); ?></div>
            <div class="menulink2" tab="tab_formstyles"><?php echo JText::_('CK_FORM_FIELDS'); ?></div>
            <div class="clr"></div>
            <table>
                <tr>
					<td style="vertical-align:top;">
						<div class="layoutinfos">
							<div class="layoutinfostitle"><?php echo JText::_('CK_PAGEBUTTONS_INFOS'); ?></div>
							<div class="layoutinfosdesc"><?php echo JText::_('CK_PAGEBUTTONS_DESC'); ?></div>
						</div>
					</td>
					<td style="vertical-align:top;">
						<div class="tab2 menustyles current" id="tab_readmorebuttonstyles">
							<div class="menulink3" tab="tab_readmorebuttonnormalstyles"><?php echo JText::_('CK_READMORE'); ?><div class="menustyleslinkdesc"><?php echo JText::_('CK_NORMALSTATE'); ?></div></div>
							<div class="menulink3" tab="tab_readmorebuttonhoverstyles"><?php echo JText::_('CK_READMORE'); ?><div class="menustyleslinkdesc"><?php echo JText::_('CK_HOVERSTATE'); ?></div></div>
							<div class="clr"></div>
							<div class="tab3 menustyles current" id="tab_readmorebuttonnormalstyles">
								<div class=""><?php echo $menustyles->createNormalStyles('readmorebutton', false); ?></div>
							</div>
							<div class="tab3 menustyles" id="tab_readmorebuttonhoverstyles">
								<div class=""><?php echo $menustyles->createNormalStyles('readmorebuttonhover', false); ?></div>
							</div>
						</div>
						<div class="tab2 menustyles" id="tab_pagenavbuttonstyles">
							<div class="menulink3 current" tab="tab_pagenavbuttonnormalstyles"><?php echo JText::_('CK_PAGENAV'); ?><div class="menustyleslinkdesc"><?php echo JText::_('CK_NORMALSTATE'); ?></div></div>
							<div class="menulink3" tab="tab_pagenavbuttonhoverstyles"><?php echo JText::_('CK_PAGENAV'); ?><div class="menustyleslinkdesc"><?php echo JText::_('CK_HOVERSTATE'); ?></div></div>
							<div class="clr"></div>
							<div class="tab3 menustyles current" id="tab_pagenavbuttonnormalstyles">
								<div class=""><?php echo $menustyles->createNormalStyles('pagenavbutton', false); ?></div>
							</div>
							<div class="tab3 menustyles" id="tab_pagenavbuttonhoverstyles">
								<div class=""><?php echo $menustyles->createNormalStyles('pagenavbuttonhover', false); ?></div>
							</div>
						</div>
						<div class="tab2 menustyles" id="tab_formstyles">
							<div class="menulink3" tab="tab_buttonbuttonnormalstyles"><?php echo JText::_('CK_BUTTON'); ?><div class="menustyleslinkdesc"><?php echo JText::_('CK_NORMALSTATE'); ?></div></div>
							<div class="menulink3" tab="tab_buttonbuttonhoverstyles"><?php echo JText::_('CK_BUTTON'); ?><div class="menustyleslinkdesc"><?php echo JText::_('CK_HOVERSTATE'); ?></div></div>
							<div class="menulink3" tab="tab_inputfieldbuttonnormalstyles"><?php echo JText::_('CK_INPUTFIELD'); ?><div class="menustyleslinkdesc"><?php echo JText::_('CK_NORMALSTATE'); ?></div></div>
							<div class="menulink3" tab="tab_inputfieldbuttonactivestyles"><?php echo JText::_('CK_INPUTFIELD'); ?><div class="menustyleslinkdesc"><?php echo JText::_('CK_FOCUSSTATE'); ?></div></div>
							<div class="clr"></div>
							<div class="tab3 menustyles current" id="tab_buttonbuttonnormalstyles">
								<div class=""><?php echo $menustyles->createNormalStyles('buttonbutton', false); ?></div>
							</div>
							<div class="tab3 menustyles" id="tab_buttonbuttonhoverstyles">
								<div class=""><?php echo $menustyles->createNormalStyles('buttonbuttonhover', false); ?></div>
							</div>
							<div class="tab3 menustyles" id="tab_inputfieldbuttonnormalstyles">
								<div class=""><?php echo $menustyles->createNormalStyles('inputfieldbutton', false); ?></div>
							</div>
							<div class="tab3 menustyles" id="tab_inputfieldbuttonactivestyles">
								<div class=""><?php echo $menustyles->createNormalStyles('inputfieldbuttonactive', false); ?></div>
							</div>
						</div>
					</td>
				</tr>
            </table>
            <div class="clr"></div>
        </div>
        <div class="tab menustyles ckproperty" id="tab_systemimagesstyles">
            <table>
                <tr>
					<td style="vertical-align:top;">
						<div class="layoutinfos">
							<div class="layoutinfostitle"><?php echo JText::_('CK_SYSTEMIMAGES_INFOS'); ?></div>
							<div class="layoutinfosdesc"><?php echo JText::_('CK_SYSTEMIMAGES_DESC'); ?></div>
						</div>
					</td>
					<td style="vertical-align:top;">
						<div style="text-align:left;height: 25px;clear:both;">
							<input style="width:200px;" class="inputbox" type="text" value="" name="emailsystemimageurl" id="emailsystemimageurl" size="10" /><a class="modal ckbuttonstyle" href="<?php echo JUri::base(true) ?>/index.php?option=com_media&view=images&tmpl=component&e_name=emailsystemimageurl" rel="{handler: 'iframe', size: {x: 700, y: 600}}" ><?php echo JText::_('CK_SELECT'); ?></a><?php echo JText::_('CK_EMAIL_IMAGE'); ?>
						</div>
						<div style="text-align:left;height: 25px;clear:both;">
							<input style="width:200px;" class="inputbox" type="text" value="" name="printsystemimageurl" id="printsystemimageurl" size="10" /><a class="modal ckbuttonstyle" href="<?php echo JUri::base(true) ?>/index.php?option=com_media&view=images&tmpl=component&e_name=printsystemimageurl" rel="{handler: 'iframe', size: {x: 700, y: 600}}" ><?php echo JText::_('CK_SELECT'); ?></a><?php echo JText::_('CK_PRINT_IMAGE'); ?>
						</div>
						<div style="text-align:left;height: 25px;clear:both;">
							<input style="width:200px;" class="inputbox" type="text" value="" name="ratingblanksystemimageurl" id="ratingblanksystemimageurl" size="10" /><a class="modal ckbuttonstyle" href="<?php echo JUri::base(true) ?>/index.php?option=com_media&view=images&tmpl=component&e_name=ratingblanksystemimageurl" rel="{handler: 'iframe', size: {x: 700, y: 600}}" ><?php echo JText::_('CK_SELECT'); ?></a><?php echo JText::_('CK_RATINGBLANK_IMAGE'); ?>
						</div>
						<div style="text-align:left;height: 25px;clear:both;">
							<input style="width:200px;" class="inputbox" type="text" value="" name="ratingfilledsystemimageurl" id="ratingfilledsystemimageurl" size="10" /><a class="modal ckbuttonstyle" href="<?php echo JUri::base(true) ?>/index.php?option=com_media&view=images&tmpl=component&e_name=ratingfilledsystemimageurl" rel="{handler: 'iframe', size: {x: 700, y: 600}}" ><?php echo JText::_('CK_SELECT'); ?></a><?php echo JText::_('CK_RATINGFILLED_IMAGE'); ?>
						</div>
						<div style="text-align:left;height: 25px;clear:both;">
							<input style="width:200px;" class="inputbox" type="text" value="" name="editsystemimageurl" id="editsystemimageurl" size="10" /><a class="modal ckbuttonstyle" href="<?php echo JUri::base(true) ?>/index.php?option=com_media&view=images&tmpl=component&e_name=editsystemimageurl" rel="{handler: 'iframe', size: {x: 700, y: 600}}" ><?php echo JText::_('CK_SELECT'); ?></a><?php echo JText::_('CK_EDIT_IMAGE'); ?>
						</div>
						<div style="text-align:left;height: 25px;clear:both;">
							<input style="width:200px;" class="inputbox" type="text" value="" name="arrowsystemimageurl" id="arrowsystemimageurl" size="10" /><a class="modal ckbuttonstyle" href="<?php echo JUri::base(true) ?>/index.php?option=com_media&view=images&tmpl=component&e_name=arrowsystemimageurl" rel="{handler: 'iframe', size: {x: 700, y: 600}}" ><?php echo JText::_('CK_SELECT'); ?></a><?php echo JText::_('CK_ARROW_IMAGE'); ?>
						</div>
						<div style="text-align:left;height: 25px;clear:both;">
							<input style="width:200px;" class="inputbox" type="text" value="" name="faviconsystemimageurl" id="faviconsystemimageurl" size="10" /><a class="modal ckbuttonstyle" href="<?php echo JUri::base(true) ?>/index.php?option=com_media&view=images&tmpl=component&e_name=faviconsystemimageurl" rel="{handler: 'iframe', size: {x: 700, y: 600}}" ><?php echo JText::_('CK_SELECT'); ?></a><?php echo JText::_('CK_FAVICON_IMAGE'); ?>
						</div>
						<div style="text-align:left;height: 25px;clear:both;">
							<input style="width:200px;" class="inputbox" type="text" value="" name="template_thumbnailsystemimageurl" id="template_thumbnailsystemimageurl" size="10" /><a class="modal ckbuttonstyle" href="<?php echo JUri::base(true) ?>/index.php?option=com_media&view=images&tmpl=component&e_name=template_thumbnailsystemimageurl" rel="{handler: 'iframe', size: {x: 700, y: 600}}" ><?php echo JText::_('CK_SELECT'); ?></a><?php echo JText::_('CK_THUMB_IMAGE'); ?>
						</div>
						<div style="text-align:left;height: 25px;clear:both;">
							<input style="width:200px;" class="inputbox" type="text" value="" name="template_previewsystemimageurl" id="template_previewsystemimageurl" size="10" /><a class="modal ckbuttonstyle" href="<?php echo JUri::base(true) ?>/index.php?option=com_media&view=images&tmpl=component&e_name=template_previewsystemimageurl" rel="{handler: 'iframe', size: {x: 700, y: 600}}" ><?php echo JText::_('CK_SELECT'); ?></a><?php echo JText::_('CK_PREVIEW_IMAGE'); ?>
						</div>
					</td>
				</tr>
            </table>
        </div>
		<div class="tab menustyles ckproperty" id="tab_tablestyles">
            <table>
                <tr>
					<td style="vertical-align:top;">
						<div class="layoutinfos">
							<div class="layoutinfostitle"><?php echo JText::_('CK_TABLE_INFOS'); ?></div>
							<div class="layoutinfosdesc"><?php echo JText::_('CK_TABLE_DESC'); ?></div>
						</div>
					</td>
					<td style="vertical-align:top;">
						<div class="menupaneblock" style="margin-right:20px;">
							<div class="menupanetitle"><?php echo JText::_('CK_TABLE_STYLE'); ?></div>
							<select class="inputbox" style="width:130px;height:22px;" name="tablestyle" id="tablestyle" >
								<option value="none"><?php echo JText::_('CK_TABLE_NONE'); ?></option>
								<option value="standard"><?php echo JText::_('CK_TABLE_SIMPLE'); ?></option>
								<option value="bordered"><?php echo JText::_('CK_TABLE_BORDERED'); ?></option>
							</select>
						</div>
						<div class="menupaneblock">
							<div class="menupanetitle"><?php echo JText::_('CK_TABLE_OPTIONS'); ?></div>
							<select class="inputbox" style="width:130px;height:22px;" name="tableoptions" id="tableoptions" >
								<option value="none"><?php echo JText::_('CK_TABLE_NONE'); ?></option>
								<option value="striped"><?php echo JText::_('CK_TABLE_STRIPED'); ?></option>
								<option value="hover"><?php echo JText::_('CK_TABLE_HOVER'); ?></option>
								<option value="stripedhover"><?php echo JText::_('CK_TABLE_STRIPEDHOVER'); ?></option>
							</select>
						</div>
						<div style="clear:both;">
							<div class="menupanetitle"><?php echo JText::_('CK_TABLEBORDER_STYLE'); ?></div>
							<div><input class="inputbox colorPicker" type="text" value="#dddddd" name="tableborderscolor" id="tableborderscolor" size="7" style="width:52px;float:left;" /><div style="float:left;margin:4px 2px 0 2px;"><img src="<?php echo $imagespath; ?>color.png" width="15" height="15"/></div></div>
							<div>
								<input class="inputbox" style="width:20px;" name="tableborderssize" id="tableborderssize" type="text" value="1"/>
								<div style="text-align:left;display:inline;"><?php echo JText::_('CK_SIZE'); ?></div>
								<select class="inputbox" style="width:78px;height:22px;" name="tablebordersstyle" id="tablebordersstyle" >
									<option value="solid">solid</option>
									<option value="dotted">dotted</option>
									<option value="dashed">dashed</option>
								</select>
							</div>
						</div>
						<div style="clear:both;">
							<div class="menupanetitle"><?php echo JText::_('CK_TABLEBORDERRADIUS'); ?></div>
							<div>
								<input class="inputbox" style="width:20px;" name="tableborderradius" id="tableborderradius" type="text" value="4"/>
								<div style="text-align:left;display:inline;"><?php echo JText::_('CK_SIZE'); ?></div>
							</div>
						</div>
						<div style="clear:both;">
							<div class="menupanetitle"><?php echo JText::_('CK_TABLESTRIPED_STYLE'); ?></div>
							<div>
								<div><input class="inputbox colorPicker" type="text" value="#f9f9f9" name="tablestripedcolor" id="tablestripedcolor" size="7" style="width:52px;float:left;" /><div style="float:left;margin:4px 2px 0 2px;"><img src="<?php echo $imagespath; ?>color.png" width="15" height="15"/></div></div>
							</div>
						</div>
						<div style="clear:both;">
							<div class="menupanetitle"><?php echo JText::_('CK_TABLEHOVER_STYLE'); ?></div>
							<div>
								<div><input class="inputbox colorPicker" type="text" value="#f5f5f5" name="tablehovercolor" id="tablehovercolor" size="7" style="width:52px;float:left;" /><div style="float:left;margin:4px 2px 0 2px;"><img src="<?php echo $imagespath; ?>color.png" width="15" height="15"/></div></div>
							</div>
						</div>
						<br /><br /><br />
						<div style="clear:both;">
							<div class="menupanetitle"><?php echo JText::_('CK_TABLE_EXAMPLES'); ?></div>
							<div class="menupaneblock" style="margin:5px;">
								<div style="color: #3399FF;font-size: 14px;font-weight: bold;text-transform: uppercase;"><?php echo JText::_('CK_TABLE_NONE'); ?></div>
								<img src="<?php echo JUri::base(true) ?>/components/com_templateck/images/table_none.png" width="350" height="110" style="border: 1px solid #3399FF;padding:5px;" />
							</div>
							<div class="menupaneblock" style="margin:5px;">
								<div style="color: #3399FF;font-size: 14px;font-weight: bold;text-transform: uppercase;"><?php echo JText::_('CK_TABLE_SIMPLE'); ?></div>
								<img src="<?php echo JUri::base(true) ?>/components/com_templateck/images/table_simple.png" width="350" height="110" style="border: 1px solid #3399FF;padding:5px;" />
							</div>
							<div class="menupaneblock" style="margin:5px;">
								<div style="color: #3399FF;font-size: 14px;font-weight: bold;text-transform: uppercase;"><?php echo JText::_('CK_TABLE_BORDERED'); ?></div>
								<img src="<?php echo JUri::base(true) ?>/components/com_templateck/images/table_bordered.png" width="350" height="110" style="border: 1px solid #3399FF;padding:5px;" />
							</div>
							<div class="menupaneblock" style="margin:5px;">
								<div style="color: #3399FF;font-size: 14px;font-weight: bold;text-transform: uppercase;"><?php echo JText::_('CK_TABLE_STRIPED'); ?></div>
								<img src="<?php echo JUri::base(true) ?>/components/com_templateck/images/table_striped.png" width="350" height="110" style="border: 1px solid #3399FF;padding:5px;" />
							</div>
						</div>
					</td>
				</tr>
            </table>
        </div>
		<div class="tab menustyles ckproperty" id="tab_customcode" style="position:relative;"></div>
		<div class="tab menustyles ckproperty" id="tab_customcss" style="position:relative;"></div>
    </div>
</div>
<div id="previewarea" class="clearfix" style="margin: 20px 20px 20px 250px;">
	<div class="previewareatitle"><?php echo JText::_('CK_PREVIEWAREA_TITLE'); ?></div>
	<div id="previewareabloc">
		<div class="ckstyle"></div>
		<div class="inner">
			<div>
				<h1>h1. Heading 1</h1>
				<h2>h2. Heading 2</h2>
				<h3>h3. Heading 3</h3>
				<h4>h4. Heading 4</h4>
				<h5>h5. Heading 5</h5>
				<h6>h6. Heading 6</h6>
			</div>
			<br />
			<div>
				<h3>Example body text</h3>
				<p>Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
				<p><a href="javascript:void(0)">This is a link</a></p>
				<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec sed odio dui.</p>
				<p class="readmore">
					<a class="btn" href="javascript:void(0)">
					<span class="icon-chevron-right"></span>
					Readmore : Joomla
					</a>
				</p>
				<p>
				<ul class="pager pagenav">
					<li class="previous">
					<a rel="prev" href="javascript:void(0)">< Prev</a>
					</li>
					<li class="next">
					<a rel="next" href="javascript:void(0)">Next ></a>
					</li>
				</ul>
				</p>
			</div>
			<br/>
			<div>
				<h3>Example table</h3>
				<table class="table">
					  <thead>
						<tr>
						  <th>#</th>
						  <th>First Name</th>
						  <th>Last Name</th>
						  <th>Username</th>
						</tr>
					  </thead>
					  <tbody>
						<tr>
						  <td>1</td>
						  <td>Mark</td>
						  <td>Otto</td>
						  <td>@mdo</td>
						</tr>
						<tr>
						  <td>2</td>
						  <td>Jacob</td>
						  <td>Thornton</td>
						  <td>@fat</td>
						</tr>
						<tr>
						  <td>3</td>
						  <td>Larry</td>
						  <td>the Bird</td>
						  <td>@twitter</td>
						</tr>
					  </tbody>
				</table>
			</div>
			<br />
			<form onsubmit="return false;">
				<fieldset>
					<div>
						<h3>Example forms</h3>
						<div>
							<input type="text">Text input
						</div>
						<br />
						<div>
							<input type="checkbox" value="option1">Option one
						</div>
						<br />
						<div>
							<select>
								<option>something</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
								<option>5</option>
							</select>
						</div>
						<br />
						<div>
							<textarea rows="3"></textarea>
						</div>
						<div>
							<button type="submit" class="btn">Save changes</button>
							<button>Cancel</button>
						</div>
					</div>
				</fieldset>
			</form>
		</div>
	</div>
</div>
<script language="javascript" type="text/javascript">
			$ck('#elementscontent div.tab:not(.current)').hide();
			$ck('.menulink', $ck('#elementscontainer')).each(function(i, tab) {
				$ck(tab).click(function() {
					$ck('#elementscontent div.tab').hide();
					$ck('.menulink', $ck('#elementscontainer')).removeClass('current');
					if ($ck('#' + $ck(tab).attr('tab')).length)
						$ck('#' + $ck(tab).attr('tab')).show();
					this.addClass('current');
				});
			});

			$ck('#elementscontent div.tab2:not(.current)').hide();
			$ck('.menulink2', $ck('#elementscontainer')).each(function(i, tab) {
				$ck(tab).click(function() {
					$ck('#elementscontent div.tab2').hide();
					$ck('.menulink2', $ck('#elementscontainer')).removeClass('current');
					if ($ck('#' + $ck(tab).attr('tab')).length)
						$ck('#' + $ck(tab).attr('tab')).show();
					this.addClass('current');
				});
			});

			$ck('#elementscontent div.tab3:not(.current)').hide();
			$ck('.menulink3', $ck('#elementscontainer')).each(function(i, tab) {
				$ck(tab).click(function() {
					$ck('#elementscontent div.tab3').hide();
					$ck('.menulink3', $ck('#elementscontainer')).removeClass('current');
					if ($ck('#' + $ck(tab).attr('tab')).length)
						$ck('#' + $ck(tab).attr('tab')).show();
					this.addClass('current');
				});
			});

			initColorPickers();
			initModalPopup();
			initTooltips();
			initModalPopup();
			initAccordionStyles();
</script>
<style type="text/css">
	#previewareabloc {background: none !important}
</style>