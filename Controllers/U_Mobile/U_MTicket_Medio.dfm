object Frm_MTicket_medio: TFrm_MTicket_medio
  Left = 0
  Top = 0
  ClientHeight = 627
  ClientWidth = 395
  Caption = 'Frm_MTicket_medio'
  OnShow = UnimFormShow
  ShowTitle = False
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 520
  PlatformData = {}
  object UnimLabel1: TUnimLabel
    AlignWithMargins = True
    Left = 3
    Top = 5
    Width = 389
    Height = 45
    Hint = ''
    Margins.Top = 5
    Alignment = taCenter
    AutoSize = False
    Caption = 'Ticket M'#233'dio'
    Align = alTop
    ClientEvents.ExtEvents.Strings = (
      
        'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'      ' +
        'sender.addCls('#39'titulos-mobile'#39');'#13#10'}')
    ParentFont = False
    Font.Height = -27
  end
  object UnimPanel1: TUnimPanel
    Left = 0
    Top = 53
    Width = 395
    Height = 125
    Hint = ''
    Align = alTop
    Color = 16777200
    DesignSize = (
      395
      125)
    object DatePicker_inicial: TUnimDatePicker
      Left = 10
      Top = 45
      Width = 164
      Height = 47
      Hint = ''
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'     s' +
          'ender.addCls('#39'DatePickerMobile'#39'); '#13#10'}')
      DateFormat = 'dd/MM/yyyy'
      Date = 44859.000000000000000000
      Picker = dptFloated
    end
    object DatePicker_fim: TUnimDatePicker
      Left = 220
      Top = 45
      Width = 164
      Height = 47
      Hint = ''
      ParentCustomHint = False
      ParentRTL = False
      ParentShowHint = False
      Anchors = [akTop, akRight]
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'     s' +
          'ender.addCls('#39'DatePickerMobile'#39'); '#13#10'}')
      DateFormat = 'dd/MM/yyyy'
      Date = 44859.000000000000000000
      Picker = dptFloated
      Color = clWhite
    end
    object UnimLabel2: TUnimLabel
      Left = 10
      Top = 10
      Width = 137
      Height = 26
      Hint = ''
      AutoSize = False
      Caption = 'Data inicial'
      ParentFont = False
      Font.Height = -24
    end
    object UnimLabel3: TUnimLabel
      Left = 240
      Top = 10
      Width = 144
      Height = 26
      Hint = ''
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Data final'
      Anchors = [akTop, akRight]
      ParentFont = False
      Font.Height = -24
    end
  end
  object UnimPanel4: TUnimPanel
    Left = 0
    Top = 178
    Width = 395
    Height = 125
    Hint = ''
    Align = alTop
    Color = 16777200
    object Label_qtd: TUnimLabel
      AlignWithMargins = True
      Left = 36
      Top = 51
      Width = 323
      Height = 35
      Hint = ''
      Margins.Left = 35
      Margins.Top = 15
      Margins.Right = 35
      Margins.Bottom = 0
      Alignment = taCenter
      AutoSize = False
      Caption = 'qtd'
      Align = alTop
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'      ' +
          ' sender.addCls('#39'valores-mobile'#39'); '#13#10'}')
      ParentFont = False
      Font.Height = -24
    end
    object UnimLabel7: TUnimLabel
      Left = 1
      Top = 1
      Width = 393
      Height = 35
      Hint = ''
      Alignment = taCenter
      AutoSize = False
      Caption = 'Quantidade de Vendas'
      Align = alTop
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'    se' +
          'nder.addCls('#39'sub-titulos-mobile'#39');'#13#10'}')
      ParentFont = False
      Font.Height = -25
    end
  end
  object UnimPanel5: TUnimPanel
    Left = 0
    Top = 303
    Width = 395
    Height = 125
    Hint = ''
    Align = alTop
    Color = 16777200
    object Label_valor: TUnimLabel
      AlignWithMargins = True
      Left = 36
      Top = 56
      Width = 323
      Height = 35
      Hint = ''
      Margins.Left = 35
      Margins.Top = 20
      Margins.Right = 35
      Margins.Bottom = 0
      Alignment = taCenter
      AutoSize = False
      Caption = 'valor'
      Align = alTop
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'      ' +
          ' sender.addCls('#39'valores-mobile'#39'); '#13#10'}')
      ParentFont = False
      Font.Height = -24
    end
    object UnimLabel11: TUnimLabel
      Left = 1
      Top = 1
      Width = 393
      Height = 35
      Hint = ''
      Alignment = taCenter
      AutoSize = False
      Caption = 'Total em Vendas'
      Align = alTop
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'    se' +
          'nder.addCls('#39'sub-titulos-mobile'#39');'#13#10'}')
      ParentFont = False
      Font.Height = -25
    end
  end
  object UnimPanel3: TUnimPanel
    Left = 0
    Top = 428
    Width = 395
    Height = 92
    Hint = ''
    Align = alClient
    Color = 16777200
    object UnimLabel5: TUnimLabel
      Left = 1
      Top = 1
      Width = 393
      Height = 35
      Hint = ''
      Alignment = taCenter
      AutoSize = False
      Caption = 'Ticket M'#233'dio'
      Align = alTop
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'    se' +
          'nder.addCls('#39'sub-titulos-mobile'#39');'#13#10'}')
      ParentFont = False
      Font.Height = -25
    end
    object Label_ticket: TUnimLabel
      AlignWithMargins = True
      Left = 36
      Top = 56
      Width = 323
      Height = 35
      Hint = ''
      Margins.Left = 35
      Margins.Top = 20
      Margins.Right = 35
      Margins.Bottom = 15
      Alignment = taCenter
      AutoSize = False
      Caption = 'ticket'
      Align = alTop
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'      ' +
          ' sender.addCls('#39'valores-mobile'#39'); '#13#10'}')
      ParentFont = False
      Font.Height = -24
    end
  end
  object UnimPanel2: TUnimPanel
    Left = 0
    Top = 520
    Width = 395
    Height = 107
    Hint = ''
    Align = alBottom
    Color = 16777200
    DesignSize = (
      395
      107)
    object Button_buscar: TUnimButton
      Left = 10
      Top = 36
      Width = 155
      Height = 47
      Hint = ''
      Align = alCustom
      Caption = 'Buscar'
      IconCls = 'search'
      UI = 'action'
      ScreenMask.Enabled = True
      ScreenMask.WaitData = True
      ScreenMask.Message = 'Buscando Informa'#231#245'es...'
      ScreenMask.Target = Owner
      ScreenMask.Opacity = 0.699999988079071000
      OnClick = Button_buscarClick
    end
    object UnimBitBtn1: TUnimBitBtn
      Left = 229
      Top = 36
      Width = 155
      Height = 47
      Hint = ''
      Anchors = [akTop, akRight]
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
          'er.addCls('#39'botoes-sair-mobile'#39');'#13#10'}')
      UI = 'small'
      Caption = 'Sair'
      Images = MainmForm.UniNativeImageList1
      ImageIndex = 10
      OnClick = UnimBitBtn1Click
    end
  end
end
