<?php defined( '_JEXEC' ) or die;

// Variablen
$app = JFactory::getApplication();
$doc = JFactory::getDocument(); 
$tpath = $this->baseurl.'/templates/'.$this->template;

// generator
$this->setGenerator(null);

//css
$doc->addStyleSheet($tpath.'/bootstrap/css/bootstrap.css');

?><!doctype html>
<html lang="<?php echo $this->language; ?>">
<head>
  <jdoc:include type="head" />
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-sm-6 col-sm-offset-3">
			  <jdoc:include type="message" />
				  <div id="frame" class="outline">
					<h1 class="text-center">
					  <?php echo htmlspecialchars($app->getCfg('sitename')); ?>
					</h1>
					<?php if ($app->getCfg('offline_image')) : ?>
					  <img src="<?php echo $app->getCfg('offline_image'); ?>" alt="<?php echo $app->getCfg('sitename'); ?>" class="img-responsive" style="margin: 0 auto; max-width: 40%;"/>
					<?php endif; ?>
					
					<?php if ($app->getCfg('display_offline_message', 1) == 1 && str_replace(' ', '', $app->getCfg('offline_message')) != ''): ?>
					<h4 class="text-center"><?php echo $app->getCfg('offline_message'); ?></h5>
					<?php elseif ($app->getCfg('display_offline_message', 1) == 2 && str_replace(' ', '', JText::_('JOFFLINE_MESSAGE')) != ''): ?>
					<h4 class="text-center"><?php echo JText::_('JOFFLINE_MESSAGE'); ?></h4>
					<?php endif; ?>
					<form action="<?php echo JRoute::_('index.php', true); ?>" method="post" name="login" id="form-login" class="text-center">
					  <fieldset class="input">
						<p id="form-login-username">
						  <label for="username"><?php echo JText::_('JGLOBAL_USERNAME'); ?></label><br/>
						  <input type="text" name="username" id="username" class="inputbox" alt="<?php echo JText::_('JGLOBAL_USERNAME'); ?>" size="18" />
						</p>
						<p id="form-login-password">
						  <label for="passwd"><?php echo JText::_('JGLOBAL_PASSWORD'); ?></label><br/>
						  <input type="password" name="password" id="password" class="inputbox" alt="<?php echo JText::_('JGLOBAL_PASSWORD'); ?>" size="18" />
						</p>
						<!--<p id="form-login-remember">
						  <label for="remember"><?php echo JText::_('JGLOBAL_REMEMBER_ME'); ?></label>
						  <input type="checkbox" name="remember" value="yes" alt="<?php echo JText::_('JGLOBAL_REMEMBER_ME'); ?>" id="remember" />
						</p>-->
						<p id="form-login-submit">
						  <input type="submit" name="Submit" class="btn btn-info" value="<?php echo JText::_('JLOGIN'); ?>" />
						</p>
					  </fieldset>
					  <input type="hidden" name="option" value="com_users" />
					  <input type="hidden" name="task" value="user.login" />
					  <input type="hidden" name="return" value="<?php echo base64_encode(JURI::base()); ?>" />
					  <?php echo JHTML::_( 'form.token' ); ?>
					</form>
				  </div>
			  </div>
		</div>
	</div>
</body>
</html>
