object UniServerModule: TUniServerModule
  OldCreateOrder = False
  AutoCoInitialize = True
  TempFolder = 'temp\'
  Title = 'Si-F'#225'cil'
  SuppressErrors = []
  Bindings = <>
  MainFormDisplayMode = mfPage
  CustomCSS.Strings = (
    '.x-form-text {'
    '    border-radius: 8px;'
    '}'
    ''
    '.edit{'
    '   border-radius: 8px;'
    '   Text-align: center !important;'
    '   border: 2px solid !important;'
    '   border-radius: 5px;'
    '   border-color: DarkGreen !important;'
    '}'
    ''
    '.x-form-text-default {'
    '    text-align: center;'
    '}'
    ''
    '.estiliza{'
    '   text-shadow: 4px 4px 5px #0a0310;'
    '}'
    ''
    '.DatePicker{'
    '   border: 2px solid !important;'
    '   border-radius: 5px;'
    '   border-color:#fff !important;'
    '}'
    ''
    '.DatePickerMobile{'
    '   border: 2px solid !important;'
    '   border-radius: 5px;'
    '   border-color: DarkGreen !important;'
    '   background: #fff !important;'
    '}'
    ''
    '.botoes{'
    '   background:DodgerBlue !important;'
    '   color:#fff !important;'
    '   border: 2px solid;'
    '   border-radius: 5px;'
    '   border-color:#fff;'
    '   -webkit-transition: background 0.5s ease-in-out;'
    
      '   transition: background 0.5s ease-in-out;                     ' +
      ' '
    '}'
    ''
    '.botoes-sair{'
    ' background:#FA8072 !important;'
    ' color:#fff !important;'
    ' border: 2px solid;'
    ' border-radius: 5px;'
    ' border-color:#fb0c06;'
    ' -webkit-transition: background 0.5s ease-in-out;'
    ' transition: background 0.5s ease-in-out;                     '
    '}'
    ''
    '.titulos{'
    '   background-color: #00e171 !important;'
    '   text-align: center;'
    '   border: 2px solid;'
    '   border-radius: 5px;'
    '   border-color:#1C1C1C;'
    '}'
    ''
    '.sub-titulos{'
    '   background-color: #319190 !important;'
    '   text-align: center !important;'
    '   color: #fff;'
    '   opacity: 0.7;'
    '   border: 2px solid;'
    '   border-radius: 5px;'
    '   border-color:#1C1C1C;'
    '}'
    ''
    ''
    '.paineis{'
    '  /* border-style: outset !important;*/'
    '   box-shadow: 6px 6px 6px DarkSlateGray !important;'
    '}'
    ''
    '.alinha{'
    ' left: 25% !important;'
    '}'
    ''
    '.valores{'
    '   border-style: outset !important;'
    '   border-radius: 7px;'
    '   background:White'#9' !important;'
    '   line-height: 100%;   '
    '}'
    ''
    '.progressbar{'
    '   border-radius: 10px;'
    '   background:Wheat'#9' !important;'
    '   font-size: 20px;'
    '}'
    ''
    ' .x-progress-default .x-progress-text {'
    '    color: Black;'
    '    font-weight: bold;'
    '    font-size: 18px;'
    '    font-family: helvetica, arial, verdana, sans-serif;'
    '    text-align: center;'
    '    line-height: 25px;'
    ' }'
    ' '
    ' x-progress-bar {'
    '   background-color: blue !important; '
    ' }'
    ''
    ' .x-input-el {'
    '       text-align: center;'
    ' }'
    ' '
    ' '
    ' .sub-titulos-mobile{'
    '   background-color: #319190 !important;'
    '   text-align: center !important;'
    '   color: #fff;'
    '   opacity: 0.7;'
    '   border: 2px solid;'
    '   border-radius: 5px;'
    '   border-color:#1C1C1C;'
    '   line-height: 180%;'
    '}'
    ''
    '.valores-mobile{'
    '   border-style: outset !important;'
    '   border-radius: 7px;'
    '   background:White'#9' !important;'
    '   line-height: 120%;   '
    '}'
    ''
    '.titulos-mobile{'
    '   background-color: #00e171 !important;'
    '   text-align: center;'
    '   border: 2px solid;'
    '   border-radius: 5px;'
    '   border-color:#1C1C1C;'
    '   line-height: 160%;'
    '}'
    ''
    '.botoes-mobile{'
    '   background:DodgerBlue !important;'
    '   color:#fff !important;'
    '   border: 2px solid;'
    '   border-radius: 10px !important;'
    '   border-color:DarkBlue;'
    '   -webkit-transition: background 0.5s ease-in-out;'
    
      '   transition: background 0.5s ease-in-out;                     ' +
      ' '
    '}'
    ''
    '.botoes-sair-mobile{'
    ' background:#FA8072 !important;'
    ' border: 2px solid;'
    ' border-radius: 10px !important;'
    ' border-color:#fb0c06;'
    ' -webkit-transition: background 0.5s ease-in-out;'
    ' transition: background 0.5s ease-in-out; '
    ' color: var(--base-foreground-color) !important;'
    '}'
    ''
    '.edit-mobile{'
    '   border-radius: 8px;'
    '   Text-align: center !important;'
    '   border: 2px solid !important;'
    '   border-color: DarkGreen !important;'
    '   background: white !important;   '
    '}'
    ''
    
      '.fa-search,.fa-check-square-o,.fa-cogs,.fa-times-circle-o, .fa-r' +
      'efresh{'
    '   color: white !important;'
    '}'
    '.panel-circle{'
    '  border-radius: 8px;'
    '}'
    ''
    '.container_Panel{'
    '  background-color: rgba(0,0,0,0) !important;'
    '}'
    ''
    '.x-autocontainer-outerCt{'
    '  display: flex !important;'
    '  justify-content: space-evenly !important;'
    '  align-items:center !important;'
    '  flex-wrap: wrap !important;'
    '}'
    ''
    '.grid{'
    '   margin: 0 auto !important;'
    '   max-width: 1100px;'
    '}'
    ''
    '.grid2{'
    '   display: grid;'
    '   margin: 0 auto !important;'
    '   max-width: 1100px;'
    '}'
    ''
    ''
    ''
    '@media (max-width: 1300px){'
    '  .grid{'
    '      left: 20% !important;'
    '  } '
    ''
    '  .grid2{'
    '      display: grid;'
    '      grid-template-columns: repeat(2,1fr);'
    '      top: 450px !important;'
    '      left: 20% !important;'
    '  } '
    '} '
    ''
    '@media (max-width: 1105px){'
    '   .grid{'
    '      left: 15% !important;'
    '  } '
    '  '
    '  .grid2{'
    '      display: grid;'
    '      grid-template-columns: repeat(2,1fr);'
    '      top: 650px !important;'
    '      left: 15% !important;'
    '  } '
    '} '
    ''
    '@media (max-width: 980px){'
    '   .grid{'
    '      left: 10% !important;'
    '  } '
    '  '
    '  .grid2{'
    '      display: grid;'
    '      grid-template-columns: repeat(3,1fr);'
    '      left: 10% !important;'
    '  } '
    '} ')
  CustomMeta.Strings = (
    
      '<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/' +
      'bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/S' +
      'FnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" cross' +
      'origin="anonymous">'
    '<link rel="stylesheet" href="style.css">')
  SSL.SSLOptions.RootCertFile = 'root.pem'
  SSL.SSLOptions.CertFile = 'cert.pem'
  SSL.SSLOptions.KeyFile = 'key.pem'
  SSL.SSLOptions.Method = sslvTLSv1_1
  SSL.SSLOptions.SSLVersions = [sslvTLSv1_1]
  SSL.SSLOptions.Mode = sslmUnassigned
  SSL.SSLOptions.VerifyMode = []
  SSL.SSLOptions.VerifyDepth = 0
  ConnectionFailureRecovery.ErrorMessage = 'Connection Error'
  ConnectionFailureRecovery.RetryMessage = 'Retrying...'
  Height = 337
  Width = 470
  object FDConnection1: TFDConnection
    Left = 48
    Top = 72
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=pa;Persist Security Info=True;User ' +
      'ID=sa;Initial Catalog=SIPAK;Data Source=beco-nati.ddns.net'
    KeepConnection = False
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 192
    Top = 128
  end
  object ADOQuery_login: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 208
    Top = 48
  end
  object ADOQuery_dados: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 336
    Top = 152
  end
  object ADOQuery_ranking: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 136
    Top = 24
    object ADOQuery_rankingcl_nome: TStringField
      FieldName = 'cl_nome'
    end
    object ADOQuery_rankingtotal2: TStringField
      FieldName = 'total'
      Size = 15
    end
    object ADOQuery_rankingqtd_vendas: TIntegerField
      FieldName = 'qtd_vendas'
    end
    object ADOQuery_rankingtotal_venda: TFloatField
      FieldName = 'total_venda'
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery_ranking
    Left = 80
    Top = 136
  end
  object ADOQuery_ticket: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 24
    Top = 8
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 312
    Top = 32
  end
  object ADOQuery_meta: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 72
    Top = 200
  end
  object ADOQuery_vendas: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 208
    Top = 240
  end
  object ADOQuery_percentual_venda: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 336
    Top = 208
  end
end
