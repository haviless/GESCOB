object DM1: TDM1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 738
  Width = 1298
  object DCOM1: TSocketConnection
    ServerGUID = '{3B8BFE20-8698-40D5-A2C3-CF0E295C3465}'
    ServerName = 'GesCobSrvPrj.SrvGesCob'
    AfterConnect = DataModuleCreate
    Left = 39
    Top = 8
  end
  object cdsUsuarios: TwwClientDataSet
    Aggregates = <>
    IndexFieldNames = 'USERID'
    Params = <>
    ProviderName = 'dspQRY1'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 109
    Top = 9
  end
  object dsUsuarios: TwwDataSource
    DataSet = cdsUsuarios
    Left = 109
    Top = 22
  end
  object cdsGrupos: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY2'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 167
    Top = 9
  end
  object dsGrupos: TwwDataSource
    DataSet = cdsGrupos
    Left = 167
    Top = 22
  end
  object cdsMGrupo: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY3'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 223
    Top = 9
  end
  object dsMGrupo: TwwDataSource
    DataSet = cdsMGrupo
    Left = 223
    Top = 22
  end
  object cdsAcceso: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY4'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 274
    Top = 9
  end
  object dsAcceso: TwwDataSource
    DataSet = cdsAcceso
    Left = 274
    Top = 22
  end
  object cdsDLabo: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY5'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 386
    Top = 9
  end
  object dsDLabo: TwwDataSource
    DataSet = cdsDLabo
    Left = 385
    Top = 22
  end
  object cdsDFam: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY6'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 439
    Top = 9
  end
  object dsDFam: TwwDataSource
    DataSet = cdsDFam
    Left = 394
    Top = 29
  end
  object cdsEjecuta: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEjecuta'
    RemoteServer = DCOM1
    OnReconcileError = cdsEjecutaReconcileError
    ValidateWithMask = True
    Left = 22
    Top = 198
  end
  object dsEjecuta: TwwDataSource
    DataSet = cdsEjecuta
    Left = 22
    Top = 211
  end
  object cdsAso: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY8'
    RemoteServer = DCOM1
    OnReconcileError = cdsEjecutaReconcileError
    PictureMasks.Strings = (
      'ASORUC'#9'###########'#9'T'#9'F'
      'ASOID'#9'*15[#]'#9'T'#9'F'
      'ASONUMDIR'#9'*5[#]'#9'T'#9'F'
      'ASODPTO'#9'*5[#]'#9'T'#9'F'
      'ASORESNOM'#9'*15[#]'#9'T'#9'F')
    ValidateWithMask = True
    Left = 322
    Top = 9
  end
  object dsAso: TwwDataSource
    DataSet = cdsAso
    Left = 322
    Top = 22
  end
  object cdsCtasBco: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY9'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 495
    Top = 9
  end
  object dsCtasBco: TwwDataSource
    DataSet = cdsCtasBco
    Left = 498
    Top = 22
  end
  object cdsResol: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY10'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 549
    Top = 9
  end
  object dsResol: TwwDataSource
    DataSet = cdsResol
    Left = 549
    Top = 22
  end
  object cdsDSocioE: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY11'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 608
    Top = 9
  end
  object dsDSocioE: TwwDataSource
    DataSet = cdsDSocioE
    Left = 609
    Top = 22
  end
  object cdsUSES: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY12'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 19
    Top = 70
  end
  object dsUSES: TwwDataSource
    DataSet = cdsUSES
    Left = 19
    Top = 83
  end
  object cdsUPro: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY13'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 65
    Top = 70
  end
  object dsUPro: TwwDataSource
    DataSet = cdsUPro
    Left = 66
    Top = 83
  end
  object cdsUPago: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY14'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 118
    Top = 70
  end
  object dsUPago: TwwDataSource
    DataSet = cdsUPago
    Left = 118
    Top = 83
  end
  object cdsTResol: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY15'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 293
    Top = 588
  end
  object dsTResol: TwwDataSource
    DataSet = cdsTResol
    Left = 294
    Top = 601
  end
  object cdsTPension: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY1'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 251
    Top = 70
  end
  object dsTPension: TwwDataSource
    DataSet = cdsTPension
    Left = 252
    Top = 83
  end
  object cdsTAso: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY2'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 625
    Top = 133
  end
  object dsTAso: TwwDataSource
    DataSet = cdsTAso
    Left = 626
    Top = 146
  end
  object cdsSAso: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY3'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 357
    Top = 70
  end
  object dsSAso: TwwDataSource
    DataSet = cdsSAso
    Left = 358
    Top = 83
  end
  object cdsCEdu: TwwClientDataSet
    Aggregates = <>
    PacketRecords = 50
    Params = <>
    ProviderName = 'dspQRY4'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 404
    Top = 70
  end
  object dsCEdu: TwwDataSource
    DataSet = cdsCEdu
    Left = 404
    Top = 83
  end
  object cdsCAso: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY5'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 546
    Top = 70
  end
  object dsCAso: TwwDataSource
    DataSet = cdsCAso
    Left = 546
    Top = 83
  end
  object cdsTUSE: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY6'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 593
    Top = 70
  end
  object dsTUSE: TwwDataSource
    DataSet = cdsTUSE
    Left = 593
    Top = 83
  end
  object cdsOfDes: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY7'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 497
    Top = 70
  end
  object dsOfDes: TwwDataSource
    DataSet = cdsOfDes
    Left = 497
    Top = 83
  end
  object cdsCViv: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY8'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 448
    Top = 70
  end
  object dsCViv: TwwDataSource
    DataSet = cdsCViv
    Left = 448
    Top = 83
  end
  object cdsQry: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 19
    Top = 133
  end
  object dsQry: TwwDataSource
    DataSet = cdsQry
    Left = 19
    Top = 146
  end
  object cdsDpto: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY10'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 58
    Top = 133
  end
  object cdsTVia: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY11'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 103
    Top = 133
    object cdsTViaTIPVIAID: TStringField
      DisplayLabel = 'ID'
      DisplayWidth = 2
      FieldName = 'TIPVIAID'
      Size = 2
    end
    object cdsTViaTIPVIADES: TStringField
      DisplayLabel = 'DESCRIPCION'
      DisplayWidth = 30
      FieldName = 'TIPVIADES'
      Size = 30
    end
  end
  object cdsDist: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY12'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 143
    Top = 133
  end
  object cdsTZona: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY13'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 239
    Top = 133
  end
  object cdsTDoc: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY14'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 332
    Top = 133
  end
  object cdsUbigeo: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY15'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 381
    Top = 133
  end
  object cdsProvin: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY1'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 433
    Top = 133
  end
  object cdsEstCiv: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY2'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 483
    Top = 133
  end
  object cdsBcos: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY3'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 287
    Top = 133
  end
  object dsTDoc: TwwDataSource
    DataSet = cdsTDoc
    Left = 332
    Top = 146
  end
  object dsEstCiv: TwwDataSource
    DataSet = cdsEstCiv
    Left = 483
    Top = 146
  end
  object dsUbigeo: TwwDataSource
    DataSet = cdsUbigeo
    Left = 381
    Top = 146
  end
  object dsProvin: TwwDataSource
    DataSet = cdsProvin
    Left = 433
    Top = 146
  end
  object dsDpto: TwwDataSource
    DataSet = cdsDpto
    Left = 58
    Top = 146
  end
  object dsBcos: TwwDataSource
    DataSet = cdsBcos
    Left = 287
    Top = 146
  end
  object dsTVia: TwwDataSource
    DataSet = cdsTVia
    Left = 103
    Top = 146
  end
  object dsDist: TwwDataSource
    DataSet = cdsDist
    Left = 143
    Top = 146
  end
  object dsTZona: TwwDataSource
    DataSet = cdsTZona
    Left = 239
    Top = 146
  end
  object cdsPais: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY4'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 67
    Top = 198
  end
  object dsPais: TwwDataSource
    DataSet = cdsPais
    Left = 67
    Top = 211
  end
  object cdsGradoI: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY5'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 113
    Top = 198
  end
  object dsGradoI: TwwDataSource
    DataSet = cdsGradoI
    Left = 113
    Top = 211
  end
  object cdsGradoA: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY6'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 166
    Top = 198
  end
  object dsGradoA: TwwDataSource
    DataSet = cdsGradoA
    Left = 166
    Top = 211
  end
  object cdsProf: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY7'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 214
    Top = 198
  end
  object dsProf: TwwDataSource
    DataSet = cdsProf
    Left = 214
    Top = 211
  end
  object cdsTRela: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY8'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 260
    Top = 198
  end
  object cdsCtasAso: TwwClientDataSet
    Aggregates = <>
    PacketRecords = 50
    Params = <>
    ProviderName = 'dspQRY9'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 370
    Top = 198
  end
  object dsCtasAso: TwwDataSource
    DataSet = cdsCtasAso
    Left = 370
    Top = 211
  end
  object cdsAportes: TwwClientDataSet
    Aggregates = <>
    PacketRecords = 50
    Params = <>
    ProviderName = 'dspQRY10'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 429
    Top = 198
  end
  object dsAportes: TwwDataSource
    DataSet = cdsAportes
    Left = 429
    Top = 211
  end
  object cdsSexo: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY11'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 530
    Top = 133
  end
  object dsSexo: TwwDataSource
    DataSet = cdsSexo
    Left = 530
    Top = 146
  end
  object cdsLugNac: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY12'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 486
    Top = 198
  end
  object dsLugNac: TwwDataSource
    DataSet = cdsLugNac
    Left = 486
    Top = 211
  end
  object cdsTMoneda: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY13'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 819
    Top = 198
  end
  object cdsRepresentante: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY14'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 149
    Top = 259
  end
  object cdsCuentas: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY15'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 22
    Top = 259
  end
  object dsCuentas: TwwDataSource
    DataSet = cdsCuentas
    Left = 22
    Top = 272
  end
  object dsTMoneda: TwwDataSource
    DataSet = cdsTMoneda
    Left = 820
    Top = 211
  end
  object dsRepresentante: TwwDataSource
    DataSet = cdsRepresentante
    Left = 149
    Top = 272
  end
  object cdsFPago: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY1'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 218
    Top = 259
  end
  object dsFPago: TwwDataSource
    DataSet = cdsFPago
    Left = 219
    Top = 272
  end
  object cdsDetRegCob: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY2'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 340
    Top = 259
  end
  object dsDetRegCob: TwwDataSource
    DataSet = cdsDetRegCob
    Left = 341
    Top = 272
  end
  object cdsRegCob: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY3'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 272
    Top = 259
  end
  object cdsSitRepr: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY4'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 404
    Top = 259
  end
  object cdsFRepr: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY5'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 456
    Top = 259
  end
  object dsSitRepr: TwwDataSource
    DataSet = cdsSitRepr
    Left = 404
    Top = 272
  end
  object dsFRepr: TwwDataSource
    DataSet = cdsFRepr
    Left = 458
    Top = 272
  end
  object cdsRepresentante1: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY6'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 577
    Top = 259
  end
  object dsRepresentante1: TwwDataSource
    DataSet = cdsRepresentante1
    Left = 578
    Top = 272
  end
  object cdsSitCta: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY7'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 505
    Top = 259
  end
  object dsSitCta: TwwDataSource
    DataSet = cdsSitCta
    Left = 506
    Top = 272
  end
  object cdsFormaPago: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY8'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 553
    Top = 198
  end
  object dsFormaPago: TwwDataSource
    DataSet = cdsFormaPago
    Left = 553
    Top = 211
  end
  object cdsModelo: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY9'
    RemoteServer = DCOM1
    OnReconcileError = cdsEjecutaReconcileError
    ValidateWithMask = True
    Left = 22
    Top = 322
  end
  object cdsPlantilla: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY10'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 76
    Top = 322
  end
  object cdsPlanDet: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY11'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 132
    Top = 322
  end
  object dsModelo: TwwDataSource
    DataSet = cdsModelo
    Left = 22
    Top = 335
  end
  object dsPlantilla: TwwDataSource
    DataSet = cdsPlantilla
    Left = 76
    Top = 335
  end
  object dsPlandet: TwwDataSource
    DataSet = cdsPlanDet
    Left = 132
    Top = 335
  end
  object cdsDetalle: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY12'
    RemoteServer = DCOM1
    OnReconcileError = cdsEjecutaReconcileError
    PictureMasks.Strings = (
      'MONTOTOT'#9'###,###,##0.00'#9'T'#9'F')
    ValidateWithMask = True
    Left = 248
    Top = 322
  end
  object dsDetalle: TwwDataSource
    DataSet = cdsDetalle
    Left = 248
    Top = 335
  end
  object cdsCambios: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY13'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 312
    Top = 322
  end
  object dsCambios: TwwDataSource
    DataSet = cdsCambios
    Left = 314
    Top = 335
  end
  object tbOrigen: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY14'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 721
    Top = 588
  end
  object ds1: TwwDataSource
    DataSet = tbOrigen
    Left = 483
    Top = 602
  end
  object cdsEstado: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY15'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 665
    Top = 9
  end
  object dsEstado: TwwDataSource
    DataSet = cdsEstado
    Left = 665
    Top = 22
  end
  object cdsConvenio: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY1'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 649
    Top = 70
  end
  object dsConvenio: TwwDataSource
    DataSet = cdsConvenio
    Left = 649
    Top = 83
  end
  object cdsCuotas: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY2'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 578
    Top = 133
  end
  object dsCuotas: TwwDataSource
    DataSet = cdsCuotas
    Left = 578
    Top = 146
  end
  object cdsDcuotas: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY3'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 619
    Top = 198
  end
  object dsDcuotas: TwwDataSource
    DataSet = cdsDcuotas
    Left = 619
    Top = 211
  end
  object cdsCredito: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY4'
    RemoteServer = DCOM1
    OnReconcileError = cdsEjecutaReconcileError
    ValidateWithMask = True
    Left = 769
    Top = 70
  end
  object dsCredito: TwwDataSource
    DataSet = cdsCredito
    Left = 769
    Top = 83
  end
  object CdsCBcos: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY5'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 678
    Top = 198
  end
  object dsCBcos: TwwDataSource
    DataSet = CdsCBcos
    Left = 678
    Top = 211
  end
  object cdsReclamo: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY6'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 724
    Top = 9
  end
  object dsReclamo: TwwDataSource
    DataSet = cdsReclamo
    Left = 725
    Top = 22
  end
  object cdsReclamoDCob: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY7'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 445
    Top = 322
  end
  object dsReclamoDCob: TwwDataSource
    DataSet = cdsReclamoDCob
    Left = 445
    Top = 335
  end
  object cdsTransacciones: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY8'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 534
    Top = 322
  end
  object dstransacciones: TwwDataSource
    DataSet = cdsTransacciones
    Left = 536
    Top = 335
  end
  object cdsAsociados1: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY9'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 660
    Top = 259
  end
  object dsAsociados1: TwwDataSource
    DataSet = cdsAsociados1
    Left = 660
    Top = 272
  end
  object cdsReclamoMotiv: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY10'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 616
    Top = 322
  end
  object dsReclamoMotiv: TwwDataSource
    DataSet = cdsReclamoMotiv
    Left = 616
    Top = 335
  end
  object cdsTCredito: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY11'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 692
    Top = 322
  end
  object dsTcredito: TwwDataSource
    DataSet = cdsTCredito
    Left = 692
    Top = 335
  end
  object cdsReclamo1: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY12'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 22
    Top = 387
  end
  object dsReclamo1: TwwDataSource
    DataSet = cdsReclamo1
    Left = 22
    Top = 400
  end
  object cdsAsoX: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY13'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 75
    Top = 387
  end
  object dsAsoX: TwwDataSource
    DataSet = cdsAsoX
    Left = 74
    Top = 400
  end
  object cdsAsociados: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY14'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 130
    Top = 387
  end
  object dsAsociados: TwwDataSource
    DataSet = cdsAsociados
    Left = 130
    Top = 400
  end
  object cdsDevolucionCob: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY15'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 209
    Top = 387
  end
  object cdsTransDevol: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY1'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 293
    Top = 387
  end
  object cdsAgenciaBco: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY2'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 408
    Top = 387
  end
  object dsAgenciaBco: TwwDataSource
    DataSet = cdsAgenciaBco
    Left = 408
    Top = 400
  end
  object cdsTmone: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY3'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 473
    Top = 387
  end
  object dsTmone: TwwDataSource
    DataSet = cdsTmone
    Left = 473
    Top = 400
  end
  object cdsTtransaccion: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY4'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 541
    Top = 387
  end
  object cdsReporte: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY5'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 22
    Top = 456
  end
  object dsReporte: TwwDataSource
    DataSet = cdsReporte
    Left = 22
    Top = 469
  end
  object cdsATransp: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY6'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 82
    Top = 456
  end
  object cdsRecauda: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY7'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 370
    Top = 322
  end
  object cdsLiquid: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY8'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 778
    Top = 387
  end
  object cdsPersRep: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY9'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 209
    Top = 456
  end
  object dsATransp: TwwDataSource
    DataSet = cdsATransp
    Left = 82
    Top = 469
  end
  object dsRecauda: TwwDataSource
    DataSet = cdsRecauda
    Left = 370
    Top = 335
  end
  object dsLiquid: TwwDataSource
    DataSet = cdsLiquid
    Left = 778
    Top = 400
  end
  object dsPersRep: TwwDataSource
    DataSet = cdsPersRep
    Left = 209
    Top = 469
  end
  object cdsDetRegGlob: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY10'
    RemoteServer = DCOM1
    PictureMasks.Strings = (
      'DOCMTO'#9'*12[#][.*2[#]]'#9'T'#9'F')
    ValidateWithMask = True
    Left = 621
    Top = 387
  end
  object dsDetRegGlob: TwwDataSource
    DataSet = cdsDetRegGlob
    Left = 621
    Top = 400
  end
  object cdsQry2: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY11'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 923
    Top = 259
  end
  object cdsCobxUse: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY12'
    RemoteServer = DCOM1
    PictureMasks.Strings = (
      'RCOBAPOVAL'#9'*12[#][.*2[#]]'#9'T'#9'F')
    ValidateWithMask = True
    Left = 666
    Top = 520
  end
  object dsCobxUse: TwwDataSource
    AutoEdit = False
    DataSet = cdsCobxUse
    Left = 669
    Top = 534
  end
  object cdsReporte1: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY13'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 417
    Top = 456
  end
  object dsReporte1: TwwDataSource
    DataSet = cdsReporte1
    Left = 418
    Top = 469
  end
  object cdsAutdisk: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY14'
    RemoteServer = DCOM1
    OnReconcileError = cdsEjecutaReconcileError
    ControlType.Strings = (
      'FREGCOB;CheckBox;S;N')
    ValidateWithMask = True
    Left = 749
    Top = 322
  end
  object cdsTransferencia: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = '15'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 736
    Top = 259
  end
  object dsTransferencia: TwwDataSource
    AutoEdit = False
    DataSet = cdsTransferencia
    Left = 736
    Top = 272
  end
  object cdsCtaCtes: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY1'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 785
    Top = 520
  end
  object cdsPeriodo: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY2'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 313
    Top = 198
  end
  object dsPeriodo: TwwDataSource
    DataSet = cdsPeriodo
    Left = 314
    Top = 211
  end
  object cdsBancos: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY3'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 828
    Top = 387
  end
  object dsBancos: TwwDataSource
    DataSet = cdsBancos
    Left = 829
    Top = 400
  end
  object cdsTRecauda: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY4'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 474
    Top = 521
  end
  object dsTRecauda: TwwDataSource
    DataSet = cdsPadre
    Left = 474
    Top = 534
  end
  object cdsCuentaEst: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY5'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 440
    Top = 9
  end
  object dsCuentaEst: TwwDataSource
    DataSet = cdsCuentaEst
    Left = 440
    Top = 22
  end
  object cdsPadre: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY6'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 879
    Top = 9
  end
  object dsPadre: TwwDataSource
    DataSet = cdsPadre
    Left = 879
    Top = 22
  end
  object cdsHijo: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY7'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 834
    Top = 9
  end
  object dsHijo: TwwDataSource
    DataSet = cdsHijo
    Left = 834
    Top = 22
  end
  object cdsNieto: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY8'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 819
    Top = 70
  end
  object dsNieto: TwwDataSource
    DataSet = cdsNieto
    Left = 819
    Top = 83
  end
  object cdsDevolucion: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY9'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 814
    Top = 322
  end
  object cdsCia: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY10'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 533
    Top = 588
  end
  object cdsSQL: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY11'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 636
    Top = 588
  end
  object cdsRTransporte: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY12'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 742
    Top = 198
  end
  object dsRTransporte: TwwDataSource
    DataSet = cdsRTransporte
    Left = 742
    Top = 211
  end
  object cdsTransporte: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY13'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 787
    Top = 456
  end
  object dsTransporte: TwwDataSource
    DataSet = cdsTransporte
    Left = 787
    Top = 469
  end
  object cdsRRepresentante: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY14'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 777
    Top = 580
  end
  object dsRRepresentante: TwwDataSource
    DataSet = cdsRRepresentante
    Left = 777
    Top = 593
  end
  object wwDataSource1: TwwDataSource
    DataSet = cdsSQL
    Left = 533
    Top = 601
  end
  object cdsCCosto: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY15'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 549
    Top = 456
  end
  object dsCCosto: TwwDataSource
    DataSet = cdsCCosto
    Left = 549
    Top = 469
  end
  object cdsBoletaDCob: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY1'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 198
    Top = 322
  end
  object dsBoletaDCob: TwwDataSource
    DataSet = cdsBoletaDCob
    Left = 198
    Top = 335
  end
  object cdsBoletaCob: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY2'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 405
    Top = 521
  end
  object dsBoletaCob: TwwDataSource
    DataSet = cdsBoletaCob
    Left = 405
    Top = 534
  end
  object cdsconcepto: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY3'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 95
    Top = 588
  end
  object dsconcepto: TwwDataSource
    DataSet = cdsconcepto
    Left = 92
    Top = 601
  end
  object cdsTipBoleta: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY4'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 680
    Top = 133
  end
  object dsTipBoleta: TwwDataSource
    DataSet = cdsTipBoleta
    Left = 680
    Top = 146
  end
  object cdsReprCtaCte: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY5'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 485
    Top = 456
  end
  object dsReprCtaCte: TwwDataSource
    DataSet = cdsReprCtaCte
    Left = 485
    Top = 469
  end
  object cdssitreclamo: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY6'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 159
    Top = 588
  end
  object dssitreclamo: TwwDataSource
    DataSet = cdssitreclamo
    Left = 160
    Top = 601
  end
  object cdsQry3: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY7'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 778
    Top = 9
  end
  object dsQry3: TwwDataSource
    DataSet = cdsQry3
    Left = 778
    Top = 22
  end
  object cdsQry1: TwwClientDataSet
    Aggregates = <>
    AutoCalcFields = False
    Params = <>
    ProviderName = 'dspQRY9'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 532
    Top = 521
  end
  object cdsSolicitudes: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY10'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 232
    Top = 588
  end
  object dsSolicitudes: TwwDataSource
    DataSet = cdsSolicitudes
    Left = 234
    Top = 601
  end
  object cdsListaCred: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY11'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 74
    Top = 259
  end
  object dsListaCred: TwwDataSource
    DataSet = cdsListaCred
    Left = 74
    Top = 272
  end
  object cdsSolicitudA: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY12'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 357
    Top = 588
  end
  object cdsSolicitud: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY13'
    RemoteServer = DCOM1
    OnReconcileError = cdsEjecutaReconcileError
    ValidateWithMask = True
    Left = 742
    Top = 133
  end
  object cdsConcre: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY14'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 730
    Top = 520
  end
  object dsConcre: TwwDataSource
    DataSet = cdsConcre
    Left = 731
    Top = 534
  end
  object cdsListaCreA: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY15'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 809
    Top = 259
  end
  object dsListaCreA: TwwDataSource
    DataSet = cdsListaCreA
    Left = 809
    Top = 272
  end
  object cdsTipCreA: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY1'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 800
    Top = 133
  end
  object dsTipCreA: TwwDataSource
    DataSet = cdsTipCreA
    Left = 801
    Top = 146
  end
  object cdsRelCapCuo: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY2'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 183
    Top = 70
  end
  object dsRelCapCuo: TwwDataSource
    DataSet = cdsRelCapCuo
    Left = 182
    Top = 83
  end
  object cdsCompromiso: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY3'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 86
    Top = 521
  end
  object dsCompromiso: TwwDataSource
    DataSet = cdsCompromiso
    Left = 86
    Top = 534
  end
  object cdsConsulta: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY4'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 713
    Top = 70
  end
  object dsConsulta: TwwDataSource
    DataSet = cdsConsulta
    Left = 713
    Top = 83
  end
  object cdsParam: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY5'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 304
    Top = 70
  end
  object dsParam: TwwDataSource
    DataSet = cdsParam
    Left = 304
    Top = 83
  end
  object cdsCob336: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY6'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 659
    Top = 456
  end
  object dsCob336: TwwDataSource
    DataSet = cdsCob336
    Left = 660
    Top = 469
  end
  object cdsSobrino: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY7'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 186
    Top = 133
  end
  object dsSobrino: TwwDataSource
    DataSet = cdsSobrino
    Left = 186
    Top = 146
  end
  object cdsQry5: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY8'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 348
    Top = 387
  end
  object dsqry5: TwwDataSource
    DataSet = cdsQry5
    Left = 348
    Top = 400
  end
  object cdsResultSet: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ValidateWithMask = True
    Left = 480
    Top = 588
  end
  object cdsMovCre: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY9'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 602
    Top = 456
  end
  object dsMovCre: TwwDataSource
    DataSet = cdsMovCre
    Left = 602
    Top = 469
  end
  object cdsAbonoCuotas: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY10'
    RemoteServer = DCOM1
    OnReconcileError = cdsEjecutaReconcileError
    ValidateWithMask = True
    Left = 594
    Top = 521
  end
  object dsAbonoCuotas: TwwDataSource
    DataSet = cdsAbonoCuotas
    Left = 594
    Top = 534
  end
  object cdsUser: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY11'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 727
    Top = 387
  end
  object cdsBancoEgr: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY12'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 28
    Top = 588
  end
  object cdsCCBco: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY13'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 22
    Top = 521
  end
  object dsCCBco: TwwDataSource
    DataSet = cdsCCBco
    Left = 22
    Top = 534
  end
  object cdsFormPago: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY14'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 145
    Top = 456
  end
  object dsFormPago: TwwDataSource
    DataSet = cdsFormPago
    Left = 148
    Top = 469
  end
  object cdsRec: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY15'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 259
    Top = 456
  end
  object dsRec: TwwDataSource
    DataSet = cdsRec
    Left = 259
    Top = 469
  end
  object cdsClaseAux: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY1'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 584
    Top = 588
  end
  object cdsAux: TwwClientDataSet
    Aggregates = <>
    PacketRecords = 25
    Params = <>
    ProviderName = 'dspQRY2'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 680
    Top = 588
  end
  object cdsTMon: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY3'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 303
    Top = 456
  end
  object dsTMon: TwwDataSource
    DataSet = cdsTMon
    Left = 304
    Top = 469
  end
  object cdsProvCta: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY4'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 356
    Top = 456
  end
  object dsProvCta: TwwDataSource
    DataSet = cdsProvCta
    Left = 357
    Top = 469
  end
  object cdsEquiv: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY5'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 227
    Top = 521
  end
  object dsEquiv: TwwDataSource
    DataSet = cdsEquiv
    Left = 229
    Top = 534
  end
  object cdsCnpEgr: TwwClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CPTOID'
    Params = <>
    ProviderName = 'dspQRY6'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 280
    Top = 521
  end
  object dsCnpEgr: TwwDataSource
    DataSet = cdsCnpEgr
    Left = 282
    Top = 534
  end
  object cdsFEfec: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY7'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 423
    Top = 588
  end
  object cdsMovRec: TwwClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'dspQRY8'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 336
    Top = 521
  end
  object dsMovRec: TwwDataSource
    DataSet = cdsMovRec
    Left = 338
    Top = 534
  end
  object cdsDocPago: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY9'
    RemoteServer = DCOM1
    OnReconcileError = cdsEjecutaReconcileError
    ControlType.Strings = (
      'TMONID;CustomEdit;dblcMoneda'
      'DETCPAG;CustomEdit;dbeTC'
      'DEMTOLOC;CustomEdit;dbeMPL'
      'DEMTOEXT;CustomEdit;dbeMPE')
    ValidateWithMask = True
    Left = 720
    Top = 456
  end
  object dsDocPago: TwwDataSource
    DataSet = cdsDocPago
    Left = 721
    Top = 469
  end
  object cdsDetRegCob1: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY10'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 166
    Top = 521
  end
  object dsDetRegCob1: TwwDataSource
    DataSet = cdsDetRegCob1
    Left = 166
    Top = 534
  end
  object dsQry1: TwwDataSource
    DataSet = cdsQry1
    Left = 532
    Top = 534
  end
  object dsTtransaccion: TwwDataSource
    DataSet = cdsTtransaccion
    Left = 541
    Top = 400
  end
  object dsDevolucionCob: TwwDataSource
    DataSet = cdsDevolucionCob
    Left = 209
    Top = 400
  end
  object dsTransDevol: TwwDataSource
    DataSet = cdsTransDevol
    Left = 293
    Top = 400
  end
  object dsQry2: TwwDataSource
    AutoEdit = False
    DataSet = cdsQry2
    Left = 923
    Top = 272
  end
  object dsUser: TwwDataSource
    DataSet = cdsUser
    Left = 727
    Top = 400
  end
  object dsSolicitud: TwwDataSource
    DataSet = cdsSolicitud
    Left = 743
    Top = 146
  end
  object dsTRela: TwwDataSource
    DataSet = cdsTRela
    Left = 260
    Top = 211
  end
  object dsRegCob: TwwDataSource
    DataSet = cdsRegCob
    Left = 273
    Top = 272
  end
  object dsAutdisk: TwwDataSource
    DataSet = cdsAutdisk
    Left = 749
    Top = 335
  end
  object dsDevolucion: TwwDataSource
    DataSet = cdsDevolucion
    Left = 815
    Top = 335
  end
  object dsCtaCtes: TwwDataSource
    DataSet = cdsCtaCtes
    Left = 786
    Top = 534
  end
  object dsSolicitudA: TwwDataSource
    DataSet = cdsSolicitudA
    Left = 358
    Top = 601
  end
  object MainMenu1: TMainMenu
    Left = 130
    Top = 80
  end
  object ExcelApp: TExcelApplication
    AutoConnect = False
    ConnectKind = ckNewInstance
    AutoQuit = False
    Left = 707
    Top = 488
  end
  object ExcelBook: TExcelWorkbook
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 679
    Top = 395
  end
  object WS: TExcelWorksheet
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 699
    Top = 446
  end
  object cdsQry6: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY8'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 850
    Top = 128
  end
  object dsQry6: TwwDataSource
    DataSet = cdsQry6
    Left = 850
    Top = 141
  end
  object cdsMovCnt1: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY12'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 874
    Top = 322
  end
  object dsMovCnt1: TwwDataSource
    DataSet = cdsMovCnt1
    Left = 874
    Top = 335
  end
  object cdsTipDesem: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY13'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 874
    Top = 261
  end
  object dsTipdesem: TwwDataSource
    DataSet = cdsTipDesem
    Left = 874
    Top = 274
  end
  object IdFTP1: TIdFTP
    MaxLineAction = maException
    ReadTimeout = 0
    Host = '10.10.10.41'
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    Left = 877
    Top = 197
  end
  object cdsQry7: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY11'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 834
    Top = 520
  end
  object dsQry7: TwwDataSource
    DataSet = cdsQry7
    Left = 834
    Top = 533
  end
  object cdsQry10: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY15'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 834
    Top = 584
  end
  object dsQry10: TwwDataSource
    DataSet = cdsQry10
    Left = 834
    Top = 597
  end
  object cdsQry11: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY1'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 842
    Top = 456
  end
  object dsQry11: TwwDataSource
    DataSet = cdsQry11
    Left = 842
    Top = 469
  end
  object cdsCartas: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY2'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 887
    Top = 387
  end
  object dsCartas: TwwDataSource
    DataSet = cdsCartas
    Left = 887
    Top = 400
  end
  object cdsGestor: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY3'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 898
    Top = 72
  end
  object dsGestor: TwwDataSource
    DataSet = cdsGestor
    Left = 898
    Top = 85
  end
  object cdsQryHoraSys: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY14'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 946
    Top = 8
  end
  object dsQryHoraSys: TwwDataSource
    DataSet = cdsQryHoraSys
    Left = 946
    Top = 21
  end
  object cdsQrySalAct: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY14'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 954
    Top = 72
  end
  object dsQrySalAct: TwwDataSource
    DataSet = cdsQrySalAct
    Left = 954
    Top = 85
  end
  object cdsQryNroAcu: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY14'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 906
    Top = 128
  end
  object dsQryNroAcu: TwwDataSource
    DataSet = cdsQryNroAcu
    Left = 906
    Top = 141
  end
  object cdsQry12: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY2'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 930
    Top = 384
  end
  object dsQry12: TwwDataSource
    DataSet = cdsQry12
    Left = 930
    Top = 397
  end
  object cdsQry13: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY6'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 898
    Top = 456
  end
  object dsQry13: TwwDataSource
    DataSet = cdsQry13
    Left = 898
    Top = 469
  end
  object cdsQry14: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY6'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 890
    Top = 520
  end
  object dsQry14: TwwDataSource
    DataSet = cdsQry14
    Left = 890
    Top = 533
  end
  object cdsQry4: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY8'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 924
    Top = 323
  end
  object dsQry4: TwwDataSource
    DataSet = cdsQry4
    Left = 924
    Top = 336
  end
  object cdsQry8: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY8'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 916
    Top = 195
  end
  object dsQry8: TwwDataSource
    DataSet = cdsQry8
    Left = 916
    Top = 208
  end
  object cdsQryMeta: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY8'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 959
    Top = 131
  end
  object dsQryMeta: TwwDataSource
    DataSet = cdsQryMeta
    Left = 959
    Top = 144
  end
  object cdsQry15: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY6'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 935
    Top = 520
  end
  object dsQry15: TwwDataSource
    DataSet = cdsQry15
    Left = 935
    Top = 533
  end
  object cdsGesDetCob: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY6'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 903
    Top = 584
  end
  object dsGesDetCob: TwwDataSource
    DataSet = cdsGesDetCob
    Left = 903
    Top = 597
  end
  object cdsMotivosLib: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY6'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 975
    Top = 193
  end
  object dsMotivosLib: TwwDataSource
    DataSet = cdsMotivosLib
    Left = 975
    Top = 206
  end
  object cdsGestores: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY6'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 975
    Top = 257
  end
  object dsGestores: TwwDataSource
    DataSet = cdsGestores
    Left = 975
    Top = 270
  end
  object cdsCampannas: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY6'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 975
    Top = 321
  end
  object dsCampannas: TwwDataSource
    DataSet = cdsCampannas
    Left = 975
    Top = 334
  end
  object cdsGesCobExiste: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY6'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 975
    Top = 385
  end
  object dsGesCobExiste: TwwDataSource
    DataSet = cdsGesCobExiste
    Left = 975
    Top = 398
  end
  object dsColegio: TwwDataSource
    DataSet = cdsColegio
    Left = 34
    Top = 658
  end
  object cdsColegio: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQRY10'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 42
    Top = 653
  end
end
