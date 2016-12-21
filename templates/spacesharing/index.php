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
			<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 test3">
						<jdoc:include type="modules" name="loginarea" style="xhtml" />	
					</div>
			</div>
				<?php if (
				$this->countModules('loginarea') || 
				$this->countModules('mainmenu'))
				: ?>
			<div class="row">
				    <div class="main_menu col-lg-12 col-md-12 col-sm-12 col-xs-12 test4">
						<div class="row">							
							<div class="main_menu col-lg-12 col-md-12 col-sm-12 col-xs-12 test4">	
								
								<!--Navigation-->
								<div id="navigation">
									<div class="container-fluid">

										<div class="navbar navbar-default " role="navigation">
											<div class="navbar-header">
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

											<div class="navbar-collapse collapse navbar-right bottom-align-text" id="targetedestination">
											<?php if ($this->countModules('mainmenu')) : ?>
												<nav class="navigation" role="navigation">
												
													<jdoc:include type="modules" name="mainmenu" style="none" />
													
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
				</div>
				<?php endif; ?>
			
		
		
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
		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12 test1">
			<jdoc:include type="modules" name="roomsearch" style="xhtml" />
			<jdoc:include type="modules" name="roomsearch_2" style="xhtml" />
		</div>
		<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12 test2">
			<jdoc:include type="modules" name="map" style="xhtml" />
			<jdoc:include type="modules" name="map_2" style="xhtml" />
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
			<div class="row">
				<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12 test3">
				<h7> Raumübersicht </h7> 
					<jdoc:include type="modules" name="ContentTop1" style="xhtml" />
					
					<jdoc:include type="message" />
					<jdoc:include type="component" />
					
					<jdoc:include type="modules" name="ContentBottom1" style="xhtml" />
				</div>
				<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 test4">
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
			<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 test4">
					<jdoc:include type="modules" name="footer_left" style="xhtml" />
					 Copyright &copy; SpaceSharing 2016
				</div>
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 test3">
					<jdoc:include type="modules" name="footer_right" style="xhtml" />
				</div>
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
