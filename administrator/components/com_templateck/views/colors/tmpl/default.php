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
JHtml::_('behavior.tooltip', '.hasTooltip');
$app = JFactory::getApplication();
$document = JFactory::getDocument();
$document->addStyleSheet('components/com_templateck/assets/css/templateck.css');
$function  	= $app->input->getCmd('function', 'jSelectItem');
$returnName  	= $app->input->getCmd('returnName', 'moorColorPalette');

// $this->palettes = json_decode(file_get_contents('http://www.colourlovers.com/api/palettes'));
// var_dump(($this->items));

// $curl = curl_init();
  // curl_setopt($curl,CURLOPT_URL,"http://www.colourlovers.com/api/colors/new");
  // curl_setopt($curl,CURLOPT_HEADER,false);
  // curl_setopt($curl,CURLOPT_RETURNTRANSFER,true);
  // $xml = curl_exec($curl);
  // curl_close($curl);

  // header("Content-Type: text/xml; charset=utf-8");
  // $xml = new SimpleXMLElement(file_get_contents('http://www.colourlovers.com/api/palettes'));
  // var_dump($xml['totalResults']);
  // var_dump($xml);
  // foreach ($xml->palette as $palette) {
	// var_dump($palette);
  // }
?>

<form action="<?php echo JRoute::_('index.php?option=com_templateck&view=colors&tmpl=component&format=html&returnName=' . $returnName . '&function=' . $function . '&' . JSession::getFormToken() . '=1'); ?>" method="post" name="adminForm" id="adminForm" class="form-inline" >
	<fieldset class="filter clearfix">
		<div class="btn-toolbar">
			<div class="btn-group pull-left">
				<label for="filter_search">
					<?php echo JText::_('JSEARCH_FILTER_LABEL'); ?>
				</label>
			</div>
			<div class="btn-group pull-left">
				<input type="text" name="filter_search" id="filter_search" placeholder="<?php echo JText::_('CK_SEARCH_WORD'); ?>" value="<?php echo $this->escape($this->state->get('filter.search')); ?>" size="30" title="" style="width:160px;"/>
			</div>
			<div class="btn-group pull-left">
				<input type="text" name="filter_searchcolor" id="filter_searchcolor" placeholder="<?php echo JText::_('CK_SEARCH_COLOR'); ?>" value="<?php echo $this->escape($this->state->get('filter.searchcolor')); ?>" size="30" title="" style="width:160px;"/>
			</div>
			<div class="btn-group pull-left">
				<button type="submit" class="btn hasTooltip" data-placement="bottom" title="<?php echo JText::_('JSEARCH_FILTER_SUBMIT'); ?>">
					<span class="icon-search"></span><?php echo '&#160;' . JText::_('JSEARCH_FILTER_SUBMIT'); ?></button>
				<button type="button" class="btn hasTooltip" data-placement="bottom" title="<?php echo JText::_('JSEARCH_FILTER_CLEAR'); ?>" onclick="document.getElementById('filter_search').value='';document.getElementById('filter_searchcolor').value='';this.form.submit();">
					<span class="icon-remove"></span><?php echo '&#160;' . JText::_('JSEARCH_FILTER_CLEAR'); ?></button>
			</div>
			<div class="clearfix"></div>
		</div>
		<hr class="hr-condensed" style="clear:both;" />
		<div class="filters pull-left">
			<div class="btn-group pull-right">
				<select id="directionTable" class="input-medium" onchange="this.form.submit()" name="directionTable">
					<?php
					foreach ($this->directionTableFields as $field) {
						$selected = ($this->state->get('list.directionTable') == $field) ? ' selected="selected"' : '';
						echo '<option'.$selected.' value="' . $field . '">'.$field.'</option>';
					}
					?>
				</select>
			</div>
			<div class="btn-group pull-right">
				<select id="sortTable" class="input-medium" onchange="this.form.submit();" name="sortTable">
				<?php
				foreach ($this->sortTableFields as $field) {
					$selected = ($this->state->get('filter.sortTable') == $field) ? ' selected="selected"' : '';
					echo '<option'.$selected.' value="' . $field . '">'.$field.'</option>';
				}
				?>
				</select>
			</div>
			<?php //echo $this->customFilters; ?>
		</div>
	</fieldset>
	<div id="editcell">
		<table class="table table-striped">
			<thead>
				<tr>
					<th width="5">
						<?php echo JText::_('CK_NUM'); ?>
					</th>
					<th>
						<?php echo JText::_('CK_COLORPALETTE'); ?>
					</th>
					<th>
						
					</th>
					<th width="1%" nowrap="nowrap">
						<?php echo JText::_('ID'); ?>
					</th>
				</tr>

			</thead>
			<tfoot>
				<tr>
					<td colspan="2">
						<?php echo $this->pagination->getListFooter(); ?>
					</td>
					<td colspan="2">
						<?php echo $this->pagination->getResultsCounter(); ?>
					</td>
					<td colspan="1">
						<?php echo $this->pagination->getLimitBox(); ?>
					</td>
				</tr>
			</tfoot>
			<?php
			$k = 0;
			for ($i = 0, $n = count($this->items); $i < $n; $i++) {
				$palette = &$this->items[$i];
				$colors = json_encode($palette->colors);
				$colors = json_decode($colors);
				$colors = isset($colors->hex) ? $colors->hex : Array();
				// var_dump($colors);
				// $checked = JHTML::_('grid.id', $i, $font->id);
				?>
				<tr class="<?php echo "row$k"; ?>">
					<td>
						<?php echo $i + 1; ?>
					</td>
					<td>
						<img src="<?php echo $palette->badgeUrl; ?>" />
						<br />
						<?php
						foreach ($colors as $color) {
							echo " <span class=\"hasTooltip\" title=\"#" . $color . "\" style=\"display:inline-block;width:16px;height:16px;border: #fff solid 2px;box-shadow: #888 0 0 2px;background-color:#" . $color . ";\">  </span> ";
						}
						?>
					</td>
					<td align="center">
						<a class="btn btn-inverse"  href="javascript:void(0);" onclick="if (window.parent) window.parent.<?php echo $this->escape($function); ?>('<?php echo (implode(",",$colors)); ?>', '<?php echo $returnName ?>');"><?php echo JText::_('CK_SET_PALETTE') ?></a>
						<p></p>
						<a class="btn btn-info" href="<?php echo $palette->url; ?>" target="_blank">See it on colourlovers.com</a>
					</td>
					<td align="center">
						<?php echo $palette->id; ?>
					</td>
				</tr>
				<?php
				$k = 1 - $k;
			}
			?>
		</table>
	</div>

	<input type="hidden" name="option" value="com_templateck" />
	<input type="hidden" name="view" value="colors" />
	<input type="hidden" name="task" value="" />
	<input type="hidden" name="boxchecked" value="0" />
	<?php echo JHtml::_('form.token'); ?>
</form>