<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:ns0="http://www.sat.gob.mx/cfd/3" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:tns="http://soa.estrellaroja.com.mx/AuditControlTec" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes="xsd oracle-xsl-mapper xsi xsl ns0 tns mhdr oraext xp20 xref socket dvm oraxsl" xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/ums/GER_SOA_DEV_OCI/ValidationPaymentsAPBiz/ReceiveEmail" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:pc="http://xmlns.oracle.com/pcbpel/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ns2="http://soa.estrellaroja.com.mx/Reports/XXER_ValidationComplement" xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/" xmlns:imp1="http://platform.integration.oracle/blocks/adapter/fw/metadata/ReceiveEmail" xmlns:ns4="http://www.sat.gob.mx/TimbreFiscalDigital" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:ns5="http://soa.estrellaroja.com.mx/EstrellaRojaCommons" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:ns6="http://soa.estrellaroja.com.mx/AuditControlTec/types" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:pago10="http://www.sat.gob.mx/Pagos" xmlns:ns7="http://www.sat.gob.mx/sitio_internet/cfd/catalogos/Pagos" xmlns:ns3="http://soa.estrellaroja.com.mx/sitio_internet/cfd/tipoDatos/tdCFDI" xmlns:catCFDI="http://www.sat.gob.mx/sitio_internet/cfd/catalogos" xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:tdCFDI="http://www.sat.gob.mx/sitio_internet/cfd/tipoDatos/tdCFDI">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="XSD">
        <oracle-xsl-mapper:schema location="oramds:/apps/Common/Report/XXER_ValidationComplement.xsd"/>
        <oracle-xsl-mapper:rootElement name="DATA_DS" namespace="http://soa.estrellaroja.com.mx/Reports/XXER_ValidationComplement"/>
        <oracle-xsl-mapper:param/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="XSD">
        <oracle-xsl-mapper:schema location="oramds:/apps/Common/XSD/CFDI/cfdv33.xsd"/>
        <oracle-xsl-mapper:rootElement name="Comprobante" namespace="http://www.sat.gob.mx/cfd/3"/>
        <oracle-xsl-mapper:param name="v_paymentXML"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/OSB/AuditControlTec/AuditControlTec.wsdl"/>
        <oracle-xsl-mapper:rootElement name="MergeComplementsAPRq" namespace="http://soa.estrellaroja.com.mx/AuditControlTec"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.4.0(XSLT Build 190828.0353.3300) AT [FRI AUG 13 18:03:54 CDT 2021].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:param name="v_paymentXML"/>
  <xsl:template match="/">
    <tns:MergeComplementsAPRq>
      <tns:Complements>
        <tns:Complement>
          <tns:paymentId>
            <xsl:value-of select="ns2:DATA_DS/ns2:G_1/ns2:ID_PAGO"/>
          </tns:paymentId>
          <tns:paymentNumber>
            <xsl:value-of select="/ns2:DATA_DS/ns2:G_1/ns2:NUMERO_PAGO"/>
          </tns:paymentNumber>
          <tns:nombreEmisor>
            <xsl:value-of select="/ns2:DATA_DS/ns2:G_1/ns2:NOMBRE_EMPRESA"/>
          </tns:nombreEmisor>
          <tns:emisorRfc>
            <xsl:value-of select="/ns2:DATA_DS/ns2:G_1/ns2:RFC_EMPRESA"/>
          </tns:emisorRfc>
          <tns:nombrePreceptor>
            <xsl:value-of select="/ns2:DATA_DS/ns2:G_1/ns2:NOMBRE_PROVEEDOR"/>
          </tns:nombrePreceptor>
          <tns:receptorRfc>
            <xsl:value-of select="/ns2:DATA_DS/ns2:G_1/ns2:RFC_PROVEEDOR"/>
          </tns:receptorRfc>
          <tns:paymentAmount>
            <xsl:value-of select="/ns2:DATA_DS/ns2:G_1/ns2:MONTO_PAGO"/>
          </tns:paymentAmount>
          <tns:paymentCurrency>
            <xsl:value-of select="/ns2:DATA_DS/ns2:G_1/ns2:MONEDA_PAGO"/>
          </tns:paymentCurrency>
          <tns:paymentDate>
            <xsl:value-of select="/ns2:DATA_DS/ns2:G_1/ns2:FECHA_PAGO"/>
          </tns:paymentDate>
          <tns:folioXml>
            <xsl:value-of select="$v_paymentXML/cfdi:Comprobante/@Folio"/>
          </tns:folioXml>
          <tns:serieXml>
            <xsl:value-of select="$v_paymentXML/cfdi:Comprobante/@Serie"/>
          </tns:serieXml>
          <tns:nombreEmisorXml>
            <xsl:value-of select="$v_paymentXML/cfdi:Comprobante/cfdi:Emisor/@Nombre"/>
          </tns:nombreEmisorXml>
          <tns:emisorRfcXml>
            <xsl:value-of select="$v_paymentXML/cfdi:Comprobante/cfdi:Emisor/@Rfc"/>
          </tns:emisorRfcXml>
          <tns:nombreReceptorXml>
            <xsl:value-of select="$v_paymentXML/cfdi:Comprobante/cfdi:Receptor/@Nombre"/>
          </tns:nombreReceptorXml>
          <tns:receptorRfcXml>
            <xsl:value-of select="$v_paymentXML/cfdi:Comprobante/cfdi:Receptor/@Rfc"/>
          </tns:receptorRfcXml>
          <tns:totalXml>
            <xsl:value-of select="$v_paymentXML/cfdi:Comprobante/@Total"/>
          </tns:totalXml>
          <tns:subtotalXml>
            <xsl:value-of select="$v_paymentXML/cfdi:Comprobante/@SubTotal"/>
          </tns:subtotalXml>
          <tns:tipoCambioXml>
            <xsl:value-of select="$v_paymentXML/cfdi:Comprobante/@TipoCambio"/>
          </tns:tipoCambioXml>
          <tns:monedaXml>
            <xsl:value-of select="$v_paymentXML/cfdi:Comprobante/@Moneda"/>
          </tns:monedaXml>
          <tns:usoCfdiXml>
            <xsl:value-of select="$v_paymentXML/cfdi:Comprobante/cfdi:Receptor/@UsoCFDI"/>
          </tns:usoCfdiXml>
          <tns:formaPagoXml>
            <xsl:value-of select="$v_paymentXML/cfdi:Comprobante/@FormaPago"/>
          </tns:formaPagoXml>
          <tns:tipoComprobanteXml>
            <xsl:value-of select="$v_paymentXML/cfdi:Comprobante/@TipoDeComprobante"/>
          </tns:tipoComprobanteXml>
          <tns:uuidXml>
            <xsl:value-of select="$v_paymentXML/cfdi:Comprobante/cfdi:Complemento/tfd:TimbreFiscalDigital/@UUID"/>
          </tns:uuidXml>
          <tns:fechaXml>
            <xsl:value-of select="$v_paymentXML/cfdi:Comprobante/@Fecha"/>
          </tns:fechaXml>
          <tns:fechaTimbradoXml>
            <xsl:value-of select="$v_paymentXML/cfdi:Comprobante/cfdi:Complemento/tfd:TimbreFiscalDigital/@FechaTimbrado"/>
          </tns:fechaTimbradoXml>
          <tns:createdBy>ValidationPaymentsBiz</tns:createdBy>
          <tns:objectVersionNumber>1</tns:objectVersionNumber>
        </tns:Complement>
      </tns:Complements>
    </tns:MergeComplementsAPRq>
  </xsl:template>
</xsl:stylesheet>