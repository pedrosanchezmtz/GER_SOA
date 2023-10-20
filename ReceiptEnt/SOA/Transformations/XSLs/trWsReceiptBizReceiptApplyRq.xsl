<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns0="http://soa.estrellaroja.com.mx/ReceiptBiz" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" exclude-result-prefixes=" oracle-xsl-mapper xsi xsd xsl ns0 socket dvm mhdr oraxsl oraext xp20 xref" xmlns:ns1="http://soa.estrellaroja.com.mx/EstrellaRojaCommons" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ns2="http://soa.estrellaroja.com.mx/ReceiptBiz/types">
   <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../../WSDLs/bpelCreateReceipts.wsdl"/>
            <oracle-xsl-mapper:rootElement name="DigitalStampReceiptsRs" namespace="http://soa.estrellaroja.com.mx/ReceiptBiz"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../../WSDLs/bpelCreateReceipts.wsdl"/>
            <oracle-xsl-mapper:rootElement name="ReceiptApplyRq" namespace="http://soa.estrellaroja.com.mx/ReceiptBiz"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.2.0(XSLT Build 161003.0739.0018) AT [WED JAN 10 10:37:46 CST 2018].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
      <ns0:ReceiptApplyRq>
         <xsl:for-each select="/ns0:DigitalStampReceiptsRs/ns0:Return/ns0:Data/ns0:ProcessedApplyReceipt">
            <ns0:ReceiptApply>
               <ns0:AMOUNT>
                  <xsl:value-of select="ns0:AMOUNT"/>
               </ns0:AMOUNT>
               <ns0:RECEIPT_ID>
                  <xsl:value-of select="ns0:RECEIPT_ID"/>
               </ns0:RECEIPT_ID>
               <ns0:RECEIPT_NUMBER>
                  <xsl:value-of select="ns0:RECEIPT_NUMBER"/>
               </ns0:RECEIPT_NUMBER>
               <ns0:TRANSACTION_NUMBER>
                  <xsl:value-of select="ns0:TRANSACTION_NUMBER"/>
               </ns0:TRANSACTION_NUMBER>
               <ns0:CUSTOMER_NAME>
                  <xsl:value-of select="ns0:CUSTOMER_NAME"/>
               </ns0:CUSTOMER_NAME>
               <ns0:APPLICATION_DATE>
                  <xsl:value-of select="ns0:APPLICATION_DATE"/>
               </ns0:APPLICATION_DATE>
               <ns0:ACCOUNTING_DATE>
                  <xsl:value-of select="ns0:ACCOUNTING_DATE"/>
               </ns0:ACCOUNTING_DATE>
               <ns0:CUST_ACCOUNT_ID>
                  <xsl:value-of select="ns0:CUST_ACCOUNT_ID"/>
               </ns0:CUST_ACCOUNT_ID>
               <ns0:ORGANIZATION_ID>
                  <xsl:value-of select="ns0:ORGANIZATION_ID"/>
               </ns0:ORGANIZATION_ID>
               <ns0:CUSTOMER_TRX_ID>
                  <xsl:value-of select="ns0:CUSTOMER_TRX_ID"/>
               </ns0:CUSTOMER_TRX_ID>
               <ns0:UUID>
                  <xsl:value-of select="ns0:UUID"/>
               </ns0:UUID>
               <ns0:BUSINESS_UNIT>
                  <xsl:value-of select="ns0:BUSINESS_UNIT"/>
               </ns0:BUSINESS_UNIT>
               <ns0:METODO_RECIBO>
                  <xsl:value-of select="ns0:METODO_RECIBO"/>
               </ns0:METODO_RECIBO>
               <ns0:RECEIPT_APPLY_ID>
                  <xsl:value-of select="ns0:RECEIPT_APPLY_ID"/>
               </ns0:RECEIPT_APPLY_ID>
            </ns0:ReceiptApply>
         </xsl:for-each>
         <ns0:GetHtmlControlRq>
            <ns0:TotalSucceeded>
               <xsl:value-of select="/ns0:DigitalStampReceiptsRs/ns0:Return/ns0:GetHtmlControlRq/ns0:TotalSucceeded"/>
            </ns0:TotalSucceeded>
            <ns0:TotalErrors>
               <xsl:value-of select="/ns0:DigitalStampReceiptsRs/ns0:Return/ns0:GetHtmlControlRq/ns0:TotalErrors"/>
            </ns0:TotalErrors>
            <ns0:ErrorsDetails>
               <xsl:for-each select="/ns0:DigitalStampReceiptsRs/ns0:Return/ns0:GetHtmlControlRq/ns0:ErrorsDetails/ns0:ErrorDetail">
                  <ns0:ErrorDetail>
                     <ns0:DataValue>
                        <xsl:value-of select="ns0:DataValue"/>
                     </ns0:DataValue>
                     <ns0:ErrorMessage>
                        <xsl:value-of select="ns0:ErrorMessage"/>
                     </ns0:ErrorMessage>
                  </ns0:ErrorDetail>
               </xsl:for-each>
            </ns0:ErrorsDetails>
         </ns0:GetHtmlControlRq>
      </ns0:ReceiptApplyRq>
   </xsl:template>
</xsl:stylesheet>