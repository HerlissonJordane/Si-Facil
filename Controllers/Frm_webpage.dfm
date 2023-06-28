object WebPage: TWebPage
  Left = 0
  Top = 0
  ClientHeight = 468
  ClientWidth = 770
  Caption = 'WebPage'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PageMode = True
  PixelsPerInch = 96
  TextHeight = 13
  object UniHTMLFrame1: TUniHTMLFrame
    Left = 0
    Top = 0
    Width = 770
    Height = 468
    Hint = ''
    BodyRTL = False
    HTML.Strings = (
      '<!DOCTYPE html>'
      '<html lang="pt-Br">'
      '<head>'
      '    <meta charset="UTF-8">'
      '    <meta http-equiv="X-UA-Compatible" content="IE=edge">'
      
        '    <meta name="viewport" content="width=device-width, initial-s' +
        'cale=1.0">'
      '    <link rel="stylesheet"  href="/files/teste.css">'
      '    <title>Surpresa</title>'
      '</head>'
      ''
      '<body>'
      '    <div class="box">'
      '        <div class="form">'
      '            <h2>teste</h2>'
      '            <button>click</button>'
      '        </div>'
      '    </div>'
      '</body>'
      '</html>')
    Align = alClient
    ClientEvents.ExtEvents.Strings = (
      
        'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'   sende' +
        'r.addCls('#39'container'#39');'#13#10'   sender.addCls('#39'titulo'#39');'#13#10'   sender.a' +
        'ddCls('#39'question'#39');'#13#10'}'#13#10)
  end
end
