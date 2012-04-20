<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="NAV" Src="~/Admin/Skins/Nav.ascx" %>
<script type="text/javascript" src="/Portals/_default/Skins/VIPA/js/lightbox.js"></script>
<script type="text/javascript" src="/Portals/_default/Skins/VIPA/js/jquery-1.3.2.js"></script>
<script type="text/javascript" src="/Portals/_default/Skins/VIPA/js/jquery.galleriffic.js"></script>

<link rel="stylesheet" href="/Portals/_default/Skins/VIPA/styles/lightbox.css" type="text/css" media="screen" />

<script type="text/javascript"><!--//--><![CDATA[//><!--

sfHover = function() {
	var sfEls = document.getElementById("nav").getElementsByTagName("LI");
	for (var i=0; i<sfEls.length; i++) {
		sfEls[i].onmouseover=function() {
			this.className+=" sfhover";
		}
		sfEls[i].onmouseout=function() {
			this.className=this.className.replace(new RegExp(" sfhover\\b"), "");
		}
	}
}
if (window.attachEvent) window.attachEvent("onload", sfHover);

//--><!]]></script>

<div class="fullcontainer">
  <div class="logo">
        <dnn:LOGO runat="server" id="dnnLOGO" />
    </div>
	<div class="navcontainer">
    	<ul class="mainMenu" id="nav">
        	<li><a href="/Home.aspx" title="Vision Plan of America">Home</a></li>
            <li><a href="/AboutUs.aspx" title="Vision Insurance Plan of America Prespective">About Us</a>
            	<ul>
                	<li><a href="/AboutUs/OurVision.aspx" title="Vision Insurance Plan of America Vision">Our Vision</a></li>
                    <li><a href="/AboutUs/ContactUs.aspx" title="Contact Vision Insurance Plan of America">Contact Us</a></li>
                </ul>
            </li>
            <li><a href="/VIPAandYou.aspx" title="Vision Insurance Plan of America and You">VIPA and You</a>
            	<ul>
                	<li><a href="/VIPAandYou/MembersProspectiveMembers.aspx" title="Members / Prospective Members of Vision Insurance Plan of America">Members / Prospective Members</a>
                        <ul>
                            <li><a href="/VIPAandYou/MembersProspectiveMembers/Members.aspx" title="Members of Vision Insurance Plan of America">Members</a></li>
                            <li><a href="/VIPAandYou/MembersProspectiveMembers/ProspectiveMembers.aspx" title="Prospective Members of Vision Insurance Plan of America">Prospective Members</a></li>
                            <li><a href="/VIPAandYou/MembersProspectiveMembers/ProviderSearch.aspx" title="Provider Search">Provider Search</a></li>
                        </ul>
                    </li>
                    <li><a href="/VIPAandYou/HRAdministratorsBenefitsManagers.aspx" title="Human Resources Administrators / Benefits Managers">HR Administrators / Benefits Managers 	</a></li>
                    <li><a href="/VIPAandYou/BrokersAgents.aspx" title="Brokers and Agents">Brokers / Agents</a>
                        <ul>
                            <li><a href="/VIPAandYou/BrokersAgents/CommitmentandPartnership.aspx" title="Commitment and Partnership for VIPA Brokers">Commitment and Partnership</a></li>
                            <li><a href="/VIPAandYou/BrokersAgents/SupportandServices.aspx" title="Support and Services for VIPA Brokers">Support and Services</a></li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li><a href="/Providers.aspx" title="Vision Insurance Plan of America Providers">Providers</a>
                <ul>
                	<li><a href="/Providers/ProviderClaims.aspx" title="Providers: Submit a Claim">Provider Claims</a></li>
                </ul>
            </li>
        </ul>
    </div>
    <div class="language">English | <a href="/spanish.jpg" class="lightgraytext link-noline" rel="lightbox" title="Block Vision - Here's Looking at You">Spanish</a></div>
    <br class="clear-right" />
		
        
    <div class="rightlayer3">
    		<div class="tagline"><h1>Comprehensive Vision Benefits</h1></div>
	</div>

    <div class="maincontainer">
		<div class="left" id="ContentPane" runat="server">		
		</div>
        <div class="right" id="RightPane" runat="server">
        </div>
    </div>
    <br class="clear-left" />
    
    
    <div class="fullcontainer" id="GreyPane" runat="server">
        
    </div>
</div>
<div class="footer">
	<div class="fullcontainer footercontainer">
    	<div class="footer_headertext">
        	<h3><a href="/AboutUs.aspx" class="orangetext">About VIPA</a></h3>
        </div>
        <div class="footer_headertext">
        	<h3 class="orangetext"><a href="/VIPAandYou.aspx" class="orangetext">VIPA and You</a></h3>
        </div>
        <div class="footer_headertext">
        	<h3 class="orangetext">Searches</h3>
        </div>
        <div class="footer_headertext">
        	<h3 class="orangetext"><a href="/Providers.aspx" class="orangetext">Providers</a></h3>
        </div>
    </div>
    <div class="fullcontainer">
    	<div class="footer_headertext">
        	<ul class="footer_ul">
            	<li><a href="/AboutUs/OurVision.aspx" class="link-noline graytext">Our Vision</a></li>
                <li><a href="/AboutUs/ContactUs.aspx" class="link-noline graytext">Contact Us</a></li>
            </ul>
        </div>
        <div class="footer_headertext">
        	<ul class="footer_ul">
            	<li><a href="/VIPAandYou/MembersProspectiveMembers.aspx" class="link-noline graytext">Members / Prospective Members</a></li>
                <li><a href="/VIPAandYou/HRAdministratorsBenefitsManagers.aspx" class="link-noline graytext">Human Resources and Benefits Managers</a></li>
                <li><a href="/VIPAandYou/BrokersAgents.aspx" class="link-noline graytext">Brokers / Agents</a></li>
            </ul>
        </div>
        <div class="footer_headertext">
        	<ul class="footer_ul">
            	<li><a href="/VIPAandYou/MembersProspectiveMembers/ProviderSearch.aspx" class="link-noline graytext">Provider Search</a></li>
             </ul>
         </div>
        <div class="footer_headertext">
            <ul class="footer_ul">
                <li><a href="/Providers.aspx" class="link-noline graytext">Provider Login</a></li>
             </ul>
         </div>
    </div>
</div>
<div class="footer">
    <div class="fullcontainer footercontainer">
    	<div class="copyright">
    		<p>&copy; Copyright 2011 Vision Insurance Plan of America, Inc. | <a href="/AboutUs/ContactUs/PrivacyPolicy.aspx">Privacy Policy</a></p>
    	</div>
    </div>
</div>