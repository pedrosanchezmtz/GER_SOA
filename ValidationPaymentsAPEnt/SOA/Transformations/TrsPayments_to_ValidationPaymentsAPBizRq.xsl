<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:tns="http://soa.estrellaroja.com.mx/ValidationPaymentsAPBiz" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:ns0="http://soa.estrellaroja.com.mx/Reports/XXER_ValidationComplement" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes=" xsd oracle-xsl-mapper xsi xsl ns0 tns mhdr oraext xp20 xref socket dvm oraxsl"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:ns2="http://soa.estrellaroja.com.mx/EstrellaRojaCommons"
                xmlns:client="http://xmlns.oracle.com/GER_SOA_DEV_OCI/ValidationPaymentsAPEnt/BpelSendPaymentsAP"
                xmlns:ns1="http://soa.estrellaroja.com.mx/ValidationPaymentsAPEnt"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ns3="http://soa.estrellaroja.com.mx/ValidationPaymentsAPBiz/types"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/">
   <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="XSD">
            <oracle-xsl-mapper:schema location="oramds:/apps/Common/Report/XXER_ValidationComplement.xsd"/>
            <oracle-xsl-mapper:rootElement name="DATA_DS" namespace="http://soa.estrellaroja.com.mx/Reports/XXER_ValidationComplement"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="XSD">
            <oracle-xsl-mapper:schema location="oramds:/apps/SOA/ValidationPaymentsAPBiz/ValidationPaymentsAPBiz.xsd"/>
            <oracle-xsl-mapper:rootElement name="SendPaymentsAPRq" namespace="http://soa.estrellaroja.com.mx/ValidationPaymentsAPBiz"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.4.0(XSLT Build 190828.0353.3300) AT [THU JUL 15 14:44:22 CDT 2021].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
      <tns:SendPaymentsAPRq>
         <ns0:DATA_DS>
            <xsl:for-each select="/ns0:DATA_DS/ns0:G_1">
               <ns0:G_1>
                  <ns0:ID_PAGO>
                     <xsl:value-of select="ns0:ID_PAGO"/>
                  </ns0:ID_PAGO>
                  <ns0:ID_CHECK>
                     <xsl:value-of select="ns0:ID_CHECK"/>
                  </ns0:ID_CHECK>
                  <xsl:if test="ns0:CODIGO_TIPO_PAGO">
                     <ns0:CODIGO_TIPO_PAGO>
                        <xsl:value-of select="ns0:CODIGO_TIPO_PAGO"/>
                     </ns0:CODIGO_TIPO_PAGO>
                  </xsl:if>
                  <xsl:if test="ns0:FECHA_PAGO">
                     <ns0:FECHA_PAGO>
                        <xsl:value-of select="ns0:FECHA_PAGO"/>
                     </ns0:FECHA_PAGO>
                  </xsl:if>
                  <xsl:if test="ns0:MONTO_PAGO">
                     <ns0:MONTO_PAGO>
                        <xsl:value-of select="ns0:MONTO_PAGO"/>
                     </ns0:MONTO_PAGO>
                  </xsl:if>
                  <xsl:if test="ns0:MONEDA_PAGO">
                     <ns0:MONEDA_PAGO>
                        <xsl:value-of select="ns0:MONEDA_PAGO"/>
                     </ns0:MONEDA_PAGO>
                  </xsl:if>
                  <xsl:if test="ns0:NOMBRE_EMPRESA">
                     <ns0:NOMBRE_EMPRESA>
                        <xsl:value-of select="ns0:NOMBRE_EMPRESA"/>
                     </ns0:NOMBRE_EMPRESA>
                  </xsl:if>
                  <xsl:if test="ns0:NOMBRE_EMPRESA_COMPLETO">
                     <ns0:NOMBRE_EMPRESA_COMPLETO>
                        <xsl:value-of select="ns0:NOMBRE_EMPRESA_COMPLETO"/>
                     </ns0:NOMBRE_EMPRESA_COMPLETO>
                  </xsl:if>
                  <xsl:if test="ns0:CODIGO_POSTAL_EMPRESA">
                     <ns0:CODIGO_POSTAL_EMPRESA>
                        <xsl:value-of select="ns0:CODIGO_POSTAL_EMPRESA"/>
                     </ns0:CODIGO_POSTAL_EMPRESA>
                  </xsl:if>
                  <xsl:if test="ns0:RFC_EMPRESA">
                     <ns0:RFC_EMPRESA>
                        <xsl:value-of select="ns0:RFC_EMPRESA"/>
                     </ns0:RFC_EMPRESA>
                  </xsl:if>
                  <xsl:if test="ns0:BANCO_EMPRESA">
                     <ns0:BANCO_EMPRESA>
                        <xsl:value-of select="ns0:BANCO_EMPRESA"/>
                     </ns0:BANCO_EMPRESA>
                  </xsl:if>
                  <xsl:if test="ns0:NO_CTA_EMPRESA">
                     <ns0:NO_CTA_EMPRESA>
                        <xsl:value-of select="ns0:NO_CTA_EMPRESA"/>
                     </ns0:NO_CTA_EMPRESA>
                  </xsl:if>
                  <xsl:if test="ns0:NOMBRE_PROVEEDOR">
                     <ns0:NOMBRE_PROVEEDOR>
                        <xsl:value-of select="ns0:NOMBRE_PROVEEDOR"/>
                     </ns0:NOMBRE_PROVEEDOR>
                  </xsl:if>
                  <xsl:if test="ns0:CODIGO_POSTAL_PROVEEDOR">
                     <ns0:CODIGO_POSTAL_PROVEEDOR>
                        <xsl:value-of select="ns0:CODIGO_POSTAL_PROVEEDOR"/>
                     </ns0:CODIGO_POSTAL_PROVEEDOR>
                  </xsl:if>
                  <xsl:if test="ns0:DIRECCION_FISCAL_PROVEEDOR">
                     <ns0:DIRECCION_FISCAL_PROVEEDOR>
                        <xsl:value-of select="ns0:DIRECCION_FISCAL_PROVEEDOR"/>
                     </ns0:DIRECCION_FISCAL_PROVEEDOR>
                  </xsl:if>
                  <xsl:if test="ns0:CODIGO_CIUDAD_PROVEEDOR">
                     <ns0:CODIGO_CIUDAD_PROVEEDOR>
                        <xsl:value-of select="ns0:CODIGO_CIUDAD_PROVEEDOR"/>
                     </ns0:CODIGO_CIUDAD_PROVEEDOR>
                  </xsl:if>
                  <xsl:if test="ns0:CIUDAD_PROVEEDOR">
                     <ns0:CIUDAD_PROVEEDOR>
                        <xsl:value-of select="ns0:CIUDAD_PROVEEDOR"/>
                     </ns0:CIUDAD_PROVEEDOR>
                  </xsl:if>
                  <xsl:if test="ns0:RFC_PROVEEDOR">
                     <ns0:RFC_PROVEEDOR>
                        <xsl:value-of select="ns0:RFC_PROVEEDOR"/>
                     </ns0:RFC_PROVEEDOR>
                  </xsl:if>
                  <xsl:if test="ns0:BANCO_PROVEEDOR">
                     <ns0:BANCO_PROVEEDOR>
                        <xsl:value-of select="ns0:BANCO_PROVEEDOR"/>
                     </ns0:BANCO_PROVEEDOR>
                  </xsl:if>
                  <xsl:if test="ns0:NO_CTA_PROVEEDOR">
                     <ns0:NO_CTA_PROVEEDOR>
                        <xsl:value-of select="ns0:NO_CTA_PROVEEDOR"/>
                     </ns0:NO_CTA_PROVEEDOR>
                  </xsl:if>
                  <xsl:if test="ns0:EMAIL_NOTIFICACION">
                     <ns0:EMAIL_NOTIFICACION>
                        <xsl:value-of select="ns0:EMAIL_NOTIFICACION"/>
                     </ns0:EMAIL_NOTIFICACION>
                  </xsl:if>
                  <xsl:if test="ns0:MENSAJE">
                     <ns0:MENSAJE>
                        <xsl:value-of select="ns0:MENSAJE"/>
                     </ns0:MENSAJE>
                  </xsl:if>
                  <xsl:if test="ns0:NOMBRE_CARPETA">
                     <ns0:NOMBRE_CARPETA>
                        <xsl:value-of select="ns0:NOMBRE_CARPETA"/>
                     </ns0:NOMBRE_CARPETA>
                  </xsl:if>
                  <xsl:if test="ns0:REFERENCE_NUMBER">
                     <ns0:REFERENCE_NUMBER>
                        <xsl:value-of select="ns0:REFERENCE_NUMBER"/>
                     </ns0:REFERENCE_NUMBER>
                  </xsl:if>
                  <xsl:if test="ns0:NUMERO_PAGO">
                     <ns0:NUMERO_PAGO>
                        <xsl:value-of select="ns0:NUMERO_PAGO"/>
                     </ns0:NUMERO_PAGO>
                  </xsl:if>
                  <xsl:if test="ns0:ORGANIZATION_TYPE">
                     <ns0:ORGANIZATION_TYPE>
                        <xsl:value-of select="ns0:ORGANIZATION_TYPE"/>
                     </ns0:ORGANIZATION_TYPE>
                  </xsl:if>
                  <xsl:if test="ns0:VALIDACION_MANUAL">
                     <ns0:VALIDACION_MANUAL>
                        <xsl:value-of select="ns0:VALIDACION_MANUAL"/>
                     </ns0:VALIDACION_MANUAL>
                  </xsl:if>
                  <xsl:if test="ns0:REGIMEN_EMPRESA">
                     <ns0:REGIMEN_EMPRESA>
                        <xsl:value-of select="ns0:REGIMEN_EMPRESA"/>
                     </ns0:REGIMEN_EMPRESA>
                  </xsl:if>
                  <xsl:if test="ns0:ENTIDAD_LEGAL">
                     <ns0:ENTIDAD_LEGAL>
                        <xsl:value-of select="ns0:ENTIDAD_LEGAL"/>
                     </ns0:ENTIDAD_LEGAL>
                  </xsl:if>
                  <xsl:if test="ns0:PAYMENT_STATUS">
                     <ns0:PAYMENT_STATUS>
                        <xsl:value-of select="ns0:PAYMENT_STATUS"/>
                     </ns0:PAYMENT_STATUS>
                  </xsl:if>
                  <xsl:for-each select="ns0:G_2">
                     <ns0:G_2>
                        <xsl:if test="ns0:ID_PAGO">
                           <ns0:ID_PAGO>
                              <xsl:value-of select="ns0:ID_PAGO"/>
                           </ns0:ID_PAGO>
                        </xsl:if>
                        <xsl:if test="ns0:ID_FACTURA">
                           <ns0:ID_FACTURA>
                              <xsl:value-of select="ns0:ID_FACTURA"/>
                           </ns0:ID_FACTURA>
                        </xsl:if>
                        <xsl:if test="ns0:NUMERO_PROVEEDOR">
                           <ns0:NUMERO_PROVEEDOR>
                              <xsl:value-of select="ns0:NUMERO_PROVEEDOR"/>
                           </ns0:NUMERO_PROVEEDOR>
                        </xsl:if>
                        <xsl:if test="ns0:NUMERO_DOCUMENTO">
                           <ns0:NUMERO_DOCUMENTO>
                              <xsl:value-of select="ns0:NUMERO_DOCUMENTO"/>
                           </ns0:NUMERO_DOCUMENTO>
                        </xsl:if>
                        <xsl:if test="ns0:MONTO_DOCUMENTO">
                           <ns0:MONTO_DOCUMENTO>
                              <xsl:value-of select="ns0:MONTO_DOCUMENTO"/>
                           </ns0:MONTO_DOCUMENTO>
                        </xsl:if>
                        <xsl:if test="ns0:RET_IVA">
                           <ns0:RET_IVA>
                              <xsl:value-of select="ns0:RET_IVA"/>
                           </ns0:RET_IVA>
                        </xsl:if>
                        <xsl:if test="ns0:RET_ISR">
                           <ns0:RET_ISR>
                              <xsl:value-of select="ns0:RET_ISR"/>
                           </ns0:RET_ISR>
                        </xsl:if>
                        <xsl:if test="ns0:TIPO_PAGO">
                           <ns0:TIPO_PAGO>
                              <xsl:value-of select="ns0:TIPO_PAGO"/>
                           </ns0:TIPO_PAGO>
                        </xsl:if>
                        <xsl:if test="ns0:UNIDAD_NEGOCIO">
                           <ns0:UNIDAD_NEGOCIO>
                              <xsl:value-of select="ns0:UNIDAD_NEGOCIO"/>
                           </ns0:UNIDAD_NEGOCIO>
                        </xsl:if>
                     </ns0:G_2>
                  </xsl:for-each>
               </ns0:G_1>
            </xsl:for-each>
         </ns0:DATA_DS>
      </tns:SendPaymentsAPRq>
   </xsl:template>
</xsl:stylesheet>
