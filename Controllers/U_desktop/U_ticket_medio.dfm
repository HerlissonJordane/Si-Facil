object Frm_ticket_medio: TFrm_ticket_medio
  Left = 0
  Top = 0
  ClientHeight = 473
  ClientWidth = 487
  Caption = 'Ticket M'#233'dio'
  OnShow = UniFormShow
  BorderStyle = bsNone
  OldCreateOrder = False
  BorderIcons = [biSystemMenu]
  MonitoredKeys.Keys = <>
  Font.Height = -16
  ScreenMask.Enabled = True
  ScreenMask.WaitData = True
  ScreenMask.Message = 'Carregando...'
  Layout = 'accordion'
  LayoutAttribs.Columns = 2
  ImageIndex = 3
  PixelsPerInch = 96
  TextHeight = 19
  object UniLabel1: TUniLabel
    Left = 0
    Top = 0
    Width = 487
    Height = 33
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = 'Ticket M'#233'dio'
    Align = alTop
    ParentFont = False
    Font.Color = clWhite
    Font.Height = -24
    ClientEvents.ExtEvents.Strings = (
      
        'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'    send' +
        'er.addCls('#39'titulos'#39');'#13#10'}')
    TabOrder = 0
  end
  object UniPanel1: TUniPanel
    Left = 0
    Top = 33
    Width = 487
    Height = 88
    Hint = ''
    Align = alTop
    TabOrder = 1
    Caption = 'UniPanel1'
    Color = 16777200
    object data_inicial: TUniDateTimePicker
      Left = 24
      Top = 33
      Width = 137
      Height = 31
      Hint = ''
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      TabOrder = 1
      ParentFont = False
      Font.Color = clBlack
      Font.Height = -16
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'   sende' +
          'r.addCls('#39'DatePicker'#39'); '#13#10'}')
    end
    object UniLabel2: TUniLabel
      Left = 24
      Top = 8
      Width = 79
      Height = 19
      Hint = ''
      Caption = 'Data Inicial'
      TabOrder = 2
    end
    object data_final: TUniDateTimePicker
      Left = 208
      Top = 33
      Width = 137
      Height = 31
      Hint = ''
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      TabOrder = 3
      ParentFont = False
      Font.Color = clBlack
      Font.Height = -16
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'   sende' +
          'r.addCls('#39'DatePicker'#39'); '#13#10'}')
    end
    object UniLabel3: TUniLabel
      Left = 208
      Top = 8
      Width = 67
      Height = 19
      Hint = ''
      Caption = 'Data final'
      TabOrder = 4
    end
    object Button_buscar: TUniButton
      Left = 374
      Top = 22
      Width = 89
      Height = 48
      Hint = ''
      Caption = 'Buscar'
      ParentFont = False
      Font.Height = -13
      TabOrder = 5
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'     sen' +
          'der.addCls('#39'botoes'#39');'#13#10'}')
      Images = MainForm.UniNativeImageList1
      ImageIndex = 9
      IconAlign = iaTop
      OnClick = Button_buscarClick
    end
  end
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 121
    Width = 487
    Height = 352
    Hint = ''
    ParentColor = False
    Color = 16777200
    Align = alClient
    TabOrder = 2
    object ticket: TUniLabel
      AlignWithMargins = True
      Left = 35
      Top = 235
      Width = 417
      Height = 30
      Hint = ''
      Margins.Left = 35
      Margins.Top = 10
      Margins.Right = 35
      Margins.Bottom = 15
      Alignment = taCenter
      AutoSize = False
      Caption = 'ticket'
      Align = alTop
      ParentFont = False
      Font.Height = -19
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'     sen' +
          'der.addCls('#39'valores'#39'); '#13#10'}')
      TabOrder = 1
    end
    object UniLabel5: TUniLabel
      AlignWithMargins = True
      Left = 6
      Top = 194
      Width = 475
      Height = 25
      Hint = ''
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      AutoSize = False
      Caption = 'Ticket M'#233'dio'
      Align = alTop
      ParentFont = False
      Font.Height = -19
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
          '.addCls('#39'sub-titulos'#39');'#13#10'}')
      TabOrder = 2
    end
    object total: TUniLabel
      AlignWithMargins = True
      Left = 35
      Top = 141
      Width = 417
      Height = 30
      Hint = ''
      Margins.Left = 35
      Margins.Top = 10
      Margins.Right = 35
      Margins.Bottom = 15
      Alignment = taCenter
      AutoSize = False
      Caption = 'UniLabel4'
      Align = alTop
      ParentFont = False
      Font.Height = -19
      ParentColor = False
      Color = 15265223
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'     sen' +
          'der.addCls('#39'valores'#39'); '#13#10'}')
      TabOrder = 3
    end
    object UniLabel7: TUniLabel
      AlignWithMargins = True
      Left = 6
      Top = 100
      Width = 475
      Height = 25
      Hint = ''
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      AutoSize = False
      Caption = 'Total em vendas'
      Align = alTop
      ParentFont = False
      Font.Height = -19
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
          '.addCls('#39'sub-titulos'#39');'#13#10'}')
      TabOrder = 4
    end
    object vendas: TUniLabel
      AlignWithMargins = True
      Left = 35
      Top = 47
      Width = 417
      Height = 30
      Hint = ''
      Margins.Left = 35
      Margins.Top = 10
      Margins.Right = 35
      Margins.Bottom = 15
      Alignment = taCenter
      AutoSize = False
      Caption = 'UniLabel4'
      Align = alTop
      ParentFont = False
      Font.Height = -19
      ParentColor = False
      Color = 15265223
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'     sen' +
          'der.addCls('#39'valores'#39'); '#13#10'}')
      TabOrder = 5
    end
    object UniLabel9: TUniLabel
      AlignWithMargins = True
      Left = 6
      Top = 6
      Width = 475
      Height = 25
      Hint = ''
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      ParentCustomHint = False
      ParentRTL = False
      ParentShowHint = False
      AutoSize = False
      Caption = 'Quantidade de vendas'
      Align = alTop
      ParentFont = False
      Font.Height = -19
      ParentColor = False
      Color = clGray
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
          '.addCls('#39'sub-titulos'#39');'#13#10'}')
      TabOrder = 6
    end
    object UniPanel2: TUniPanel
      Left = 0
      Top = 186
      Width = 487
      Height = 2
      Hint = ''
      Align = alTop
      TabOrder = 7
      Caption = 'UniPanel2'
    end
    object UniPanel3: TUniPanel
      Left = 0
      Top = 92
      Width = 487
      Height = 2
      Hint = ''
      Align = alTop
      TabOrder = 8
      Caption = 'UniPanel2'
    end
    object bt_sair: TUniButton
      Left = 365
      Top = 288
      Width = 98
      Height = 41
      Hint = ''
      Caption = 'Sair'
      ParentFont = False
      Font.Height = -13
      TabOrder = 9
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'       s' +
          'ender.addCls('#39'botoes-sair'#39');'#13#10'}')
      Images = MainForm.UniNativeImageList1
      ImageIndex = 10
      OnClick = bt_sairClick
    end
  end
end
