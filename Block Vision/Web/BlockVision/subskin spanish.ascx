<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LANGUAGE" Src="~/Admin/Skins/Language.ascx" %>
<%@ Register TagPrefix="dnn" TagName="NAV" Src="~/Admin/Skins/Nav.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/BreadCrumb.ascx" %>
<script src="/Portals/_default/Skins/BlockVision/js/textsize.js" type="text/javascript"></script>
<script type="text/javascript" src="/Portals/_default/Skins/BlockVision/js/lightbox.js"></script>


<link rel="stylesheet" href="/Portals/_default/Skins/BlockVision/styles/lightbox.css" type="text/css" media="screen" />
<link rel="stylesheet" href="/Portals/_default/Skins/BlockVision/styles/spanish_bv.css" type="text/css" media="screen" />

<div class="fullcontainer">
  <div class="logo">
        <img src="/Portals/0/images/spanish_blv_logo.jpg" alt="Block Vision" />
    </div>
	<div class="navcontainer">
    	        <ul class="SpanishmainMenu">
        	<li><a href="/Inicio.aspx" title="Inicio">Inicio</a></li>
            <li><a href="/AcercadeBlockVision.aspx" title="Acercade Block Vision">Acerca De Block Vision</a>
            	<ul>
                	<li><a href="/AcercadeBlockVision/Nuestravisión.aspx">Nuestra visión</a></li>
                    <li><a href="/AcercadeBlockVision/Nuestraorganización.aspx">Nuestra organización</a></li>
                </ul>
            </li>
            <li><a href="/BlockVisionyusted.aspx" title="Block Vision y usted">Block Vision y usted</a>
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
                            <li><a href="/BlockVisionyusted/Corredoresyagentes/Apoyoyservicios.aspx" title="Apoyo y servicios">Apoyo y servicios</a></li>
                            <li><a href="/BlockVisionyusted/Corredoresyagentes/Calendariodeeventos.aspx" title="Calendario de eventos">Calendario de eventos</a></li>
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
            <li><a href="/Contáctenos.aspx" title="Contáctenos">Contáctenos</a>
            	<ul>
                	<li><a href="/Contáctenos/Políticadeprivacidad.aspx" title="Política De Privacidad y Condiciones De Uso">Política de privacidad</a></li>
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
                <li><a href="/AcercadeBlockVision/Nuestravisión.aspx" class="link-noline graytext">Nuestra visión</a></li>
                <li><a href="/AcercadeBlockVision/Nuestraorganización.aspx" class="link-noline graytext">Nuestra organización</a></li>
            </ul>
        </div>
        <div class="footer_headertext">
        	<ul class="footer_ul">
                <li><a href="/BlockVisionyusted/Miembrosmiembrospotenciales.aspx" class="link-noline graytext">Miembros/miembros potenciales</a></li>
                <li><a href="/BlockVisionyusted/Administradoresderecursoshumanosydebeneficio.aspx" class="link-noline graytext">Administradores de recursos humanos y de beneficios</a></li>
                <li><a href="/BlockVisionyusted/Corredoresyagentes.aspx" class="link-noline graytext">Corredores y agentes</a></li>
            </ul>
        </div>
        <div class="footer_headertext">
        	<ul class="footer_ul">
            	<li><a href="/BlockVisionyusted/Miembrosmiembrospotenciales/Búsquedadeproveedores.aspx" class="orangetext">Búsqueda de proveedores</a></li>
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
