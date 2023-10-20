<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns0="http://soa.estrellaroja.com.mx/ERPIntegrationBiz" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" exclude-result-prefixes=" oracle-xsl-mapper xsi xsd xsl ns0 socket dvm mhdr oraxsl oraext xp20 xref"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:client="http://soa.estrellaroja.mx/SFTPEstrellaRojaEnt/bpelManagementsStatementsBankSantander"
                xmlns:ns1="http://soa.estrellaroja.com.mx/EstrellaRojaCommons"
                xmlns:ns2="http://soa.estrellaroja.com.mx/ERPIntegrationBiz/types"
                xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:ns3="http://soa.estrellaroja.com.mx/StructureCodeBank"
                xmlns:ns4="http://soa.estrellaroja.com.mx/ftpReadFileSant"
                xmlns:ns5="http://soa.estrellaroja.com.mx/ftpServiceReaderFileSantander"
                xmlns:ns6="http://soa.estrellaroja.com.mx/BankCodes"
                xmlns:ns7="http://soa.estrellaroja.com.mx/SFTPEstrellaRojaEnt"
                xmlns:ns8="http://soa.estrellaroja.com.mx/SFTPEstrellaRojaEnt/StructureBankDetails"
                xmlns:ns10="http://soa.estrellaroja.com.mx/ERPManagementOfLoadImportBiz"
                xmlns:ns9="http://soa.estrellaroja.com.mx/MessageBiz">
   <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/bpelManagementsStatementsBankSantander.wsdl"/>
            <oracle-xsl-mapper:rootElement name="AccountStatementSantander" namespace="http://soa.estrellaroja.com.mx/SFTPEstrellaRojaEnt"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/ERPIntegrationBizWrapper.wsdl"/>
            <oracle-xsl-mapper:rootElement name="GenerateReportRq" namespace="http://soa.estrellaroja.com.mx/ERPIntegrationBiz"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.2.0(XSLT Build 161003.0739.0018) AT [THU DEC 28 11:44:13 CST 2017].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
      <ns0:GenerateReportRq>
         <ns0:TargetInterface>
            <xsl:value-of select="dvm:lookupValue (&quot;DVM/dvmGetTrxType.dvm&quot;, &quot;Code&quot;, &quot;TargetInterface&quot;, &quot;Value&quot;, &quot;&quot; )"/>
         </ns0:TargetInterface>
         <ns0:IntegrationName>
            <xsl:value-of select="dvm:lookupValue (&quot;DVM/dvmGetTrxType.dvm&quot;, &quot;Code&quot;, &quot;IntegrationName&quot;, &quot;Value&quot;, &quot;&quot; )"/>
         </ns0:IntegrationName>
         <ns0:ProcessName>
            <xsl:value-of select="dvm:lookupValue (&quot;DVM/dvmGetTrxType.dvm&quot;, &quot;Code&quot;, &quot;ProcessName&quot;, &quot;Value&quot;, &quot;&quot; )"/>
         </ns0:ProcessName>
         <ns0:ReportName>
            <xsl:value-of select="dvm:lookupValue (&quot;DVM/dvmGetTrxType.dvm&quot;, &quot;Code&quot;, &quot;ReportName&quot;, &quot;Value&quot;, &quot;&quot; )"/>
         </ns0:ReportName>
         <ns0:parameterNameValues>
            <ns0:item>
               <ns0:name>
                  <xsl:value-of select="dvm:lookupValue (&quot;DVM/dvmGetTrxType.dvm&quot;, &quot;Code&quot;, &quot;PTRXCODE&quot;, &quot;Value&quot;, &quot;&quot; )"/>
               </ns0:name>
               <ns0:values>
                  <ns0:item/>
               </ns0:values>
            </ns0:item>
         </ns0:parameterNameValues>
      </ns0:GenerateReportRq>
   </xsl:template>
</xsl:stylesheet>
