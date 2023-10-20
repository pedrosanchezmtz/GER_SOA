<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:ns0="http://soa.estrellaroja.com.mx/CFDITec" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns1="http://soa.estrellaroja.com.mx/AuditControlTec" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes=" xsd oracle-xsl-mapper xsi xsl ns0 ns1 mhdr oraext xp20 xref socket dvm oraxsl"
                xmlns:ns3="http://soa.estrellaroja.com.mx/EstrellaRojaCommons"
                xmlns:ns5="http://soa.estrellaroja.com.mx/CFDI"
                xmlns:ns6="http://soa.estrellaroja.com.mx/Reports/XXER_AP_INVOICE_VALIDATION_AUTOMATICA"
                xmlns:ns7="http://www.sat.gob.mx/sitio_internet/cfd/catalogos/Pagos"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ns2="http://soa.estrellaroja.com.mx/CFDITec/types"
                xmlns:ns4="http://soa.estrellaroja.com.mx/Reports/XXER_ValidationComplement"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:ns8="http://www.sat.gob.mx/sitio_internet/cfd/tipoDatos/tdCFDI"
                xmlns:ns9="http://www.sat.gob.mx/sitio_internet/cfd/catalogos">
   <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="oramds:/apps/SOA/CFDITec/CFDITec.wsdl"/>
            <oracle-xsl-mapper:rootElement name="GetComplementCFDIRs" namespace="http://soa.estrellaroja.com.mx/CFDITec"/>
         </oracle-xsl-mapper:source>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="oramds:/apps/SOA/CFDITec/CFDITec.wsdl"/>
            <oracle-xsl-mapper:rootElement name="MergeComplementsAPRq" namespace="http://soa.estrellaroja.com.mx/AuditControlTec"/>
            <oracle-xsl-mapper:param name="MergeComplementsAPRq.MergeComplementsAPRq"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="oramds:/apps/SOA/CFDITec/CFDITec.wsdl"/>
            <oracle-xsl-mapper:rootElement name="MergeComplementsAPRq" namespace="http://soa.estrellaroja.com.mx/AuditControlTec"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.4.0(XSLT Build 190828.0353.3300) AT [WED FEB 01 16:13:48 CST 2023].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:param name="MergeComplementsAPRq.MergeComplementsAPRq"/>
   <xsl:template match="/">
      <ns1:MergeComplementsAPRq>
         <ns1:Complements>
            <ns1:Complement>
               <ns1:ComplementsLinesAp>
                  <xsl:if test="$MergeComplementsAPRq.MergeComplementsAPRq/ns1:MergeComplementsAPRq/ns1:Complements/ns1:Complement/ns1:ComplementsLinesAp/ns1:XxerComplementsLinesApTbl">
                     <xsl:for-each select="$MergeComplementsAPRq.MergeComplementsAPRq/ns1:MergeComplementsAPRq/ns1:Complements/ns1:Complement/ns1:ComplementsLinesAp/ns1:XxerComplementsLinesApTbl">
                        
                       <ns1:XxerComplementsLinesApTbl>
                           <ns1:drId>
                              <xsl:value-of select="ns1:drId"/>
                           </ns1:drId>
                           <xsl:if test="ns1:invoiceId">
                              <ns1:invoiceId>
                                 <xsl:if test="ns1:invoiceId/@xsi:nil">
                                    <xsl:attribute name="nil" namespace="http://www.w3.org/2001/XMLSchema-instance">
                                       <xsl:value-of select="ns1:invoiceId/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:invoiceId"/>
                              </ns1:invoiceId>
                           </xsl:if>
                           <xsl:if test="ns1:status">
                              <ns1:status>
                                 <xsl:if test="ns1:status/@xsi:nil">
                                    <xsl:attribute name="nil" namespace="http://www.w3.org/2001/XMLSchema-instance">
                                       <xsl:value-of select="ns1:status/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:status"/>
                              </ns1:status>
                           </xsl:if>
                           <xsl:if test="ns1:statusDesc">
                              <ns1:statusDesc>
                                 <xsl:if test="ns1:statusDesc/@xsi:nil">
                                    <xsl:attribute name="nil" namespace="http://www.w3.org/2001/XMLSchema-instance">
                                       <xsl:value-of select="ns1:statusDesc/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:statusDesc"/>
                              </ns1:statusDesc>
                           </xsl:if>
                           <xsl:if test="ns1:folioDrXml">
                              <ns1:folioDrXml>
                                 <xsl:if test="ns1:folioDrXml/@xsi:nil">
                                    <xsl:attribute name="nil" namespace="http://www.w3.org/2001/XMLSchema-instance">
                                       <xsl:value-of select="ns1:folioDrXml/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:folioDrXml"/>
                              </ns1:folioDrXml>
                           </xsl:if>
                           <xsl:if test="ns1:serieDrXml">
                              <ns1:serieDrXml>
                                 <xsl:if test="ns1:serieDrXml/@xsi:nil">
                                    <xsl:attribute name="nil" namespace="http://www.w3.org/2001/XMLSchema-instance">
                                       <xsl:value-of select="ns1:serieDrXml/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:serieDrXml"/>
                              </ns1:serieDrXml>
                           </xsl:if>
                           <xsl:if test="ns1:uuidDrXml">
                              <ns1:uuidDrXml>
                                 <xsl:if test="ns1:uuidDrXml/@xsi:nil">
                                    <xsl:attribute name="nil" namespace="http://www.w3.org/2001/XMLSchema-instance">
                                       <xsl:value-of select="ns1:uuidDrXml/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:uuidDrXml"/>
                              </ns1:uuidDrXml>
                           </xsl:if>
                           <xsl:if test="ns1:impSaldoAntDrXml">
                              <ns1:impSaldoAntDrXml>
                                 <xsl:if test="ns1:impSaldoAntDrXml/@xsi:nil">
                                    <xsl:attribute name="nil" namespace="http://www.w3.org/2001/XMLSchema-instance">
                                       <xsl:value-of select="ns1:impSaldoAntDrXml/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:impSaldoAntDrXml"/>
                              </ns1:impSaldoAntDrXml>
                           </xsl:if>
                           <xsl:if test="ns1:impPagoDrXml">
                              <ns1:impPagoDrXml>
                                 <xsl:if test="ns1:impPagoDrXml/@xsi:nil">
                                    <xsl:attribute name="nil" namespace="http://www.w3.org/2001/XMLSchema-instance">
                                       <xsl:value-of select="ns1:impPagoDrXml/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:impPagoDrXml"/>
                              </ns1:impPagoDrXml>
                           </xsl:if>
                           <xsl:if test="ns1:impSaldoInsolutoDrXml">
                              <ns1:impSaldoInsolutoDrXml>
                                 <xsl:if test="ns1:impSaldoInsolutoDrXml/@xsi:nil">
                                    <xsl:attribute name="nil" namespace="http://www.w3.org/2001/XMLSchema-instance">
                                       <xsl:value-of select="ns1:impSaldoInsolutoDrXml/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:impSaldoInsolutoDrXml"/>
                              </ns1:impSaldoInsolutoDrXml>
                           </xsl:if>
                           <xsl:if test="ns1:monedaDrXml">
                              <ns1:monedaDrXml>
                                 <xsl:if test="ns1:monedaDrXml/@xsi:nil">
                                    <xsl:attribute name="nil" namespace="http://www.w3.org/2001/XMLSchema-instance">
                                       <xsl:value-of select="ns1:monedaDrXml/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:monedaDrXml"/>
                              </ns1:monedaDrXml>
                           </xsl:if>
                           <xsl:if test="ns1:metodoPagoDrXml">
                              <ns1:metodoPagoDrXml>
                                 <xsl:if test="ns1:metodoPagoDrXml/@xsi:nil">
                                    <xsl:attribute name="nil" namespace="http://www.w3.org/2001/XMLSchema-instance">
                                       <xsl:value-of select="ns1:metodoPagoDrXml/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:metodoPagoDrXml"/>
                              </ns1:metodoPagoDrXml>
                           </xsl:if>
                           <xsl:if test="ns1:tipoCambioDrXml">
                              <ns1:tipoCambioDrXml>
                                 <xsl:if test="ns1:tipoCambioDrXml/@xsi:nil">
                                    <xsl:attribute name="nil" namespace="http://www.w3.org/2001/XMLSchema-instance">
                                       <xsl:value-of select="ns1:tipoCambioDrXml/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:tipoCambioDrXml"/>
                              </ns1:tipoCambioDrXml>
                           </xsl:if>
                           <xsl:if test="ns1:formaPagoDrXml">
                              <ns1:formaPagoDrXml>
                                 <xsl:if test="ns1:formaPagoDrXml/@xsi:nil">
                                    <xsl:attribute name="nil" namespace="http://www.w3.org/2001/XMLSchema-instance">
                                       <xsl:value-of select="ns1:formaPagoDrXml/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:formaPagoDrXml"/>
                              </ns1:formaPagoDrXml>
                           </xsl:if>
                           <xsl:if test="ns1:fechaDrXml">
                              <ns1:fechaDrXml>
                                 <xsl:if test="ns1:fechaDrXml/@xsi:nil">
                                    <xsl:attribute name="nil" namespace="http://www.w3.org/2001/XMLSchema-instance">
                                       <xsl:value-of select="ns1:fechaDrXml/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:fechaDrXml"/>
                              </ns1:fechaDrXml>
                           </xsl:if>
                           <xsl:if test="ns1:attribute1">
                              <ns1:attribute1>
                                 <xsl:if test="ns1:attribute1/@xsi:nil">
                                    <xsl:attribute name="nil" namespace="http://www.w3.org/2001/XMLSchema-instance">
                                       <xsl:value-of select="ns1:attribute1/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:attribute1"/>
                              </ns1:attribute1>
                           </xsl:if>
                           <xsl:if test="ns1:attribute2">
                              <ns1:attribute2>
                                 <xsl:if test="ns1:attribute2/@xsi:nil">
                                    <xsl:attribute name="nil" namespace="http://www.w3.org/2001/XMLSchema-instance">
                                       <xsl:value-of select="ns1:attribute2/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:attribute2"/>
                              </ns1:attribute2>
                           </xsl:if>
                           <xsl:if test="ns1:attribute3">
                              <ns1:attribute3>
                                 <xsl:if test="ns1:attribute3/@xsi:nil">
                                    <xsl:attribute name="nil" namespace="http://www.w3.org/2001/XMLSchema-instance">
                                       <xsl:value-of select="ns1:attribute3/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:attribute3"/>
                              </ns1:attribute3>
                           </xsl:if>
                           <xsl:if test="ns1:attribute4">
                              <ns1:attribute4>
                                 <xsl:if test="ns1:attribute4/@xsi:nil">
                                    <xsl:attribute name="nil" namespace="http://www.w3.org/2001/XMLSchema-instance">
                                       <xsl:value-of select="ns1:attribute4/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:attribute4"/>
                              </ns1:attribute4>
                           </xsl:if>
                           <xsl:if test="ns1:attribute5">
                              <ns1:attribute5>
                                 <xsl:if test="ns1:attribute5/@xsi:nil">
                                    <xsl:attribute name="nil" namespace="http://www.w3.org/2001/XMLSchema-instance">
                                       <xsl:value-of select="ns1:attribute5/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:attribute5"/>
                              </ns1:attribute5>
                           </xsl:if>
                           <xsl:if test="ns1:createdBy">
                              <ns1:createdBy>
                                 <xsl:if test="ns1:createdBy/@xsi:nil">
                                    <xsl:attribute name="nil" namespace="http://www.w3.org/2001/XMLSchema-instance">
                                       <xsl:value-of select="ns1:createdBy/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:createdBy"/>
                              </ns1:createdBy>
                           </xsl:if>
                           <xsl:if test="ns1:creationDate">
                              <ns1:creationDate>
                                 <xsl:if test="ns1:creationDate/@xsi:nil">
                                    <xsl:attribute name="nil" namespace="http://www.w3.org/2001/XMLSchema-instance">
                                       <xsl:value-of select="ns1:creationDate/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:creationDate"/>
                              </ns1:creationDate>
                           </xsl:if>
                           <xsl:if test="ns1:lastUpdatedBy">
                              <ns1:lastUpdatedBy>
                                 <xsl:if test="ns1:lastUpdatedBy/@xsi:nil">
                                    <xsl:attribute name="nil" namespace="http://www.w3.org/2001/XMLSchema-instance">
                                       <xsl:value-of select="ns1:lastUpdatedBy/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:lastUpdatedBy"/>
                              </ns1:lastUpdatedBy>
                           </xsl:if>
                           <xsl:if test="ns1:lastUpdateDate">
                              <ns1:lastUpdateDate>
                                 <xsl:if test="ns1:lastUpdateDate/@xsi:nil">
                                    <xsl:attribute name="nil" namespace="http://www.w3.org/2001/XMLSchema-instance">
                                       <xsl:value-of select="ns1:lastUpdateDate/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:lastUpdateDate"/>
                              </ns1:lastUpdateDate>
                           </xsl:if>
                           <xsl:if test="ns1:objectVersionNumber">
                              <ns1:objectVersionNumber>
                                 <xsl:if test="ns1:objectVersionNumber/@xsi:nil">
                                    <xsl:attribute name="nil" namespace="http://www.w3.org/2001/XMLSchema-instance">
                                       <xsl:value-of select="ns1:objectVersionNumber/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:objectVersionNumber"/>
                              </ns1:objectVersionNumber>
                           </xsl:if>
                           <xsl:if test="ns1:objetoImpDrXml">
                              <ns1:objetoImpDrXml>
                                 <xsl:if test="ns1:objetoImpDrXml/@xsi:nil">
                                    <xsl:attribute name="nil" namespace="http://www.w3.org/2001/XMLSchema-instance">
                                       <xsl:value-of select="ns1:objetoImpDrXml/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:objetoImpDrXml"/>
                              </ns1:objetoImpDrXml>
                           </xsl:if>
                        </ns1:XxerComplementsLinesApTbl>
   
                     </xsl:for-each>
                  </xsl:if>
                     <xsl:for-each select="/ns0:GetComplementCFDIRs/ns0:COMPLEMENT/ns0:COMPLEMENT_LINE/ns0:DocumentoDR/ns5:Complemento/ns5:Pagos/ns5:Pago/ns5:DoctoRelacionado">
                        <ns1:XxerComplementsLinesApTbl>
                           <xsl:if test="/ns0:GetComplementCFDIRs/ns0:COMPLEMENT/ns0:COMPLEMENT_LINE/ns4:DATA_DS/ns4:G_1/ns4:G_2/ns4:ID_PAGO">
                           <xsl:if test="count(/ns0:GetComplementCFDIRs/ns0:COMPLEMENT/ns0:COMPLEMENT_LINE/ns0:DocumentoDR/ns5:Complemento/ns5:Pagos/ns5:Pago/ns5:DoctoRelacionado)=1">
                           <ns1:drId>
                           <xsl:value-of select="concat (/ns0:GetComplementCFDIRs/ns0:COMPLEMENT/ns0:COMPLEMENT_LINE/ns4:DATA_DS/ns4:G_1/ns4:G_2/ns4:ID_PAGO, /ns0:GetComplementCFDIRs/ns0:COMPLEMENT/ns0:COMPLEMENT_LINE/ns4:DATA_DS/ns4:G_1/ns4:G_2/ns4:ID_FACTURA )"/>
                        </ns1:drId>
                         </xsl:if>
                        <xsl:if test="count(/ns0:GetComplementCFDIRs/ns0:COMPLEMENT/ns0:COMPLEMENT_LINE/ns0:DocumentoDR/ns5:Complemento/ns5:Pagos/ns5:Pago/ns5:DoctoRelacionado) > 1">
                           <ns1:drId>
                           <xsl:value-of select="concat (/ns0:GetComplementCFDIRs/ns0:COMPLEMENT/ns0:COMPLEMENT_LINE/ns4:DATA_DS/ns4:G_1/ns4:G_2/ns4:ID_PAGO, /ns0:GetComplementCFDIRs/ns0:COMPLEMENT/ns0:COMPLEMENT_LINE/ns4:DATA_DS/ns4:G_1/ns4:G_2/ns4:ID_FACTURA,position() )"/>
                        </ns1:drId>
                        </xsl:if>
                        </xsl:if>
                           <xsl:if test="/ns0:GetComplementCFDIRs/ns0:COMPLEMENT/ns0:COMPLEMENT_LINE/ns4:DATA_DS/ns4:G_1/ns4:G_2/ns4:ID_FACTURA"><ns1:invoiceId>
                              <xsl:value-of select="/ns0:GetComplementCFDIRs/ns0:COMPLEMENT/ns0:COMPLEMENT_LINE/ns4:DATA_DS/ns4:G_1/ns4:G_2/ns4:ID_FACTURA"/>
                           </ns1:invoiceId>                            </xsl:if>
                           <xsl:if test="@Folio"><ns1:folioDrXml>
                              <xsl:value-of select="@Folio"/>
                           </ns1:folioDrXml>                            </xsl:if>
                           <xsl:if test="@Serie"><ns1:serieDrXml>
                              <xsl:value-of select="@Serie"/>
                           </ns1:serieDrXml>                            </xsl:if>
                           <xsl:if test="@IdDocumento"><ns1:uuidDrXml>
                              <xsl:value-of select="@IdDocumento"/>
                           </ns1:uuidDrXml>                            </xsl:if>
                           <xsl:if test="@ImpSaldoAnt"><ns1:impSaldoAntDrXml>
                              <xsl:value-of select="@ImpSaldoAnt"/>
                           </ns1:impSaldoAntDrXml>                            </xsl:if>
                           <xsl:if test="@ImpPagado"><ns1:impPagoDrXml>
                              <xsl:value-of select="@ImpPagado"/>
                           </ns1:impPagoDrXml>                            </xsl:if>
                           <xsl:if test="@ImpSaldoInsoluto"><ns1:impSaldoInsolutoDrXml>
                              <xsl:value-of select="@ImpSaldoInsoluto"/>
                           </ns1:impSaldoInsolutoDrXml>                            </xsl:if>
                           <xsl:if test="@MonedaDR"><ns1:monedaDrXml>
                              <xsl:value-of select="@MonedaDR"/>
                           </ns1:monedaDrXml>                            </xsl:if>
                           <xsl:if test="@MetodoDePagoDR"><ns1:metodoPagoDrXml>
                              <xsl:value-of select="@MetodoDePagoDR"/>
                           </ns1:metodoPagoDrXml>                            </xsl:if>
                           <xsl:if test="@TipoCambioDR"><ns1:tipoCambioDrXml>
                              <xsl:value-of select="@TipoCambioDR"/>
                           </ns1:tipoCambioDrXml>                            </xsl:if>
                           <xsl:if test="/ns0:GetComplementCFDIRs/ns0:COMPLEMENT/ns0:COMPLEMENT_LINE/ns0:DocumentoDR/ns5:Complemento/ns5:Pagos/ns5:Pago/@FormaDePagoP"><ns1:formaPagoDrXml>
                              <xsl:value-of select="/ns0:GetComplementCFDIRs/ns0:COMPLEMENT/ns0:COMPLEMENT_LINE/ns0:DocumentoDR/ns5:Complemento/ns5:Pagos/ns5:Pago/@FormaDePagoP"/>
                           </ns1:formaPagoDrXml>                            </xsl:if>
                           <xsl:if test="/ns0:GetComplementCFDIRs/ns0:COMPLEMENT/ns0:COMPLEMENT_LINE/ns0:DocumentoDR/ns5:Complemento/ns5:Pagos/ns5:Pago/@FechaPago"><ns1:fechaDrXml>
                              <xsl:value-of select="/ns0:GetComplementCFDIRs/ns0:COMPLEMENT/ns0:COMPLEMENT_LINE/ns0:DocumentoDR/ns5:Complemento/ns5:Pagos/ns5:Pago/@FechaPago"/>
                           </ns1:fechaDrXml>                            </xsl:if>
                           <ns1:creationDate>
                              <xsl:value-of select="xp20:current-dateTime ( )"/>
                           </ns1:creationDate>                            
                           <xsl:if test="@ObjetoImpDR"><ns1:objetoImpDrXml>
                              <xsl:value-of select="@ObjetoImpDR"/>
                           </ns1:objetoImpDrXml>                            </xsl:if>
                        </ns1:XxerComplementsLinesApTbl>
                        </xsl:for-each>
               </ns1:ComplementsLinesAp>
            </ns1:Complement>
         </ns1:Complements>
      </ns1:MergeComplementsAPRq>
   </xsl:template>
</xsl:stylesheet>
