object Frm_ticket_medio: TFrm_ticket_medio
  Left = 0
  Top = 0
  ClientHeight = 444
  ClientWidth = 481
  Caption = 'Ticket M'#233'dio'
  OnShow = UniFormShow
  BorderStyle = bsSingle
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
    Width = 481
    Height = 33
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = 'Ticket M'#233'dio'
    Align = alTop
    ParentFont = False
    Font.Height = -19
    TabOrder = 0
  end
  object UniPanel1: TUniPanel
    Left = 0
    Top = 33
    Width = 481
    Height = 88
    Hint = ''
    Align = alTop
    TabOrder = 1
    Caption = 'UniPanel1'
    object data_inicial: TUniDateTimePicker
      Left = 16
      Top = 34
      Width = 137
      Height = 31
      Hint = ''
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      TabOrder = 1
      ParentFont = False
      Font.Height = -16
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
      Top = 34
      Width = 137
      Height = 31
      Hint = ''
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      TabOrder = 3
      ParentFont = False
      Font.Height = -16
    end
    object UniLabel3: TUniLabel
      Left = 216
      Top = 8
      Width = 67
      Height = 19
      Hint = ''
      Caption = 'Data final'
      TabOrder = 4
    end
    object Button_buscar: TUniButton
      Left = 376
      Top = 8
      Width = 66
      Height = 57
      Hint = ''
      Caption = 'Buscar'
      TabOrder = 5
      OnClick = Button_buscarClick
    end
  end
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 121
    Width = 481
    Height = 323
    Hint = ''
    ParentColor = False
    Align = alClient
    TabOrder = 2
    object ticket: TUniLabel
      AlignWithMargins = True
      Left = 6
      Top = 213
      Width = 469
      Height = 19
      Hint = ''
      Margins.Left = 6
      Margins.Top = 10
      Margins.Right = 6
      Margins.Bottom = 15
      AutoSize = False
      Caption = 'ticket'
      Align = alTop
      ParentFont = False
      Font.Height = -16
      TabOrder = 1
    end
    object UniLabel5: TUniLabel
      AlignWithMargins = True
      Left = 6
      Top = 172
      Width = 469
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
      TabOrder = 2
    end
    object total: TUniLabel
      AlignWithMargins = True
      Left = 6
      Top = 130
      Width = 469
      Height = 19
      Hint = ''
      Margins.Left = 6
      Margins.Top = 10
      Margins.Right = 6
      Margins.Bottom = 15
      AutoSize = False
      Caption = 'UniLabel4'
      Align = alTop
      ParentFont = False
      Font.Height = -16
      TabOrder = 3
    end
    object UniLabel7: TUniLabel
      AlignWithMargins = True
      Left = 6
      Top = 89
      Width = 469
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
      TabOrder = 4
    end
    object vendas: TUniLabel
      AlignWithMargins = True
      Left = 6
      Top = 47
      Width = 469
      Height = 19
      Hint = ''
      Margins.Left = 6
      Margins.Top = 10
      Margins.Right = 6
      Margins.Bottom = 15
      AutoSize = False
      Caption = 'UniLabel4'
      Align = alTop
      ParentFont = False
      Font.Height = -16
      TabOrder = 5
    end
    object UniLabel9: TUniLabel
      AlignWithMargins = True
      Left = 6
      Top = 6
      Width = 469
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
      TabOrder = 6
    end
    object UniPanel2: TUniPanel
      Left = 0
      Top = 164
      Width = 481
      Height = 2
      Hint = ''
      Align = alTop
      TabOrder = 7
      Caption = 'UniPanel2'
    end
    object UniPanel3: TUniPanel
      Left = 0
      Top = 81
      Width = 481
      Height = 2
      Hint = ''
      Align = alTop
      TabOrder = 8
      Caption = 'UniPanel2'
    end
  end
end
