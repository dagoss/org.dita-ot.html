<?xml version="1.0" encoding="UTF-8" ?>
<!-- This file is part of the DITA Open Toolkit project hosted on 
     Sourceforge.net. See the accompanying license.txt file for 
     applicable licenses.-->
<!-- (c) Copyright IBM Corp. 2004, 2005 All Rights Reserved. -->
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:dita-ot="http://dita-ot.sourceforge.net/ns/201007/dita-ot"
                xmlns:dita2html="http://dita-ot.sourceforge.net/ns/200801/dita2html"
                xmlns:ditamsg="http://dita-ot.sourceforge.net/ns/200704/ditamsg"
                exclude-result-prefixes="xs dita-ot dita2html ditamsg">



				<xsl:import href="dita2html.xsl"/>

<xsl:output method="html"
            encoding="utf-8"
            indent="no"
			omit-xml-declaration="yes"
/>


<xsl:template name="chapter-setup">
	<!-- the below line doesn't work; not sure why... -->
	<xsl:call-template name="jekyll-front-matter"/>
	<!--<html>-->
	<!--<xsl:call-template name="setTopicLanguage"/>-->
	<!--<xsl:value-of select="$newline"/>-->
  <!--<xsl:call-template name="chapterHead"/>-->
  <xsl:call-template name="chapterBody"/> 
  <!--</html>-->
</xsl:template>

<xsl:template name="jekyll-front-matter">
	<xsl:apply-templates select="*" mode="jekyll-front-matter"/>

  </xsl:template>

</xsl:stylesheet>
