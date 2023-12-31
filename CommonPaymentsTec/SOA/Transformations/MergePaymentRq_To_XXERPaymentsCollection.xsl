<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/top/dbHierarchy" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns0="http://soa.estrellaroja.com.mx/CommonPaymentsTec" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes=" xsd oracle-xsl-mapper xsi xsl ns0 tns mhdr oraext xp20 xref socket dvm oraxsl"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:ns1="http://soa.estrellaroja.com.mx/EstrellaRojaCommons"
                xmlns:ns2="http://schemas.oracle.com/bpel/extension" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:client="http://soa.estrellaroja.com.mx/CommonPaymentsTec/bpelMergePayment"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:ns3="http://xmlns.oracle.com/pcbpel/adapter/db/CommonPaymentsTec/CommonPaymentsTec/dbHierarchy"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
               >
   <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/bpelMergePayment.wsdl"/>
            <oracle-xsl-mapper:rootElement name="MergePaymentRq" namespace="http://soa.estrellaroja.com.mx/CommonPaymentsTec"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/dbHierarchy.wsdl"/>
            <oracle-xsl-mapper:rootElement name="XxerPaymentsCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/dbHierarchy"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.2.0(XSLT Build 161003.0739.0018) AT [THU NOV 16 17:52:20 CST 2017].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
      <tns:XxerPaymentsCollection>
         <tns:XxerPayments>
            <tns:paymentId>
               <xsl:value-of select="/ns0:MergePaymentRq/ns0:Payment/ns0:PaymentId"/>
            </tns:paymentId>
            <tns:cashReceiptId>
               <xsl:value-of select="/ns0:MergePaymentRq/ns0:Payment/ns0:CashReceiptId"/>
            </tns:cashReceiptId>
            <tns:receiptNumber>
               <xsl:value-of select="/ns0:MergePaymentRq/ns0:Payment/ns0:ReceiptNumber"/>
            </tns:receiptNumber>
            <tns:customerNumber>
               <xsl:value-of select="/ns0:MergePaymentRq/ns0:Payment/ns0:CustomerNumber"/>
            </tns:customerNumber>
            <tns:accountNumber>
               <xsl:value-of select="/ns0:MergePaymentRq/ns0:Payment/ns0:AccountNumber"/>
            </tns:accountNumber>
            <tns:siteNumber>
               <xsl:value-of select="/ns0:MergePaymentRq/ns0:Payment/ns0:SiteNumber"/>
            </tns:siteNumber>
            <xsl:if test="/ns0:MergePaymentRq/ns0:Payment/ns0:Uuid">
               <tns:uuid>
                  <xsl:value-of select="/ns0:MergePaymentRq/ns0:Payment/ns0:Uuid"/>
               </tns:uuid>
            </xsl:if>
            <xsl:if test="/ns0:MergePaymentRq/ns0:Payment/ns0:UuidDate">
               <tns:uuidDate>
                  <xsl:value-of select="/ns0:MergePaymentRq/ns0:Payment/ns0:UuidDate"/>
               </tns:uuidDate>
            </xsl:if>
            <xsl:if test="/ns0:MergePaymentRq/ns0:Payment/ns0:Status">
               <tns:status>
                  <xsl:value-of select="/ns0:MergePaymentRq/ns0:Payment/ns0:Status"/>
               </tns:status>
            </xsl:if>
            <tns:paymentType>
               <xsl:value-of select="/ns0:MergePaymentRq/ns0:Payment/ns0:PaymentType"/>
            </tns:paymentType>
            <tns:currencyCode>
               <xsl:value-of select="/ns0:MergePaymentRq/ns0:Payment/ns0:CurrencyCode"/>
            </tns:currencyCode>
            <tns:receipMethod>
               <xsl:value-of select="/ns0:MergePaymentRq/ns0:Payment/ns0:ReceipMethod"/>
            </tns:receipMethod>
            <tns:subtotal>
               <xsl:value-of select="/ns0:MergePaymentRq/ns0:Payment/ns0:SubTotal"/>
            </tns:subtotal>
            <tns:iva>
               <xsl:value-of select="/ns0:MergePaymentRq/ns0:Payment/ns0:Iva"/>
            </tns:iva>
            <tns:total>
               <xsl:value-of select="/ns0:MergePaymentRq/ns0:Payment/ns0:Total"/>
            </tns:total>
            <xsl:if test="/ns0:MergePaymentRq/ns0:Payment/ns0:TextPlainContent">
               <tns:content>
                  <xsl:value-of select="/ns0:MergePaymentRq/ns0:Payment/ns0:TextPlainContent"/>
               </tns:content>
            </xsl:if>
            <xsl:if test="/ns0:MergePaymentRq/ns0:Payment/ns0:Attribute1">
               <tns:attribute1>
                  <xsl:value-of select="/ns0:MergePaymentRq/ns0:Payment/ns0:Attribute1"/>
               </tns:attribute1>
            </xsl:if>
            <xsl:if test="/ns0:MergePaymentRq/ns0:Payment/ns0:Attribute2">
               <tns:attribute2>
                  <xsl:value-of select="/ns0:MergePaymentRq/ns0:Payment/ns0:Attribute2"/>
               </tns:attribute2>
            </xsl:if>
            <xsl:if test="/ns0:MergePaymentRq/ns0:Payment/ns0:Attribute3">
               <tns:attribute3>
                  <xsl:value-of select="/ns0:MergePaymentRq/ns0:Payment/ns0:Attribute3"/>
               </tns:attribute3>
            </xsl:if>
            <xsl:if test="/ns0:MergePaymentRq/ns0:Payment/ns0:Attribute4">
               <tns:attribute4>
                  <xsl:value-of select="/ns0:MergePaymentRq/ns0:Payment/ns0:Attribute4"/>
               </tns:attribute4>
            </xsl:if>
            <xsl:if test="/ns0:MergePaymentRq/ns0:Payment/ns0:Attribute5">
               <tns:attribute5>
                  <xsl:value-of select="/ns0:MergePaymentRq/ns0:Payment/ns0:Attribute5"/>
               </tns:attribute5>
            </xsl:if>
            <tns:createdBy>
               <xsl:value-of select="/ns0:MergePaymentRq/ns0:Payment/ns0:CreatedBy"/>
            </tns:createdBy>
            <tns:creationDate>
               <xsl:value-of select="/ns0:MergePaymentRq/ns0:Payment/ns0:CreationDate"/>
            </tns:creationDate>
            <tns:lastUpdatedBy>
               <xsl:value-of select="/ns0:MergePaymentRq/ns0:Payment/ns0:LastUpdatedBy"/>
            </tns:lastUpdatedBy>
            <tns:lastUpdateDate>
               <xsl:value-of select="/ns0:MergePaymentRq/ns0:Payment/ns0:LastUpdateDate"/>
            </tns:lastUpdateDate>
            <tns:sourceLastUpdatedBy>
               <xsl:value-of select="/ns0:MergePaymentRq/ns0:Payment/ns0:SourceLastUpdatedBy"/>
            </tns:sourceLastUpdatedBy>
            <tns:objectVersionNumber>
               <xsl:value-of select="/ns0:MergePaymentRq/ns0:Payment/ns0:ObjectVersionNumber"/>
            </tns:objectVersionNumber>
            <tns:xxerPaymentDetailsCollection>
               <xsl:for-each select="/ns0:MergePaymentRq/ns0:Payment/ns0:PaymentDetail">
                  <tns:XxerPaymentDetails>
                     <tns:paymentDetailId>
                        <xsl:value-of select="ns0:PaymentDetailId"/>
                     </tns:paymentDetailId>
                     <tns:invoiceNumber>
                        <xsl:value-of select="ns0:InvoiceNumber"/>
                     </tns:invoiceNumber>
                     <tns:installmentNumber>
                        <xsl:value-of select="ns0:InstallmentNumber"/>
                     </tns:installmentNumber>
                     <tns:receivableApplicationId>
                        <xsl:value-of select="ns0:ReceivableApplicationId"/>
                     </tns:receivableApplicationId>
                     <tns:trxNumber>
                        <xsl:value-of select="ns0:TrxNumber"/>
                     </tns:trxNumber>
                     <tns:balanceBefore>
                        <xsl:value-of select="ns0:BalanceBefore"/>
                     </tns:balanceBefore>
                     <tns:balanceAfter>
                        <xsl:value-of select="ns0:BalanceAfter"/>
                     </tns:balanceAfter>
                     <xsl:if test="ns0:Uuid">
                        <tns:uuid>
                           <xsl:value-of select="ns0:Uuid"/>
                        </tns:uuid>
                     </xsl:if>
                     <xsl:if test="ns0:UuidDate">
                        <tns:uuidDate>
                           <xsl:value-of select="ns0:UuidDate"/>
                        </tns:uuidDate>
                     </xsl:if>
                     <xsl:if test="ns0:Status">
                        <tns:status>
                           <xsl:value-of select="ns0:Status"/>
                        </tns:status>
                     </xsl:if>
                     <tns:currencyCode>
                        <xsl:value-of select="ns0:CurrencyCode"/>
                     </tns:currencyCode>
                     <tns:total>
                        <xsl:value-of select="ns0:Total"/>
                     </tns:total>
                     <xsl:if test="ns0:TextPlainContent">
                        <tns:content>
                           <xsl:value-of select="ns0:TextPlainContent"/>
                        </tns:content>
                     </xsl:if>
                     <xsl:if test="ns0:Attribute1">
                        <tns:attribute1>
                           <xsl:value-of select="ns0:Attribute1"/>
                        </tns:attribute1>
                     </xsl:if>
                     <xsl:if test="ns0:Attribute2">
                        <tns:attribute2>
                           <xsl:value-of select="ns0:Attribute2"/>
                        </tns:attribute2>
                     </xsl:if>
                     <xsl:if test="ns0:Attribute3">
                        <tns:attribute3>
                           <xsl:value-of select="ns0:Attribute3"/>
                        </tns:attribute3>
                     </xsl:if>
                     <xsl:if test="ns0:Attribute4">
                        <tns:attribute4>
                           <xsl:value-of select="ns0:Attribute4"/>
                        </tns:attribute4>
                     </xsl:if>
                     <xsl:if test="ns0:Attribute5">
                        <tns:attribute5>
                           <xsl:value-of select="ns0:Attribute5"/>
                        </tns:attribute5>
                     </xsl:if>
                     <tns:createdBy>
                        <xsl:value-of select="ns0:CreatedBy"/>
                     </tns:createdBy>
                     <tns:creationDate>
                        <xsl:value-of select="ns0:CreationDate"/>
                     </tns:creationDate>
                     <tns:lastUpdatedBy>
                        <xsl:value-of select="ns0:LastUpdatedBy"/>
                     </tns:lastUpdatedBy>
                     <tns:lastUpdateDate>
                        <xsl:value-of select="ns0:LastUpdateDate"/>
                     </tns:lastUpdateDate>
                     <tns:objectVersionNumber>
                        <xsl:value-of select="ns0:ObjectVersionNumber"/>
                     </tns:objectVersionNumber>
                  </tns:XxerPaymentDetails>
               </xsl:for-each>
            </tns:xxerPaymentDetailsCollection>
         </tns:XxerPayments>
      </tns:XxerPaymentsCollection>
   </xsl:template>
</xsl:stylesheet>
