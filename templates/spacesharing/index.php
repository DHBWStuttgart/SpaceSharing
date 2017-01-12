<?php
defined( '_JEXEC' ) or die( 'Restricted access' );
include_once JPATH_THEMES.'/'.$this->template.'/logic.php';
?>

<!doctype html>
<html lang="de">
<?php include 'includes/head.php'; ?> 

<script type="text/javascript">
   (function($){   
    $(document).ready(function(){
     $('.dropdown-toggle').dropdown();
      // dropdown
      $('.parent').addClass('dropdown');
      $('.parent > a').addClass('dropdown-toggle');
      $('.parent > a').attr('data-toggle', 'dropdown');
     $('.parent > a').attr('data-target', '#');
      $('.parent > a').append('<b class="caret"></b>');
      $('.parent > ul').addClass('dropdown-menu');
     $('.nav-child .parent').removeClass('dropdown');
     $('.nav-child .parent .caret').css('display', 'none');
      $('.nav-child .parent').addClass('dropdown-submenu');
    });
  })(jQuery);
</script>

<body>

<!--Header-->
<div class="header container-fluid ">
		<div id="header" class="">
				<?php if (
				$this->countModules('loginarea') || 
				$this->countModules('mainmenu'))
				: ?>	
					<!--Hauptmenü im Header-->
				    <div class="main_menu col-lg-12 col-md-12 col-sm-12 col-xs-12  ">
						<div class="">							
							<div class="main_menu">	
								
								<!--Navigation-->
								<div id="navigation">	
										<div class="navbar navbar-default  " role="navigation">
											<div class="navbar-header ">
												<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#targetedestination">
													<span class="sr-only">Toggle navigation</span>
													<span class="icon-bar"></span>
													<span class="icon-bar"></span>
													<span class="icon-bar"></span>
												</button>
												
												<!--Logo mit Verlinkung auf Landing-Page-->
												<div id="brand">
													<a href="<?php echo $this->params->get('logo_link') ?>">
														<img src="<?php echo $this->baseurl; ?>/<?php echo htmlspecialchars($logo); ?>"  alt="<?php echo htmlspecialchars($this->params->get('sitetitle')); ?>" style="width:200px; height:120px;" />
													</a>
												</div>
											</div>
											
												<div class="navbar-collapse collapse navbar-right bottom-align-text  " id="targetedestination">											
												<jdoc:include type="modules" name="loginarea" style="xhtml" />	
												<?php if ($this->countModules('mainmenu')) : ?>
													<nav class="navigation" role="navigation">
														
															<jdoc:include type="modules" name="mainmenu" style="none" />
														
														<!--Benutzermenü - Dropdown-->
														<ul class="nav navbar-nav navbar-right " >
															<li class="dropdown " >
																<a href="#" class="dropdown-toggle" data-toggle="dropdown">
																	<span class="glyphicon glyphicon-user"></span> 
																	<?php
																	if (!$user->guest){
																		echo '<strong>' . $user->get('name') . '</strong>';
																	}else{
																		echo '<strong>' . JText::_('JLOGIN') . '</strong>';
																	}
																		 
																	?>
																	<!--Login-->
																	<span class="glyphicon glyphicon-chevron-down"></span>
																</a>
																<ul class="dropdown-menu navbarlogin" style="padding-bottom:20px;">
																	<li>
																		<div class="navbar-login">
																			<?php if (!$user->guest){																			?>
																			<jdoc:include type="modules" name="loginmenu" style="xhtml" />
																			<?php } ?>
																			<jdoc:include type="modules" name="Footer1" style="xhtml" />															
																		</div>
																	</li>																				
																</ul>
															</li>
														</ul>
													</nav>
												<?php endif; ?>
												</div>												
											</div>
										</div>									
								</div>
							</div>						
						</div>	 
				
				<?php endif; ?>
		</div> 
</div>


<div id="wrapper" class="container-fluid" >
	
	<?php if (
	$this->countModules('roomsearch') || 
	$this->countModules('roomsearch_2') || 
	$this->countModules('map') || 
	$this->countModules('map_2')) 
	:?>
	<div class="">
		<div id="column-wrap"> 
		<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 main-left-col ">
		<!--Suchfunktion auf der Landing-Page-->
		<h1>Suche</h1>
			<jdoc:include type="modules" name="roomsearch" style="xhtml" />
			<jdoc:include type="modules" name="roomsearch_2" style="xhtml" />
		</div>
		<!--Karte auf der Landing-Page-->
		<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12 main-right-col ">
		<h1>Karte</h1>
			<jdoc:include type="modules" name="map" style="xhtml" />
			<jdoc:include type="modules" name="map_2" style="xhtml" />
		</div>
		</div>		
	</div>
	<?php endif; ?>
	
	<div id="globalContent">

			<div class="row" style="padding-top:20px">
				<?php  
				if ($this->countModules('ContentTop2') || 	$this->countModules('ContentBottom2')):  ?>		
				<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 ">
				<h1>Suche</h1> 
					<jdoc:include type="modules" name="ContentTop2" style="xhtml" />
					<jdoc:include type="modules" name="ContentBottom2" style="xhtml" />
				</div>
				<?php endif; ?>
				
				
				<?php  
				if ($this->countModules('ContentTop2') || 	$this->countModules('ContentBottom2')):  
				echo '<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12 ">';
				else:
					echo '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">';
				endif; 
				?>
				
				<?php echo '<h1>' . 'Raumübersicht'  . "</h1>"; ?>				
					<jdoc:include type="modules" name="ContentTop1" style="xhtml" />					
					<jdoc:include type="message" />
					<jdoc:include type="component" />					
					<jdoc:include type="modules" name="ContentBottom1" style="xhtml" />				
				</div>
				
			</div>

	</div> <!--globalContent-->

</div> <!--wrapper-->

<div id="footer1" class="">
	
		<?php if (
		$this->countModules('Footer1') || 
		$this->countModules('Footer2') || 
		$this->countModules('Footer3') || 
		$this->countModules('Footer4'))
		: ?>
			<div class="container-fluid ">
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 test1">
					<jdoc:include type="modules" name="Footer1" style="xhtml" />
				</div>
				<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 test3">
					<jdoc:include type="modules" name="Footer3" style="xhtml" />
				</div>
				<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 test4">
					<jdoc:include type="modules" name="Footer4" style="xhtml" />
				</div>
			</div>
		<?php endif; ?>

		<!--Footer1-->
			<div class="container-fluid footer">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
					<div class=" footer-top">
						<!--Mehr über Spacesharing im Footer-->
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 footer one">
							<h3>Mehr über Spacesharing</h3>
							<p> <?php if ($this->params->get( 'ftext' )) : echo ($ftext); endif; ?></p>
						</div>
						
						<!--Folge uns im Footer mit einem Facebook-Like Button-->
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 footer two">
							<h3>Folge uns</h3>
							<iframe src="https://www.facebook.com/plugins/like.php?href=https%3A%2F%2Fwww.facebook.com%2Freallabor.spacesharing%2F&width=450&layout=standard&action=like&size=large&show_faces=false&share=false&height=35&colorscheme=dark&appId" width="450" height="35" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true"></iframe>
						</div>
						
						<!--Kontaktinformationen im Footer, Daten sind dynamisch anpassbar über Joomla-->
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 footer three">
							<h3>Kontakt Information</h3>
							<address><span class="glyphicon glyphicon-home"></span>
							<strong><?php if ($this->params->get( 'Name' )) : echo ($Name); endif; ?></strong><br>
							<?php if ($this->params->get( 'SuH' )) : echo ($SuH); endif; ?></br>
							<?php if ($this->params->get( 'PLZ' )) : echo ($PLZ); endif; ?> <?php if ($this->params->get( 'Ort' )) : echo ($Ort); endif; ?> </br>
							 </address>
							 <?php if ($this->params->get( 'Telefon' )|| $this->params->get( 'Mail' )) : ?><address>
							  <strong><?php if ($this->params->get( 'Name' )) : echo ($Name); endif; ?></strong><br>
							  <?php if ($this->params->get( 'Telefon' )) : ?><abbr title="Telefonnummer"><span class="glyphicon glyphicon-phone"></span>Tel.:</abbr> <?php echo ($Telefon); endif; ?> <br>
							  <?php if ($this->params->get( 'Mail' )) : ?> <span class="glyphicon glyphicon-envelope"></span><a href="mailto:#">  <?php echo ($Mail); endif; ?></a>
							  </address>
							<?php endif; ?>		
						</div>					
					</div>					 
				</div>
			</div>		
	
</div>

<!--Footer2-->
<div id="footer2" class="">
			<!--Copyright Informationen im Footer2-->
			<div class="container footer">								
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12  copyright">
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 copyright-left">
						
							<div class="footer-modul"><jdoc:include type="modules" name="copyright" style="xhtml" /></div>
						</div>
						<!--Footermenü mit Impressum und AGBs-->
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 copyright-right">
						<jdoc:include type="modules" name="footermenu" style="xhtml" />							
						</div>					
					</div>					
			</div>
			
			<?php if ($this->countModules('debug')): ?>
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 test2">
					<jdoc:include type="modules" name="debug" style="xhtml" />
				</div>
			</div>
			<?php endif; ?>
</div>

<script type="text/javascript">
if (typeof MooTools != 'undefined') {
    var mHide = Element.prototype.hide;
    Element.implement({
        hide: function() {
                if (this.hasClass("dropdown")) {
                    return this;
                }
            if (this.hasClass("hasTooltip")) {
                    return this;
                }
                mHide.apply(this, arguments);
            }
    });
}

</script>
</body>
</html>
