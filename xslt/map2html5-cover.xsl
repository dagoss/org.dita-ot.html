<?xml version="1.0" encoding="UTF-8" ?>
<!-- This file is part of the DITA Open Toolkit project.
     See the accompanying license.txt file for applicable licenses. -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="2.0">

  <xsl:import href="dita2html5.xsl"/>
  <xsl:import href="plugin:org.dita.xhtml:xsl/map2html-coverImpl.xsl"/>
  <xsl:import href="dita2htmlImpl.xsl"/>
  <xsl:import href="map2htmlcoverImpl.xsl"/>

  <xsl:output method="html"
              encoding="UTF-8"
              omit-xml-declaration="yes"/>

  <xsl:template match="*[contains(@class, ' map/map ')]" mode="toc">
    <xsl:param name="pathFromMaplist"/>
    <xsl:if test="descendant::*[contains(@class, ' map/topicref ')]
                               [not(@toc = 'no')]
                               [not(@processing-role = 'resource-only')]">
      <nav class="col-md-12" role="toc">
        <div class="well well-sm">
          <ul>
            <xsl:call-template name="commonattributes">
              <xsl:with-param name="default-output-class">bs-docs-sidenav</xsl:with-param>
            </xsl:call-template>
            <xsl:apply-templates select="*[contains(@class, ' map/topicref ')]" mode="toc">
              <xsl:with-param name="pathFromMaplist" select="$pathFromMaplist"/>
            </xsl:apply-templates>
          </ul>
        </div>
      </nav>
    </xsl:if>
  </xsl:template>

</xsl:stylesheet>
