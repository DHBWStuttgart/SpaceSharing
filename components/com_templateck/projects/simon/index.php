<?php

/**
 * @copyright	Simon
 * Simon
 * Template made with the joomla component Template Creator CK - http://www.joomlack.fr
 * simon
 * @license Simon
 * @version v1
 * */

// No direct access to this file
defined('_JEXEC') or die('Restricted access');
?>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>" dir="<?php echo $this->direction; ?>" >
<head>
	<jdoc:include type="head" />
			<?php if ($this->direction == 'rtl') { ?>
		<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/css/default_rtl.css" type="text/css" />
		<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/css/template_rtl.css" type="text/css" />
	<?php } else { ?>
		<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/css/default.css" type="text/css" />
		<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/css/template.css" type="text/css" />
	<?php } ?>
	<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/css/fonts/fonts.css" type="text/css" />
	<?php if ($this->params->get('useresponsive','1')) { ?>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/css/mobile.css" type="text/css" />
	<?php } ?>
    
<?php
$mainclass = "";
if (!$this->countModules('position-7')) { $mainclass .= " noleft";}
$mainclass .= " noright";
$mainclass = trim($mainclass); ?>

<!--[if lte IE 7]>
<style type="text/css">
#bannermenu > div.inner ul.menu > li {
	display: inline !important;
	zoom: 1;
}
</style>
<![endif]-->

</head>
<body>
<div id="wrapper">
	<div class="container-fluid inner ui-sortable">
	<div id="banner">
		<div class="inner clearfix">
			<div id="bannerlogo" class="logobloc">
				<div class="inner clearfix">
					<?php if ($this->params->get('bannerlogo_logolink')) { ?>
					<a href="<?php echo htmlspecialchars($this->params->get('bannerlogo_logolink')); ?>">
					<?php } ?>
						<img src="<?php echo $this->params->get('bannerlogo_logoimgsrc', $this->baseurl . '/templates/' . $this->template . '/images/logo_fake.png') ?>" width="<?php echo $this->params->get('bannerlogo_logowidth', '216px') ?>" height="<?php echo $this->params->get('bannerlogo_logoheight', '53px') ?>" alt="<?php echo htmlspecialchars($this->params->get('bannerlogo_logotitle',''));?>" />
					<?php if ($this->params->get('bannerlogo_logolink')) { ?>
					</a>
					<?php } ?>
					<?php if ($this->params->get('bannerlogo_logodescription')) { ?>
					<div class="bannerlogodesc">
						<div class="inner clearfix"><?php echo htmlspecialchars($this->params->get('bannerlogo_logodescription'));?></div>
					</div>
					<?php } ?>
				</div>
			</div>
			<?php if ($this->countModules('position-0')) : ?>
			<div id="bannermodule" class="logobloc">
				<div class="inner clearfix">
					<jdoc:include type="modules" name="position-0" style="xhtml" />
				</div>
			</div>
			<?php endif; ?>
			<?php if ($this->countModules('position-2')) : ?>
			<div id="bannermenu" class="logobloc">
				<div class="inner clearfix">
					<jdoc:include type="modules" name="position-2" style="xhtml" />
				</div>
			</div>
			<?php endif; ?>
		<div class="clr"></div>
		</div>
	</div>
	<div id="maincontent" class="maincontent <?php echo $mainclass ?>">
		<div class="inner clearfix">
		<?php if ($this->countModules('position-7')) : ?>
			<div id="left" class="column column1">
				<div class="inner clearfix">
					<jdoc:include type="modules" name="position-7" style="xhtml" />
				</div>
			</div>
			<?php endif; ?>
			<div id="main" class="column main row-fluid">
				<div class="inner clearfix">
											<jdoc:include type="message" />
											<jdoc:include type="component" />

				</div>
			</div>
			<div class="clr"></div>
		</div>
	</div>

    </div>
</div>
<jdoc:include type="modules" name="debug" />
</body>
</html>