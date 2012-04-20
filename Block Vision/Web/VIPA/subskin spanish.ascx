<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LANGUAGE" Src="~/Admin/Skins/Language.ascx" %>
<%@ Register TagPrefix="dnn" TagName="NAV" Src="~/Admin/Skins/Nav.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/BreadCrumb.ascx" %>
<script type="text/javascript" src="/Portals/_default/Skins/VIPA/js/jquery-1.3.2.js"></script> <script type="text/javascript" src="/Portals/_default/Skins/VIPA/js/jquery.galleriffic.js"></script>
<script type="text/javascript" src="/Portals/_default/Skins/VIPA/js/lightbox.js"></script>

<link rel="stylesheet" href="/Portals/_default/Skins/VIPA/styles/lightbox.css" type="text/css" media="screen" />
<link rel="stylesheet" href="/Portals/_default/Skins/VIPA/styles/spanish_bv.css" type="text/css" media="screen" />

<%@ Register TagPrefix="dnn" TagName="STYLES" Src="~/Admin/Skins/Styles.ascx" %>
<dnn:STYLES runat="server" ID="StylesIE7" Name="IE7" StyleSheet="ie7_skin.css" Condition="IE 7" UseSkinPath="true" /><div class="fullcontainer">

  <div class="logo">
        <img src="/Portals/0/images/spanish_blv_logo.jpg" alt="Block Vision" />
    </div>
	<div class="navcontainer">
    	        <ul class="SpanishmainMenu">
    	        	<li><a href="/Inicio.aspx" title="Inicio">Inicio</a></li>
    	            <li><a href="/AcercadeVIPA.aspx" title="Acercade VIPA">Acerca de Nosotros</a>
    	            	<ul>
    	                	<li><a href="/AcercadeVIPA/Nuestravisión.aspx">Nuestra visión</a></li>
    	                    <li><a href="/AcercadeVIPA/contáctenos.aspx">Contáctenos</a></li>
    	                </ul>
    	            </li>
    	            <li><a href="/VIPAyUsted.aspx" title="VIPA y usted">VIPA y usted</a>
    	            	<ul>
    	                	<li><a href="/VIPAyUsted/Miembrosmiembrospotenciales.aspx" title="Miembros/miembros potenciales">Miembros/miembros potenciales</a>
    	                    	<ul>
    	                        	<li><a href="/VIPAyUsted/Miembrosmiembrospotenciales/Miembros.aspx" title="Miembros">Miembros</a></li>
    	                            <li><a href="/VIPAyUsted/Miembrosmiembrospotenciales/Miembrospotenciales.aspx" title="Miembros potenciales">Miembros potenciales</a></li>
    	                            <li><a href="/VIPAyUsted/Miembrosmiembrospotenciales/Búsquedadeproveedores.aspx" title="Búsqueda de proveedores">Búsqueda de proveedores</a></li>
    	                        </ul></li>
    	                    <li><a href="/VIPAyUsted/Administradoresderecursoshumanosydebeneficio.aspx" title="Administradores de recursos humanos y de beneficio">Administradores de recursos humanos y de beneficio</a></li>
    	                    <li><a href="/VIPAyUsted/Corredoresyagentes.aspx" title="Corredores y agentes">Corredores y agentes</a>
    	                    	<ul>
    	                        	<li><a href="/VIPAyUsted/Corredoresyagentes/Compromisoycooperación.aspx" title="Compromiso y cooperación">Compromiso y cooperación</a></li>
    	                            <li><a href="/VIPAyUsted/Corredoresyagentes/Apoyoyservicios.aspx" title="Apoyo y servicios">Apoyo y servicios</a></li>
    	                        </ul>
    	                    </li>
    	                </ul>
    	            </li>
    	            <li><a href="/Proveedores.aspx" title="Proveedores">Proveedores</a>
    	            	<ul>
    	                	<li><a href="/Proveedores/Proveedordereclamo.aspx" title="Proveedor de reclamo">Proveedor de reclamo</a></li>
    	                </ul>
    	            </li>
    	         </ul>
    	            	        
    </div>
    <div class="language" id="LanguagePane" runat="server"></div>
    <br class="clear-right" />
		
        
    <div class="rightlayer3">
    		<div id="taglineContainer" class="tagline"><h1>Beneficios visuales integrales</h1></div>
	        <div id="fontsizeContainer" class="fontsize">Font Size <a href="javascript:ts('body',-1)" class="fontsmall link-noline">A</a> | <a href="javascript:ts('body',1)" class="fontlarge link-online">A</a></div>
	</div>
 

	<div class="fullcontainer maincontainer">
    	<div class="top fullcontainer graybanner_top" id="BannerPane" runat="server">
        </div>
        <br class="clearboth" />
		<div class="left60">
        	<div class="breadcrumb_main">
        	<a href="/Inicio.aspx">Inicio</a> \\ <dnn:BREADCRUMB runat="server" id="apolloBREADCRUMB"  CssClass="Breadcrumb" RootLevel="0" Separator="&nbsp;\\&nbsp;" />
            </div>
        	<div class="content_area" id="ContentPane" runat="server"></div>	
		</div>
        <div class="right40">
        	<div class="content_area" id="RightPane" runat="server"></div>
        </div>
    </div>
    <br class="clear-left" />
</div>
<div class="footer">
	<div class="fullcontainer footercontainer">
    	<div class="footer_headertext">
        	<h3 class="orangetext"><a href="/AcercadeVIPA.aspx" class="link-noline">Acercade de Nosotros</a></h3>
        </div>
        <div class="footer_headertext">
        	<h3 class="orangetext"><a href="/VIPAyusted.aspx" class="link-noline">VIPA y usted</a></h3>
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
    	        <li><a href="/AcercadeVIPA/contáctenos.aspx" class="link-noline graytext">Contáctenos</a></li>
    	    </ul>
    	</div>
    	<div class="footer_headertext">
    		<ul class="footer_ul">
    	        <li><a href="/VIPAyUsted/Miembrosmiembrospotenciales/Miembrospotenciales.aspx">Miembros/miembros potenciales</a></li>
    	        <li><a href="/VIPAyUsted/Administradoresderecursoshumanosydebeneficio.aspx" class="link-noline graytext">Administradores de recursos humanos y de beneficios</a></li>
    	        <li><a href="/VIPAyUsted/Corredoresyagentes.aspx" class="link-noline graytext">Corredores y agentes</a></li>
    	    </ul>
    	</div>
    	<div class="footer_headertext">
    		<ul class="footer_ul">
    	    	<li><a href="/VIPAyUsted/Miembrosmiembrospotenciales/Búsquedadeproveedores.aspx" class="orangetext">Búsqueda de proveedores</a></li>
    	    </ul>
    	 </div>
    	<div class="footer_headertext">
    		<ul class="footer_ul">
    	        <li><a href="/Proveedores/Proveedordereclamo.aspx" class="link-noline graytext">Proveedor de acceso</a></li>
    	    </ul>
    	 </div>
    </div>
</div>
<div class="footer">
    <div class="fullcontainer footercontainer">
    	<div class="copyright">
    		<p>&copy; Copyright 2011 Vision Insurance Plan of America, Inc. | <a href="/Contáctenos/Políticadeprivacidad.aspx" title="Política De Privacidad y Condiciones De Uso">Política de privacidad</a></p>
    	</div>
    </div>
</div>
