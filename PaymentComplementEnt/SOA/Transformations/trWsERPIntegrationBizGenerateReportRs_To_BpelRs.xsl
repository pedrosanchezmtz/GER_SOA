<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:ns0="http://soa.estrellaroja.com.mx/PaymentComplementEnt" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" exclude-result-prefixes=" oracle-xsl-mapper xsi xsd xsl ns0 socket dvm mhdr oraxsl oraext xp20 xref"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:ns2="http://soa.estrellaroja.com.mx/EstrellaRojaCommons"
                xmlns:ns1="http://schemas.oracle.com/bpel/extension" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:client="http://soa.estrellaroja.com.mx/PaymentComplementEnt/bpelStampPaymentComplement">
   <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/bpelStampPaymentComplement.wsdl"/>
            <oracle-xsl-mapper:rootElement name="PAYMENTS_DS" namespace="http://soa.estrellaroja.com.mx/PaymentComplementEnt"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/bpelStampPaymentComplement.wsdl"/>
            <oracle-xsl-mapper:rootElement name="PAYMENTS_DS" namespace="http://soa.estrellaroja.com.mx/PaymentComplementEnt"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.2.0(XSLT Build 161003.0739.0018) AT [MON DEC 04 16:35:24 CST 2017].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
      <ns0:PAYMENTS_DS>
         <ns0:P_STARTDATE>
            <xsl:value-of select="/ns0:PAYMENTS_DS/P_STARTDATE"/>
         </ns0:P_STARTDATE>
         <ns0:P_ENDDATE>
            <xsl:value-of select="/ns0:PAYMENTS_DS/P_ENDDATE"/>
         </ns0:P_ENDDATE>
         <xsl:for-each select="/ns0:PAYMENTS_DS/HEADER">
            <ns0:HEADER>
               <ns0:CASH_RECEIPT_ID>
                  <xsl:value-of select="CASH_RECEIPT_ID"/>
               </ns0:CASH_RECEIPT_ID>
               <ns0:RECEIPT_NUMBER>
                  <xsl:value-of select="RECEIPT_NUMBER"/>
               </ns0:RECEIPT_NUMBER>
               <ns0:ISSUER_RFC>
                  <xsl:value-of select="ISSUER_RFC"/>
               </ns0:ISSUER_RFC>
               <ns0:ISSUER_NAME>
                  <xsl:value-of select="ISSUER_NAME"/>
               </ns0:ISSUER_NAME>
               <ns0:ISSUER_ZIP_CODE>
                  <xsl:value-of select="ISSUER_ZIP_CODE"/>
               </ns0:ISSUER_ZIP_CODE>
               <ns0:ISSUER_STREET>
                  <xsl:value-of select="ISSUER_STREET"/>
               </ns0:ISSUER_STREET>
               <ns0:ISSUER_COLONY>
                  <xsl:value-of select="ISSUER_COLONY"/>
               </ns0:ISSUER_COLONY>
               <ns0:ISSUER_MUNICIPALITY>
                  <xsl:value-of select="ISSUER_MUNICIPALITY"/>
               </ns0:ISSUER_MUNICIPALITY>
               <ns0:ISSUER_STATE>
                  <xsl:value-of select="ISSUER_STATE"/>
               </ns0:ISSUER_STATE>
               <ns0:ISSUER_COUNTRY>
                  <xsl:value-of select="ISSUER_COUNTRY"/>
               </ns0:ISSUER_COUNTRY>
               <ns0:INVOICE_DATE>
                  <xsl:value-of select="INVOICE_DATE"/>
               </ns0:INVOICE_DATE>
               <ns0:DOCUMENT_TYPE>
                  <xsl:value-of select="DOCUMENT_TYPE"/>
               </ns0:DOCUMENT_TYPE>
               <ns0:ADDITIONAL_INFORMATION>
                  <xsl:value-of select="ADDITIONAL_INFORMATION"/>
               </ns0:ADDITIONAL_INFORMATION>
               <ns0:TOTAL_WORDS>
                  <xsl:value-of select="TOTAL_WORDS"/>
               </ns0:TOTAL_WORDS>
               <ns0:DESCRIPTION_ITM>
                  <xsl:value-of select="DESCRIPTION_ITM"/>
               </ns0:DESCRIPTION_ITM>
               <ns0:PROD_SERV_KEY_ITM>
                  <xsl:value-of select="PROD_SERV_KEY_ITM"/>
               </ns0:PROD_SERV_KEY_ITM>
               <ns0:QUANTITY_ITM>
                  <xsl:value-of select="QUANTITY_ITM"/>
               </ns0:QUANTITY_ITM>
               <ns0:VAT_PERCENTAGE_ITM>
                  <xsl:value-of select="VAT_PERCENTAGE_ITM"/>
               </ns0:VAT_PERCENTAGE_ITM>
               <ns0:UNIT_KEY_ITM>
                  <xsl:value-of select="UNIT_KEY_ITM"/>
               </ns0:UNIT_KEY_ITM>
               <ns0:TAX_OBJECT_ITM>
                  <xsl:value-of select="TAX_OBJECT_ITM"/>
               </ns0:TAX_OBJECT_ITM>
               <ns0:AMOUNT_ITM>
                  <xsl:value-of select="AMOUNT_ITM"/>
               </ns0:AMOUNT_ITM>
               <ns0:SUBTOTAL_ITM>
                  <xsl:value-of select="SUBTOTAL_ITM"/>
               </ns0:SUBTOTAL_ITM>
               <ns0:VAT_ITM>
                  <xsl:value-of select="VAT_ITM"/>
               </ns0:VAT_ITM>
               <ns0:TOTAL_ITM>
                  <xsl:value-of select="TOTAL_ITM"/>
               </ns0:TOTAL_ITM>
               <ns0:TOTAL_VAT>
                  <xsl:value-of select="TOTAL_VAT"/>
               </ns0:TOTAL_VAT>
               <ns0:SUBTOTAL>
                  <xsl:value-of select="SUBTOTAL"/>
               </ns0:SUBTOTAL>
               <ns0:TOTAL>
                  <xsl:value-of select="TOTAL"/>
               </ns0:TOTAL>
               <ns0:SERIE>
                  <xsl:value-of select="SERIE"/>
               </ns0:SERIE>
               <ns0:BRANCH_NAME>
                  <xsl:value-of select="BRANCH_NAME"/>
               </ns0:BRANCH_NAME>
               <ns0:BRANCH_ZIP_CODE>
                  <xsl:value-of select="BRANCH_ZIP_CODE"/>
               </ns0:BRANCH_ZIP_CODE>
               <ns0:RECEIVER_NAME>
                  <xsl:value-of select="RECEIVER_NAME"/>
               </ns0:RECEIVER_NAME>
               <ns0:RECEIVER_RFC>
                  <xsl:value-of select="RECEIVER_RFC"/>
               </ns0:RECEIVER_RFC>
               <ns0:RECEIVER_PHONE>
                  <xsl:value-of select="RECEIVER_PHONE"/>
               </ns0:RECEIVER_PHONE>
               <ns0:RECEIVER_ADDRESS>
                  <xsl:value-of select="RECEIVER_ADDRESS"/>
               </ns0:RECEIVER_ADDRESS>
               <ns0:RECEIVER_COUNTY>
                  <xsl:value-of select="RECEIVER_COUNTY"/>
               </ns0:RECEIVER_COUNTY>
               <ns0:RECEIVER_EXT_NUMBER>
                  <xsl:value-of select="RECEIVER_EXT_NUMBER"/>
               </ns0:RECEIVER_EXT_NUMBER>
               <ns0:RECEIVER_INT_NUMBER>
                  <xsl:value-of select="RECEIVER_INT_NUMBER"/>
               </ns0:RECEIVER_INT_NUMBER>
               <ns0:RECEIVER_STREET>
                  <xsl:value-of select="RECEIVER_STREET"/>
               </ns0:RECEIVER_STREET>
               <ns0:RECEIVER_COLONY>
                  <xsl:value-of select="RECEIVER_COLONY"/>
               </ns0:RECEIVER_COLONY>
               <ns0:RECEIVER_MUNICIPALITY>
                  <xsl:value-of select="RECEIVER_MUNICIPALITY"/>
               </ns0:RECEIVER_MUNICIPALITY>
               <ns0:RECEIVER_STATE>
                  <xsl:value-of select="RECEIVER_STATE"/>
               </ns0:RECEIVER_STATE>
               <ns0:RECEIVER_COUNTRY>
                  <xsl:value-of select="RECEIVER_COUNTRY"/>
               </ns0:RECEIVER_COUNTRY>
               <ns0:RECEIVER_CFDI_USE>
                  <xsl:value-of select="RECEIVER_CFDI_USE"/>
               </ns0:RECEIVER_CFDI_USE>
               <ns0:RECEIVER_TAX_REGIME>
                  <xsl:value-of select="RECEIVER_TAX_REGIME"/>
               </ns0:RECEIVER_TAX_REGIME>
               <ns0:RECEIVER_ZIP_CODE>
                  <xsl:value-of select="RECEIVER_ZIP_CODE"/>
               </ns0:RECEIVER_ZIP_CODE>
               <ns0:CURRENCY>
                  <xsl:value-of select="CURRENCY"/>
               </ns0:CURRENCY>
               <ns0:ISSUER_TAX_REGIME>
                  <xsl:value-of select="ISSUER_TAX_REGIME"/>
               </ns0:ISSUER_TAX_REGIME>
               <ns0:COMMENTS>
                  <xsl:value-of select="COMMENTS"/>
               </ns0:COMMENTS>
               <ns0:SERVICE>
                  <xsl:value-of select="SERVICE"/>
               </ns0:SERVICE>
               <ns0:PAYMENT_DATE_PC>
                  <xsl:value-of select="PAYMENT_DATE_PC"/>
               </ns0:PAYMENT_DATE_PC>
               <ns0:PAYMENT_WAY_PC>
                  <xsl:value-of select="PAYMENT_WAY_PC"/>
               </ns0:PAYMENT_WAY_PC>
               <ns0:CURRENCY_PC>
                  <xsl:value-of select="CURRENCY_PC"/>
               </ns0:CURRENCY_PC>
               <ns0:CURRENCY_EXCHANGE_PC>
                  <xsl:value-of select="CURRENCY_EXCHANGE_PC"/>
               </ns0:CURRENCY_EXCHANGE_PC>
               <ns0:AMOUNT_PC>
                  <xsl:value-of select="AMOUNT_PC"/>
               </ns0:AMOUNT_PC>
               <ns0:OPERATION_NUMBER_PC>
                  <xsl:value-of select="OPERATION_NUMBER_PC"/>
               </ns0:OPERATION_NUMBER_PC>
               <ns0:BANK_NAME_PC>
                  <xsl:value-of select="BANK_NAME_PC"/>
               </ns0:BANK_NAME_PC>
               <ns0:PAYER_ACCOUNT_PC>
                  <xsl:value-of select="PAYER_ACCOUNT_PC"/>
               </ns0:PAYER_ACCOUNT_PC>
               <ns0:BEN_ACC_ISSUER_RFC_PC>
                  <xsl:value-of select="BEN_ACC_ISSUER_RFC_PC"/>
               </ns0:BEN_ACC_ISSUER_RFC_PC>
               <ns0:BENEFICIARY_ACCOUNT_PC>
                  <xsl:value-of select="BENEFICIARY_ACCOUNT_PC"/>
               </ns0:BENEFICIARY_ACCOUNT_PC>
               <ns0:PAYMENT_STRING_TYPE_PC>
                  <xsl:value-of select="PAYMENT_STRING_TYPE_PC"/>
               </ns0:PAYMENT_STRING_TYPE_PC>
               <ns0:PAYMENT_CERT_PC>
                  <xsl:value-of select="PAYMENT_CERT_PC"/>
               </ns0:PAYMENT_CERT_PC>
               <ns0:PAYMENT_STRING_PC>
                  <xsl:value-of select="PAYMENT_STRING_PC"/>
               </ns0:PAYMENT_STRING_PC>
               <ns0:PAYMENT_SEAL_PC>
                  <xsl:value-of select="PAYMENT_SEAL_PC"/>
               </ns0:PAYMENT_SEAL_PC>
               <ns0:VERSION_PC>
                  <xsl:value-of select="VERSION_PC"/>
               </ns0:VERSION_PC>
               <ns0:CUSTOMER_NUMBER>
                  <xsl:value-of select="CUSTOMER_NUMBER"/>
               </ns0:CUSTOMER_NUMBER>
               <ns0:ACCOUNT_NUMBER>
                  <xsl:value-of select="ACCOUNT_NUMBER"/>
               </ns0:ACCOUNT_NUMBER>
               <ns0:SITE_NUMBER>
                  <xsl:value-of select="SITE_NUMBER"/>
               </ns0:SITE_NUMBER>
               <ns0:LAST_UPDATE_DATE>
                  <xsl:value-of select="LAST_UPDATE_DATE"/>
               </ns0:LAST_UPDATE_DATE>
               <ns0:LAST_UPDATED_BY>
                  <xsl:value-of select="LAST_UPDATED_BY"/>
               </ns0:LAST_UPDATED_BY>
               <ns0:BUSINESS_UNIT>
                  <xsl:value-of select="BUSINESS_UNIT"/>
               </ns0:BUSINESS_UNIT>
               <ns0:ESTATUS_CFDI>
                  <xsl:value-of select="ESTATUS_CFDI"/>
               </ns0:ESTATUS_CFDI>
               <ns0:EXPORTACION>
                  <xsl:value-of select="EXPORTACION"/>
               </ns0:EXPORTACION>
               <ns0:RECEIPT_METHOD>
                  <xsl:value-of select="RECEIPT_METHOD"/>
               </ns0:RECEIPT_METHOD>
               <xsl:for-each select="LINES">
                  <ns0:LINES>
                     <ns0:CASH_RECEIPT_ID>
                       <xsl:value-of select="CASH_RECEIPT_ID"/>
                     </ns0:CASH_RECEIPT_ID>
                     <ns0:INVOICE_NUMBER>
                        <xsl:value-of select="INVOICE_NUMBER"/>
                     </ns0:INVOICE_NUMBER>
                     <ns0:DOCUMENT_ID>
                        <xsl:value-of select="DOCUMENT_ID"/>
                     </ns0:DOCUMENT_ID>
                     <ns0:SERIE>
                        <xsl:value-of select="SERIE"/>
                     </ns0:SERIE>
                     <ns0:FOLIO>
                        <xsl:value-of select="FOLIO"/>
                     </ns0:FOLIO>
                     <ns0:CURRENCY>
                        <xsl:value-of select="CURRENCY"/>
                     </ns0:CURRENCY>
                     <ns0:CURRENCY_EXCHANGE>
                        <xsl:value-of select="CURRENCY_EXCHANGE"/>
                     </ns0:CURRENCY_EXCHANGE>
                     <xsl:if test="PAYMENT_METHOD">
                        <ns0:PAYMENT_METHOD>
                           <xsl:value-of select="PAYMENT_METHOD"/>
                        </ns0:PAYMENT_METHOD>
                     </xsl:if>
                     <ns0:PARTIALITY_NUMBER>
                        <xsl:value-of select="PARTIALITY_NUMBER"/>
                     </ns0:PARTIALITY_NUMBER>
                     <ns0:PREVIOUS_BALANCE>
                        <xsl:value-of select="PREVIOUS_BALANCE"/>
                     </ns0:PREVIOUS_BALANCE>
                     <ns0:PAID_AMOUNT>
                        <xsl:value-of select="PAID_AMOUNT"/>
                     </ns0:PAID_AMOUNT>
                     <ns0:OUTSTANDING_BALANCE>
                        <xsl:value-of select="OUTSTANDING_BALANCE"/>
                     </ns0:OUTSTANDING_BALANCE>
                     <ns0:CUSTOMER_TRX_LINE_ID>
                        <xsl:value-of select="CUSTOMER_TRX_LINE_ID"/>
                     </ns0:CUSTOMER_TRX_LINE_ID>
                     <ns0:RECEIPT_NUMBER>
                        <xsl:value-of select="RECEIPT_NUMBER"/>
                     </ns0:RECEIPT_NUMBER>
                     <ns0:INSTALLMENT_NUMBER>
                        <xsl:value-of select="INSTALLMENT_NUMBER"/>
                     </ns0:INSTALLMENT_NUMBER>
                     <ns0:RECEIVABLE_APPLICATION_ID>
                        <xsl:value-of select="RECEIVABLE_APPLICATION_ID"/>
                     </ns0:RECEIVABLE_APPLICATION_ID>
                     <ns0:TRX_NUMBER>
                        <xsl:value-of select="TRX_NUMBER"/>
                     </ns0:TRX_NUMBER>
                     <ns0:EXPORTACION>
                        <xsl:value-of select="EXPORTACION"/>
                     </ns0:EXPORTACION>
                     <ns0:TAX_OBJECT>
                        <xsl:value-of select="TAX_OBJECT"/>
                     </ns0:TAX_OBJECT>
                     <ns0:RETAINED_TAX_BASE>
                        <xsl:value-of select="RETAINED_TAX_BASE"/>
                     </ns0:RETAINED_TAX_BASE>
                     <ns0:RETAINED_TAX>
                        <xsl:value-of select="RETAINED_TAX"/>
                     </ns0:RETAINED_TAX>
                     <ns0:RETAINED_RATE_FEE>
                        <xsl:value-of select="RETAINED_RATE_FEE"/>
                     </ns0:RETAINED_RATE_FEE>
                     <ns0:RETAINED_FACTOR_TYPE>
                        <xsl:value-of select="RETAINED_FACTOR_TYPE"/>
                     </ns0:RETAINED_FACTOR_TYPE>
                     <ns0:RETAINED_AMOUNT>
                        <xsl:value-of select="RETAINED_AMOUNT"/>
                     </ns0:RETAINED_AMOUNT>
                     <ns0:TRANSFERREDS_TAX_BASE>
                        <xsl:value-of select="TRANSFERREDS_TAX_BASE"/>
                     </ns0:TRANSFERREDS_TAX_BASE>
                     <ns0:TRANSFERREDS_TAX>
                        <xsl:value-of select="TRANSFERREDS_TAX"/>
                     </ns0:TRANSFERREDS_TAX>
                     <ns0:TRANSFERREDS_RATE_FEE>
                        <xsl:value-of select="TRANSFERREDS_RATE_FEE"/>
                     </ns0:TRANSFERREDS_RATE_FEE>
                     <ns0:TRANSFERREDS_FACTOR_TYPE>
                        <xsl:value-of select="TRANSFERREDS_FACTOR_TYPE"/>
                     </ns0:TRANSFERREDS_FACTOR_TYPE>
                     <ns0:TRANSFERREDS_AMOUNT>
                        <xsl:value-of select="TRANSFERREDS_AMOUNT"/>
                     </ns0:TRANSFERREDS_AMOUNT>
                  </ns0:LINES>
               </xsl:for-each>
            </ns0:HEADER>
         </xsl:for-each>
      </ns0:PAYMENTS_DS>
   </xsl:template>
</xsl:stylesheet>
