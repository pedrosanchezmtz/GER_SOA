<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:tns="http://soa.estrellaroja.com.mx/MessageTec" xmlns:ns0="http://soa.estrellaroja.com.mx/SOAUtilitiesTec" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes=" xsd oracle-xsl-mapper xsi xsl ns0 tns mhdr oraext xp20 xref socket dvm oraxsl" xmlns:ns1="http://soa.estrellaroja.com.mx/EstrellaRojaCommons" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ns2="http://soa.estrellaroja.com.mx/SOAUtilitiesTec/types"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/">
   <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../../WSDLs/External/SOAUtilitiesTecWrapper.wsdl"/>
            <oracle-xsl-mapper:rootElement name="GetHtmlControlRs" namespace="http://soa.estrellaroja.com.mx/SOAUtilitiesTec"/>
         </oracle-xsl-mapper:source>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../../WSDLs/External/SOAUtilitiesTecWrapper.wsdl"/>
            <oracle-xsl-mapper:rootElement name="GetHtmlControlRs" namespace="http://soa.estrellaroja.com.mx/SOAUtilitiesTec"/>
            <oracle-xsl-mapper:param name="varGetUpdateHtmlControlRs.GetHtmlControlRs"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../../WSDLs/External/MessageTecWrapper.wsdl"/>
            <oracle-xsl-mapper:rootElement name="MessageRq" namespace="http://soa.estrellaroja.com.mx/MessageTec"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.2.0(XSLT Build 161003.0739.0018) AT [THU DEC 28 18:38:32 CST 2017].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:param name="varGetUpdateHtmlControlRs.GetHtmlControlRs"/>
   <xsl:template match="/">
      <tns:MessageRq>
         <tns:Message>
            <tns:Message>
               <xsl:value-of select="concat (&quot;&lt;h3>Creaci&amp;oacute;n&lt;/h3> &lt;br />&quot;, /ns0:GetHtmlControlRs/ns0:Return/ns0:HtmlControl, &quot;&lt;h3>Actualizaci&amp;oacute;n&lt;/h3> &lt;br />&quot;, $varGetUpdateHtmlControlRs.GetHtmlControlRs/ns0:GetHtmlControlRs/ns0:Return/ns0:HtmlControl )"/>
            </tns:Message>
         </tns:Message>
      </tns:MessageRq>
   </xsl:template>
</xsl:stylesheet>