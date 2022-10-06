object Frm_MainModule: TFrm_MainModule
  OldCreateOrder = False
  Theme = 'neptune'
  TouchTheme = 'material'
  BrowserOptions = []
  MonitoredKeys.Keys = <>
  ServerMessages.LoadingMessage = 'Buscando...'
  ServerMessages.InvalidSessionMessage = 'Login Incorreto'
  ServerMessages.TerminateMessage = 'Sess'#227'o finalizada. Reconecte novamente!'
  Height = 277
  Width = 425
  object ADOQuery_dados: TADOQuery
    Connection = UniServerModule.ADOConnection1
    Parameters = <>
    Left = 312
    Top = 32
  end
  object UniNativeImageList1: TUniNativeImageList
    Left = 184
    Top = 144
    Images = {
      0300000000000000060A00000066612066612D62617273000000000613000000
      66612066612D6261722D63686172743B66613B00000000061400000066612066
      612D63616C656E6461722D6F3B66613B}
  end
  object UniMenuItems1: TUniMenuItems
    Images = UniNativeImageList1
    Left = 184
    Top = 88
    object Relatrios1: TUniMenuItem
      Caption = 'Relat'#243'rios'
      ImageIndex = 0
      object RanckingdeVendas1: TUniMenuItem
        Caption = 'Rancking de Vendas'
        OnClick = RanckingdeVendas1Click
      end
      object icketMdio1: TUniMenuItem
        Caption = 'Ticket M'#233'dio'
      end
      object Produtosporatendimento1: TUniMenuItem
        Caption = 'Produtos por atendimento'
      end
    end
    object Metas1: TUniMenuItem
      Caption = 'Metas'
      ImageIndex = 1
      object Metasindividuais1: TUniMenuItem
        Caption = 'Metas individuais'
      end
      object Metasmensais1: TUniMenuItem
        Caption = 'Metas mensais'
      end
    end
  end
end
