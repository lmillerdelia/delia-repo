<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php print $language->language; ?>" lang="<?php print $language->language; ?>" dir="<?php print $language->dir; ?>">
<head>
  <title><?php print $head_title; ?></title>
  <?php print $head; ?>
  <style type="text/css">

</style>
<link rel="shortcut icon" href="sites/all/themes/themnet/favicon.ico" type="image/x-icon" /> 
<link type="text/css" rel="stylesheet" media="all" href="modules/node/node.css?O" /> 
<link type="text/css" rel="stylesheet" media="all" href="modules/system/defaults.css?O" /> 
<link type="text/css" rel="stylesheet" media="all" href="modules/system/system.css?O" /> 
<link type="text/css" rel="stylesheet" media="all" href="modules/system/system-menus.css?O" /> 
<link type="text/css" rel="stylesheet" media="all" href="sites/all/modules/nice_menus/nice_menus.css?1" />
<link type="text/css" rel="stylesheet" media="all" href="sites/all/modules/nice_menus/nice_menus_default.css?1" />
<link type="text/css" rel="stylesheet" media="all" href="modules/user/user.css?O" /> 
<link type="text/css" rel="stylesheet" media="all" href="sites/all/themes/zen/zen/tabs.css?O" /> 
<link type="text/css" rel="stylesheet" media="all" href="sites/all/themes/zen/zen/messages.css?O" /> 
<link type="text/css" rel="stylesheet" media="all" href="sites/all/themes/zen/zen/block-editing.css?O" /> 
<link type="text/css" rel="stylesheet" media="all" href="sites/all/themes/zen/zen/wireframes.css?O" /> 
<link type="text/css" rel="stylesheet" media="all" href="sites/all/themes/themnet/reset.css" />
<link type="text/css" rel="stylesheet" media="all" href="sites/all/themes/themnet/themnet.css" />
 <link type="text/css" rel="stylesheet" media="all" href="sites/all/themes/themnet/nice_menus_themnet.css" />
<!--[if IE]>
    <link type="text/css" rel="stylesheet" media="all" href="sites/all/themes/zen/zen/ie.css?O" />
<![endif]--> 
  <?php print $scripts; ?>
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
  <script type="text/javascript">
  $(function() {
    var max = 0;
    $("label").each(function(){
        if ($(this).width() > max)
            max = $(this).width();   
    });
    $("label").width(max);
});
</script>
<script type="text/javascript" src="http://ajax.microsoft.com/ajax/jquery.validate/1.7/jquery.validate.min.js"></script>
<style type="text/css">
label.error { color: red; position:absolute; top:110px; left:12px;}
</style>
<script type="text/javascript">
  $(function(){
    $("#askAquestionForm").validate();
  });
  </script>
<!-- include Cycle plugin -->
<script type="text/javascript" src="http://cloud.github.com/downloads/malsup/cycle/jquery.cycle.all.2.74.js"></script>
<!--  initialize the slideshow when the DOM is ready -->
<script type="text/javascript">
$(document).ready(function() {
    $('.slideshow, .slideshow2').cycle({
		fx: 'fade', // choose your transition type, ex: fade, scrollUp, scrollDown, shuffle, etc...
		//speed:    300, 
    	timeout:  5000 
	});
});
</script>
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-3761159-42']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script> 
</head>
<body class="<?php print $body_classes; ?>">
<div id="wrapper">
<!-- begin top -->
<div id="top">
<div id="logo" class="slideshow2"><img src="sites/all/themes/themnet/images/header/headOne_logo.jpg" alt="#" style="border:none;margin:0;padding:0;"/><img src="sites/all/themes/themnet/images/header/headTwo_logo.jpg" alt="#" style="border:none;margin:0;padding:0;"/><img src="sites/all/themes/themnet/images/header/headThree_logo.jpg" alt="#" style="border:none;margin:0;padding:0;" /><img src="sites/all/themes/themnet/images/header/headFour_logo.jpg" alt="#" style="border:none;margin:0;padding:0;"/></div>
<div id="nav">  
<div id="social"><?php print $social; ?></div>
<div id="navcontainer">
	  <?php print theme('links', $primary_links); ?>
      <?php //print theme('nice_menu_primary_links'); ?>
    </div>
</div></div>
<!-- /top -->
<!-- begin middle -->
<div id="middle"><div class="slideshow"><a href="/stick-pack"><img width="1000" height="404"  src="sites/all/themes/themnet/images/header/headOneVideo.jpg" alt="Stick Pack" /></a><a href="/zipbox"><img width="1000" height="404" src="sites/all/themes/themnet/images/header/headTwo.jpg" alt="Zipbox" /></a><a href="/commercialization"><img width="1000" height="404"  src="sites/all/themes/themnet/images/header/headThree.jpg" alt="Packaging Commercialization" /></a><a href="/sanko-fp500-packaging-machine"><img width="1000" height="404"  src="sites/all/themes/themnet/images/header/headFour.jpg" alt="Global Innovation" /></a></div></div>
<!-- /middle -->
<!-- begin bottom -->
<div id="bottom">
<div id="sidebar_left"><div id="sidebar_leftinner"><?php print $sidebar_left; ?> 
</div></div><!-- /sidebar_left /sidebar_leftinner -->  
<div id="featured"><?php print $featured; ?></div> 
<div id="footerTop"><div id="footerTop_inner">
 <?php if ($breadcrumb || $title || $tabs || $help || $messages): ?>
          <div id="content-header">
            <?php if ($title): ?>
              <h1 class="title"><?php print $title; ?></h1>
            <?php endif; ?>
            <?php print $messages; ?>
            <?php if ($tabs): ?>
              <div class="tabs"><?php print $tabs; ?></div>
            <?php endif; ?>
            <?php print $help; ?>
          </div> <!-- /#content-header -->
        <?php endif; ?>
<?php print $content; ?>
<div id="footer"><?php print $footer; ?></div>
</div></div><!-- /footerTop /footerTop_inner -->
</div><!-- /bottom -->
</div><!-- end wrapper -->
<div class="admin_nav"><?php print $admin_nav; ?></div>
</body>
</html>
