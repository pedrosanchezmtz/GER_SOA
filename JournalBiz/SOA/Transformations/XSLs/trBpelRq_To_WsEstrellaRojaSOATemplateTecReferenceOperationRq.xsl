<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:tns="http://soa.estrellaroja.com.mx/FinancialsTec" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns0="http://soa.estrellaroja.com.mx/JournalBiz" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes="xsd oracle-xsl-mapper xsi xsl ns0 tns mhdr oraext xp20 xref socket dvm oraxsl" xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype" xmlns:cmn="http://soa.estrellaroja.com.mx/EstrellaRojaCommons" xmlns:ns1="http://schemas.oracle.com/bpel/extension" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:client="http://soa.estrellaroja.com.mx/JournalBiz/bpelGetJournal" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:ns2="http://soa.estrellaroja.com.mx/FinancialsTec/types"
                xmlns:ns3="http://TargetNamespace.com/ServiceName">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/bpelGetJournal.wsdl"/>
        <oracle-xsl-mapper:rootElement name="GetJournalRq" namespace="http://soa.estrellaroja.com.mx/JournalBiz"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/FinancialsTecWrapper.wsdl"/>
        <oracle-xsl-mapper:rootElement name="GetJournalRq" namespace="http://soa.estrellaroja.com.mx/FinancialsTec"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.1.0(XSLT Build 160608.1900.0023) AT [TUE MAR 21 16:54:05 CST 2017].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <tns:GetJournalRq/>
  </xsl:template>
</xsl:stylesheet>