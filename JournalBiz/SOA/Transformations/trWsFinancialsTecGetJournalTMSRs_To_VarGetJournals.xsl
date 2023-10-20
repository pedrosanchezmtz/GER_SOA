<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns0="http://soa.estrellaroja.com.mx/FinancialsTec" exclude-result-prefixes=" oracle-xsl-mapper xsi xsd xsl ns0 socket dvm mhdr oraxsl oraext xp20 xref" xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype" xmlns:ns4="http://soa.estrellaroja.com.mx/EstrellaRojaCommons" xmlns:ns3="http://TargetNamespace.com/ServiceName" xmlns:ns1="http://soa.estrellaroja.com.mx/JournalBiz" xmlns:ns2="http://schemas.oracle.com/bpel/extension" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:client="http://soa.estrellaroja.com.mx/JournalBiz/bpelGetJournal">
   <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/bpelGetJournal.wsdl"/>
            <oracle-xsl-mapper:rootElement name="GetJournalTMSRs" namespace="http://soa.estrellaroja.com.mx/FinancialsTec"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/bpelGetJournal.wsdl"/>
            <oracle-xsl-mapper:rootElement name="GetJournalRs" namespace="http://soa.estrellaroja.com.mx/FinancialsTec"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.2.0(XSLT Build 161003.0739.0018) AT [TUE JAN 02 12:15:43 CST 2018].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
      <ns0:GetJournalRs>
         <xsl:if test="/ns0:GetJournalTMSRs/ns4:Success">
            <ns4:Success>
               <xsl:value-of select="/ns0:GetJournalTMSRs/ns4:Success"/>
            </ns4:Success>
         </xsl:if>
         <xsl:if test="/ns0:GetJournalTMSRs/ns4:Errors">
            <ns4:Errors>
               <xsl:for-each select="/ns0:GetJournalTMSRs/ns4:Errors/ns4:Error">
                  <ns4:Error>
                     <ns4:ErrorCode>
                        <xsl:value-of select="ns4:ErrorCode"/>
                     </ns4:ErrorCode>
                     <ns4:ShortDescription>
                        <xsl:value-of select="ns4:ShortDescription"/>
                     </ns4:ShortDescription>
                     <ns4:Description>
                        <xsl:value-of select="ns4:Description"/>
                     </ns4:Description>
                     <ns4:BusinessProcess>
                        <xsl:value-of select="ns4:BusinessProcess"/>
                     </ns4:BusinessProcess>
                     <ns4:FailedService>
                        <xsl:value-of select="ns4:FailedService"/>
                     </ns4:FailedService>
                     <ns4:TimeStamp>
                        <xsl:value-of select="ns4:TimeStamp"/>
                     </ns4:TimeStamp>
                  </ns4:Error>
               </xsl:for-each>
            </ns4:Errors>
         </xsl:if>
         <xsl:if test="/ns0:GetJournalTMSRs/ns0:Return">
            <ns0:Return>
               <xsl:for-each select="/ns0:GetJournalTMSRs/ns0:Return/ns0:Journals">
                  <ns0:Journals>
                     <ns0:StatusCode>
                        <xsl:value-of select="ns0:StatusCode"/>
                     </ns0:StatusCode>
                     <ns0:LedgerID>
                        <xsl:value-of select="ns0:LedgerID"/>
                     </ns0:LedgerID>
                     <ns0:EffectiveDateOfTransaction>
                        <xsl:value-of select="ns0:EffectiveDateOfTransaction"/>
                     </ns0:EffectiveDateOfTransaction>
                     <ns0:JournalSource>
                        <xsl:value-of select="ns0:JournalSource"/>
                     </ns0:JournalSource>
                     <ns0:JournalCategory>
                        <xsl:value-of select="ns0:JournalCategory"/>
                     </ns0:JournalCategory>
                     <ns0:CurrencyCode>
                        <xsl:value-of select="ns0:CurrencyCode"/>
                     </ns0:CurrencyCode>
                     <ns0:JournalEntryCreationDate>
                        <xsl:value-of select="ns0:JournalEntryCreationDate"/>
                     </ns0:JournalEntryCreationDate>
                     <ns0:ActualFlag>
                        <xsl:value-of select="ns0:ActualFlag"/>
                     </ns0:ActualFlag>
                     <ns0:Segment1>
                        <xsl:value-of select="ns0:Segment1"/>
                     </ns0:Segment1>
                     <ns0:Segment2>
                        <xsl:value-of select="ns0:Segment2"/>
                     </ns0:Segment2>
                     <ns0:Segment3>
                        <xsl:value-of select="ns0:Segment3"/>
                     </ns0:Segment3>
                     <ns0:Segment4>
                        <xsl:value-of select="ns0:Segment4"/>
                     </ns0:Segment4>
                     <ns0:Segment5>
                        <xsl:value-of select="ns0:Segment5"/>
                     </ns0:Segment5>
                     <ns0:Segment6>
                        <xsl:value-of select="ns0:Segment6"/>
                     </ns0:Segment6>
                     <ns0:Segment7>
                        <xsl:value-of select="ns0:Segment7"/>
                     </ns0:Segment7>
                     <ns0:Segment8>
                        <xsl:value-of select="ns0:Segment8"/>
                     </ns0:Segment8>
                     <ns0:Segment9>
                        <xsl:value-of select="ns0:Segment9"/>
                     </ns0:Segment9>
                     <ns0:Segment10>
                        <xsl:value-of select="ns0:Segment10"/>
                     </ns0:Segment10>
                     <ns0:Segment11>
                        <xsl:value-of select="ns0:Segment11"/>
                     </ns0:Segment11>
                     <ns0:Segment12>
                        <xsl:value-of select="ns0:Segment12"/>
                     </ns0:Segment12>
                     <ns0:Segment13>
                        <xsl:value-of select="ns0:Segment13"/>
                     </ns0:Segment13>
                     <ns0:Segment14>
                        <xsl:value-of select="ns0:Segment14"/>
                     </ns0:Segment14>
                     <ns0:Segment15>
                        <xsl:value-of select="ns0:Segment15"/>
                     </ns0:Segment15>
                     <ns0:Segment16>
                        <xsl:value-of select="ns0:Segment16"/>
                     </ns0:Segment16>
                     <ns0:Segment17>
                        <xsl:value-of select="ns0:Segment17"/>
                     </ns0:Segment17>
                     <ns0:Segment18>
                        <xsl:value-of select="ns0:Segment18"/>
                     </ns0:Segment18>
                     <ns0:Segment19>
                        <xsl:value-of select="ns0:Segment19"/>
                     </ns0:Segment19>
                     <ns0:Segment20>
                        <xsl:value-of select="ns0:Segment20"/>
                     </ns0:Segment20>
                     <ns0:Segment21>
                        <xsl:value-of select="ns0:Segment21"/>
                     </ns0:Segment21>
                     <ns0:Segment22>
                        <xsl:value-of select="ns0:Segment22"/>
                     </ns0:Segment22>
                     <ns0:Segment23>
                        <xsl:value-of select="ns0:Segment23"/>
                     </ns0:Segment23>
                     <ns0:Segment24>
                        <xsl:value-of select="ns0:Segment24"/>
                     </ns0:Segment24>
                     <ns0:Segment25>
                        <xsl:value-of select="ns0:Segment25"/>
                     </ns0:Segment25>
                     <ns0:Segment26>
                        <xsl:value-of select="ns0:Segment26"/>
                     </ns0:Segment26>
                     <ns0:Segment27>
                        <xsl:value-of select="ns0:Segment27"/>
                     </ns0:Segment27>
                     <ns0:Segment28>
                        <xsl:value-of select="ns0:Segment28"/>
                     </ns0:Segment28>
                     <ns0:Segment29>
                        <xsl:value-of select="ns0:Segment29"/>
                     </ns0:Segment29>
                     <ns0:Segment30>
                        <xsl:value-of select="ns0:Segment30"/>
                     </ns0:Segment30>
                     <ns0:EnteredDebitAmount>
                        <xsl:value-of select="ns0:EnteredDebitAmount"/>
                     </ns0:EnteredDebitAmount>
                     <ns0:EnteredCreditAmount>
                        <xsl:value-of select="ns0:EnteredCreditAmount"/>
                     </ns0:EnteredCreditAmount>
                     <ns0:ConvertedDebitAmount>
                        <xsl:value-of select="ns0:ConvertedDebitAmount"/>
                     </ns0:ConvertedDebitAmount>
                     <ns0:ConvertedCreditAmount>
                        <xsl:value-of select="ns0:ConvertedCreditAmount"/>
                     </ns0:ConvertedCreditAmount>
                     <ns0:REFERENCE1BatchName>
                        <xsl:value-of select="ns0:REFERENCE1BatchName"/>
                     </ns0:REFERENCE1BatchName>
                     <ns0:REFERENCE2BatchDescription>
                        <xsl:value-of select="ns0:REFERENCE2BatchDescription"/>
                     </ns0:REFERENCE2BatchDescription>
                     <ns0:REFERENCE3>
                        <xsl:value-of select="ns0:REFERENCE3"/>
                     </ns0:REFERENCE3>
                     <ns0:REFERENCE4JournalEntryName>
                        <xsl:value-of select="ns0:REFERENCE4JournalEntryName"/>
                     </ns0:REFERENCE4JournalEntryName>
                     <ns0:REFERENCE5JournalEntryDescription>
                        <xsl:value-of select="ns0:REFERENCE5JournalEntryDescription"/>
                     </ns0:REFERENCE5JournalEntryDescription>
                     <ns0:REFERENCE6JournalEntryReference>
                        <xsl:value-of select="ns0:REFERENCE6JournalEntryReference"/>
                     </ns0:REFERENCE6JournalEntryReference>
                     <ns0:REFERENCE7JournalEntryReversalflag>
                        <xsl:value-of select="ns0:REFERENCE7JournalEntryReversalflag"/>
                     </ns0:REFERENCE7JournalEntryReversalflag>
                     <ns0:REFERENCE8JournalEntryReversalPeriod>
                        <xsl:value-of select="ns0:REFERENCE8JournalEntryReversalPeriod"/>
                     </ns0:REFERENCE8JournalEntryReversalPeriod>
                     <ns0:REFERENCE9JournalReversalMethod>
                        <xsl:value-of select="ns0:REFERENCE9JournalReversalMethod"/>
                     </ns0:REFERENCE9JournalReversalMethod>
                     <ns0:REFERENCE10JournalEntryLineDescription>
                        <xsl:value-of select="ns0:REFERENCE10JournalEntryLineDescription"/>
                     </ns0:REFERENCE10JournalEntryLineDescription>
                     <ns0:ReferenceColumn1>
                        <xsl:value-of select="ns0:ReferenceColumn1"/>
                     </ns0:ReferenceColumn1>
                     <ns0:ReferenceColumn2>
                        <xsl:value-of select="ns0:ReferenceColumn2"/>
                     </ns0:ReferenceColumn2>
                     <ns0:ReferenceColumn3>
                        <xsl:value-of select="ns0:ReferenceColumn3"/>
                     </ns0:ReferenceColumn3>
                     <ns0:ReferenceColumn4>
                        <xsl:value-of select="ns0:ReferenceColumn4"/>
                     </ns0:ReferenceColumn4>
                     <ns0:ReferenceColumn5>
                        <xsl:value-of select="ns0:ReferenceColumn5"/>
                     </ns0:ReferenceColumn5>
                     <ns0:ReferenceColumn6>
                        <xsl:value-of select="ns0:ReferenceColumn6"/>
                     </ns0:ReferenceColumn6>
                     <ns0:ReferenceColumn7>
                        <xsl:value-of select="ns0:ReferenceColumn7"/>
                     </ns0:ReferenceColumn7>
                     <ns0:ReferenceColumn8>
                        <xsl:value-of select="ns0:ReferenceColumn8"/>
                     </ns0:ReferenceColumn8>
                     <ns0:ReferenceColumn9>
                        <xsl:value-of select="ns0:ReferenceColumn9"/>
                     </ns0:ReferenceColumn9>
                     <ns0:ReferenceColumn10>
                        <xsl:value-of select="ns0:ReferenceColumn10"/>
                     </ns0:ReferenceColumn10>
                     <ns0:StatisticalAmount>
                        <xsl:value-of select="ns0:StatisticalAmount"/>
                     </ns0:StatisticalAmount>
                     <ns0:CurrencyConversionType>
                        <xsl:value-of select="ns0:CurrencyConversionType"/>
                     </ns0:CurrencyConversionType>
                     <ns0:CurrencyConversionDate>
                        <xsl:value-of select="ns0:CurrencyConversionDate"/>
                     </ns0:CurrencyConversionDate>
                     <ns0:CurrencyConversionRate>
                        <xsl:value-of select="ns0:CurrencyConversionRate"/>
                     </ns0:CurrencyConversionRate>
                     <ns0:InterfaceGroupIdentifier>
                        <xsl:value-of select="ns0:InterfaceGroupIdentifier"/>
                     </ns0:InterfaceGroupIdentifier>
                     <ns0:ContextFieldForJournalEntryLineDFF>
                        <xsl:value-of select="ns0:ContextFieldForJournalEntryLineDFF"/>
                     </ns0:ContextFieldForJournalEntryLineDFF>
                     <ns0:ATTRIBUTE1>
                        <xsl:value-of select="ns0:ATTRIBUTE1"/>
                     </ns0:ATTRIBUTE1>
                     <ns0:ATTRIBUTE2>
                        <xsl:value-of select="ns0:ATTRIBUTE2"/>
                     </ns0:ATTRIBUTE2>
                     <ns0:Attribute3>
                        <xsl:value-of select="ns0:Attribute3"/>
                     </ns0:Attribute3>
                     <ns0:Attribute4>
                        <xsl:value-of select="ns0:Attribute4"/>
                     </ns0:Attribute4>
                     <ns0:Attribute5>
                        <xsl:value-of select="ns0:Attribute5"/>
                     </ns0:Attribute5>
                     <ns0:Attribute6>
                        <xsl:value-of select="ns0:Attribute6"/>
                     </ns0:Attribute6>
                     <ns0:Attribute7>
                        <xsl:value-of select="ns0:Attribute7"/>
                     </ns0:Attribute7>
                     <ns0:Attribute8>
                        <xsl:value-of select="ns0:Attribute8"/>
                     </ns0:Attribute8>
                     <ns0:Attribute9>
                        <xsl:value-of select="ns0:Attribute9"/>
                     </ns0:Attribute9>
                     <ns0:Attribute10>
                        <xsl:value-of select="ns0:Attribute10"/>
                     </ns0:Attribute10>
                     <ns0:Attribute11>
                        <xsl:value-of select="ns0:Attribute11"/>
                     </ns0:Attribute11>
                     <ns0:Attribute12>
                        <xsl:value-of select="ns0:Attribute12"/>
                     </ns0:Attribute12>
                     <ns0:Attribute13>
                        <xsl:value-of select="ns0:Attribute13"/>
                     </ns0:Attribute13>
                     <ns0:Attribute14>
                        <xsl:value-of select="ns0:Attribute14"/>
                     </ns0:Attribute14>
                     <ns0:Attribute15>
                        <xsl:value-of select="ns0:Attribute15"/>
                     </ns0:Attribute15>
                     <ns0:Attribute16>
                        <xsl:value-of select="ns0:Attribute16"/>
                     </ns0:Attribute16>
                     <ns0:Attribute17>
                        <xsl:value-of select="ns0:Attribute17"/>
                     </ns0:Attribute17>
                     <ns0:Attribute18>
                        <xsl:value-of select="ns0:Attribute18"/>
                     </ns0:Attribute18>
                     <ns0:Attribute19>
                        <xsl:value-of select="ns0:Attribute19"/>
                     </ns0:Attribute19>
                     <ns0:Attribute20>
                        <xsl:value-of select="ns0:Attribute20"/>
                     </ns0:Attribute20>
                     <ns0:ContextFieldForCapturedInformationDFF>
                        <xsl:value-of select="ns0:ContextFieldForCapturedInformationDFF"/>
                     </ns0:ContextFieldForCapturedInformationDFF>
                     <ns0:AverageJournalFlag>
                        <xsl:value-of select="ns0:AverageJournalFlag"/>
                     </ns0:AverageJournalFlag>
                     <ns0:ClearingCompany>
                        <xsl:value-of select="ns0:ClearingCompany"/>
                     </ns0:ClearingCompany>
                     <ns0:LedgerName>
                        <xsl:value-of select="ns0:LedgerName"/>
                     </ns0:LedgerName>
                     <ns0:EncumbranceTypeID>
                        <xsl:value-of select="ns0:EncumbranceTypeID"/>
                     </ns0:EncumbranceTypeID>
                     <ns0:ReconciliationReference>
                        <xsl:value-of select="ns0:ReconciliationReference"/>
                     </ns0:ReconciliationReference>
                  </ns0:Journals>
               </xsl:for-each>
            </ns0:Return>
         </xsl:if>
      </ns0:GetJournalRs>
   </xsl:template>
</xsl:stylesheet>