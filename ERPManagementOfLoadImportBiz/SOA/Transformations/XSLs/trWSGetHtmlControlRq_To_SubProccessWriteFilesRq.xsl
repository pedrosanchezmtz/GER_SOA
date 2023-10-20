<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:ns1="http://soa.estrellaroja.com.mx/ERPManagementOfLoadImportBiz" xmlns:ns0="http://soa.estrellaroja.com.mx/SOAUtilitiesTec" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes=" xsd oracle-xsl-mapper xsi xsl ns1 ns0 mhdr oraext xp20 xref socket dvm oraxsl"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:ns2="http://soa.estrellaroja.com.mx/EstrellaRojaCommons"
                xmlns:client="http://soa.estrellaroja.com.mx/ERPManagementOfLoadImportBiz/bpelSendReportInterface"
                xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/"
                xmlns:ns4="http://schemas.oracle.com/bpel/extension" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ns5="http://soa.estrellaroja.com.mx/ERPManagementOfLoadImportBiz/FndInterfaceControl"
                xmlns:ns3="http://soa.estrellaroja.com.mx/SOAUtilitiesTec/types">
   <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="oramds:/apps/SOA/SOAUtilitiesTec/SOAUtilitiesTec.wsdl"/>
            <oracle-xsl-mapper:rootElement name="GetHtmlControlRq" namespace="http://soa.estrellaroja.com.mx/SOAUtilitiesTec"/>
         </oracle-xsl-mapper:source>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../../WSDLs/bpelSendReportInterface.wsdl"/>
            <oracle-xsl-mapper:rootElement name="SendReportInterfaceRq" namespace="http://soa.estrellaroja.com.mx/ERPManagementOfLoadImportBiz"/>
            <oracle-xsl-mapper:param name="inputVariable.SendReportInterfaceRq"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../../WSDLs/bpelSendReportInterface.wsdl"/>
            <oracle-xsl-mapper:rootElement name="UploadFileRq" namespace="http://soa.estrellaroja.com.mx/ERPManagementOfLoadImportBiz"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.2.0(XSLT Build 161003.0739.0018) AT [WED JAN 24 01:03:57 CST 2018].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:param name="inputVariable.SendReportInterfaceRq"/>
   <xsl:template match="/">
      <ns1:UploadFileRq>
         <ns1:ContentFileProcessed>
            <xsl:value-of select="$inputVariable.SendReportInterfaceRq/ns1:SendReportInterfaceRq/ns1:Files/ns1:ContentProcessedFile"/>
         </ns1:ContentFileProcessed>
         <ns1:FileName>
            <xsl:value-of select="$inputVariable.SendReportInterfaceRq/ns1:SendReportInterfaceRq/ns1:Files/ns1:FileName"/>
         </ns1:FileName>
         <ns1:ProcessName>
            <xsl:value-of select="$inputVariable.SendReportInterfaceRq/ns1:SendReportInterfaceRq/ns1:ProcessName"/>
         </ns1:ProcessName>
         <xsl:choose>
            <xsl:when test="/ns0:GetHtmlControlRq/ns0:TotalErrors = 0">
               <ns1:TypeProcessed>
                  <xsl:value-of select="&quot;SUCCESS&quot;"/>
               </ns1:TypeProcessed>
            </xsl:when>
            <xsl:otherwise>
               <ns1:TypeProcessed>
                  <xsl:value-of select="&quot;ERROR&quot;"/>
               </ns1:TypeProcessed>
            </xsl:otherwise>
         </xsl:choose>
      </ns1:UploadFileRq>
   </xsl:template>
</xsl:stylesheet>
