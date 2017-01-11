<?php
/**
 * @package     Joomla.Site
 * @subpackage  mod_login
 *
 * @copyright   Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 
 

 */

defined('_JEXEC') or die;

JLoader::register('UsersHelperRoute', JPATH_SITE . '/components/com_users/helpers/route.php');



?>
<form id="signin" action="<?php echo JRoute::_('index.php', true, $params->get('usesecure')); ?>" method="post"  class=" navbar-form " role="form">
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
	<?php if ($params->get('pretext')) : ?>
		<div class="pretext">
			<p><?php echo $params->get('pretext'); ?></p>
		</div>
	<?php endif; ?>
	
		
		
			<div class="form-group">
				<div class="input-group">
					<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
					<input id="modlgn-username" type="text" class="form-control" name="username" tabindex="0" size="18" placeholder="<?php echo JText::_('MOD_LOGIN_VALUE_USERNAME') ?>">                                        
				</div>	
			</div>
		
		
			<div class="form-group">
				<div class="input-group">
					<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
					<input id="modlgn-passwd" type="password" class="form-control" name="password" tabindex="0" size="18" placeholder="<?php echo JText::_('JGLOBAL_PASSWORD') ?>">                                        
				</div>	
			</div>	
		
			

		<script> 
		$(function () { //Funktion zum aufrufen eines Tooltips 
		  $('[data-toggle="tooltip"]').tooltip()
		})		
		</script>	
		
		<?php if (count($twofactormethods) > 1): ?>
		<div class="form-group ">		
			<div class="input-group">
				<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
				<input  id="modlgn-secretkey" type="text" class="form-control" name="secretkey" autocomplete="off" tabindex="0" size="18" placeholder="<?php echo JText::_('JGLOBAL_SECRETKEY') ?>">                                        
				<button  type="button" class="input-group-addon btn btn-secondary" data-toggle="tooltip" data-placement="top" title="<?php echo JText::_('JGLOBAL_SECRETKEY_HELP'); ?>">
					<i class="glyphicon glyphicon-info-sign"></i>
				</button>
			</div>	
			
	
			
		</div>			
		<?php endif; ?>
	
</div>	
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 " style="margin-top:10px;">
			
				<?php if (JPluginHelper::isEnabled('system', 'remember')) : ?>
				<div class="col-lg-8 col-md-8 col-sm-8 col-xs-8 ">
					<div class="checkbox">
							<label for="modlgn-remember"><input id="modlgn-remember" type="checkbox" name="remember" class="inputbox" value="yes"> <?php echo JText::_('MOD_LOGIN_REMEMBER_ME') ?></label>
					</div>
				</div>
				<?php endif; ?>
				
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 ">
					<button type="submit" class="btn btn-primary" tabindex="0" name="Submit"><?php echo JText::_('JLOGIN') ?></button>
				</div>
			
			
			</div>	
		
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 " style="margin-top:10px;">
		<?php
			$usersConfig = JComponentHelper::getParams('com_users'); ?>
			<ul class="list-unstyled">
			<?php if ($usersConfig->get('allowUserRegistration')) : ?>
				<li>
					<a href="<?php echo JRoute::_('index.php?option=com_users&view=registration&Itemid=' . UsersHelperRoute::getRegistrationRoute()); ?>">
					<?php echo JText::_('MOD_LOGIN_REGISTER'); ?></a>
				</li>
			<?php endif; ?>
				<li>
					<a href="<?php echo JRoute::_('index.php?option=com_users&view=remind&Itemid=' . UsersHelperRoute::getRemindRoute()); ?>">
					<?php echo JText::_('MOD_LOGIN_FORGOT_YOUR_USERNAME'); ?></a>
				</li>
				<li>
					<a href="<?php echo JRoute::_('index.php?option=com_users&view=reset&Itemid=' . UsersHelperRoute::getResetRoute()); ?>">
					<?php echo JText::_('MOD_LOGIN_FORGOT_YOUR_PASSWORD'); ?></a>
				</li>
			</ul>
		<input type="hidden" name="option" value="com_users" />
		<input type="hidden" name="task" value="user.login" />
		<input type="hidden" name="return" value="<?php echo $return; ?>" />
		<?php echo JHtml::_('form.token'); ?>
	</div>
	<?php if ($params->get('posttext')) : ?>
		<div class="posttext">
			<p><?php echo $params->get('posttext'); ?></p>
		</div>
	<?php endif; ?>

</form>
