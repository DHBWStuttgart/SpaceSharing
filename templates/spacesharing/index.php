<?php
defined( '_JEXEC' ) or die( 'Restricted access' );

// Get Parameter
$logo      		= $this->params->get('logo');



?>

<!doctype html>
<html lang="de">

<?php include 'includes/head.php'; ?> 

<body id="page-top" class="index ">

<div class="header">
		<div id="header" class="container">
		
		<div class="main_menu col-lg-12 col-md-12 col-sm-12 col-xs-12 test2 ">
		
		
			<nav class="navbar navbar-default">
			  <div class="container-fluid">
			  
			  
			   
				<div class="navbar-header">
				  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				  </button>
				  <a href="<?php echo $this->params->get('logo_link') ?>">
														<img src="<?php echo $this->baseurl; ?>/<?php echo htmlspecialchars($logo); ?>"  alt="<?php echo htmlspecialchars($this->params->get('sitetitle')); ?>" style="width:200px; height:120px;" />
													</a>
				</div>
			   
				<div class="collapse navbar-collapse navbar-right bottom-align-text" id="bs-example-navbar-collapse-1">				
				
				  <ul class="nav navbar-nav">
					<li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li>
					<li><a href="#">Link</a></li>
					
				</ul>
				<form id="signin" class="navbar-form navbar-right" role="form">
					<div class="input-group">
						<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
						<input id="email" type="email" class="form-control" name="email" value="" placeholder="Email Address">                                        
					</div>

					<div class="input-group">
						<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
						<input id="password" type="password" class="form-control" name="password" value="" placeholder="Password">                                        
					</div>

					<button type="submit" class="btn btn-primary">Login</button>
				</form>
				
			  </div>
			</nav>
		
		

				<?php if (
				$this->countModules('loginarea') || 
				$this->countModules('mainmenu'))
				: ?>
			
				    <div class="main_menu col-lg-12 col-md-12 col-sm-12 col-xs-12  ">
						<div class="row">							
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
														
														
														<!--
														<form id="signin" class="navbar-form navbar-right" role="form">
															<div class="input-group">
																<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
																<input id="email" type="email" class="form-control" name="email" value="" placeholder="Email Address">                                        
															</div>

															<div class="input-group">
																<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
																<input id="password" type="password" class="form-control" name="password" value="" placeholder="Password">                                        
															</div>

															<button type="submit" class="btn btn-primary">Login</button>
														</form>
													
													-->
													
													</nav>
												<?php endif; ?>
												</div>
												
											</div>

										</div>
									
								</div>
								<!--Navigation-->

							</div>
						
						</div>	
				    </div>
				
				<?php endif; ?>
			
		</div> 
		
		</div> 
</div>  <!-- header -->


<div id="wrapper" class="container">
	
	<?php if (
	$this->countModules('roomsearch') || 
	$this->countModules('roomsearch_2') || 
	$this->countModules('map') || 
	$this->countModules('map_2')) 
	:?>
	<div class="row">
		<div id="column-wrap"> 
		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12 main-left-col ">
		<h1>Suche</h1>
			<jdoc:include type="modules" name="roomsearch" style="xhtml" />
			<jdoc:include type="modules" name="roomsearch_2" style="xhtml" />
		</div>
		<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12 main-right-col ">
		<h1>Karte</h1>
			<jdoc:include type="modules" name="map" style="xhtml" />
			<jdoc:include type="modules" name="map_2" style="xhtml" />
		</div>
		</div>
		
		
	</div>
	<?php endif; ?>
	


	<div id="globalContent">

		<?php /* if (
		$this->countModules('ContentTop1') || 
		$this->countModules('ContentBottom1') || 
		$this->countModules('ContentTop2') || 
		$this->countModules('ContentBottom2'))
		: */ ?>
			<div class="row" style="padding-top:20px">
				<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12 ">
				
				<h1>Raumübersicht</h1> 
				
					<jdoc:include type="modules" name="ContentTop1" style="xhtml" />
					
					<jdoc:include type="message" />
					<jdoc:include type="component" />
					
					<jdoc:include type="modules" name="ContentBottom1" style="xhtml" />
				
				</div>
				<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 ">
				<h1>Test</h1> 
					<jdoc:include type="modules" name="ContentTop2" style="xhtml" />
					<jdoc:include type="modules" name="ContentBottom2" style="xhtml" />
				</div>
			</div>
		<?php //endif; ?>

	</div> <!--globalContent-->

</div> <!--wrapper-->




<div id="footer">
	<div class="container">

		<?php if (
		$this->countModules('Footer1') || 
		$this->countModules('Footer2') || 
		$this->countModules('Footer3') || 
		$this->countModules('Footer4'))
		: ?>
			<div class="row">
				<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 test1">
					<jdoc:include type="modules" name="Footer1" style="xhtml" />
				</div>
				<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 test2">
					<jdoc:include type="modules" name="Footer2" style="xhtml" />
				</div>
				<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 test3">
					<jdoc:include type="modules" name="Footer3" style="xhtml" />
				</div>
				<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 test4">
					<jdoc:include type="modules" name="Footer4" style="xhtml" />
				</div>
			</div>
		<?php endif; ?>

		<?php if (
		$this->countModules('footer_left') || 
		$this->countModules('footer_right') || 
		$this->countModules('debug')): ?>
			<div class="row footer">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
					<jdoc:include type="modules" name="footer_left" style="xhtml" />
					<div class="row footer-top">
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 footer one">
							<h3>Mehr über Spacesharing</h3>
							<p> Nemo enim ipsam voluptatem quia
							voluptas sit aspernatur aut odit aut fugit, 
							sed quia consequuntur magni dolores eos qui 
							ratione voluptatem sequi nesciunt.</p>
						</div>
						
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 footer two">
							<h3>Folge uns</h3>
							
						<a id="6906" href="http://www.xn--geflltmirbutton-2kb.de">www.gefälltmirbutton.de/</a><script src="http://www.gefälltmirbutton.de/likebutton.php?u=https%3A%2F%2Fwww.facebook.com%2Freallabor.spacesharing%2F%3Ffref%3Dts&h=30&w=100&l=button&s=border%3Anone%3B+overflow%3Ahidden%3B+width%3A100px%3B+height%3A30px%3B&i=6906&sf=true&st=false&sh=false&typ=17" type="text/javascript"></script>
						
						</div>
						
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 footer three">
							<h3>Kontakt Information</h3>
							
							<address><span class="glyphicon glyphicon-home"></span>
							<strong>Reallabor Spacesharing</strong><br>
							  Am Weißenhof 1<br>
							  70191 Stuttgart<br>
							 </address>

							<address>
							  <strong>Reallabor Spacesharing</strong><br>
							  <abbr title="Telefonnummer"><span class="glyphicon glyphicon-phone"></span>Tel.:</abbr> (0711) 1234567890 <br>
							  <span class="glyphicon glyphicon-envelope"></span><a href="mailto:#"> info@spacesharing.de</a>
							</address>
							
							<!--
							<ul>
								<li><span class="glyphicon glyphicon-home"</span><span>Reallabor Spacesharing, Stuttgart</span></li>
								<li><span class="glyphicon glyphicon-phone"></span>1234567890  </li>
								<li><span class="glyphicon glyphicon-envelope"</span><a href="mailto:info@example.com">contact@example.com</a> </li>
							</ul> 
							-->
							
						</div>
					
					</div>
					
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
						<div class="copy-left">
							<p class="footer-gd">© 2016 Simple Footer Widget. All Rights Reserved | Design by <a href="https://w3layouts.com/" target="_blank">W3layouts</a></p>
						</div>
						<div class="copy-right">
							<ul>
								<li><a href="#">Company Information</a></li>
								<li><a href="#">Privacy Policy</a></li>
								<li><a href="#">Terms & Conditions</a></li>
							</ul>
						</div>
						<div class="clear"></div>	
					</div>
					
					 
									 
					 
					 
					 
				</div>
				<!-- <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 test3">
					<jdoc:include type="modules" name="footer_right" style="xhtml" />
				</div> -->
			</div>
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 test2">
					<jdoc:include type="modules" name="debug" style="xhtml" />
				</div>
			</div>
		<?php endif; ?>
	</div>
</div> <!-- footer-->

<script src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>
