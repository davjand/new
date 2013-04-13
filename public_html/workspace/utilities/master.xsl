<?xml version="1.0" encoding="UTF-8"?>
<!-- master.xsl
 * Master xsl file for Symphony template 	
 * Author: David Anderson 2011
 * dave@veodesign.co.uk
-->
<xsl:stylesheet version="1.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:date="http://exslt.org/dates-and-times"
		xmlns:exsl="http://exslt.org/common"
		xmlns:form="http://nick-dunn.co.uk/xslt/form-controls"
		extension-element-prefixes="exsl form date">

<!-- ********************************* -->
<!-- includes -->
<!-- ********************************* -->

<!-- symphony utils -->
<xsl:import href="typography.xsl"/>
<xsl:import href="html-truncate.xsl"/>
<xsl:import href="date-time.xsl"/>
<xsl:import href="form_builder.xsl"/>

<!--custom utils-->
<xsl:import href="navigation.xsl"/>
<xsl:import href="string.xsl"/>
<xsl:import href="image-format.xsl"/>
<xsl:import href="render-utils.xsl"/>

<xsl:output method="xml"
    doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
    doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
    omit-xml-declaration="yes"
    encoding="UTF-8"
    indent="yes" />


<!-- ********************************* -->
<!-- global variables -->
<!-- ********************************* -->
<xsl:variable name="settings" select="//data/settings/entry" />
<xsl:variable name="site-title" select="$settings/site-title" />
<!-- ********************************* -->
<!-- root template -->
<!-- ********************************* -->

<xsl:template match="/">
			
	<xsl:comment><![CDATA[[if lt IE 7 ]><html xmlns:fb="http://ogp.me/ns/fb#" lang="en" class="no-js ie6 ]]><xsl:value-of select="concat('page-',$current-page)"/><![CDATA["><![endif]]]></xsl:comment>
			<xsl:comment><![CDATA[[if IE 7 ]><html xmlns:fb="http://ogp.me/ns/fb#" lang="en" class="no-js ie7 ]]><xsl:value-of select="concat('page-',$current-page)"/><![CDATA["><![endif]]]></xsl:comment>
			<xsl:comment><![CDATA[[if IE 8 ]><html xmlns:fb="http://ogp.me/ns/fb#" lang="en" class="no-js ie8 ]]><xsl:value-of select="concat('page-',$current-page)"/><![CDATA["><![endif]]]></xsl:comment>
			<xsl:comment><![CDATA[[if IE 9 ]><html xmlns:fb="http://ogp.me/ns/fb#" lang="en" class="no-js ie9 ]]><xsl:value-of select="concat('page-',$current-page)"/><![CDATA["><![endif]]]></xsl:comment>
			<xsl:comment><![CDATA[[if (gt IE 9)|!(IE)]><!]]></xsl:comment><html lang="en" xmlns:fb="http://ogp.me/ns/fb#" class=" page-{$current-page}"><xsl:comment><![CDATA[<![endif]]]></xsl:comment>
	<head>
		
		<!-- Basic Page Needs
	  	================================================== -->
	  	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title><xsl:apply-templates select="data"  mode="site-title"/></title>
		
		<base href="{$root}/" />
		
		<!-- Meta
	  	================================================== -->
		<meta name="robots" content="index, follow" />
		<meta name="description">
			<xsl:attribute name="content"><xsl:apply-templates select="data"  mode="site-description"/></xsl:attribute>
		</meta>
		
		<meta name="google-site-verification" content="{$settings/google-site-verification}" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
		
		<!-- Favicons
		================================================== -->
		<link rel="shortcut icon" href="{$content-workspace}/images/favicon.ico"/>
		<link rel="apple-touch-icon" href="{$content-workspace}/images/apple-touch-icon.png"/>
		<link rel="apple-touch-icon" sizes="72x72" href="{$content-workspace}/images/apple-touch-icon-72x72.png"/>
		<link rel="apple-touch-icon" sizes="114x114" href="{$content-workspace}/images/apple-touch-icon-114x114.png"/>
		
	    <!-- Template CSS
		================================================== -->   
		<link rel="stylesheet" href="{$content-workspace}/stylesheets/screen.css" media="screen, projection" type="text/css"/>
		<link rel="stylesheet" href="{$content-workspace}/stylesheets/print.css" media="print" type="text/css"/>
		
		<!--[if IE]>
			<link href="/stylesheets/ie.css" media="screen, projection" rel="stylesheet" type="text/css" />
		<![endif]-->
		
		<!--JS-->
		<!--
		<script data-main="{$workspace}/js/main.js" src="{$workspace}/js/require.js"></script>
		-->
	
	</head>
	
	<body class="page-{$current-page}">
		
		<div id="application">
			<div id="header"></div>
			<div id="main"></div>
			<div id="footer"></div>
		</div>
		
	</body>
	</html>           
</xsl:template>


<!--site title-->
<xsl:template match="data" mode="site-title" priority="-1">

	<!--see what the page title is-->
	<xsl:choose>
		<xsl:when test="$page-title='Home'">
			<xsl:value-of select="$site-title" />
			<xsl:text> - Homepage </xsl:text>
		</xsl:when>

		
		<!--otherwise nothing found -->		
		<xsl:otherwise>
			<xsl:value-of select="$page-title" />
			<xsl:text> - </xsl:text>		
			<xsl:value-of select="$site-title" />
		</xsl:otherwise>	
	</xsl:choose>
</xsl:template>

<!--meta-->
<xsl:template match="data" mode="site-description" priority="-1">	
	<xsl:value-of select="//data/settings/entry/site-description" />
</xsl:template>

<xsl:template match="data" mode="init-js" priority="-1"></xsl:template>


</xsl:stylesheet>