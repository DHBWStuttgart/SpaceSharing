<?php
/**
 * @name		Template Creator CK 3
 * @package		com_templateck
 * @copyright	Copyright (C) 2013. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 * @author		Cedric Keiflin - http://www.template-creator.com - http://www.joomlack.fr
 */
// No direct access to this file
defined('_JEXEC') or die();
?>
<div id="popup_favoriteck" class="ckpopup">
    <div class="ckpopupheader">
        <div class="ckpopuptitle"><?php echo JText::_('CK_FAVORITES') ?> - [ <span class="objid"></span> ]</div>
        <div style="float:right;">
            <div class="ckclose" onclick="closeFavoritePopup(true)"><?php echo JText::_('CK_CLOSE'); ?></div>
			<div class="ckclose ckaddtofavorite" id="ckaddtofavorite" onclick="savefavorite()"><?php echo JText::_('CK_ADD_TO_FAVORITES'); ?></div>
			<div class="ckclose ckstick" id="ckstick" onclick="$ck('#popup_favoriteck').toggleClass('stick');"><?php echo JText::_('CK_STICK'); ?></div>
        </div>
        <div class="clr"></div>
    </div>
    <div>
		<div class="layoutinfostitle"><?php echo JText::_('CK_MYFAVORITES'); ?></div>
		<div id="showfavorites" class="clearfix">
		<?php
		$path = JPATH_ROOT . '/administrator/components/com_templateck/favorites';
		$files = JFolder::files($path, '.fck3', false, false);
		natsort($files);
		$i = 1;
		// $nbthemes = count($files);
		echo '<div class="clearfix" style="min-height:35px;margin: 0 5px;">';
		foreach ($files as $file) {
			$favorite = JFile::stripExt($file);
			$content = JFile::read($path . '/' . $file);
			$content = json_decode($content);

			echo '<div class="favoritethumb" data-merge="0" onmouseout="restoreBeforeFavorite()" onmouseover="previewFavoriteDirect(this)" onclick="loadFavorite(\'' . $favorite . '\', \'favorites\', 1, this)"><img src="' . Juri::base(true) . '/components/com_templateck/images/favorite.png" style="height:32px;width:32px;margin:0;padding:0;" />'
			. '<div class="themeindice">' . $i . '</div>'
			. '<div class="favoritethumbstyles"><style>' . $content->style . '</style></div>'
			. '<div class="themeindice">' . $i . '</div>'
			. '</div>';
			$i++;
		}
		echo '</div>';
		?>
		</div>
		<div class="layoutinfostitle"><?php echo JText::_('CK_SUGGESTIONS'); ?></div>
		<div id="showsuggestions" class="clearfix">
			<div class="menulink current" tab="tab_menus"><?php echo JText::_('CK_MENU'); ?></div>
			<div class="menulink" tab="tab_modules"><?php echo JText::_('CK_MODULE'); ?></div>
			<div class="menulink" tab="tab_shadows"><?php echo JText::_('CK_SHADOW'); ?></div>
			<div class="clr"></div>
			<div id="elementscontentfavorites">
				<div class="clearfix" style="margin: 0 5px;">
					<div class="tab menustyles current" id="tab_menus">
					<?php
					$index = 'menu';
					$path = JPATH_ROOT . '/administrator/components/com_templateck/suggestions';
					$files = JFolder::files($path, '.fck3', false, false);
					natsort($files);
					$i = 1;
					$merge = 0;
					?>
					
					<?php foreach ($files as $file) {
						$favorite = JFile::stripExt($file);
						$content = JFile::read($path . '/' . $file);
						$content = json_decode($content);
						if ($index == 'menu' && !stristr($file, "menu")) :
							$index = 'module';
						?>
					</div>
					<div class="tab menustyles" id="tab_modules">
						<?php
						endif;
						if ($index == 'module' && !stristr($file, "module")) :
							$index = 'shadow';
							$merge = '1';
						?>
					</div>
					<div class="tab menustyles" id="tab_shadows">
						<?php
						endif;
						if (stristr($file, "shadow")) {
							$content->style = '/*shadow start*/' . $content->style . '/*shadow end*/';
						}
						echo '<div class="favoritethumb" data-merge="' . $merge . '" onmouseout="restoreBeforeFavorite()" onmouseover="previewFavoriteDirect(this)" onclick="loadFavorite(\'' . $favorite . '\', \'suggestions\', 1, this)"><img src="' . Juri::base(true) . '/components/com_templateck/suggestions/' . $favorite . '.png" style="margin:0;padding:0;" />'
						. '<div class="themeindice">' . $i . '</div>'
						. '<div class="favoritethumbstyles"><style>' . $content->style . '</style></div>'
						. '</div>';
						$i++;
					} ?>
					</div>
				</div>
			</div>
        </div>
	</div>
</div>
<script language="javascript" type="text/javascript">
				$ck('#elementscontentfavorites div.tab:not(.current)').hide();
				$ck('.menulink', $ck('#popup_favoriteck')).each(function(i, tab) {
					$ck(tab).click(function() {
						$ck('#elementscontentfavorites div.tab').hide();
						$ck('.menulink', $ck('#popup_favoriteck')).removeClass('current');
						if ($ck('#' + $ck(tab).attr('tab')).length)
							$ck('#' + $ck(tab).attr('tab')).show();
						this.addClass('current');
					});
				});
</script>
