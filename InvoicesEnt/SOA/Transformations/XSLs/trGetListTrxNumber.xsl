<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns0="http://soa.estrellaroja.com.mx/InvoicesBiz" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" exclude-result-prefixes=" oracle-xsl-mapper xsi xsd xsl ns0 socket dvm mhdr oraxsl oraext xp20 xref"
                xmlns:ns1="http://soa.estrellaroja.com.mx/EstrellaRojaCommons"
                xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ns2="http://soa.estrellaroja.com.mx/InvoicesBiz/ERPIntegrationServiceTec">
   <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="oramds:/apps/SOA/InvoicesBiz/InvoicesBiz.wsdl"/>
            <oracle-xsl-mapper:rootElement name="BuildInvoicesZipRs" namespace="http://soa.estrellaroja.com.mx/InvoicesBiz"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="oramds:/apps/SOA/InvoicesBiz/InvoicesBiz.wsdl"/>
            <oracle-xsl-mapper:rootElement name="ListTrxNumber" namespace="http://soa.estrellaroja.com.mx/InvoicesBiz"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.2.0(XSLT Build 161003.0739.0018) AT [MON JAN 15 15:23:19 CST 2018].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
      <ns0:ListTrxNumber>
         <ns0:TrxNumberInProcess>
            <xsl:for-each select="/ns0:BuildInvoicesZipRs/ns0:Return/ns0:ListOutPutBuildInvoices/ns0:ListTrxNumber">
               <ns0:ListTrxNumber>
                  <ns0:Trx_Number>
                     <xsl:value-of select="ns0:Trx_Number"/>
                  </ns0:Trx_Number>
               </ns0:ListTrxNumber>
            </xsl:for-each>
            <ns0:BatchId>
               <xsl:value-of select="/ns0:BuildInvoicesZipRs/ns0:Return/ns0:ListOutPutBuildInvoices/ns0:BatchId"/>
            </ns0:BatchId>
            <xsl:for-each select="/ns0:BuildInvoicesZipRs/ns0:Return/ns0:ListOutPutBuildInvoices/ns0:ListUniqueBus">
               <ns0:ListBusAndOrgId>
                  <ns0:BuName>
                     <xsl:value-of select="ns0:BusinessUnidName"/>
                  </ns0:BuName>
                  <ns0:OrgId>
                     <xsl:value-of select="ns0:OrganizationId"/>
                  </ns0:OrgId>
               </ns0:ListBusAndOrgId>
            </xsl:for-each>
         </ns0:TrxNumberInProcess>
      </ns0:ListTrxNumber>
   </xsl:template>
</xsl:stylesheet>
