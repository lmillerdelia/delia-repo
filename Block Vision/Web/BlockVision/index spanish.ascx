<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LANGUAGE" Src="~/Admin/Skins/Language.ascx" %>
<%@ Register TagPrefix="dnn" TagName="NAV" Src="~/Admin/Skins/Nav.ascx" %>
<script type="text/javascript" src="/Portals/_default/Skins/VIPA/js/jquery-1.3.2.js"></script> <script type="text/javascript" src="/Portals/_default/Skins/VIPA/js/jquery.galleriffic.js"></script>
<script type="text/javascript" src="/Portals/_default/Skins/VIPA/js/lightbox.js"></script>

<link rel="stylesheet" href="/Portals/_default/Skins/VIPA/styles/lightbox.css" type="text/css" media="screen" />
<link rel="stylesheet" href="/Portals/_default/Skins/VIPA/styles/spanish_bv.css" type="text/css" media="screen" />

<%@ Register TagPrefix="dnn" TagName="STYLES" Src="~/Admin/Skins/Styles.ascx" %>
<dnn:STYLES runat="server" ID="StylesIE7" Name="IE7" StyleSheet="ie7_skin.css" Condition="IE 7" UseSkinPath="true" />

<div class="fullcontainer">
  <div class="logo">
        <img src="/Portals/0/images/spanish_blv_logo.jpg" alt="Block Vision" />
    </div>
	<div class="navcontainer">
        <ul class="SpanishmainMenu">
        	<li><a href="/Inicio.aspx" title="Inicio">Inicio</a></li>
            <li><a href="/AcercadeBlockVision.aspx" title="Acercade Block Vision">Acerca de Nosotros</a>
            	<ul>
                	<li><a href="/AcercadeVIPA/Nuestravisión.aspx">Nuestra visión</a></li>
                    <li><a href="/AcercadeVIPA/Nuestraorganización.aspx">Nuestra organización</a></li>
                </ul>
            </li>
            <li><a href="/BlockVisionyusted.aspx" title="Block Vision y usted">VIPA y usted</a>
            	<ul>
                	<li><a href="/BlockVisionyusted/Miembrosmiembrospotenciales.aspx" title="Miembros/miembros potenciales">Miembros/miembros potenciales</a>
                    	<ul>
                        	<li><a href="/BlockVisionyusted/Miembrosmiembrospotenciales/Miembrosdegrupo.aspx" title="Miembros de grupo">Miembros de grupo</a></li>
                            <li><a href="/BlockVisionyusted/Miembrosmiembrospotenciales/Miembrosdeplanesdesalud.aspx" title="Miembros de planes de salud">Miembros de planes de salud</a></li>
                            <li><a href="/BlockVisionyusted/Miembrosmiembrospotenciales/Miembrospotenciales.aspx" title="Miembros potenciales">Miembros potenciales</a></li>
                            <li><a href="/BlockVisionyusted/Miembrosmiembrospotenciales/Búsquedadeproveedores.aspx" title="Búsqueda de proveedores">Búsqueda de proveedores</a></li>
                        </ul></li>
                    <li><a href="/BlockVisionyusted/Administradoresderecursoshumanosydebeneficio.aspx" title="Administradores de recursos humanos y de beneficio">Administradores de recursos humanos y de beneficio</a></li>
                    <li><a href="/BlockVisionyusted/Corredoresyagentes.aspx" title="Corredores y agentes">Corredores y agentes</a>
                    	<ul>
                        	<li><a href="/BlockVisionyusted/Corredoresyagentes/Compromisoycooperación.aspx" title="Compromiso y cooperación">Compromiso y cooperación</a></li>
                            <li><a href="/BlockVisionyusted/Corredoresyagentes/Apoyoyservicios.aspx" title="Apoyo y servicios">Apoyo y servicios</a></li>                            <li><a href="/BlockVisionyusted/Corredoresyagentes/Calendariodeeventos.aspx" title="Calendario de eventos">Calendario de eventos</a></li>

                        </ul>
                    </li>
                    <li><a href="/BlockVisionyusted/RepresentantesdePlanesdeSalud.aspx" title="Representantes de Planes de Salud">Representantes de Planes de Salud</a></li>
                </ul>
            </li>
            <li><a href="/Proveedores.aspx" title="Proveedores">Proveedores</a>
            	<ul>
                	<li><a href="https://www.blockvisiononline.com/login/default.asp" target="_blank">Inicio de sesión para proveedores</a></li>
                </ul>
            </li>
         </ul>
    </div>
    <div class="language"><dnn:LANGUAGE runat="server" id="dnnLANGUAGE"  showMenu="False" showLinks="True" /><a href="/Home.aspx">English</a> | Spanish</div>
    <br class="clear-right" />
		
        
    <div class="rightlayer3">
    		<div class="tagline"><h1>Beneficios visuales integrales</h1></div>
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
        	<h3 class="orangetext"><a href="/AcercadeBlockVision.aspx" class="link-noline">Acerca de Block Vision</a></h3>
        </div>
        <div class="footer_headertext">
        	<h3 class="orangetext"><a href="/BlockVisionyusted.aspx" class="link-noline">Block Vision y usted</a></h3>
        </div>
        <div class="footer_headertext">
        	<h3 class="orangetext">Búsquedas</h3>
        </div>
        <div class="footer_headertext">
        	<h3 class="orangetext"><a href="/Proveedores.aspx" class="link-noline">Proveedores</a></h3>
        </div>
    </div>
    <div class="fullcontainer">
    	<div class="footer_headertext">
        	<ul class="footer_ul">
                <li><a href="/AcercadeVIPA/Nuestravisión.aspx" class="link-noline graytext">Nuestra visión</a></li>
                <li><a href="/AcercadeVIPA/Nuestraorganización.aspx" class="link-noline graytext">Nuestra organización</a></li>
            </ul>
        </div>
        <div class="footer_headertext">
        	<ul class="footer_ul">
                <li><a href="/BlockVisionyusted/Miembrosmiembrospotenciales.aspx" class="link-noline graytext">Miembros/miembros potenciales</a></li>
                <li><a href="/BlockVisionyusted/Administradoresderecursoshumanosydebeneficio.aspx" class="link-noline graytext">Administradores de recursos humanos y de beneficios</a></li>
                <li><a href="/BlockVisionyusted/Corredoresyagentes.aspx" class="link-noline graytext">Corredores y agentes</a></li>
                <li><a href="/BlockVisionyusted/RepresentantesdePlanesdeSalud.aspx" class="link-noline graytext">Representantes de planes de salud</a></li>
            </ul>
        </div>
        <div class="footer_headertext">
        	<ul class="footer_ul">
            	<li><a href="/BlockVisionyusted/Miembrosmiembrospotenciales/Búsquedadeproveedores.aspx" class="orangetext">Búsqueda de proveedores</a></li>
                <li><a href="/BlockVisionyusted/Miembrosmiembrospotenciales/BúsquedadeproveedoresdelPassportHealthPlan.aspx" class="link-noline graytext">Búsqueda de proveedores del Passport Health Plan</a></li>
            </ul>
         </div>
        <div class="footer_headertext">
        	<ul class="footer_ul">
                <li><a href="https://www.blockvisiononline.com/login/default.asp" class="link-noline graytext">Inicio de sesión para proveedores</a></li>
            </ul>
         </div>
    </div>
</div>
<div class="footer">
    <div class="fullcontainer footercontainer">
    	<div class="copyright">
    		<p>&copy; Copyright 2011 Block Vision, Inc. | <a href="/Contáctenos/Políticadeprivacidad.aspx" title="Política De Privacidad y Condiciones De Uso">Política de privacidad</a></p>
    	</div>
    </div>
</div>
<script type="text/javascript"> $('div.navigation').css({'width' : '300px', 'float' : 'left'}); $('div.content').css('display', 'block'); $(document).ready(function() { $('#thumbs').galleriffic({ delay: 5000, imageContainerSel: '#slideshow', controlsContainerSel: '#controls' }).play(); }); </script>

