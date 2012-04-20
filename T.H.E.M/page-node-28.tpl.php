<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php print $language->language; ?>" lang="<?php print $language->language; ?>" dir="<?php print $language->dir; ?>">
<head>
  <title><?php print $head_title; ?></title>
  <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />

  <?php print $head; ?>
  <?php print $styles; ?>
  <?php print $scripts; ?>
   <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
   <!-- <script src="http://maps.google.com/maps?file=api&amp;v=2&amp;sensor=false&amp;key=ABQIAAAAi3GqVWpmE6xoNA-9sbJpYhRWskTIrlFGW-ihNsQRyprUxX0UjBTvs9ltEOef8N37QjlalMhiV4A1rA" type="text/javascript"></script> them.net code activate on live site-->
   <script src="http://maps.google.com/maps?file=api&amp;v=2&amp;sensor=false&amp;key=ABQIAAAA8Bh1XwhPRoPdIqud-vS4txRaiUEFDLOKDtS_ck_BxUBoKCOSUxRMOgkVBf0sNQuj1Sw2cnNYmvwn9A" type="text/javascript"></script>
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
  <script type="text/javascript">
	function printdiv(printpage)
	{
		var headstr = "<html><head><title>Driection to THEM</title></head><body style=\"text-align: left; background: #ffffff;\"><div style=\"background: #ffffff; width: 100%; font-size: 12px; text-align: left; padding: 10px;\"><h2>Directions to THEM</h2><p>5 East Stow Road, Marlton, NJ 08053<br />(856) 988-8436</p>";
		var footstr = "</div></body>";
		var newstr = document.getElementById(printpage).innerHTML;
		var oldstr = document.body.innerHTML;
		document.body.innerHTML = headstr+newstr+footstr;
		window.print(); 
		document.body.innerHTML = oldstr;
		return false;
	}
	
	var map;
    var gdir;
    var geocoder = null;
    var addressMarker;
	var trafficInfo = new GTrafficOverlay();
	var toggleState = 0;
	
	var tinyIcon = new GIcon();
	tinyIcon.image = "http://labs.google.com/ridefinder/images/mm_20_red.png";
	tinyIcon.shadow = "http://labs.google.com/ridefinder/images/mm_20_shadow.png";
	tinyIcon.iconSize = new GSize(12, 20);
	tinyIcon.shadowSize = new GSize(35, 20);
	tinyIcon.iconAnchor = new GPoint(0, 0);
	tinyIcon.infoWindowAnchor = new GPoint(5, 1);
	
	markerOptions = { icon:tinyIcon };
	
	function toggleTraffic() {
      if (toggleState == 1) {
        map.removeOverlay(trafficInfo);
        toggleState = 0;
      } else {
        map.addOverlay(trafficInfo);
        toggleState = 1;
      }
    }

    function initialize() {
      if (GBrowserIsCompatible()) {      
        map = new GMap2(document.getElementById("map_canvas"));
        gdir = new GDirections(map, document.getElementById("directions"));
        GEvent.addListener(gdir, "load", onGDirectionsLoad);
        GEvent.addListener(gdir, "error", handleErrors);
        map.setCenter(new GLatLng(39.9143,-74.9294), 14);
		map.openInfoWindow(map.getCenter(),
                   document.createTextNode("T.H.E.M. 5 Stow Road | Marlton, NJ 08053"));
		map.addControl(new GSmallMapControl());
		map.addControl(new GMapTypeControl());
		map.addControl(new CenterMapControl());
		var point = new GLatLng(39.9143,-74.9294);
		map.addOverlay(new GMarker(point, markerOptions));

      }
    }
    
    function setDirections(fromAddress, toAddress, locale) {
      gdir.load("from: " + fromAddress + " to: " + toAddress,
                { "locale": locale });
    }
	
	function onGDirectionsLoad(){ 
      // Use this function to access information about the latest load()
      // results.

      // e.g.
      // document.getElementById("getStatus").innerHTML = gdir.getStatus().code;
	  // and yada yada yada...
	}

    function handleErrors(){
	   if (gdir.getStatus().code == G_GEO_UNKNOWN_ADDRESS)
	     alert("No corresponding geographic location could be found for one of the specified addresses. This may be due to the fact that the address is relatively new, or it may be incorrect.\nError code: " + gdir.getStatus().code);
	   else if (gdir.getStatus().code == G_GEO_SERVER_ERROR)
	     alert("A geocoding or directions request could not be successfully processed, yet the exact reason for the failure is not known.\n Error code: " + gdir.getStatus().code);
	   
	   else if (gdir.getStatus().code == G_GEO_MISSING_QUERY)
	     alert("The HTTP q parameter was either missing or had no value. For geocoder requests, this means that an empty address was specified as input. For directions requests, this means that no query was specified in the input.\n Error code: " + gdir.getStatus().code);
	     
	   else if (gdir.getStatus().code == G_GEO_BAD_KEY)
	     alert("The given key is either invalid or does not match the domain for which it was given. \n Error code: " + gdir.getStatus().code);

	   else if (gdir.getStatus().code == G_GEO_BAD_REQUEST)
	     alert("A directions request could not be successfully parsed.\n Error code: " + gdir.getStatus().code);
	    
	   else alert("An unknown error occurred.");
	   
	}

function CenterMapControl() {
}

CenterMapControl.prototype = new GControl();

CenterMapControl.prototype.initialize = function(map) {
  var container = document.createElement("div");

  var centerDiv = document.createElement("div");
  this.setButtonStyle_(centerDiv);
  container.appendChild(centerDiv);
  centerDiv.appendChild(document.createTextNode("Re-center Map"));
  GEvent.addDomListener(centerDiv, "click", function() {
  	map.setCenter(new GLatLng(39.9143,-74.9294), 14);
  });

  map.getContainer().appendChild(container);
  return container;
}

CenterMapControl.prototype.getDefaultPosition = function() {
  return new GControlPosition(G_ANCHOR_BOTTOM_RIGHT, new GSize(3, 3));
}

// Sets the proper CSS for the given button element.
  CenterMapControl.prototype.setButtonStyle_ = function(button) {
  button.style.textDecoration = "none";
  button.style.color = "black";
  button.style.backgroundColor = "white";
  button.style.font = "xx-small Arial bold";
  button.style.border = "1px solid black";
  button.style.padding = "2px";
  button.style.marginBottom = "3px";
  button.style.textAlign = "center";
  button.style.width = "8em";
  button.style.cursor = "pointer";
}
</script>
  <style type="text/css">
.hiddenPic {display:none;}
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
<body class="<?php print $body_classes; ?>" onload="initialize()" onunload="GUnload()">
<div id="wrapper">
<!-- begin top -->
<div id="top3">
<div id="logo3"><a href="<?php print $front_page; ?>" rel="home" id="logo">
            <img src="sites/all/themes/themnet/images/NewLogo.jpg" alt="<?php print t('Home'); ?>" /></a></div><!-- /logo3 -->   
  	  	<div id="nav4">  
			<div id="social3"><?php print $social; ?></div><!-- /social3 -->
			<div id="navcontainer">
			<?php print theme('links', $primary_links); ?>
       		<?php //print theme('nice_menu_primary_links'); ?></div><!-- /navcontainer -->
		</div><!-- /nav4 -->
</div><!-- /top3 -->
<!-- begin middleF -->
<div id="middleF" style="padding-bottom: 15px;"> <?php if ($breadcrumb || $title || $tabs || $help || $messages): ?>
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
<?php print $content; ?>
<table class="maps" style="margin: 15px 0;">
    <tr><th style="font-size: 11px;" height="25" valign="middle"><a style="color: #b60003; cursor: pointer; margin-left: 10px;" onmousedown="javascript:toggleTraffic();">Toggle Traffic Information</a><span style="border-left: 3px solid #30b040; padding-left: 5px; margin-left: 20px;">No Delay</span><span style="border-left: 3px solid #ffcf00; padding-left: 5px; margin-left: 10px;">Minor Delay</span><span style="border-left: 3px solid #ff0000; padding-left: 5px; margin-left: 10px;">Major Delay</span><span style="border-left: 3px solid #bbbbbb; padding-left: 5px; margin-left: 10px;">No Data</span></th></tr>
    <tr>
    <td valign="top"><div id="map_canvas" style="width: 460px; height: 350px; margin-top: 15px;"></div></td>
    </tr>
    </table>
    <div id="dir" style="wdith: 100%; margin-top: 15px;">
    <h2>Get Driving Directions</h2>
    <p>Please provide your starting address to obtain custom driving directions to our office.</p>
    <form action="#" onsubmit="setDirections(this.from.value, this.to.value, this.locale.value); return false">
  <table>
   <tr><td style="padding-top: 15px;"><input type="text" size="40" id="fromAddress" name="from" /></td>
   <td align="right" style="padding-top: 15px;"><input type="hidden" id="toAddress" name="to" value="39.9143,-74.9294" /><input type="hidden" id="locale" name="locale" value="en" /></td>
   <td align="right" style="padding-top: 15px;">
    <input name="submit" type="submit" value="Get Directions!" />
   </td></tr>
   </table>
  </form>
  <div id="directions"></div>
  <img src="sites/all/themes/themnet/images/print_icon.png" style="margin-top: 5px;" alt="print this"/>&nbsp;<a onclick="printdiv('directions');" style="line-height: 24px; cursor: pointer;">Print Directions</a>
</div>
</div>
<!-- /middleF -->
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

<img src="sites/all/themes/themnet/images/ContentBG.png" 
  alt="#" title="#" class="hiddenPic" />
</body>
</html>
