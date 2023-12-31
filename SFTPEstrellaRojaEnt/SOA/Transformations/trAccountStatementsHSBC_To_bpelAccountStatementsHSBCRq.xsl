<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns0="http://soa.estrellaroja.com.mx/SFTPEstrellaRojaEnt/StatementsBankHSBC" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" exclude-result-prefixes=" oracle-xsl-mapper xsi xsd xsl ns0 socket dvm mhdr oraxsl oraext xp20 xref"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:client="http://soa.estrellaroja.mx/SFTPEstrellaRojaEnt/bpelManagementsStatementsBankHSBC">
   <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/bpelManagementsStatementsBankHSBC.wsdl"/>
            <oracle-xsl-mapper:rootElement name="StatementsBankHSBC" namespace="http://soa.estrellaroja.com.mx/SFTPEstrellaRojaEnt/StatementsBankHSBC"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/bpelManagementsStatementsBankHSBC.wsdl"/>
            <oracle-xsl-mapper:rootElement name="StatementsBankHSBC" namespace="http://soa.estrellaroja.com.mx/SFTPEstrellaRojaEnt/StatementsBankHSBC"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.4.0(XSLT Build 190828.0353.3300) AT [WED OCT 27 18:22:42 CDT 2021].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
      <ns0:StatementsBankHSBC>
         <xsl:for-each select="/ns0:StatementsBankHSBC/ns0:StatementsLine">
            <ns0:StatementsLine>
               <ns0:NombreCuenta>
                  <xsl:value-of select="ns0:NombreCuenta"/>
               </ns0:NombreCuenta>
               <ns0:NumeroCuenta>
                  <xsl:value-of select="ns0:NumeroCuenta"/>
               </ns0:NumeroCuenta>
               <ns0:NombreBanco>
                  <xsl:value-of select="ns0:NombreBanco"/>
               </ns0:NombreBanco>
               <ns0:Moneda>
                  <xsl:value-of select="ns0:Moneda"/>
               </ns0:Moneda>
               <ns0:Ubicacion>
                  <xsl:value-of select="ns0:Ubicacion"/>
               </ns0:Ubicacion>
               <ns0:BIC>
                  <xsl:value-of select="ns0:BIC"/>
               </ns0:BIC>
               <ns0:IBAN>
                  <xsl:value-of select="ns0:IBAN"/>
               </ns0:IBAN>
               <ns0:EstatusCuenta>
                  <xsl:value-of select="ns0:EstatusCuenta"/>
               </ns0:EstatusCuenta>
               <ns0:TipoCuenta>
                  <xsl:value-of select="ns0:TipoCuenta"/>
               </ns0:TipoCuenta>
               <ns0:SaldoLibrosCierre>
                  <xsl:value-of select="ns0:SaldoLibrosCierre"/>
               </ns0:SaldoLibrosCierre>
               <ns0:SaldoLibrosFinalCierreEjercicioAnterior>
                  <xsl:value-of select="ns0:SaldoLibrosFinalCierreEjercicioAnterior"/>
               </ns0:SaldoLibrosFinalCierreEjercicioAnterior>
               <ns0:SaldoDisponibleCierre>
                  <xsl:value-of select="ns0:SaldoDisponibleCierre"/>
               </ns0:SaldoDisponibleCierre>
               <ns0:SaldoFinalDisponibleEjercicioAnterior>
                  <xsl:value-of select="ns0:SaldoFinalDisponibleEjercicioAnterior"/>
               </ns0:SaldoFinalDisponibleEjercicioAnterior>
               <ns0:SaldoActualLibros>
                  <xsl:value-of select="ns0:SaldoActualLibros"/>
               </ns0:SaldoActualLibros>
               <ns0:SaldoActualLibrosAl>
                  <xsl:value-of select="ns0:SaldoActualLibrosAl"/>
               </ns0:SaldoActualLibrosAl>
               <ns0:SaldoActualDisponible>
                  <xsl:value-of select="ns0:SaldoActualDisponible"/>
               </ns0:SaldoActualDisponible>
               <ns0:SaldoActualDisponibleAl>
                  <xsl:value-of select="ns0:SaldoActualDisponibleAl"/>
               </ns0:SaldoActualDisponibleAl>
               <ns0:ReferenciaBanco>
                  <xsl:value-of select="concat (dvm:lookupValue (&quot;DVMs/dvmGetTrxType.dvm&quot;, &quot;Code&quot;, &quot;PrefixHSBCCode&quot;, &quot;Value&quot;, &quot;&quot; ), ns0:ReferenciaBanco )"/>
               </ns0:ReferenciaBanco>
               <ns0:Descripcion>
                  <xsl:value-of select="ns0:Descripcion"/>
               </ns0:Descripcion>
               <ns0:ReferenciaCliente>
                  <xsl:value-of select="ns0:ReferenciaCliente"/>
               </ns0:ReferenciaCliente>
               <ns0:TipoTRN>
                  <xsl:value-of select="ns0:TipoTRN"/>
               </ns0:TipoTRN>
               <xsl:choose>
                  <xsl:when test="string-length (ns0:ImporteCredito ) >0">
                     <ns0:ImporteCredito>
                        <xsl:value-of select="translate(ns0:ImporteCredito,',','')"/>
                     </ns0:ImporteCredito>
                  </xsl:when>
                  <xsl:otherwise>
                     <ns0:ImporteCredito>
                        <xsl:value-of select="0"/>
                     </ns0:ImporteCredito>
                  </xsl:otherwise>
               </xsl:choose>
               <xsl:choose>
                  <xsl:when test="string-length (ns0:ImporteDebito )>0">
                     <ns0:ImporteDebito>
                        <xsl:value-of select="translate(translate(ns0:ImporteDebito,',',''),'-','')"/>
                     </ns0:ImporteDebito>
                  </xsl:when>
                  <xsl:otherwise>
                     <ns0:ImporteDebito>
                        <xsl:value-of select="0"/>
                     </ns0:ImporteDebito>
                  </xsl:otherwise>
               </xsl:choose>
               <ns0:Saldo>
                  <xsl:value-of select="translate(translate(ns0:Saldo,',',''),'-','')"/>
               </ns0:Saldo>
               <ns0:FechaApunte>
                  <xsl:value-of select="ns0:FechaApunte"/>
               </ns0:FechaApunte>
               <ns0:HoraCargoAbono>
                  <xsl:value-of select="ns0:HoraCargoAbono"/>
               </ns0:HoraCargoAbono>
               <ns0:FechaValor>
                  <xsl:value-of select="concat (substring (ns0:FechaValor, 4,2 ), &quot;/&quot;,substring (ns0:FechaValor, 1,2 ), &quot;/&quot;,substring (ns0:FechaValor, 7,4 )  )"/>
               </ns0:FechaValor>
            </ns0:StatementsLine>
         </xsl:for-each>
      </ns0:StatementsBankHSBC>
   </xsl:template>
</xsl:stylesheet>
