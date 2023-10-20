<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:ns0="http://soa.estrellaroja.com.mx/XMLValidatorBiz"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/top/XXER_ERRORES_TEMP_TBL"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                exclude-result-prefixes="xsd oracle-xsl-mapper xsi xsl ns0 tns mhdr oraext xp20 xref socket dvm oraxsl"
                xmlns:ns1="http://soa.estrellaroja.com.mx/EstrellaRojaCommons"
                xmlns:ns2="http://soa.estrellaroja.com.mx/CartaPorte" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ns4="http://soa.estrellaroja.com.mx/XMLValidatorBiz/types"
                xmlns:ns3="http://soa.estrellaroja.com.mx/Tables/XXER_CONF_VALIDADOR_XML_TBL"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:ns5="http://xmlns.oracle.com/pcbpel/adapter/db/GER_SOA_OCI/XMLValidatorBiz/XXER_ERRORES_TEMP_TBL">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/SOA/XMLValidatorBiz/XMLValidatorBiz.wsdl"/>
        <oracle-xsl-mapper:rootElement name="ValidaCartaPorteRq"
                                       namespace="http://soa.estrellaroja.com.mx/XMLValidatorBiz"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/SOA/XMLValidatorBiz/XMLValidatorBiz.wsdl"/>
        <oracle-xsl-mapper:rootElement name="QueryProductosPeligrosos"
                                       namespace="http://soa.estrellaroja.com.mx/XMLValidatorBiz"/>
        <oracle-xsl-mapper:param name="v_consulta"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/SOA/XMLValidatorBiz/XMLValidatorBiz.wsdl"/>
        <oracle-xsl-mapper:rootElement name="QueryProductosPeligrosos"
                                       namespace="http://soa.estrellaroja.com.mx/XMLValidatorBiz"/>
        <oracle-xsl-mapper:param name="v_consultaP"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/SOA/XMLValidatorBiz/XMLValidatorBiz.wsdl"/>
        <oracle-xsl-mapper:rootElement name="QueryCP" namespace="http://soa.estrellaroja.com.mx/XMLValidatorBiz"/>
        <oracle-xsl-mapper:param name="v_consultaCP"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/XXER_ERRORES_TEMP_TBL.wsdl"/>
        <oracle-xsl-mapper:rootElement name="XxerErroresTempTblCollection"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/XXER_ERRORES_TEMP_TBL"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.4.0(XSLT Build 190828.0353.3300) AT [MON APR 24 14:15:54 CDT 2023].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
    <xsl:param name="v_consulta"/>
  <xsl:param name="v_consultaCP"/>
  <xsl:param name="v_consultaP"/>

  <xsl:template match="/">
    <tns:XxerErroresTempTblCollection>
      <xsl:for-each select="/ns0:ValidaCartaPorteRq/ns0:Configuraciones/ns0:ROW">
        <xsl:if test="ns3:CODE='VALIDA_PRODUCTO' and ns3:PROCCESS='A'">
          <xsl:variable name="v_idCarga" select="/ns0:ValidaCartaPorteRq/ns2:CartaPorte/ns2:ID_Carga_WTMS"/>
          <xsl:variable name="v_message" select="ns3:MESSAGE"/>
          <xsl:for-each select="/ns0:ValidaCartaPorteRq/ns2:CartaPorte/ns2:trasladoMercancias/ns2:Remolque/ns2:Traslados/ns2:Traslado">
            <xsl:variable name="v_idFactura" select="ns2:FacturaDestino"/>
            <xsl:variable name="v_codigoPostal" select="ns2:DireccionDestino/ns2:CodigoPostal"/>
            <xsl:for-each select="ns2:Mercancias/ns2:Mercancia">
              <xsl:variable name="v_producto" select="ns2:BienesTransp"/>
              <xsl:for-each select="$v_consulta/ns0:QueryProductosPeligrosos/ns0:ROW">
                <xsl:if test="ns0:clave = $v_producto">
                  <tns:XxerErroresTempTbl>
                    <tns:id>
                      <xsl:value-of select="concat ($v_idCarga,$v_idFactura ,$v_producto )"/>
                    </tns:id>
                    <tns:integracion>ValidaCP</tns:integracion>
                    <tns:message>
                      <xsl:value-of select="$v_message"/>
                    </tns:message>
                    <tns:parameter1>
                      <xsl:value-of select="$v_idCarga"/>
                    </tns:parameter1>
                    <tns:parameter2>
                      <xsl:value-of select="$v_idFactura"/>
                    </tns:parameter2>
                    <tns:parameter3>
                      <xsl:value-of select="$v_codigoPostal"/>
                    </tns:parameter3>
                    <tns:parameter4>
                      <xsl:value-of select="$v_producto"/>
                    </tns:parameter4>
                    <tns:parameter5>
                      <xsl:value-of select="ns0:clasif_mat_peligroso"/>
                    </tns:parameter5>
                    <tns:parameter6>
                      <xsl:value-of select="ns0:material_peligroso"/>
                    </tns:parameter6>
                    <tns:parameter7>
                      <xsl:value-of select="ns0:fecha_ingreso"/>
                    </tns:parameter7>
                    <tns:parameter8>
                      <xsl:value-of select="ns0:id_ingreso"/>
                    </tns:parameter8>
                    <tns:parameter9>
                      <xsl:value-of select="ns0:id_producto_servicio"/>
                    </tns:parameter9>
                    <tns:parameter10>
                      <xsl:value-of select="ns0:id_producto"/>
                    </tns:parameter10>
                  </tns:XxerErroresTempTbl>
                </xsl:if>
              </xsl:for-each>
            </xsl:for-each>
          </xsl:for-each>
        </xsl:if>
      </xsl:for-each>
 <xsl:for-each select="/ns0:ValidaCartaPorteRq/ns0:Configuraciones/ns0:ROW">
        <xsl:if test="ns3:CODE='VALIDA_PRODUCTO_P' and ns3:PROCCESS='A'">
          <xsl:variable name="v_idCarga" select="/ns0:ValidaCartaPorteRq/ns2:CartaPorte/ns2:ID_Carga_WTMS"/>
          <xsl:variable name="v_message" select="ns3:MESSAGE"/>
          <xsl:for-each select="/ns0:ValidaCartaPorteRq/ns2:CartaPorte/ns2:trasladoMercancias/ns2:Remolque/ns2:Traslados/ns2:Traslado">
            <xsl:variable name="v_idFactura" select="ns2:FacturaDestino"/>
            <xsl:variable name="v_codigoPostal" select="ns2:DireccionDestino/ns2:CodigoPostal"/>
            <xsl:for-each select="ns2:Mercancias/ns2:Mercancia">
              <xsl:variable name="v_producto" select="ns2:BienesTransp"/>
              <xsl:for-each select="$v_consultaP/ns0:QueryProductosPeligrosos/ns0:ROW">
                <xsl:if test="ns0:clave = $v_producto">
                  <tns:XxerErroresTempTbl>
                    <tns:id>
                      <xsl:value-of select="concat ($v_idCarga,$v_idFactura ,$v_producto)"/>
                    </tns:id>
                    <tns:integracion>ValidaCP</tns:integracion>
                    <tns:message>
                      <xsl:value-of select="$v_message"/>
                    </tns:message>
                    <tns:parameter1>
                      <xsl:value-of select="$v_idCarga"/>
                    </tns:parameter1>
                    <tns:parameter2>
                      <xsl:value-of select="$v_idFactura"/>
                    </tns:parameter2>
                    <tns:parameter3>
                      <xsl:value-of select="$v_codigoPostal"/>
                    </tns:parameter3>
                    <tns:parameter4>
                      <xsl:value-of select="$v_producto"/>
                    </tns:parameter4>
                    <tns:parameter5>
                      <xsl:value-of select="ns0:clasif_mat_peligroso"/>
                    </tns:parameter5>
                    <tns:parameter6>
                      <xsl:value-of select="ns0:material_peligroso"/>
                    </tns:parameter6>
                    <tns:parameter7>
                      <xsl:value-of select="ns0:fecha_ingreso"/>
                    </tns:parameter7>
                    <tns:parameter8>
                      <xsl:value-of select="ns0:id_ingreso"/>
                    </tns:parameter8>
                    <tns:parameter9>
                      <xsl:value-of select="ns0:id_producto_servicio"/>
                    </tns:parameter9>
                    <tns:parameter10>
                      <xsl:value-of select="ns0:id_producto"/>
                    </tns:parameter10>
                  </tns:XxerErroresTempTbl>
                </xsl:if>
              </xsl:for-each>
            </xsl:for-each>
          </xsl:for-each>
        </xsl:if>
      </xsl:for-each>
      
        <xsl:for-each select="/ns0:ValidaCartaPorteRq/ns0:Configuraciones/ns0:ROW">
        <xsl:if test="ns3:CODE='VALIDA_CODIGO_POSTAL' and ns3:PROCCESS='A'">
          <xsl:variable name="v_idCarga" select="/ns0:ValidaCartaPorteRq/ns2:CartaPorte/ns2:ID_Carga_WTMS"/>
          <xsl:variable name="v_message" select="ns3:MESSAGE"/>
          <xsl:for-each select="/ns0:ValidaCartaPorteRq/ns2:CartaPorte/ns2:trasladoMercancias/ns2:Remolque/ns2:Traslados/ns2:Traslado">
            <xsl:variable name="v_idFactura" select="ns2:FacturaDestino"/>
            <xsl:variable name="v_codigoPostal" select="ns2:DireccionDestino/ns2:CodigoPostal"/>
          <xsl:if test="not($v_consultaCP/ns0:QueryCP/ns0:ROW[ns0:cp_colonia=$v_codigoPostal]/ns0:cp_colonia)">
                <tns:XxerErroresTempTbl>
                  <tns:id>
                    <xsl:value-of select="concat ($v_idCarga,$v_idFactura ,$v_codigoPostal)"/>
                  </tns:id>
                <tns:integracion>ValidaCP</tns:integracion>
                <tns:message>
                    <xsl:value-of select="$v_message"/>
                  </tns:message>
                  <tns:parameter1>
                    <xsl:value-of select="$v_idCarga"/>
                  </tns:parameter1>
                  <tns:parameter2>
                    <xsl:value-of select="$v_idFactura"/>
                  </tns:parameter2>
                  <tns:parameter3>
                    <xsl:value-of select="$v_codigoPostal"/>
                  </tns:parameter3>
                </tns:XxerErroresTempTbl>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
      </xsl:for-each>
      
      
       <xsl:for-each select="/ns0:ValidaCartaPorteRq/ns0:Configuraciones/ns0:ROW">
        <xsl:if test="ns3:CODE='VALIDA_CODIGO_POSTAL' and ns3:PROCCESS='A'">
          <xsl:variable name="v_idCarga" select="/ns0:ValidaCartaPorteRq/ns2:CartaPorte/ns2:ID_Carga_WTMS"/>
          <xsl:variable name="v_message" select="ns3:MESSAGE"/>
          <xsl:for-each select="/ns0:ValidaCartaPorteRq/ns2:CartaPorte/ns2:trasladoMercancias/ns2:Remolque/ns2:Traslados/ns2:Traslado">
            <xsl:variable name="v_idFactura" select="ns2:FacturaDestino"/>
            <xsl:variable name="v_codigoPostal" select="ns2:DireccionOrigen/ns2:CodigoPostal"/>
          <xsl:if test="not($v_consultaCP/ns0:QueryCP/ns0:ROW[ns0:cp_colonia=$v_codigoPostal]/ns0:cp_colonia)">
                <tns:XxerErroresTempTbl>
                  <tns:id>
                    <xsl:value-of select="concat ($v_idCarga,$v_idFactura ,$v_codigoPostal)"/>
                  </tns:id>
                <tns:integracion>ValidaCP</tns:integracion>
                <tns:message>
                    <xsl:value-of select="$v_message"/>
                  </tns:message>
                  <tns:parameter1>
                    <xsl:value-of select="$v_idCarga"/>
                  </tns:parameter1>
                  <tns:parameter2>
                    <xsl:value-of select="$v_idFactura"/>
                  </tns:parameter2>
                  <tns:parameter3>
                    <xsl:value-of select="$v_codigoPostal"/>
                  </tns:parameter3>
                </tns:XxerErroresTempTbl>
              </xsl:if>
          </xsl:for-each>
        </xsl:if>
      </xsl:for-each>
    </tns:XxerErroresTempTblCollection>
  </xsl:template>
</xsl:stylesheet>
