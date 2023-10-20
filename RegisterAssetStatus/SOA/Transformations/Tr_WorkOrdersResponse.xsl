<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/db/EAMSelectUnprocessedWorkOrders"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                exclude-result-prefixes="oracle-xsl-mapper xsi xsd xsl ns1 socket dvm mhdr oraxsl oraext xp20 xref"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:ns2="http://xmlns.oracle.com/pcbpel/adapter/db/OSB_ESTRELLA_ROJA/DEV_EAMWorkOrdersTec/EAMSelectUnprocessedWorkOrders"
                xmlns:pc="http://xmlns.oracle.com/pcbpel/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ns0="http://soa.estrellaroja.com.mx/SCMWorkOrders"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:top="http://xmlns.oracle.com/pcbpel/adapter/db/top/ReadDateExcution"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/ER_AssetsApplication_BPEL/RegisterAssetStatus/ReadDateExcution">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="XSD">
            <oracle-xsl-mapper:schema location="../Schemas/DATA_DS.xsd"/>
            <oracle-xsl-mapper:rootElement name="DATA_DS" namespace=""/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/TransactionalWorkOrders/EAMSelectUnprocessedWorkOrders.wsdl"/>
        <oracle-xsl-mapper:rootElement name="EAMSelectUnprocessedWorkOrdersOutputCollection"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/EAMSelectUnprocessedWorkOrders"/>
        <oracle-xsl-mapper:param name="Out_EAMSelectUnprocessedWorkOrders.EAMSelectUnprocessedWorkOrdersOutputCollection"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="XSD">
            <oracle-xsl-mapper:schema location="../Schemas/DATA_DS.xsd"/>
            <oracle-xsl-mapper:rootElement name="DATA_DS" namespace=""/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.2.0(XSLT Build 161003.0739.0018) AT [WED FEB 05 22:01:41 CST 2020].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:param name="Out_EAMSelectUnprocessedWorkOrders.EAMSelectUnprocessedWorkOrdersOutputCollection"/>
  <xsl:template match="/">
    <DATA_DS>
      <P_ORGA>
        <xsl:value-of select="/DATA_DS/P_ORGA"/>
      </P_ORGA>
      <P_CREADO>
        <xsl:value-of select="/DATA_DS/P_CREADO"/>
      </P_CREADO>
      <P_FECHA_INI>
        <xsl:value-of select="/DATA_DS/P_FECHA_INI"/>
      </P_FECHA_INI>
      <P_FECHA_FIN>
        <xsl:value-of select="/DATA_DS/P_FECHA_FIN"/>
      </P_FECHA_FIN>
      <P_ITEM>
        <xsl:value-of select="/DATA_DS/P_ITEM"/>
      </P_ITEM>
      <xsl:for-each select="/DATA_DS/G_1">
        <xsl:if test='WO_SYSTEM_STATUS_CODE != "UNRELEASED"'>
          <G_1>
            <WORK_ORDER_ID>
              <xsl:value-of select="WORK_ORDER_ID"/>
            </WORK_ORDER_ID>
            <WORK_ORDER_NUMBER>
              <xsl:value-of select="WORK_ORDER_NUMBER"/>
            </WORK_ORDER_NUMBER>
            <INVENTORY_ITEM_ID>
              <xsl:value-of select="INVENTORY_ITEM_ID"/>
            </INVENTORY_ITEM_ID>
            <WORK_ORDER_STATUS_ID>
              <xsl:value-of select="WORK_ORDER_STATUS_ID"/>
            </WORK_ORDER_STATUS_ID>
            <UOM_CODE>
              <xsl:value-of select="UOM_CODE"/>
            </UOM_CODE>
            <CREATED_BY>
              <xsl:value-of select="CREATED_BY"/>
            </CREATED_BY>
            <CREATION_DATE_WO>
              <xsl:value-of select="CREATION_DATE_WO"/>
            </CREATION_DATE_WO>
            <WO_STATUS_CODE>
              <xsl:value-of select="WO_STATUS_CODE"/>
            </WO_STATUS_CODE>
            <WO_STATUS_NAME>
              <xsl:value-of select="WO_STATUS_NAME"/>
            </WO_STATUS_NAME>
            <WO_SYSTEM_STATUS_CODE>
              <xsl:value-of select="WO_SYSTEM_STATUS_CODE"/>
            </WO_SYSTEM_STATUS_CODE>
            <WO_STATUS_DESCRIPTION>
              <xsl:value-of select="WO_STATUS_DESCRIPTION"/>
            </WO_STATUS_DESCRIPTION>
            <NUMERO_ITEM>
              <xsl:value-of select="NUMERO_ITEM"/>
            </NUMERO_ITEM>
            <NUMERO_ACTIVO>
              <xsl:value-of select="NUMERO_ACTIVO"/>
            </NUMERO_ACTIVO>
            <SERIAL_NUMBER>
              <xsl:value-of select="SERIAL_NUMBER"/>
            </SERIAL_NUMBER>
            <WORK_ORDER_PRIORITY>
              <xsl:value-of select="WORK_ORDER_PRIORITY"/>
            </WORK_ORDER_PRIORITY>
            <COMPLETED_QUANTITY>
              <xsl:value-of select="COMPLETED_QUANTITY"/>
            </COMPLETED_QUANTITY>
            <NOMBRE_ORGANIZACION>
              <xsl:value-of select="NOMBRE_ORGANIZACION"/>
            </NOMBRE_ORGANIZACION>
            <TRABAJO>
              <xsl:value-of select="TRABAJO"/>
            </TRABAJO>
            <xsl:choose>
              <xsl:when test="string-length (RELEASED_DATE ) > 0">
                <RELEASED_DATE>
                  <xsl:value-of select='xp20:format-dateTime (RELEASED_DATE, "[Y001]-[M01]-[D01]T[H01]:[m01]:[s01]" )'/>
                </RELEASED_DATE>
              </xsl:when>
              <xsl:otherwise>
                <RELEASED_DATE>
                  <xsl:value-of select="RELEASED_DATE"/>
                </RELEASED_DATE>
              </xsl:otherwise>
            </xsl:choose>
            <xsl:choose>
              <xsl:when test="string-length (CLOSED_DATE ) > 0">
                <CLOSED_DATE>
                  <xsl:value-of select='xp20:format-dateTime (CLOSED_DATE, "[Y001]-[M01]-[D01]T[H01]:[m01]:[s01]" )'/>
                </CLOSED_DATE>
              </xsl:when>
              <xsl:otherwise>
                <CLOSED_DATE>
                  <xsl:value-of select="CLOSED_DATE"/>
                </CLOSED_DATE>
              </xsl:otherwise>
            </xsl:choose>
            <xsl:choose>
              <xsl:when test="string-length (ACTUAL_COMPLETION_DATE ) > 0">
                <ACTUAL_COMPLETION_DATE>
                  <xsl:value-of select='xp20:format-dateTime (ACTUAL_COMPLETION_DATE, "[Y001]-[M01]-[D01]T[H01]:[m01]:[s01]" )'/>
                </ACTUAL_COMPLETION_DATE>
              </xsl:when>
              <xsl:otherwise>
                <ACTUAL_COMPLETION_DATE>
                  <xsl:value-of select="ACTUAL_COMPLETION_DATE"/>
                </ACTUAL_COMPLETION_DATE>
              </xsl:otherwise>
            </xsl:choose>
            <xsl:choose>
              <xsl:when test="string-length (LAST_UPDATE_DATE ) > 0">
                <LAST_UPDATE_DATE>
                  <xsl:value-of select='xp20:format-dateTime (LAST_UPDATE_DATE, "[Y001]-[M01]-[D01]T[H01]:[m01]:[s01]" )'/>
                </LAST_UPDATE_DATE>
              </xsl:when>
              <xsl:otherwise>
                <LAST_UPDATE_DATE>
                  <xsl:value-of select="LAST_UPDATE_DATE"/>
                </LAST_UPDATE_DATE>
              </xsl:otherwise>
            </xsl:choose>
          </G_1>
        </xsl:if>
      </xsl:for-each>
    </DATA_DS>
  </xsl:template>
</xsl:stylesheet>
