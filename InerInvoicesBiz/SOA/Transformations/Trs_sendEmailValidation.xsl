<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:tns="http://soa.estrellaroja.com.mx/MessageTec"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:ns0="http://soa.estrellaroja.com.mx/InvoicesBiz"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ns1="http://soa.estrellaroja.com.mx/ValidacionAutomaticTec"
                exclude-result-prefixes="xsd oracle-xsl-mapper xsi xsl ns0 ns1 tns mhdr oraext xp20 xref socket dvm oraxsl"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:strClass="http://www.oracle.com/XSL/Transform/java/java.lang.String"
                xmlns:ns2="http://soa.estrellaroja.com.mx/EstrellaRojaCommons"
                xmlns:erp="http://soa.estrellaroja.com.mx/InvoicesBiz/ERPIntegrationServiceTec"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/OSB/INER_ValidacionAutomaticTec/ERPValidacionConsultBS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="ValidationOracleXmlResponse"
                                       namespace="http://soa.estrellaroja.com.mx/ValidacionAutomaticTec"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="XSD">
        <oracle-xsl-mapper:schema location="oramds:/apps/SOA/INER_InvoicesBiz/InvoicesBiz.xsd"/>
        <oracle-xsl-mapper:rootElement name="InvoiceAP" namespace="http://soa.estrellaroja.com.mx/InvoicesBiz"/>
        <oracle-xsl-mapper:param name="varInvoiceAP"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/SOA/MessageTec/MessageTec.wsdl"/>
        <oracle-xsl-mapper:rootElement name="MessageRq" namespace="http://soa.estrellaroja.com.mx/MessageTec"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.4.0(XSLT Build 190828.0353.3300) AT [SUN JUN 12 17:13:54 CDT 2022].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:param name="varInvoiceAP"/>
  <xsl:param name="varUUID"/>
  <xsl:param name="varInstance"/>
  <xsl:template match="/">
    <tns:MessageRq>
      <tns:Message>
        <xsl:variable name="body"
                      select="dvm:lookupValue ('DVMs/dvmInvoicesBiz.dvm','Code','TemplateEmail','Value','No Body Email','Component','ValidateInvoicesAP')"/>
        <xsl:choose>
          <xsl:when test="/ns1:ValidationOracleXmlResponse/ns1:success = 'true'">
            <xsl:variable name="estatus">VALIDADA</xsl:variable>
            <xsl:variable name="varColorEstatus">color:#0F9D58</xsl:variable>
             <tns:Body>
              <xsl:value-of select='  
		  strClass:replaceAll(  
		  strClass:replaceAll(
                  strClass:replaceAll(
		  strClass:replaceAll(			
		  strClass:replaceAll(			
		  strClass:replaceAll(			
		  strClass:replaceAll(			
		  strClass:replaceAll(			
		  strClass:replaceAll(			
		  strClass:replaceAll(
		  $body,
		  "@fechaActual@",xp20:current-date ( )),
		  "@proveedor@",$varInvoiceAP/ns0:InvoiceAP/ns0:SupplierName),
		  "@estatus@",$estatus),			
                  "@folio@",$varInvoiceAP/ns0:InvoiceAP/ns0:InvoiceNumber),	
		  "@uuid@",$varUUID),
                  "@colorEstatus@",$varColorEstatus),
                  "@monto@",$varInvoiceAP/ns0:InvoiceAP/ns0:Total),	
		  "@ordenCompra@",$varInvoiceAP/ns0:InvoiceAP/ns0:OrderNumber),
		  "@mensaje@",/ns1:ValidationOracleXmlResponse/ns1:message),	
		  "@instance@",$varInstance)
		  '/>
            </tns:Body>
          </xsl:when>
          <xsl:when test="/ns1:ValidationOracleXmlResponse/ns1:success = 'true' and /ns1:ValidationOracleXmlResponse/ns1:mustModify = 'true'">
            <xsl:variable name="estatus">EN PROCESO DE ACLARACION/PAGO</xsl:variable>
            <xsl:variable name="varColorEstatus">color:#F4B400</xsl:variable>
             <tns:Body>
              <xsl:value-of select='  
		  strClass:replaceAll(  
		  strClass:replaceAll(
                  strClass:replaceAll(
		  strClass:replaceAll(			
		  strClass:replaceAll(			
		  strClass:replaceAll(			
		  strClass:replaceAll(			
		  strClass:replaceAll(			
		  strClass:replaceAll(			
		  strClass:replaceAll(
		  $body,
		  "@fechaActual@",xp20:current-date ( )),
		  "@proveedor@",$varInvoiceAP/ns0:InvoiceAP/ns0:SupplierName),
		  "@estatus@",$estatus),			
                  "@folio@",$varInvoiceAP/ns0:InvoiceAP/ns0:InvoiceNumber),	
		  "@uuid@",$varUUID),
                  "@colorEstatus@",$varColorEstatus),
                  "@monto@",$varInvoiceAP/ns0:InvoiceAP/ns0:Total),	
		  "@ordenCompra@",$varInvoiceAP/ns0:InvoiceAP/ns0:OrderNumber),
		  "@mensaje@",/ns1:ValidationOracleXmlResponse/ns1:message),	
		  "@instance@",$varInstance)
		  '/>
            </tns:Body>
          </xsl:when>
          <xsl:otherwise>
            <xsl:variable name="estatus">RECHAZADA</xsl:variable>
            <xsl:variable name="varColorEstatus">color:#DB4437</xsl:variable>
             <tns:Body>
              <xsl:value-of select='
                  strClass:replaceAll(
		  strClass:replaceAll(
                  strClass:replaceAll(
		  strClass:replaceAll(			
		  strClass:replaceAll(			
		  strClass:replaceAll(			
		  strClass:replaceAll(			
		  strClass:replaceAll(			
		  strClass:replaceAll(			
		  strClass:replaceAll(
		  $body,
		  "@fechaActual@",xp20:current-date ( )),
		  "@proveedor@",$varInvoiceAP/ns0:InvoiceAP/ns0:SupplierName),
		  "@estatus@",$estatus),			
                  "@folio@",$varInvoiceAP/ns0:InvoiceAP/ns0:InvoiceNumber),	
		  "@uuid@",$varUUID),
                  "@colorEstatus@",$varColorEstatus),
                  "@monto@",$varInvoiceAP/ns0:InvoiceAP/ns0:Total),	
		  "@ordenCompra@",$varInvoiceAP/ns0:InvoiceAP/ns0:OrderNumber),
		  "@mensaje@",/ns1:ValidationOracleXmlResponse/ns1:message),	
		  "@instance@",$varInstance)
		  '/>
            </tns:Body>
          </xsl:otherwise>
        </xsl:choose>
        
       
      </tns:Message>
    </tns:MessageRq>
  </xsl:template>
</xsl:stylesheet>
