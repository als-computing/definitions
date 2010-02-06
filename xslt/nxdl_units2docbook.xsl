<?xml version="1.0" encoding="UTF-8"?>

<!--
########### SVN repository information ###################
# $Date$
# $Author$
# $Revision$
# $HeadURL$
# $Id$
########### SVN repository information ###################

Purpose:
	This stylesheet is used to extract the specifications of 
	valid units categories from the NeXus Definition Language
	specifications into DocBook content for use in NXDL.xml.

Usage:
    xsltproc ../xslt/nxdl_units2docbook.xsl ../nxdlTypes.xsd > units.xml
-->

<xslt:stylesheet
	xmlns:xslt="http://www.w3.org/1999/XSL/Transform"
	version="1.0"
	xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1"
	xmlns:xi="http://www.w3.org/2001/XInclude"
	xmlns:xlink="http://www.w3.org/1999/xlink"
	xmlns:xsd="http://www.w3.org/2001/XMLSchema"
    >
    <xslt:output method="xml" indent="yes" version="1.0" encoding="UTF-8"/>

    <xslt:template match="/">
        <!-- Needs this on 2nd line of XML file: 
            <?oxygen RNGSchema="http://www.oasis-open.org/docbook/xml/5.0/rng/docbook.rng" type="xml"?>
        -->
        <xslt:processing-instruction 
            name="oxygen">RNGSchema="http://www.oasis-open.org/docbook/xml/5.0/rng/docbook.rng" type="xml"</xslt:processing-instruction>
        <xslt:comment/><!-- tricks XSLT to start a new line -->
        
        
        <xslt:element name="para">
            <xslt:attribute name="xmlns">http://docbook.org/ns/docbook</xslt:attribute>
            <xslt:element name="table">
             <xslt:comment> xmlns="http://docbook.org/ns/docbook" </xslt:comment>
             <xslt:comment> auto-generated by a script </xslt:comment>
             <xslt:element name="title"
                 >Unit Types allowed in NXDL specifications</xslt:element>
             <xslt:element name="tgroup">
                 <xslt:attribute name="cols">2</xslt:attribute>
                 <xslt:attribute name="align">left</xslt:attribute>
                 <xslt:attribute name="colsep">1</xslt:attribute>
                 <xslt:attribute name="rowsep">1</xslt:attribute>
                 <xslt:element name="colspec">
                     <xslt:attribute name="colwidth">1*</xslt:attribute>
                 </xslt:element>
                 <xslt:element name="colspec">
                     <xslt:attribute name="colwidth">3*</xslt:attribute>
                 </xslt:element>
                 <xslt:element name="thead">
                     <xslt:element name="row">
                         <xslt:element name="entry">
                             <xslt:processing-instruction name="dblatex bgcolor='#bbbbbb'"
                             />term</xslt:element>
                         <xslt:element name="entry">
                             <xslt:processing-instruction name="dblatex bgcolor='#bbbbbb'"
                             />description</xslt:element>
                     </xslt:element>
                 </xslt:element>
                 <xslt:element name="tbody">
                     
                     <xslt:for-each select="//xsd:simpleType[@name='anyUnitsAttr']//xsd:enumeration">
                         <xslt:element name="row">
                             <xslt:element name="entry">
                                 <xslt:element name="literal">
                                     <xslt:value-of select="@value"/>
                                 </xslt:element>
                             </xslt:element>
                             <xslt:element name="entry">
                                 <xslt:value-of select="."/>
                             </xslt:element>
                         </xslt:element>
                     </xslt:for-each>
                     
                 </xslt:element>
             </xslt:element>
            </xslt:element>
        </xslt:element>
        

    </xslt:template>

</xslt:stylesheet>
