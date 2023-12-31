<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns0="http://soa.estrellaroja.com.mx/InvoicesEnt" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" exclude-result-prefixes=" oracle-xsl-mapper xsi xsd xsl ns0 socket dvm mhdr oraxsl oraext xp20 xref"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:ns1="http://soa.estrellaroja.com.mx/EstrellaRojaCommons"
                xmlns:ns3="http://soa.estrellaroja.com.mx/StructureTrxInterface"
                xmlns:ns2="http://soa.estrellaroja.com.mx/ERPIntegrationBiz"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:client="http://soa.estrellaroja.com.mx/InvoicesEnt/bpelLoadInvoices"
                xmlns:ns4="http://soa.estrellaroja.com.mx/InvoicesBiz">
   <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../../WSDLs/bpelLoadInvoices.wsdl"/>
            <oracle-xsl-mapper:rootElement name="LoadInvoicesRq" namespace="http://soa.estrellaroja.com.mx/InvoicesEnt"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../../WSDLs/bpelLoadInvoices.wsdl"/>
            <oracle-xsl-mapper:rootElement name="ListImportToErpCloudRq" namespace="http://soa.estrellaroja.com.mx/InvoicesEnt"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.2.0(XSLT Build 161003.0739.0018) AT [TUE MAR 13 03:38:51 CST 2018].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
      <ns0:ListImportToErpCloudRq>
         <ns0:TargetInterface>
            <xsl:value-of select="/ns0:LoadInvoicesRq/ns0:TargetInterface"/>
         </ns0:TargetInterface>
         <xsl:for-each select="/ns0:LoadInvoicesRq/ns0:File">
            <ns0:ListFile>
               <ns0:Content>
                  <xsl:if test="ns0:Content/@xsi:nil">
                     <xsl:attribute name="nil" namespace="http://www.w3.org/2001/XMLSchema-instance">
                        <xsl:value-of select="ns0:Content/@xsi:nil"/>
                     </xsl:attribute>
                  </xsl:if>
                  <xsl:value-of select="ns0:Content"/>
               </ns0:Content>
               <ns0:FileName>
                  <xsl:if test="ns0:FileName/@xsi:nil">
                     <xsl:attribute name="nil" namespace="http://www.w3.org/2001/XMLSchema-instance">
                        <xsl:value-of select="ns0:FileName/@xsi:nil"/>
                     </xsl:attribute>
                  </xsl:if>
                  <xsl:value-of select="ns0:FileName"/>
               </ns0:FileName>
               <xsl:if test="ns0:ContentType">
                  <ns0:ContentType>
                     <xsl:if test="ns0:ContentType/@xsi:nil">
                        <xsl:attribute name="nil" namespace="http://www.w3.org/2001/XMLSchema-instance">
                           <xsl:value-of select="ns0:ContentType/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="ns0:ContentType"/>
                  </ns0:ContentType>
               </xsl:if>
               <xsl:if test="ns0:DocumentTitle">
                  <ns0:DocumentTitle>
                     <xsl:if test="ns0:DocumentTitle/@xsi:nil">
                        <xsl:attribute name="nil" namespace="http://www.w3.org/2001/XMLSchema-instance">
                           <xsl:value-of select="ns0:DocumentTitle/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="ns0:DocumentTitle"/>
                  </ns0:DocumentTitle>
               </xsl:if>
               <xsl:if test="ns0:DocumentName">
                  <ns0:DocumentName>
                     <xsl:if test="ns0:DocumentName/@xsi:nil">
                        <xsl:attribute name="nil" namespace="http://www.w3.org/2001/XMLSchema-instance">
                           <xsl:value-of select="ns0:DocumentName/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="ns0:DocumentName"/>
                  </ns0:DocumentName>
               </xsl:if>
               <xsl:if test="ns0:DocumentId">
                  <ns0:DocumentId>
                     <xsl:if test="ns0:DocumentId/@xsi:nil">
                        <xsl:attribute name="nil" namespace="http://www.w3.org/2001/XMLSchema-instance">
                           <xsl:value-of select="ns0:DocumentId/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="ns0:DocumentId"/>
                  </ns0:DocumentId>
               </xsl:if>
            </ns0:ListFile>
         </xsl:for-each>
      </ns0:ListImportToErpCloudRq>
   </xsl:template>
</xsl:stylesheet>
