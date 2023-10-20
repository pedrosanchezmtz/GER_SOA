<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:ns0="http://soa.estrellaroja.com.mx/StructureTrxInterface" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" exclude-result-prefixes=" oracle-xsl-mapper xsi xsd xsl ns0 socket dvm mhdr oraxsl oraext xp20 xref"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:ns3="http://soa.estrellaroja.com.mx/EstrellaRojaCommons"
                xmlns:ns2="http://soa.estrellaroja.com.mx/ERPIntegrationBiz"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ns1="http://soa.estrellaroja.com.mx/InvoicesEnt"
                xmlns:client="http://soa.estrellaroja.com.mx/InvoicesEnt/bpelLoadInvoices"
                xmlns:ns4="http://soa.estrellaroja.com.mx/InvoicesBiz">
   <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../../WSDLs/bpelLoadInvoices.wsdl"/>
            <oracle-xsl-mapper:rootElement name="DATA_CUSTTRXID_DS" namespace="http://soa.estrellaroja.com.mx/StructureTrxInterface"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../../WSDLs/bpelLoadInvoices.wsdl"/>
            <oracle-xsl-mapper:rootElement name="DATA_CUSTTRXID_DS" namespace="http://soa.estrellaroja.com.mx/StructureTrxInterface"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.2.0(XSLT Build 161003.0739.0018) AT [FRI JAN 26 09:27:14 CST 2018].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
      <ns0:DATA_CUSTTRXID_DS>
         <ns0:P_ORG_ID>
            <xsl:value-of select="/ns0:DATA_CUSTTRXID_DS/ns0:P_ORG_ID"/>
         </ns0:P_ORG_ID>
         <ns0:P_TRX_NUMBER>
            <xsl:value-of select="/ns0:DATA_CUSTTRXID_DS/ns0:P_TRX_NUMBER"/>
         </ns0:P_TRX_NUMBER>
         <ns0:G_CUST_TRX_ID>
            <ns0:CUSTOMER_TRX_ID>
               <xsl:value-of select="/ns0:DATA_CUSTTRXID_DS/ns0:G_CUST_TRX_ID/ns0:CUSTOMER_TRX_ID"/>
            </ns0:CUSTOMER_TRX_ID>
            <ns0:TRX_NUMBER>
               <xsl:value-of select="/ns0:DATA_CUSTTRXID_DS/ns0:G_CUST_TRX_ID/ns0:TRX_NUMBER"/>
            </ns0:TRX_NUMBER>
            <ns0:ATTRIBUTE3>
               <xsl:value-of select="/ns0:DATA_CUSTTRXID_DS/ns0:G_CUST_TRX_ID/ns0:ATTRIBUTE3"/>
            </ns0:ATTRIBUTE3>
            <ns0:ORG_ID>
               <xsl:value-of select="/ns0:DATA_CUSTTRXID_DS/ns0:G_CUST_TRX_ID/ns0:ORG_ID"/>
            </ns0:ORG_ID>
         </ns0:G_CUST_TRX_ID>
      </ns0:DATA_CUSTTRXID_DS>
   </xsl:template>
</xsl:stylesheet>
