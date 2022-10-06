object UniServerModule: TUniServerModule
  OldCreateOrder = False
  AutoCoInitialize = True
  TempFolder = 'temp\'
  Title = 'New Application'
  SuppressErrors = []
  Bindings = <>
  CustomCSS.Strings = (
    '.x-form-text {'
    '    border-radius: 10px;}'
    ''
    '.estiliza{'
    '   backgrond-color: lightblue;'
    '   }'
    ''
    '.DatePicker{'
    '    text-align: center;'
    '    }')
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
  Height = 224
  Width = 357
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
    Left = 280
    Top = 88
  end
  object ADOQuery_ranking: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 136
    Top = 24
    object ADOQuery_rankingcl_nome: TStringField
      FieldName = 'cl_nome'
    end
    object ADOQuery_rankingtotal: TCurrencyField
      FieldName = 'total'
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery_ranking
    Left = 128
    Top = 128
  end
  object ADOQuery_ticket: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 24
    Top = 8
  end
end
