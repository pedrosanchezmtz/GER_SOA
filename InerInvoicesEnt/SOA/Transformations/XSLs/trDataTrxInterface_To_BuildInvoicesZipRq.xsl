<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:ns0="http://soa.estrellaroja.com.mx/StructureTrxInterface" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tns="http://soa.estrellaroja.com.mx/InvoicesBiz" exclude-result-prefixes=" xsd oracle-xsl-mapper xsi xsl ns0 tns mhdr oraext xp20 xref socket dvm oraxsl"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:ns3="http://soa.estrellaroja.com.mx/FinancialBiz"
                xmlns:ns4="http://soa.estrellaroja.com.mx/EstrellaRojaCommons"
                xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/"
                xmlns:ns2="http://schemas.oracle.com/bpel/extension" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:client="http://soa.estrellaroja.com.mx/InvoicesEnt/bpelGetInvoices"
                xmlns:ns1="http://soa.estrellaroja.com.mx/InvoicesEnt"
                xmlns:ns5="http://soa.estrellaroja.com.mx/ERPIntegrationBiz"
                xmlns:ns6="http://soa.estrellaroja.com.mx/ERPIntegrationServiceTec"
                xmlns:ns7="http://soa.estrellaroja.com.mx/InvoicesBiz/ERPIntegrationServiceTec">
   <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../../WSDLs/bpelGetInvoices.wsdl"/>
            <oracle-xsl-mapper:rootElement name="DATA_DS" namespace="http://soa.estrellaroja.com.mx/StructureTrxInterface"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../../WSDLs/InvoicesBizWrapper.wsdl"/>
            <oracle-xsl-mapper:rootElement name="BuildInvoicesZipRq" namespace="http://soa.estrellaroja.com.mx/InvoicesBiz"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.2.0(XSLT Build 161003.0739.0018) AT [WED DEC 20 14:59:40 CST 2017].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
      <tns:BuildInvoicesZipRq>
         <tns:InputDm>
            <tns:DATA_DS>
               <xsl:for-each select="/ns0:DATA_DS/ns0:Q_CUSTOMER">
                  <tns:Q_CUSTOMER>
                     <tns:RFC>
                        <xsl:value-of select="ns0:RFC"/>
                     </tns:RFC>
                     <tns:PARTY_NAME>
                        <xsl:value-of select="ns0:PARTY_NAME"/>
                     </tns:PARTY_NAME>
                     <tns:PARTY_NUMBER>
                        <xsl:value-of select="ns0:PARTY_NUMBER"/>
                     </tns:PARTY_NUMBER>
                     <tns:PARTY_ID>
                        <xsl:value-of select="ns0:PARTY_ID"/>
                     </tns:PARTY_ID>
                     <tns:ACCOUNT_NUMBER>
                        <xsl:value-of select="ns0:ACCOUNT_NUMBER"/>
                     </tns:ACCOUNT_NUMBER>
                     <tns:CUST_ACCOUNT_ID>
                        <xsl:value-of select="ns0:CUST_ACCOUNT_ID"/>
                     </tns:CUST_ACCOUNT_ID>
                     <tns:CUST_ACCT_SITE_ID>
                        <xsl:value-of select="ns0:CUST_ACCT_SITE_ID"/>
                     </tns:CUST_ACCT_SITE_ID>
                     <tns:PARTY_SITE_NUMBER>
                        <xsl:value-of select="ns0:PARTY_SITE_NUMBER"/>
                     </tns:PARTY_SITE_NUMBER>
                     <tns:SITE_USE_ID>
                        <xsl:value-of select="ns0:SITE_USE_ID"/>
                     </tns:SITE_USE_ID>
                     <tns:SITE_USE_CODE>
                        <xsl:value-of select="ns0:SITE_USE_CODE"/>
                     </tns:SITE_USE_CODE>
                     <tns:PRIMARY_FLAG>
                        <xsl:value-of select="ns0:PRIMARY_FLAG"/>
                     </tns:PRIMARY_FLAG>
                     <tns:LOCATION>
                        <xsl:value-of select="ns0:LOCATION"/>
                     </tns:LOCATION>
                     <tns:LOCATION_ID>
                        <xsl:value-of select="ns0:LOCATION_ID"/>
                     </tns:LOCATION_ID>
                     <tns:PAYMENT_TERMS>
                        <xsl:value-of select="ns0:PAYMENT_TERMS"/>
                     </tns:PAYMENT_TERMS>
                     <tns:ORG_ID>
                        <xsl:value-of select="ns0:ORGANIZATION_ID"/>
                     </tns:ORG_ID>
                     <tns:BU_NAME>
                        <xsl:value-of select="ns0:NAME"/>
                     </tns:BU_NAME>
                  </tns:Q_CUSTOMER>
               </xsl:for-each>
            </tns:DATA_DS>
         </tns:InputDm>
      </tns:BuildInvoicesZipRq>
   </xsl:template>
</xsl:stylesheet>
