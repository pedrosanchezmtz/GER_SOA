<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns0="http://soa.estrellaroja.com.mx/ConciliationEnt/NXSDBankPayments" xmlns:tns="http://soa.estrellaroja.com.mx/ConciliationTec" exclude-result-prefixes=" oracle-xsl-mapper xsi xsd xsl ns0 tns oraxsl"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:ns2="http://soa.estrellaroja.com.mx/EstrellaRojaCommons"
                xmlns:client="http://soa.estrellaroja.com.mx/ConciliationEnt/BpelConciliationBankER"
                xmlns:ns1="http://soa.estrellaroja.com.mx/ConciliationEnt"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ns3="http://soa.estrellaroja.com.mx/ConciliationTec/types"
                xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/"
                xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
   <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/BpelConciliationBankER.wsdl"/>
            <oracle-xsl-mapper:rootElement name="Payments" namespace="http://soa.estrellaroja.com.mx/ConciliationEnt/NXSDBankPayments"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/External/ConciliationTecWrapper.wsdl"/>
            <oracle-xsl-mapper:rootElement name="SendConciliationBankRq" namespace="http://soa.estrellaroja.com.mx/ConciliationTec"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.4.0(XSLT Build 190828.0353.3300) AT [MON AUG 23 13:05:03 CDT 2021].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
      <tns:SendConciliationBankRq>
         <xsl:for-each select="/ns0:Payments/ns0:payment">
            <tns:SendConciliationsBank>
               <tns:NumOperacion>
                  <xsl:value-of select="ns0:NumOperacion"/>
               </tns:NumOperacion>
               <tns:Sucursal>
                  <xsl:value-of select="ns0:Sucursal"/>
               </tns:Sucursal>
               <tns:Referencia>
                  <xsl:value-of select="ns0:Referencia"/>
               </tns:Referencia>
               <tns:Usuario>
                  <xsl:value-of select="ns0:Usuario"/>
               </tns:Usuario>
               <tns:UsrTrx>
                  <xsl:value-of select="ns0:UsrTrx"/>
               </tns:UsrTrx>
               <tns:TipoPago>
                  <xsl:value-of select="ns0:TipoPago"/>
               </tns:TipoPago>
               <tns:Lote>
                  <xsl:value-of select="ns0:Lote"/>
               </tns:Lote>
               <tns:NombreArchivo>
                  <xsl:value-of select="ns0:NombreArchivo"/>
               </tns:NombreArchivo>
               <tns:Tarjeta>
                  <xsl:value-of select="ns0:Tarjeta"/>
               </tns:Tarjeta>
               <tns:NombreTH>
                  <xsl:value-of select="ns0:NombreTH"/>
               </tns:NombreTH>
               <tns:Autorizacion>
                  <xsl:value-of select="ns0:Autorizacion"/>
               </tns:Autorizacion>
               <tns:Afiliacion>
                  <xsl:value-of select="ns0:Afiliacion"/>
               </tns:Afiliacion>
               <tns:NombreAfiliacion>
                  <xsl:value-of select="ns0:NombreAfiliacion"/>
               </tns:NombreAfiliacion>
               <tns:Importe>
                  <xsl:value-of select="ns0:Importe"/>
               </tns:Importe>
               <tns:Moneda>
                  <xsl:value-of select="ns0:Moneda"/>
               </tns:Moneda>
               <tns:FechaOperacion>
                  <xsl:value-of select="ns0:FechaOperacion"/>
               </tns:FechaOperacion>
               <tns:HoraOperacion>
                  <xsl:value-of select="ns0:HoraOperacion"/>
               </tns:HoraOperacion>
               <tns:TipoTarjeta>
                  <xsl:value-of select="ns0:TipoTarjeta"/>
               </tns:TipoTarjeta>
               <tns:MarcaTarjeta>
                  <xsl:value-of select="ns0:MarcaTarjeta"/>
               </tns:MarcaTarjeta>
               <tns:BancoEmisor>
                  <xsl:value-of select="ns0:BancoEmisor"/>
               </tns:BancoEmisor>
               <tns:TipoOperacion>
                  <xsl:value-of select="ns0:TipoOperacion"/>
               </tns:TipoOperacion>
               <tns:FechaDeposito>
                  <xsl:value-of select="ns0:FechaDeposito"/>
               </tns:FechaDeposito>
               <tns:Buzon>Estrella Roja</tns:Buzon>
            </tns:SendConciliationsBank>
         </xsl:for-each>
      </tns:SendConciliationBankRq>
   </xsl:template>
</xsl:stylesheet>