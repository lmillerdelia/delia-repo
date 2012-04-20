<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LANGUAGE" Src="~/Admin/Skins/Language.ascx" %>
<%@ Register TagPrefix="dnn" TagName="NAV" Src="~/Admin/Skins/Nav.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/BreadCrumb.ascx" %>
<script src="/Portals/_default/Skins/BlockVision/js/sifr.js" type="text/javascript"></script>
<script src="/Portals/_default/Skins/BlockVision/js/sifr-config.js" type="text/javascript"></script>
<script src="/Portals/_default/Skins/BlockVision/js/textsize.js" type="text/javascript"></script>
<script type="text/javascript" src="/Portals/_default/Skins/BlockVision/js/lightbox.js"></script>

<link rel="stylesheet" href="/Portals/_default/Skins/BlockVision/styles/sifr.css" type="text/css" media="all" />
<link rel="stylesheet" href="/Portals/_default/Skins/BlockVision/styles/lightbox.css" type="text/css" media="screen" />

<div class="fullcontainer">
  <div class="logo">
        <dnn:LOGO runat="server" id="dnnLOGO" />
    </div>
	<div class="navcontainer">
    	<dnn:NAV runat="server" id="dnnNAV" providername="DNNMenuNavigationProvider" ControlOrientation="Horizontal" CSSControl="mainMenu" CSSContainerSub="mainMenuSub" cssnoderoot="mainMenu_root" cssnodeselectedroot="mainMenu_hover" cssnodehoversub="mainMenu_hover" cssnodehoverroot="mainMenu_hover" IndicateChildren="false" />
    </div>
    <div class="language" id="LanguagePane" runat="server"></div>
    <br class="clear-right" />
		
        
    <div class="rightlayer3">
    		<div id="taglineContainer" class="tagline"><h1>Comprehensive Vision Benefits</h1></div>
	        <div id="fontsizeContainer" class="fontsize">Font Size <a href="javascript:ts('body',-1)" class="fontsmall link-noline">A</a> | <a
href="javascript:ts('body',1)" class="fontlarge link-online">A</a></div>
	</div>
 

	<div class="fullcontainer maincontainer">
    	<div class="top fullcontainer graybanner_top" id="BannerPane" runat="server">
        </div>
		<div class="left60" style="width: 635px ;">
        	<div class="breadcrumb_main">
        	<a href="/Home.aspx">Home</a> \\ <dnn:BREADCRUMB runat="server" id="apolloBREADCRUMB"  CssClass="Breadcrumb" RootLevel="0" Separator="&nbsp;\\&nbsp;" />
            </div>
        	<div class="content_area" id="ContentPane" runat="server"></div>	
		</div>
        <div class="right40" style="width: 370px;">
        	<div class="content_area" id="RightPane" runat="server"></div>
        </div>
    </div>
    <br class="clear-left" />
</div>
<div class="footer">
	<div class="fullcontainer footercontainer">
    	<div class="footer_headertext">
        	<h3 class="orangetext"><a href="/AboutBlockVision.aspx" class="link-noline">About Block Vision</a></h3>
        </div>
        <div class="footer_headertext">
        	<h3 class="orangetext"><a href="/BlockVisionandYou.aspx" class="link-noline">Block Vision and You</a></h3>
        </div>
        <div class="footer_headertext">
        	<h3 class="orangetext">Searches</h3>
        </div>
        <div class="footer_headertext">
        	<h3 class="orangetext"><a href="/Providers.aspx" class="link-noline">Providers</a></h3>
        </div>
    </div>
    <div class="fullcontainer">
    	<div class="footer_headertext">
        	<ul class="footer_ul">
                <li><a href="/AboutBlockVision/OurVision.aspx" class="link-noline graytext">Our Vision</a></li>
                <li><a href="/AboutBlockVision/OurOrganization.aspx" class="link-noline graytext">Our Organization</a></li>
            </ul>
        </div>
        <div class="footer_headertext">
        	<ul class="footer_ul">
                <li><a href="/BlockVisionandYou/MembersProspectiveMembers.aspx" class="link-noline graytext">Members / Prospective Members</a></li>
                <li><a href="/BlockVisionandYou/HumanResourcesandBenefitsManagers.aspx" class="link-noline graytext">Human Resources and<br />Benefits Managers</a></li>
                <li><a href="/BlockVisionandYou/BrokersAgents.aspx" class="link-noline graytext">Brokers / Agents</a></li>
                <li><a href="/BlockVisionandYou/HealthPlanRepresentatives.aspx" class="link-noline graytext">Health Plan Representatives</a></li>
            </ul>
        </div>
        <div class="footer_headertext">
        	<ul class="footer_ul">
            	<li><a href="/BlockVisionandYou/MembersProspectiveMembers/ProviderSearch.aspx" class="orangetext">Provider Search</a></li>
                <li><a href="/BlockVisionandYou/MembersProspectiveMembers/PassportProviderSearch.aspx" class="link-noline graytext">Passport Health Plan<br />Provider Search</a></li>
            </ul>
         </div>
        <div class="footer_headertext">
        	<ul class="footer_ul">
                <li><a href="https://www.blockvisiononline.com/login/default.asp" class="link-noline graytext">Provider Login</a></li>
            </ul>
         </div>
    </div>
</div>
<div class="footer">
    <div class="fullcontainer footercontainer">
    	<div class="copyright">
    		<p>&copy; Copyright 2011 Block Vision, Inc. | <a href="/ContactUs/PrivacyPolicy.aspx" title="Privacy Policy and Terms of Use">Privacy Policy</a></p>
    	</div>
    </div>
</div>

