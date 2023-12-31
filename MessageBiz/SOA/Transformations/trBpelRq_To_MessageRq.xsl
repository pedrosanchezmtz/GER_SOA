<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:tns="http://soa.estrellaroja.com.mx/MessageTec" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns0="http://soa.estrellaroja.com.mx/MessageBiz" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes=" xsd oracle-xsl-mapper xsi xsl ns0 tns mhdr oraext xp20 xref socket dvm oraxsl" xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype" xmlns:ns1="http://soa.estrellaroja.com.mx/EstrellaRojaCommons" xmlns:client="http://xmlns.oracle.com/MessageBiz/MessageBiz/bpelSendEmail" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/">
   <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/bpelSendEmail.wsdl"/>
            <oracle-xsl-mapper:rootElement name="MessageRq" namespace="http://soa.estrellaroja.com.mx/MessageBiz"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/MessageTecWrapper.wsdl"/>
            <oracle-xsl-mapper:rootElement name="MessageRq" namespace="http://soa.estrellaroja.com.mx/MessageTec"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.2.0(XSLT Build 161003.0739.0018) AT [TUE JAN 23 12:42:26 CST 2018].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
      <tns:MessageRq>
         <tns:Message>
            <xsl:if test="/ns0:MessageRq/ns0:Message/ns0:Addresses">
               <tns:Addresses>
                  <xsl:for-each select="/ns0:MessageRq/ns0:Message/ns0:Addresses/ns0:AddressTo">
                     <tns:AddressTo>
                        <xsl:value-of select="."/>
                     </tns:AddressTo>
                  </xsl:for-each>
                  <xsl:for-each select="/ns0:MessageRq/ns0:Message/ns0:Addresses/ns0:AddressCC">
                     <tns:AddressCC>
                        <xsl:value-of select="."/>
                     </tns:AddressCC>
                  </xsl:for-each>
               </tns:Addresses>
            </xsl:if>
            <xsl:if test="/ns0:MessageRq/ns0:Message/ns0:Subject">
               <tns:Subject>
                  <xsl:value-of select="/ns0:MessageRq/ns0:Message/ns0:Subject"/>
               </tns:Subject>
            </xsl:if>
            <xsl:if test="/ns0:MessageRq/ns0:Message/ns0:Message">
               <tns:Message>
                  <xsl:value-of select="/ns0:MessageRq/ns0:Message/ns0:Message"/>
               </tns:Message>
            </xsl:if>
         </tns:Message>
      </tns:MessageRq>
   </xsl:template>
</xsl:stylesheet>