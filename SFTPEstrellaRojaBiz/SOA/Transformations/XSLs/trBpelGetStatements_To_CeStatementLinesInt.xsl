<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns0="http://soa.estrellaroja.com.mx/SFTPEstrellaRojaBiz" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tns="http://soa.estrellaroja.com.mx/SFTPEstrellaRojaBiz/CeStatementLinesInt" exclude-result-prefixes=" xsd oracle-xsl-mapper xsi xsl ns0 tns mhdr oraext xp20 xref socket dvm oraxsl"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:ns6="http://soa.estrellaroja.com.mx/SFTPEstrellaRojaBiz/CeStatementHeaderInt"
                xmlns:ns1="http://soa.estrellaroja.com.mx/EstrellaRojaCommons"
                xmlns:ns5="http://soa.estrellaroja.com.mx/SOAUtilitiesTec"
                xmlns:ns3="http://soa.estrellaroja.com.mx/CeStatementBalanceInt"
                xmlns:ns2="http://schemas.oracle.com/bpel/extension" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:client="http://soa.estrellaroja.com.mx/SFTPEstrellaRojaBiz/bpelGetBankStatements">
   <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../../WSDLs/bpelGetBankStatements.wsdl"/>
            <oracle-xsl-mapper:rootElement name="GetBankStatementsRq" namespace="http://soa.estrellaroja.com.mx/SFTPEstrellaRojaBiz"/>
         </oracle-xsl-mapper:source>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../../WSDLs/bpelGetBankStatements.wsdl"/>
            <oracle-xsl-mapper:rootElement name="CompositeInstanceId"
                                           namespace="http://soa.estrellaroja.com.mx/SFTPEstrellaRojaBiz"/>
            <oracle-xsl-mapper:param name="varCompositeInstanceId"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../../WSDLs/bpelGetBankStatements.wsdl"/>
            <oracle-xsl-mapper:rootElement name="CeStatementLinesInt" namespace="http://soa.estrellaroja.com.mx/SFTPEstrellaRojaBiz/CeStatementLinesInt"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.2.0(XSLT Build 161003.0739.0018) AT [MON JAN 15 16:36:13 CST 2018].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:param name="varCompositeInstanceId"/>
   <xsl:template match="/">
      <tns:CeStatementLinesInt>
         <xsl:for-each select="/ns0:GetBankStatementsRq/ns0:BankLinesDetails/ns0:AccountStatementsLists">
            <tns:StatementsLines>
               <tns:StatementNumber>
                  <xsl:value-of select="concat (/ns0:GetBankStatementsRq/ns0:BankName, &quot;_&quot;, $varCompositeInstanceId/ns0:CompositeInstanceId, xp20:format-dateTime (xp20:current-date ( ), &quot;[D01][M01][Y0001]&quot; ) )"/>
               </tns:StatementNumber>
               <tns:BankAccountNumber>
                  <xsl:value-of select="ns0:AccountNumber"/>
               </tns:BankAccountNumber>
               <tns:LineNumber>
                  <xsl:value-of select="position ( )"/>
               </tns:LineNumber>
               <tns:TransactionCode>
                  <xsl:value-of select="ns0:BankCode"/>
               </tns:TransactionCode>
               <tns:TransactionType>
                  <xsl:value-of select="ns0:TransactionType"/>
               </tns:TransactionType>
               <tns:Amount>
                  <xsl:value-of select="ns0:Amount"/>
               </tns:Amount>
               <tns:CurrencyCode>
                  <xsl:value-of select="&quot;MXN&quot;"/>
               </tns:CurrencyCode>
               <tns:BookingDate>
                  <xsl:value-of select="ns0:StatementDate"/>
               </tns:BookingDate>
               <tns:ValueDate>
                  <xsl:value-of select="ns0:StatementDate"/>
               </tns:ValueDate>
               <xsl:choose>
                  <xsl:when test="ns0:TypeSign = '+'">
                     <tns:CreditDebitIndicator>
                        <xsl:value-of select="&quot;DBIT&quot;"/>
                     </tns:CreditDebitIndicator>
                  </xsl:when>
                  <xsl:otherwise>
                     <tns:CreditDebitIndicator>
                        <xsl:value-of select="&quot;CRDT&quot;"/>
                     </tns:CreditDebitIndicator>
                  </xsl:otherwise>
               </xsl:choose>
               <tns:TransactionIdentifier/>
               <tns:CheckNumber/>
               <tns:TransactionAmount>
                  <xsl:value-of select="ns0:Amount"/>
               </tns:TransactionAmount>
               <tns:TransactionCurrencyCode>
                  <xsl:value-of select="/ns0:GetBankStatementsRq/ns0:Balances/ns0:Balance[1]/ns0:CurrencyCode"/>
               </tns:TransactionCurrencyCode>
               <tns:ExchangeRate/>
               <tns:ExchangeRateDate/>
               <tns:ExchangeRateType/>
               <tns:AddendaText/>
               <tns:AccountServicerReference/>
               <tns:CustomerReference>
                  <xsl:value-of select="ns0:References"/>
               </tns:CustomerReference>
               <tns:ClearingSystemReference/>
               <tns:ContractIdentifier/>
               <tns:InstructionIdentifier/>
               <tns:EndtoEndIdentifier/>
               <tns:ServicerStatus/>
               <tns:CommissionWaiverIndicatorFlag/>
               <tns:ReversalIndicatorFlag/>
               <tns:OriginalBankAccount/>
               <tns:OriginalTransactionCode>
                  <xsl:value-of select="ns0:BankCode"/>
               </tns:OriginalTransactionCode>
               <tns:ISODomain/>
               <tns:ISOFamily/>
               <tns:ISOSubFamily/>
               <tns:UserDFFAttributeCategory/>
               <tns:UserDFFAttribute1>
                  <xsl:value-of select="$varCompositeInstanceId/ns0:CompositeInstanceId"/>
               </tns:UserDFFAttribute1>
               <tns:UserDFFAttribute2/>
               <tns:UserDFFAttribute3/>
               <tns:UserDFFAttribute4/>
               <tns:UserDFFAttribute5/>
               <tns:UserDFFAttribute6/>
               <tns:UserDFFAttribute7/>
               <tns:UserDFFAttribute8/>
               <tns:UserDFFAttribute9/>
               <tns:UserDFFAttribute10/>
               <tns:UserDFFAttribute11/>
               <tns:UserDFFAttribute12/>
               <tns:UserDFFAttribute13/>
               <tns:UserDFFAttribute14/>
               <tns:UserDFFAttribute15/>
               <tns:GlobalDFFAttributeCategory/>
               <tns:GlobalDFFAttribute1/>
               <tns:GlobalDFFAttribute2/>
               <tns:GlobalDFFAttribute3/>
               <tns:GlobalDFFAttribute4/>
               <tns:GlobalDFFAttribute5/>
               <tns:GlobalDFFAttribute6/>
               <tns:GlobalDFFAttribute7/>
               <tns:GlobalDFFAttribute8/>
               <tns:GlobalDFFAttribute9/>
               <tns:GlobalDFFAttribute10/>
               <tns:GlobalDFFAttribute11/>
               <tns:GlobalDFFAttribute12/>
               <tns:GlobalDFFAttribute13/>
               <tns:GlobalDFFAttribute14/>
               <tns:GlobalDFFAttribute15/>
               <tns:END/>
            </tns:StatementsLines>
         </xsl:for-each>
      </tns:CeStatementLinesInt>
   </xsl:template>
</xsl:stylesheet>
