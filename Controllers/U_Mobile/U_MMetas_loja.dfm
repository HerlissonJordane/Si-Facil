object Frm_MMetas_loja: TFrm_MMetas_loja
  Left = 0
  Top = 0
  ClientHeight = 627
  ClientWidth = 369
  Caption = 'Frm_MMetas_loja'
  OnShow = UnimFormShow
  ShowTitle = False
  TitleButtons = <>
  ShowAnimation = 'slide'
  HideAnimation = 'slideOut'
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 0
  PlatformData = {}
  object UnimLabel1: TUnimLabel
    AlignWithMargins = True
    Left = 3
    Top = 5
    Width = 363
    Height = 45
    Hint = ''
    Margins.Top = 5
    Alignment = taCenter
    AutoSize = False
    Caption = 'Metas de Loja'
    Align = alTop
    ClientEvents.ExtEvents.Strings = (
      
        'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'      ' +
        'sender.addCls('#39'titulos-mobile'#39');'#13#10'}')
    ParentFont = False
    Font.Height = -27
    ExplicitLeft = -2
    ExplicitTop = 6
  end
  object UnimPanel1: TUnimPanel
    Left = 0
    Top = 53
    Width = 369
    Height = 156
    Hint = ''
    Align = alTop
    Color = 16777200
    BorderStyle = ubsNone
    DesignSize = (
      369
      156)
    object UnimLabel2: TUnimLabel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 363
      Height = 26
      Hint = ''
      Alignment = taCenter
      AutoSize = False
      Caption = 'Escolha o m'#234's e ano para visualizar a meta'
      Align = alTop
      ParentFont = False
      Font.Height = -16
      ExplicitTop = 12
      ExplicitWidth = 361
    end
    object Select_mes: TUnimSelect
      Left = 3
      Top = 53
      Width = 162
      Height = 47
      Hint = ''
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
          'er.addCls('#39'edit-mobile'#39');'#13#10'}')
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
      ItemIndex = 9
      TabOrder = 2
    end
    object Spinner_ano: TUnimSpinner
      Left = 221
      Top = 52
      Width = 137
      Height = 47
      Hint = ''
      Anchors = [akTop, akRight]
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'    se' +
          'nder.addCls('#39'edit-mobile'#39');'#13#10'}')
      Value = 2022.000000000000000000
      Step = 1.000000000000000000
      ParentFont = False
      TabOrder = 3
    end
    object Button_buscar: TUnimButton
      AlignWithMargins = True
      Left = 40
      Top = 106
      Width = 289
      Height = 47
      Hint = ''
      Margins.Left = 40
      Margins.Right = 40
      Align = alBottom
      Caption = 'Buscar'
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
          'er.addCls('#39'botoes-mobile'#39');'#13#10'}')
      ScreenMask.Enabled = True
      ScreenMask.WaitData = True
      ScreenMask.Message = 'Buscando Informa'#231#245'es...'
      ScreenMask.Target = Owner
      ScreenMask.Opacity = 0.699999988079071000
      Images = MainmForm.UniNativeImageList1
      ImageIndex = 9
      OnClick = Button_buscarClick
      ExplicitLeft = 42
      ExplicitWidth = 287
    end
  end
  object UnimPanel4: TUnimPanel
    Left = 0
    Top = 209
    Width = 369
    Height = 311
    Hint = ''
    Align = alClient
    Color = 16777200
    BorderStyle = ubsNone
    ExplicitTop = 211
    object Label_mes_meta: TUnimLabel
      AlignWithMargins = True
      Left = 3
      Top = 20
      Width = 363
      Height = 45
      Hint = ''
      Margins.Top = 20
      Alignment = taCenter
      AutoSize = False
      Caption = 'Meta'
      Align = alTop
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'    se' +
          'nder.addCls('#39'sub-titulos-mobile'#39');'#13#10'}')
      ParentFont = False
      Font.Height = -27
      ExplicitLeft = 5
      ExplicitWidth = 361
    end
    object Edit_meta: TUnimEdit
      AlignWithMargins = True
      Left = 25
      Top = 93
      Width = 319
      Height = 60
      Hint = ''
      Margins.Left = 25
      Margins.Top = 25
      Margins.Right = 25
      Margins.Bottom = 25
      Align = alTop
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
          'er.addCls('#39'edit-mobile'#39');'#13#10'}')
      Text = 'Edit_meta'
      ClearButton = False
      ParentFont = False
      Font.Height = -27
      ReadOnly = True
      TabOrder = 2
      ExplicitLeft = 52
      ExplicitTop = 89
      ExplicitWidth = 317
    end
    object Edit_valor_venda: TUnimEdit
      AlignWithMargins = True
      Left = 3
      Top = 227
      Width = 363
      Height = 47
      Hint = ''
      Margins.Bottom = 5
      Align = alBottom
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'    se' +
          'nder.addCls('#39'edit-mobile'#39');'#13#10'}')
      Text = 'UnimEdit1'
      ClearButton = False
      FieldLabelAlign = laRight
      FieldLabelWidth = 0
      FieldLabelFont.Color = clRed
      FieldLabelFont.Height = -24
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      ExplicitLeft = 5
      ExplicitTop = 221
      ExplicitWidth = 361
    end
    object Label_meta_mes: TUnimLabel
      AlignWithMargins = True
      Left = 3
      Top = 282
      Width = 363
      Height = 26
      Hint = ''
      Alignment = taCenter
      AutoSize = False
      Caption = '18% da meta atingida'
      Align = alBottom
      ParentFont = False
      Font.Color = clRed
      Font.Style = [fsBold]
      ExplicitLeft = 11
      ExplicitTop = 281
      ExplicitWidth = 361
    end
    object Button_alterar: TUnimButton
      AlignWithMargins = True
      Left = 25
      Top = 181
      Width = 319
      Height = 47
      Hint = ''
      Margins.Left = 25
      Margins.Right = 25
      Align = alTop
      Caption = 'Alterar meta'
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'    se' +
          'nder.addCls('#39'botoes-mobile'#39');'#13#10'}')
      IconCls = 'settings'
      ScreenMask.Enabled = True
      ScreenMask.WaitData = True
      ScreenMask.Message = 'Buscando Informa'#231#245'es...'
      ScreenMask.Target = Owner
      ScreenMask.Opacity = 0.699999988079071000
      Images = MainmForm.UniNativeImageList1
      ImageIndex = 12
      OnClick = Button_alterarClick
      ExplicitLeft = 110
      ExplicitTop = 100
      ExplicitWidth = 146
    end
  end
  object UnimPanel2: TUnimPanel
    Left = 0
    Top = 520
    Width = 369
    Height = 107
    Hint = ''
    Align = alBottom
    Color = 16777200
    ExplicitLeft = 1
    ExplicitTop = 522
    DesignSize = (
      369
      107)
    object Button_sair: TUnimBitBtn
      Left = 223
      Top = 36
      Width = 135
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
      OnClick = Button_sairClick
    end
    object Button_gravar: TUnimBitBtn
      Left = 11
      Top = 36
      Width = 164
      Height = 47
      Hint = ''
      Enabled = False
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'    se' +
          'nder.addCls('#39'botoes-mobile'#39');'#13#10'}')
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'   config.bas' +
          'eCls = "btn" ;'#13#10'   config.cls =  "btn-success"'#13#10'}')
      Caption = 'Gravar meta'
      Images = MainmForm.UniNativeImageList1
      ImageIndex = 11
      OnClick = Button_gravarClick
    end
  end
end
