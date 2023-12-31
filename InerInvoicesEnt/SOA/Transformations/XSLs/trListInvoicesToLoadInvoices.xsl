<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:ns0="http://soa.estrellaroja.com.mx/StructureTrxInterface" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:ns2="http://soa.estrellaroja.com.mx/InvoicesEnt" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns1="http://soa.estrellaroja.com.mx/InvoicesBiz" exclude-result-prefixes=" xsd oracle-xsl-mapper xsi xsl ns0 ns2 ns1 mhdr oraext xp20 xref socket dvm oraxsl"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:ns4="http://soa.estrellaroja.com.mx/FinancialBiz"
                xmlns:ns6="http://soa.estrellaroja.com.mx/EstrellaRojaCommons"
                xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/"
                xmlns:ns3="http://schemas.oracle.com/bpel/extension"
                xmlns:ns5="http://soa.estrellaroja.com.mx/ERPIntegrationBiz"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:client="http://soa.estrellaroja.com.mx/InvoicesEnt/bpelGetInvoices"
                xmlns:ns7="http://soa.estrellaroja.com.mx/ERPIntegrationServiceTec"
                xmlns:ns8="http://soa.estrellaroja.com.mx/InvoicesBiz/ERPIntegrationServiceTec">
   <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../../WSDLs/bpelGetInvoices.wsdl"/>
            <oracle-xsl-mapper:rootElement name="StringHelper" namespace="http://soa.estrellaroja.com.mx/StructureTrxInterface"/>
         </oracle-xsl-mapper:source>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../../WSDLs/InvoicesBizWrapper.wsdl"/>
            <oracle-xsl-mapper:rootElement name="ListTrxNumber" namespace="http://soa.estrellaroja.com.mx/InvoicesBiz"/>
            <oracle-xsl-mapper:param name="varCollectionTrxNumber"/>
         </oracle-xsl-mapper:source>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../../WSDLs/bpelGetInvoices.wsdl"/>
            <oracle-xsl-mapper:rootElement name="ListImportToErpCloudRq" namespace="http://soa.estrellaroja.com.mx/InvoicesEnt"/>
            <oracle-xsl-mapper:param name="varListWsErpIntegrationBizImportToErpCloudRq"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../../WSDLs/bpelGetInvoices.wsdl"/>
            <oracle-xsl-mapper:rootElement name="LoadInvoicesRq" namespace="http://soa.estrellaroja.com.mx/InvoicesEnt"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.2.0(XSLT Build 161003.0739.0018) AT [TUE MAR 13 03:14:29 CST 2018].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:param name="varCollectionTrxNumber"/>
   <xsl:param name="varListWsErpIntegrationBizImportToErpCloudRq"/>
   <xsl:template match="/">
      <ns2:LoadInvoicesRq>
         <ns2:TargetInterface>
            <xsl:value-of select="$varListWsErpIntegrationBizImportToErpCloudRq/ns2:ListImportToErpCloudRq/ns2:TargetInterface"/>
         </ns2:TargetInterface>
         <xsl:for-each select="$varListWsErpIntegrationBizImportToErpCloudRq/ns2:ListImportToErpCloudRq/ns2:ListFile">
            <ns2:File>
               <ns2:Content>
                  <xsl:value-of select="ns5:Content"/>
               </ns2:Content>
               <ns2:FileName>
               <xsl:value-of select="ns5:FileName"/>
               </ns2:FileName>
                  <ns2:ContentType>
                     <xsl:value-of select="ns5:ContentType"/>
                  </ns2:ContentType>
                  <ns2:DocumentTitle>
                     <xsl:value-of select="ns5:DocumentTitle"/>
                  </ns2:DocumentTitle>
                  <ns2:DocumentName>
                     <xsl:value-of select="ns5:DocumentName"/>
                  </ns2:DocumentName>
                  <ns2:DocumentId>
                     <xsl:value-of select="ns5:DocumentId"/>
                  </ns2:DocumentId>
            </ns2:File>
         </xsl:for-each>
         <ns2:BatchId>
            <xsl:value-of select="/ns0:StringHelper/ns0:ListValues/ns0:value"/>
         </ns2:BatchId>
         <ns2:NumLines>
            <xsl:value-of select="count ($varCollectionTrxNumber/ns1:ListTrxNumber/ns1:TrxNumberInProcess/ns1:ListTrxNumber )"/>
         </ns2:NumLines>
         <xsl:for-each select="$varCollectionTrxNumber/ns1:ListTrxNumber/ns1:TrxNumberInProcess/ns1:ListBusAndOrgId">
            <ns2:ListBusAndOrgId>
               <ns2:OrgId>
                  <xsl:value-of select="ns1:OrgId"/>
               </ns2:OrgId>
               <ns2:BuName>
                  <xsl:value-of select="ns1:BuName"/>
               </ns2:BuName>
            </ns2:ListBusAndOrgId>
         </xsl:for-each>
      </ns2:LoadInvoicesRq>
   </xsl:template>
</xsl:stylesheet>
