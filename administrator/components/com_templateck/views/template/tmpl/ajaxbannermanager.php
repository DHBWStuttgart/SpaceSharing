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
?>
<div class="ckpopupoverlay"></div>
<div class="ckpopupheader">
    <div class="ckpopuplogo"></div>
    <div class="ckpopuptitle"><?php echo JText::_('CK_BANNERMANAGER_EDIT'); ?></div>
    <div style="float:right;">
        <div class="ckclose ckcancel" onclick="$ck('#popup_editionck').empty().hide();"><?php echo JText::_('CK_CANCEL'); ?></div>
        <div class="ckclose cksave" onclick="saveBannerPopup();"><?php echo JText::_('CK_VALIDATE'); ?></div>
    </div>
    <div class="clr"></div>
</div>
<table>
	<tr>
		<td style="vertical-align:top;">
			<div class="layoutinfos">
				<div class="layoutinfostitle"><?php echo JText::_('CK_BANNERMANAGER_INFOS'); ?></div>
				<div class="layoutinfosdesc"><?php echo JText::_('CK_BANNERMANAGER_DESC'); ?></div>
			</div>
		</td>
		<td style="vertical-align:top;">
			<div id="elementscontainer" style="margin-top: 8px;">
				<div id="bannermanagertitle"><?php echo JText::_('CK_BANNERMANAGER'); ?></div>
				<div id="bannermanager">
					<div id="bannermanager_logo" class="column bannermanager" target="bannerlogo">
						<div class="inner">
							<div class="bannermanagerbloctitle">logo</div>
						</div>
					</div>
					<div id="bannermanager_module" class="column bannermanager candisable" target="banner">
						<div class="inner">
							<div class="bannermanagerbloctitle">module</div>
						</div>
					</div>
					<div id="bannermanager_menu" class="column bannermanager candisable" target="bannermenu">
						<div class="inner">
							<div class="bannermanagerbloctitle">menu</div>
						</div>
					</div>
					<div class="clr"></div>
				</div>
				<div class="clr"></div>
				<div style="float:left;margin: 5px 5px 0 7px;width: 200px;">
					<div class="bannermodulewidth_barleft"></div>
					<input type="text" class="blocwidthselect" id="blocwidthselectlogo" value="" onchange="calculatebannerblocswidth(this);"/>
					<div class="bannermodulewidth_barright"></div>
					<div class="clr"></div>
					<div class="bannerwidthtitle"><?php echo JText::_('CK_BANNERLOGO_WIDTH'); ?></div>
				</div>
				<div style="float:left;margin: 5px 5px 0 7px;width: 200px;">
					<div class="bannermodulewidth_barleft"></div>
					<input type="text" class="blocwidthselect" id="blocwidthselectmodule" value="" onchange="calculatebannerblocswidth(this);"/>
					<div class="bannermodulewidth_barright"></div>
					<div class="clr"></div>
					<div class="bannerwidthtitle"><?php echo JText::_('CK_BANNERMODULE_WIDTH'); ?></div>
				</div>
				<div style="float:left;margin: 5px 5px 0 7px;width: 200px;">
					<div class="bannermodulewidth_barleft"></div>
					<input type="text" class="blocwidthselect" id="blocwidthselectmenu" value="" onchange="calculatebannerblocswidth(this);"/>
					<div class="bannermodulewidth_barright"></div>
					<div class="clr"></div>
					<div class="bannerwidthtitle"><?php echo JText::_('CK_BANNERMENU_WIDTH'); ?></div>
				</div>
				<div class="clr"></div>
			</div>
		</td>
	</tr>
</table>
<script language="javascript" type="text/javascript">
			$ck('.candisable').click(function() {
				bloc = $ck(this);
				if (!$ck(this).hasClass('disabled')) {
					$ck(this).addClass('disabled');
				} else {
					$ck(this).removeClass('disabled');
				}
				// if (bloc.attr('id') == 'bannermanager_left' || bloc.attr('id') == 'bannermanager_right')
					toggleWidthState();
			});

			function toggleWidthState() {
				if ($ck('#bannermanager_module').hasClass('disabled')) {
					$ck('#blocwidthselectmodule').attr('value', '0');
					$ck('#blocwidthselectmodule').attr('disabled', true);
				} else {
					$ck('#blocwidthselectmodule').attr('disabled', false);
//					$ck('#blocwidthselectlogo').attr('value', '25');
				}
				if ($ck('#bannermanager_menu').hasClass('disabled')) {
					$ck('#blocwidthselectmenu').attr('value', '0');
					$ck('#blocwidthselectmenu').attr('disabled', true);
				} else {
					$ck('#blocwidthselectmenu').attr('disabled', false);
//					$ck('#blocwidthselectmenu').attr('value', '25');
				}

				calculatebannerblocswidth(0);
			}

			function initmainmodele() {
				var focus = $ck('.cssfocus');
				$ck('.bannermanager').each(function(i, module) {
					module = $ck(module);
					var target = module.attr('target');
					if (focus.attr('isdisabledmodule' + target) == 'true') {
						module.addClass('disabled');
					}
				});
				var logowidth = $ck('#bannermanager_logo').hasClass('disabled') ? '0' : $ck('.bannerlogo > .tab_blocstyles', focus).attr('blocwidth');
				var modulewidth = $ck('#bannermanager_module').hasClass('disabled') ? '0' : $ck('.banner > .tab_blocstyles', focus).attr('blocwidth');
				var menuwidth = $ck('#bannermanager_menu').hasClass('disabled') ? '0' : $ck('.bannermenu > .tab_blocstyles', focus).attr('blocwidth');
				$ck('#blocwidthselectlogo').attr('value', logowidth);
				$ck('#blocwidthselectmodule').attr('value', modulewidth);
				$ck('#blocwidthselectmenu').attr('value', menuwidth);
				// toggleWidthState();

			}

			function calculatebannerblocswidth(field) {
				if ($ck('#blocwidthselectmodule').attr('value') == '0' && $ck('#blocwidthselectmenu').attr('value') == '0' ) {
					var logowidth = 100;
					var menuwidth = 0;
					var modulewidth = 0;
				} else if ( (field && $ck(field)[0] == $ck('#blocwidthselectmenu')[0]) || $ck('#blocwidthselectmenu').attr('value') == '0') {
					var menuwidth = $ck('#blocwidthselectmenu').attr('value');
					var logowidth = $ck('#bannermanager_module').hasClass('disabled') ? 100 - parseFloat(menuwidth) : $ck('#blocwidthselectlogo').attr('value');
					var modulewidth = $ck('#bannermanager_module').hasClass('disabled') ? 0 : 100 - parseFloat(logowidth) - parseFloat(menuwidth);
				} else if ( (field && $ck(field)[0] == $ck('#blocwidthselectmodule')[0]) || $ck('#blocwidthselectmodule').attr('value') == '0') {
					var modulewidth = $ck('#blocwidthselectmodule').attr('value');
					var logowidth = $ck('#bannermanager_menu').hasClass('disabled') ? 100 - parseFloat(modulewidth) : $ck('#blocwidthselectlogo').attr('value');
					var menuwidth = $ck('#bannermanager_menu').hasClass('disabled') ? 0 : 100 - parseFloat(logowidth) - parseFloat(modulewidth);
				} else {
					var logowidth = ($ck('#bannermanager_menu').hasClass('disabled') &&  $ck('#bannermanager_module').hasClass('disabled')) ? 100 : $ck('#blocwidthselectlogo').attr('value');
					var menuwidth = $ck('#bannermanager_menu').hasClass('disabled') ? 0 : ($ck('#bannermanager_module').hasClass('disabled') ? 100 - parseFloat(logowidth) : (100 - parseFloat(logowidth)) / 2);
					var modulewidth = $ck('#bannermanager_module').hasClass('disabled') ? 0 : ($ck('#bannermanager_menu').hasClass('disabled') ? 100 - parseFloat(logowidth) : (100 - parseFloat(logowidth)) / 2);
				}
				$ck('#blocwidthselectlogo').attr('value', parseFloat(logowidth) + '%');
				$ck('#blocwidthselectmenu').attr('value', parseFloat(menuwidth) + '%');
				$ck('#blocwidthselectmodule').attr('value', parseFloat(modulewidth) + '%');
			}

			initmainmodele();
</script>