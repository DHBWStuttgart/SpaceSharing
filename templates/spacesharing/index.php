<?php

defined( '_JEXEC' ) or die( 'Restricted access' );
$logo           = $this->params->get('logo');
?>

<!doctype html>
<html lang="de">

<head>
        <?php
      $this->setGenerator('');
        ?>
        <jdoc:include type="head" />

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SpaceSharing</title>

    <!-- Bootstrap Core CSS -->
    <link type="text/css" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/css/bootstrap.css" rel="stylesheet">

    <!-- Theme CSS -->
    <link type="text/css" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/css/custom_style.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>


<!-- obere Zeile -->
<body id="page-top" class="index <?php if($pageclass): echo $pageclass; endif;?>">
	<div class="container">
		<div class="row">
			<div class="col-md-4" style="background-color:green">
				<div class="navbar-header page-scroll col-md-3">
					<a class="navbar-logo" href="#">SpaceSharing</a>
				</div>
			</div>           
            <div class="col-md-4" style="background-color:blue">
            </div>			
			<div class="col-md-4" style="background-color:red">
				<jdoc:include type="modules" name="login" style="none" />
            </div>
        </div>
		<div class="logoheader">
						<h1 id="logo">
						<?php if ($logo) : ?>
							<img src="<?php echo $this->baseurl; ?>/<?php echo htmlspecialchars($logo); ?>"  alt="<?php echo htmlspecialchars($this->params->get('sitetitle')); ?>" />
						<?php endif;?>
						<?php if (!$logo AND $this->params->get('sitetitle')) : ?>
							<?php echo htmlspecialchars($this->params->get('sitetitle')); ?>
						<?php elseif (!$logo AND $config->get('sitename')) : ?>
							<?php echo htmlspecialchars($config->get('sitename')); ?>
						<?php endif; ?>
						<span class="header1">
						<?php echo htmlspecialchars($this->params->get('sitedescription')); ?>
						</span></h1>
					</div><!-- end logoheader -->
	</div>
		
		
    <!-- Navigation -->
    <nav id="mainNav" class="navbar navbar-default navbar-custom">
        <div class="container" class="row">
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<jdoc:include type="modules" name="1-7" style="none" />	
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <!-- Header 
    <header>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">                    
                    <div class="intro-text">
                        <span class="name">Start SpaceSharing</span>                        
                    </div>
                </div>
            </div>
        </div>
    </header> -->

    <!-- Main Menu-->
    <section id="main">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 text-center" style="background-color:blue">
                    <jdoc:include type="modules" name="menu" style="none"/>
					<jdoc:include type="modules" name="facebook" style="none"/>
					
                </div>
				<div class="col-lg-9 text-center" style="background-color:red">
                    <h2><jdoc:include type="modules" name="position-3" style="none"/></h2>
						<jdoc:include type="component"/>
					<p><jdoc:include type="modules" name="content" style="none"/></p>
                </div>
            </div>
            
        </div>
    </section>

   

    <!-- Footer -->
    <footer class="text-center">
        <div class="footer-above">
            <div class="container">
                <div class="row">
                    <div class="footer-col col-md-4">
                        <h3>Eins</h3>
                        <p>Text  Text Text Text Text Text Text Text</p>
                    </div>
                    <div class="footer-col col-md-4">
                        <h3>Zwei</h3>
                        <p>Text  Text Text Text Text Text Text Text</p>
                    </div>
                    <div class="footer-col col-md-4">
                        <h3>Drei</h3>
                        <p>Text  Text Text Text Text Text Text Text</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-below">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        Copyright &copy; SpaceSharing 2016
                    </div>
                </div>
            </div>
        </div>
    </footer>

</body>

</html>
