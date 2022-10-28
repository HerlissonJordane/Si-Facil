object Frm_MRanking_vendas: TFrm_MRanking_vendas
  Left = 0
  Top = 0
  ClientHeight = 627
  ClientWidth = 361
  Caption = 'Frm_MRanking_vendas'
  OnShow = UnimFormShow
  ShowTitle = False
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 0
  PlatformData = {}
  object UnimLabel1: TUnimLabel
    AlignWithMargins = True
    Left = 3
    Top = 5
    Width = 355
    Height = 45
    Hint = ''
    Margins.Top = 5
    Alignment = taCenter
    AutoSize = False
    Caption = 'Ranking de Vendas'
    Align = alTop
    ClientEvents.ExtEvents.Strings = (
      
        'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'      ' +
        'sender.addCls('#39'titulos-mobile'#39');'#13#10'}')
    ParentFont = False
    Font.Height = -27
  end
  object UnimDBListGrid1: TUnimDBListGrid
    Left = 0
    Top = 53
    Width = 361
    Height = 518
    Hint = ''
    Align = alClient
    DataSource = UniServerModule.DataSource1
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.load' +
        'ingText='#39'Buscando informa'#231#245'es...'#39';'#13#10'  config.grouped=false;'#13#10'  c' +
        'onfig.selectedCls='#39#39';'#13#10'  config.itemTpl= '#39'<table style="width: 1' +
        '00%; white-space: nowrap; vertical-align: middle;">'#39'+'#13#10#13#10'       ' +
        '        '#39'<tr>'#39'+'#13#10'                   '#39'<td style="color:#3a6383; f' +
        'ont-size:18px; padding-left:5px ;" colspan="2">{0}</td>'#39'+'#13#10'     ' +
        '          '#39'</tr>'#39'+'#13#10#13#10'               '#39'<tr>'#39'+'#13#10'                  ' +
        ' '#39'<td style="font-size: 15px; padding-top: 4px; padding-left: 5p' +
        'x; color: green;">Total: R$ {1}</td>'#39'+'#13#10'               '#39'</tr>'#39'+'#13 +
        #10#13#10'               '#39'<tr>'#39'+'#13#10'                   '#39'<td style="font-s' +
        'ize: 15px; padding-top: 4px; padding-left: 5px; color: #535454;"' +
        '>Qtd. Vendas: {2}</td>'#39'+'#13#10'               '#39'</tr>'#39'+'#13#10#13#10'           ' +
        '   '#39'</table>'#39';'#13#10'}')
    Options = [dgColLines, dgRowLines, dgConfirmDelete]
    WebOptions.Paged = False
    Striped = True
    Grouping.Enabled = True
    Grouping.SortDescending = True
    Columns = <
      item
        Title.Caption = 'cl_nome'
        FieldName = 'cl_nome'
        Width = 224
      end
      item
        Title.Caption = 'total'
        FieldName = 'total'
        Width = 169
      end
      item
        Title.Caption = 'qtd_vendas'
        FieldName = 'qtd_vendas'
        Width = 114
      end
      item
        Title.Caption = 'total_venda'
        FieldName = 'total_venda'
        Width = 114
      end>
  end
  object UnimPanel2: TUnimPanel
    Left = 0
    Top = 571
    Width = 361
    Height = 56
    Hint = ''
    Align = alBottom
    Color = 16777200
    ExplicitTop = 577
    DesignSize = (
      361
      56)
    object Button_sair: TUnimBitBtn
      Left = 223
      Top = 3
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
    object UnimBitBtn1: TUnimBitBtn
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 155
      Height = 47
      Hint = ''
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'    se' +
          'nder.addCls('#39'botoes-mobile'#39');'#13#10'}')
      ScreenMask.Enabled = True
      ScreenMask.WaitData = True
      ScreenMask.Message = 'Atualizando...'
      ScreenMask.Target = Owner
      IconAlign = iaRight
      IconCls = 'fa fa-refresh'
      Caption = 'Atualizar'
      Images = MainmForm.UniNativeImageList1
      ImageIndex = 14
      OnClick = UnimBitBtn1Click
    end
  end
end
