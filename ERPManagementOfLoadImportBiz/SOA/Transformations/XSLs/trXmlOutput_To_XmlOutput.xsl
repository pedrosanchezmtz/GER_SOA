<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:ns0="http://soa.estrellaroja.com.mx/ERPManagementOfLoadImportBiz/FndInterfaceControl" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" exclude-result-prefixes=" oracle-xsl-mapper xsi xsd xsl ns0 socket dvm mhdr oraxsl oraext xp20 xref"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:ns1="http://soa.estrellaroja.com.mx/ERPManagementOfLoadImportBiz"
                xmlns:ns3="http://soa.estrellaroja.com.mx/EstrellaRojaCommons"
                xmlns:client="http://soa.estrellaroja.com.mx/ERPManagementOfLoadImportBiz/bpelSendReportInterface"
                xmlns:ns2="http://schemas.oracle.com/bpel/extension" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">
   <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../../WSDLs/bpelSendReportInterface.wsdl"/>
            <oracle-xsl-mapper:rootElement name="DATA_DS" namespace="http://soa.estrellaroja.com.mx/ERPManagementOfLoadImportBiz/FndInterfaceControl"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../../WSDLs/bpelSendReportInterface.wsdl"/>
            <oracle-xsl-mapper:rootElement name="DATA_DS" namespace="http://soa.estrellaroja.com.mx/ERPManagementOfLoadImportBiz/FndInterfaceControl"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.2.0(XSLT Build 161003.0739.0018) AT [TUE JAN 23 22:06:23 CST 2018].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
      <ns0:DATA_DS>
         <ns0:P_LOAD_REQUEST_ID>
            <xsl:value-of select="/ns0:DATA_DS/P_LOAD_REQUEST_ID"/>
         </ns0:P_LOAD_REQUEST_ID>
         <ns0:P_TYPE_INTERFACES>
            <xsl:value-of select="/ns0:DATA_DS/P_TYPE_INTERFACES"/>
         </ns0:P_TYPE_INTERFACES>
         <ns0:P_BATCH_ID>
            <xsl:value-of select="/ns0:DATA_DS/P_BATCH_ID"/>
         </ns0:P_BATCH_ID>
         <xsl:for-each select="/ns0:DATA_DS/G_HEADER">
            <ns0:G_HEADER>
               <ns0:STATUS>
                  <xsl:value-of select="STATUS"/>
               </ns0:STATUS>
               <ns0:INTERFACETYPE>
                  <xsl:value-of select="INTERFACETYPE"/>
               </ns0:INTERFACETYPE>
               <ns0:BATCHID>
                  <xsl:value-of select="BATCHID"/>
               </ns0:BATCHID>
               <ns0:HEADERID>
                  <xsl:value-of select="HEADERID"/>
               </ns0:HEADERID>
               <ns0:LINEID>
                  <xsl:value-of select="LINEID"/>
               </ns0:LINEID>
               <ns0:ERRORMSG>
                  <xsl:value-of select="ERRORMSG"/>
               </ns0:ERRORMSG>
               <ns0:DATAVALUE>
                  <xsl:value-of select="DATAVALUE"/>
               </ns0:DATAVALUE>
               <ns0:LOADREQUESTID>
                  <xsl:value-of select="LOADREQUESTID"/>
               </ns0:LOADREQUESTID>
               <ns0:REQUESTID>
                  <xsl:value-of select="REQUESTID"/>
               </ns0:REQUESTID>
            </ns0:G_HEADER>
         </xsl:for-each>
      </ns0:DATA_DS>
   </xsl:template>
</xsl:stylesheet>
