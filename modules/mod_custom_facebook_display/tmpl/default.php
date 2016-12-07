<?php

/**

* @package   FaceBook Slider

* @license   http://www.gnu.org/licenses/lgpl.html GNU/LGPL, see LICENSE.php

* 

**/

defined('_JEXEC') or die('Restricted access'); 

$doc = JFactory::getDocument();



$width=$params->get('width',350);

$height=$params->get('height',400);

//$position=$params->get('position','left');

$click=$params->get('click');

$button=$params->get('button');

$buttont=$params->get('buttont');

$cont_background=$params->get('cont_background');

$border_color=$params->get('border_color');

$show_jquery=$params->get('show_jquery');

$moduleclass_sfx = $params->get('moduleclass_sfx');

$profileid = $params->get('profileid',34572893685);

$stream = $params->get('stream');

$connections = $params->get('connections');

$show_faces = $params->get('show_faces',true);

$color_scheme = $params->get('color_scheme','dark');

$apikey = $params->get('apikey', 118979788166438);

$baseurl = $params->get('facebook_url','null');



?>

   <div id="fb-root"></div>

      <script>

        (function(d, s, id) {

          var js, fjs = d.getElementsByTagName(s)[0];

          if (d.getElementById(id)) return;

          js = d.createElement(s); js.id = id;

          js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.0";

          fjs.parentNode.insertBefore(js, fjs);

        }(document, 'script', 'facebook-jssdk'));

            </script> 



<div class="joomla_sharethis<?php echo $moduleclass_sfx?>">

	 <div class="fb-page"

                 data-href="<?php echo $baseurl;?>" 

                 data-tabs="timeline" 

                 data-show-facepile="<?php echo $show_faces;?>"

                 data-small-header="true" 

                 data-adapt-container-width="true" 

                 data-show-posts="<?php echo $stream;?>"

                 data-hide-cover="<?php echo $params->get('hide');?>"

                 data-width="<?php echo $width;?>"

                 appId="<?php echo $apikey;?>"  

                 data-height="<?php echo $height;?>">

                



              

            </div>

</div>

	  <div style="font-size: 9px; color: #808080; font-weight: normal; font-family: tahoma,verdana,arial,sans-serif; line-height: 1.28; text-align: right; direction: ltr;"><a href="https://www.nationalcprassociation.com/" target="_blank" style="color: #808080;" title="nationalcprassociation.com">CPR certification online</a></div>