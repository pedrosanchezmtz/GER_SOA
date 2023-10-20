<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:tns="http://soa.estrellaroja.com.mx/SOAUtilitiesTec" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/top/EAMSelectWorkOrders" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes=" xsd oracle-xsl-mapper xsi xsl ns0 tns mhdr oraext xp20 xref socket dvm oraxsl"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/db/OSB_ESTRELLA_ROJA/DEV_EAMWorkOrdersTec/EAMSelectWorkOrders"
                xmlns:ns2="http://soa.estrellaroja.com.mx/EstrellaRojaCommons"
                xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/"
                xmlns:ns3="http://soa.estrellaroja.com.mx/SOAUtilitiesTec/types">
   <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/TransactionalWorkOrders/EAMSelectWorkOrders.wsdl"/>
            <oracle-xsl-mapper:rootElement name="XxerZamWoBlksTblCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/EAMSelectWorkOrders"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/SOAUtilitiesTecWrapper.wsdl"/>
            <oracle-xsl-mapper:rootElement name="GetHtmlControlRq" namespace="http://soa.estrellaroja.com.mx/SOAUtilitiesTec"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.2.0(XSLT Build 161003.0739.0018) AT [SUN JAN 19 02:19:21 CST 2020].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
      <tns:GetHtmlControlRq>
         <tns:TotalSucceeded>
            <xsl:value-of select="count (/ns0:XxerZamWoBlksTblCollection/ns0:XxerZamWoBlksTbl[(./ns0:processStatus = &quot;UNBLOCKED&quot;)] ) + count (/ns0:XxerZamWoBlksTblCollection/ns0:XxerZamWoBlksTbl[(./ns0:processStatus = &quot;BLOCKED&quot;)] )"/>
         </tns:TotalSucceeded>
         <tns:TotalErrors>
            <xsl:value-of select="count (/ns0:XxerZamWoBlksTblCollection/ns0:XxerZamWoBlksTbl[((./ns0:processStatus != &quot;UNBLOCKED&quot;) and (./ns0:processStatus != &quot;BLOCKED&quot;))] )"/>
         </tns:TotalErrors>
         <tns:TotalProcessed>
            <xsl:value-of select="count (/ns0:XxerZamWoBlksTblCollection/ns0:XxerZamWoBlksTbl )"/>
         </tns:TotalProcessed>
         <tns:ErrorsDetails>
            <xsl:for-each select="/ns0:XxerZamWoBlksTblCollection/ns0:XxerZamWoBlksTbl">
               <tns:ErrorDetail>
                  <tns:DataValue>
                     <xsl:value-of select="ns0:oraWoAssetNumber"/>
                  </tns:DataValue>
                  <tns:ErrorMessage>
                     <xsl:value-of select="concat (ns0:message, &quot;-&quot;, &quot;ORA-WO: &quot;, ns0:oraWoNumber )"/>
                  </tns:ErrorMessage>
               </tns:ErrorDetail>
            </xsl:for-each>
         </tns:ErrorsDetails>
      </tns:GetHtmlControlRq>
   </xsl:template>
</xsl:stylesheet>
