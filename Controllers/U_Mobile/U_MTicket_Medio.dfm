object Frm_MTicket_medio: TFrm_MTicket_medio
  Left = 0
  Top = 0
  ClientHeight = 627
  ClientWidth = 361
  Caption = 'Frm_MTicket_medio'
  AutoHeight = False
  Scrollable = True
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
    Width = 355
    Height = 30
    Hint = ''
    Margins.Top = 5
    Alignment = taCenter
    AutoSize = False
    Caption = 'Ticket M'#233'dio'
    Align = alTop
    ClientEvents.ExtEvents.Strings = (
      
        'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'      ' +
        'sender.addCls('#39'titulos'#39');'#13#10'}')
    ParentFont = False
    Font.Height = -27
  end
  object UnimPanel1: TUnimPanel
    Left = 0
    Top = 38
    Width = 361
    Height = 125
    Hint = ''
    Align = alTop
    Color = 16777200
    ExplicitTop = 33
    ExplicitWidth = 344
    DesignSize = (
      361
      125)
    object UnimDatePicker1: TUnimDatePicker
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
    object UnimDatePicker2: TUnimDatePicker
      Left = 180
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
      Left = 200
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
    Top = 163
    Width = 361
    Height = 125
    Hint = ''
    Align = alTop
    Color = 16777200
    ExplicitLeft = 48
    ExplicitTop = 164
    object UnimLabel4: TUnimLabel
      AlignWithMargins = True
      Left = 36
      Top = 55
      Width = 289
      Height = 34
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
          ' sender.addCls('#39'valores'#39'); '#13#10'}')
      ParentFont = False
      Font.Height = -25
    end
    object UnimLabel7: TUnimLabel
      Left = 1
      Top = 1
      Width = 359
      Height = 39
      Hint = ''
      Alignment = taCenter
      AutoSize = False
      Caption = 'Quantidade de Vendas'
      Align = alTop
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'    se' +
          'nder.addCls('#39'sub-titulos'#39');'#13#10'}')
      ParentFont = False
      Font.Height = -27
      ExplicitLeft = 0
      ExplicitTop = -2
    end
  end
  object UnimPanel5: TUnimPanel
    Left = 0
    Top = 288
    Width = 361
    Height = 125
    Hint = ''
    Align = alTop
    Color = 16777200
    ExplicitTop = 283
    ExplicitWidth = 344
    object UnimLabel10: TUnimLabel
      AlignWithMargins = True
      Left = 36
      Top = 60
      Width = 289
      Height = 32
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
          ' sender.addCls('#39'valores'#39'); '#13#10'}')
      ParentFont = False
      Font.Height = -25
      ExplicitLeft = 69
      ExplicitTop = 63
    end
    object UnimLabel11: TUnimLabel
      Left = 1
      Top = 1
      Width = 359
      Height = 39
      Hint = ''
      Alignment = taCenter
      AutoSize = False
      Caption = 'Total em Vendas'
      Align = alTop
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'    se' +
          'nder.addCls('#39'sub-titulos'#39');'#13#10'}')
      ParentFont = False
      Font.Height = -27
      ExplicitTop = -2
    end
  end
  object UnimPanel3: TUnimPanel
    Left = 0
    Top = 413
    Width = 361
    Height = 107
    Hint = ''
    Align = alClient
    Color = 16777200
    ExplicitTop = 408
    ExplicitWidth = 344
    ExplicitHeight = 309
    object UnimLabel5: TUnimLabel
      Left = 1
      Top = 1
      Width = 359
      Height = 39
      Hint = ''
      Alignment = taCenter
      AutoSize = False
      Caption = 'Ticket M'#233'dio'
      Align = alTop
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'    se' +
          'nder.addCls('#39'sub-titulos'#39');'#13#10'}')
      ParentFont = False
      Font.Height = -27
      ExplicitLeft = 3
      ExplicitTop = -2
    end
    object UnimLabel8: TUnimLabel
      AlignWithMargins = True
      Left = 36
      Top = 60
      Width = 289
      Height = 32
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
          ' sender.addCls('#39'valores'#39'); '#13#10'}')
      ParentFont = False
      Font.Height = -25
    end
  end
  object UnimPanel2: TUnimPanel
    Left = 0
    Top = 520
    Width = 361
    Height = 107
    Hint = ''
    Align = alBottom
    Color = 16777200
    ExplicitTop = 717
    ExplicitWidth = 344
    DesignSize = (
      361
      107)
    object UnimButton1: TUnimButton
      Left = 3
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
    end
    object UnimBitBtn1: TUnimBitBtn
      Left = 192
      Top = 36
      Width = 155
      Height = 47
      Hint = ''
      Anchors = [akTop, akRight]
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
          'er.addCls('#39'botoes-sair'#39');'#13#10'}')
      UI = 'small'
      IconCls = 'delete'
      Caption = 'Sair'
      OnClick = UnimBitBtn1Click
    end
  end
end
