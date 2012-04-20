<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php print $language->language; ?>" lang="<?php print $language->language; ?>" dir="<?php print $language->dir; ?>">
<head>
  <title><?php print $head_title; ?></title>
  <?php print $head; ?>
  <?php print $styles; ?>
  <?php print $scripts; ?>
   <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
  <script type="text/javascript">
  $(document).ready(function() {
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
  <style type="text/css">
.hiddenPic {display:none;}

#middle3 { clear: none; float: left; padding-right: 0; width: 460px; border: 0;  }
#right_video { width: 500px; height: 400px; float: right;}
.clearboth { clear: both; height: 1px;}
#bottom { border-top: 10px solid #362828; padding-top: 0; }
.video_container { width: 500px; height: 375px; padding: 25px 0 0 32px; }
</style>
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
<div id="top3">
<div id="logo3"><a href="<?php print $front_page; ?>" rel="home" id="logo">
            <img src="http://www.them.net/sites/all/themes/themnet/images/NewLogo.jpg" alt="<?php print t('Home'); ?>" />
          </a> </div><!-- /logoC -->   
  	  	<div id="nav3">  
			<div id="social3"><?php print $social; ?></div><!-- /social3 -->
			<div id="navcontainer">
			<?php print theme('links', $primary_links); ?>
       		<?php //print theme('nice_menu_primary_links'); ?></div><!-- /navcontainer -->
		</div><!-- /navC -->
</div><!-- /top3 -->
<!-- begin middle3 -->
<div id="middle3"> <?php if ($breadcrumb || $title || $tabs || $help || $messages): ?>
          <div id="content-header">
            <?php print $breadcrumb; ?>
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
<?php print $content; ?></div>
<!-- /middle3 -->
<div id="right_video"><div class="video_container"><iframe src="http://player.vimeo.com/video/33367147?title=0&amp;byline=0&amp;portrait=0" width="435" height="326" frameborder="0"></iframe></div><?php print $right; ?></div>
<br class="clearboth" />
<!-- begin bottom -->
<div id="bottom">
<div id="sidebar_left"><div id="sidebar_leftinner"><?php print $sidebar_left; ?> 
</div></div><!-- /sidebar_left /sidebar_leftinner -->  
<div id="featured"><?php print $featured; ?></div> 
<div id="footerTop"><div id="footerTop_inner">
 
<?php print $footerTop; ?>
 
<div id="footer"><?php print $footer; ?></div>
</div></div><!-- /footerTop /footerTop_inner -->
</div><!-- /bottom -->
</div><!-- end wrapper -->
<div class="admin_nav"><?php print $admin_nav; ?></div>

<img src="http://www.them.net/sites/all/themes/themnet/images/ContentBG.png" 
  alt="#" title="#" class="hiddenPic" />
</body>
</html>
