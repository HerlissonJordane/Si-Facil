object Frm_metas_loja: TFrm_metas_loja
  Left = 0
  Top = 0
  ClientHeight = 472
  ClientWidth = 528
  Caption = 'Metas de loja'
  OnShow = UniFormShow
  BorderStyle = bsSingle
  OldCreateOrder = False
  BorderIcons = [biSystemMenu]
  MonitoredKeys.Keys = <>
  Font.Height = -15
  PixelsPerInch = 96
  TextHeight = 18
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 528
    Height = 97
    Hint = ''
    Align = alTop
    TabOrder = 0
    Caption = ''
    object UniLabel1: TUniLabel
      Left = 1
      Top = 1
      Width = 526
      Height = 20
      Hint = ''
      Alignment = taCenter
      AutoSize = False
      Caption = 'Escolha o m'#234's e ano para visualizar a meta'
      Align = alTop
      TabOrder = 1
    end
    object Button_buscar: TUniButton
      Left = 368
      Top = 34
      Width = 114
      Height = 57
      Hint = ''
      Caption = 'Buscar'
      TabOrder = 2
      ScreenMask.Enabled = True
      ScreenMask.WaitData = True
      ScreenMask.Message = 'Carregando dados...'
      OnClick = Button_buscarClick
    end
    object ComboBox_mes: TUniComboBox
      Left = 8
      Top = 40
      Width = 177
      Height = 41
      Hint = ''
      Text = 'ComboBox_mes'
      Items.Strings = (
        'Janeiro'
        'Fevereiro'
        'Mar'#231'o'
        'Abril'
        'Maio'
        'Junho'
        'Julho'
        'Agosto'
        'Setembro'
        'Outubro'
        'Novembro'
        'Dezembro')
      TabOrder = 3
      EmptyText = 'Selecione o M'#234's'
      CharCase = ecUpperCase
      ClearButton = True
      IconItems = <>
    end
    object SpinEdit_ano: TUniSpinEdit
      Left = 212
      Top = 40
      Width = 120
      Height = 41
      Hint = ''
      TabOrder = 4
      ParentFont = False
      Font.Height = -16
    end
  end
  object UniPanel2: TUniPanel
    Left = 0
    Top = 97
    Width = 528
    Height = 375
    Hint = ''
    Align = alClient
    TabOrder = 1
    Caption = ''
    object ProgressBar_meta: TUniProgressBar
      AlignWithMargins = True
      Left = 4
      Top = 132
      Width = 520
      Hint = ''
      Max = 150000
      Position = 35000
      Align = alTop
      Text = ''
      TabOrder = 1
    end
    object UniLabel2: TUniLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 520
      Height = 29
      Hint = ''
      Alignment = taCenter
      AutoSize = False
      Caption = 'Meta atual do m'#234's de "m'#234's escolhido"'
      Align = alTop
      ParentFont = False
      Font.Height = -19
      TabOrder = 2
    end
    object UniEdit_meta: TUniEdit
      AlignWithMargins = True
      Left = 26
      Top = 39
      Width = 476
      Height = 40
      Hint = ''
      Margins.Left = 25
      Margins.Right = 25
      Margins.Bottom = 30
      Alignment = taCenter
      Text = 'Meta prevista para o m'#202's atual'
      ParentFont = False
      Font.Color = clGreen
      Font.Height = -19
      Align = alTop
      TabOrder = 3
      ReadOnly = True
      InputMask.UnmaskText = True
      InputMask.RemoveWhiteSpace = True
    end
    object UniLabel4: TUniLabel
      Left = 8
      Top = 209
      Width = 1884
      Height = 54
      Hint = ''
      AutoSize = False
      Caption = 
        'Se for um m'#234's que j'#225' passou, n'#227'o ser'#225' poss'#237'vel alterar a meta.  ' +
        'Se for uma meta batida, colocar algo que mostre isso e o valor a' +
        ' mais de venda al'#233'm da meta. Se for uima meta n'#227'o alcan'#231'ada, exi' +
        'bir informa'#231#245'es sobre esse valor. Se for um m'#234's atual ou futuro,' +
        ' permitir alterar a meta.'
      TabOrder = 4
    end
    object Button_alterar: TUniButton
      Left = 8
      Top = 287
      Width = 136
      Height = 57
      Hint = ''
      Caption = 'Alterar Meta'
      TabOrder = 5
      OnClick = Button_alterarClick
    end
    object Button_gravar: TUniButton
      Left = 175
      Top = 287
      Width = 136
      Height = 57
      Hint = ''
      Enabled = False
      Caption = 'Gravar nova Meta'
      TabOrder = 6
      OnClick = Button_gravarClick
    end
    object UniButton4: TUniButton
      Left = 346
      Top = 287
      Width = 136
      Height = 57
      Hint = ''
      Caption = 'Sair'
      TabOrder = 7
      OnClick = UniButton4Click
    end
    object UniLabel5: TUniLabel
      Left = 1
      Top = 109
      Width = 526
      Height = 20
      Hint = ''
      AutoSize = False
      Caption = 'Percentual atingido da meta mensal'
      Align = alTop
      TabOrder = 8
    end
    object Label_total: TUniLabel
      Left = 4
      Top = 158
      Width = 229
      Height = 20
      Hint = ''
      AutoSize = False
      Caption = 'R$ 35.000,00'
      TabOrder = 9
    end
    object Label_meta: TUniLabel
      Left = 329
      Top = 158
      Width = 195
      Height = 20
      Hint = ''
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Valor de venda atual para atingir a meta at'#233' a data de hoje'
      TabOrder = 10
    end
  end
  object ADOQuery_meta: TADOQuery
    Connection = UniServerModule.ADOConnection1
    Parameters = <>
    Left = 464
    Top = 169
  end
  object ADOQuery_vendas: TADOQuery
    Connection = UniServerModule.ADOConnection1
    Parameters = <>
    Left = 448
    Top = 201
  end
end
