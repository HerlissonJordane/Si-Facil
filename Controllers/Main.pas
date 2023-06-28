unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniLabel,
  uniButton, unimButton, uniEdit, unimEdit, unimLabel, uniGUImJSForm, unimPanel,
  uniPanel, uniStatusBar, uniProgressBar, uniChart, uniGenericControl,
  uniBitBtn, uniMenuButton, Vcl.Menus, uniMainMenu, uniCalendar, uniTrackBar,
  uniImageList, uniTreeView, uniTreeMenu, Vcl.Imaging.pngimage, uniImage,
  uniSpeedButton, uniDateTimePicker, uniDBDateTimePicker, uniBasicGrid,
  uniDBGrid, uniDBVerticalGrid, uniDBTreeGrid, uniDBVerticalTreeGrid, uniMemo,
  uniDBMemo, uniMultiItem, uniListBox, uniDBListBox, uniDBPivotGrid, DateUtils,
  dxGDIPlusClasses;

type
  TMainForm = class(TUniForm)
    Panel_central: TUniContainerPanel;
    Panel_menu: TUniContainerPanel;
    UniContainerPanel3: TUniContainerPanel;
    UniPanel1: TUniPanel;
    TreeMenu: TUniTreeMenu;
    UniNativeImageList1: TUniNativeImageList;
    UniMenuItems1: TUniMenuItems;
    Relatrios1: TUniMenuItem;
    Metas1: TUniMenuItem;
    Produtos1: TUniMenuItem;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    Panel_resumo: TUniSimplePanel;
    UniPanel3: TUniPanel;
    UniImage1: TUniImage;
    UniLabel_Clientes: TUniLabel;
    UniLabel6: TUniLabel;
    UniPanel2: TUniPanel;
    UniImage2: TUniImage;
    UniLabel7: TUniLabel;
    UniLabel8: TUniLabel;
    UniPanel4: TUniPanel;
    UniImage3: TUniImage;
    UniLabel9: TUniLabel;
    UniLabel10: TUniLabel;
    Label_percentual: TUniLabel;
    UniProgressBar1: TUniProgressBar;
    Label_loja: TUniLabel;
    UniLabel13: TUniLabel;
    icketMdio1: TUniMenuItem;
    UniImage4: TUniImage;
    UniLabel11: TUniLabel;
    UniButton1: TUniButton;
    UniDateTimePicker1: TUniDateTimePicker;
    Metasdeloja1: TUniMenuItem;
    Metasdevendedores1: TUniMenuItem;
    Panel_Ranking: TUniContainerPanel;
    UniContainerPanel1: TUniContainerPanel;
    UniPanel5: TUniPanel;
    vendas1: TUniLabel;
    vendedor1: TUniLabel;
    Progress1: TUniProgressBar;
    UniLabel19: TUniLabel;
    UniImage8: TUniImage;
    UniPanel7: TUniPanel;
    vendas2: TUniLabel;
    vendedor2: TUniLabel;
    Progress2: TUniProgressBar;
    UniLabel23: TUniLabel;
    UniImage9: TUniImage;
    UniPanel8: TUniPanel;
    vendas3: TUniLabel;
    vendedor3: TUniLabel;
    Progress3: TUniProgressBar;
    UniLabel27: TUniLabel;
    UniImage10: TUniImage;
    UniLabel14: TUniLabel;
    WEB1: TUniMenuItem;
    procedure UniLabel2Click(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
    procedure icketMdio1Click(Sender: TObject);
    procedure Metasdeloja1Click(Sender: TObject);
    procedure WEB1Click(Sender: TObject);
  private
    procedure Atualiza_dados;
    procedure calcula_percentual_venda(data: TDate; vendas_hoje: Double);
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, ServerModule, U_ticket_medio, U_metas_loja, Frm_webpage;

function MainForm: TMainForm;
begin
  Result := TMainForm(Frm_MainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.icketMdio1Click(Sender: TObject);
begin
// chamada de ticket médio
  Frm_ticket_medio.ShowModalN;
end;

procedure TMainForm.Metasdeloja1Click(Sender: TObject);
begin
  Frm_metas_loja.ShowModalN;
end;

procedure TMainForm.UniButton1Click(Sender: TObject);
begin
  Atualiza_dados;
end;

procedure TMainForm.UniFormShow(Sender: TObject);
begin
  //PASSA SEMPRE A DATA DO DIA INICIALMENTE, PORQUE O COMPONENTE ESTÁ COM ERRO E NÃO FAZ ISSO AUTOMATICAMENTE
  UniDateTimePicker1.DateTime:= Date;

  UniServerModule.carrega_dados_loja;
  Atualiza_dados;

  Label_loja.Caption:= UniServerModule.loja_logada;
  UniLabel4.Caption:= 'Olá, '+UniServerModule.usuario_conectado;
end;

procedure TMainForm.UniLabel2Click(Sender: TObject);
begin
  TreeMenu.Micro:= not(TreeMenu.Micro);
  if TreeMenu.Micro then begin
    Panel_menu.Width:= 48;
    Label_loja.Visible:= False;
  end else begin
    Panel_menu.Width:= 281;
    Label_loja.Visible:= True;
  end;
end;

procedure TMainForm.WEB1Click(Sender: TObject);
begin
  Frm_webpage.WebPage.ShowModalN;
end;

PRocedure TMainForm.Atualiza_dados();
var dados: Integer;
    data_inicial, data_final: String;
    vendas_hoje: Double;
begin
  if UniServerModule.ADOConnection1.Connected then begin

    data_inicial:= DateToStr(StartofTheMonth(UniDateTimePicker1.DateTime));
    data_final:=  DateToStr(UniDateTimePicker1.DateTime);
    UniServerModule.ADOConnection1.Connected:= True;

    //pega o total de vandas do dia
    UniServerModule.ADOQuery_dados.Close;
    UniServerModule.ADOQuery_dados.SQL.Clear;
    UniServerModule.ADOQuery_dados.SQL.Add('select cast(sum(sai_tot)as float)as venda from sai_mt_cab '+
                                           ' where sai_dt = '+chr(39)+UniDateTimePicker1.text+chr(39)+' and '+
                                           ' cl_canc is null');
    UniServerModule.ADOQuery_dados.Open;

    vendas_hoje:= UniServerModule.ADOQuery_dados.FieldByName('venda').AsCurrency;
    UniLabel9.Caption:= FormatCurr('R$ ###,##0.00',UniServerModule.ADOQuery_dados.FieldByName('venda').AsCurrency);

    //CHAMADA DA PROCEDURE QUE CALCULA O PERCENTUAL DE DIFERENÇA DE VENDAS DO DIA ATUAL COM O ANTERIOR
    calcula_percentual_venda(UniDateTimePicker1.DateTime, vendas_hoje); 

    //pega o valor de venda mensal
    UniServerModule.ADOQuery_dados.Close;
    UniServerModule.ADOQuery_dados.SQL.Clear;
    UniServerModule.ADOQuery_dados.SQL.Add('select cast(sum(sai_tot)as float)as total from sai_mt_cab '+
                                            'where sai_dt between '+chr(39)+data_inicial+chr(39)+' and '
                                            +chr(39)+UniDateTimePicker1.text+chr(39)+' and cl_canc is null');
    UniServerModule.ADOQuery_dados.Open;

    UniLabel7.Caption:=  FormatCurr('R$ ###,##0.00',UniServerModule.ADOQuery_dados.FieldByName('total').AsCurrency);
    UniProgressBar1.Position:=  Round(UniServerModule.ADOQuery_dados.FieldByName('total').AsInteger);

    //QUANTIDADE DE CLIENTES CADASTRADOS NO DIA (passa pra procedure pronta somente a data do dia)
    UniServerModule.ADOQuery_dados.Close;
    UniServerModule.ADOQuery_dados.SQL.Clear;
    UniServerModule.ADOQuery_dados.SQL.Add('pr_lista_cadastro_por_periodo '+
                                          chr(39)+UniDateTimePicker1.text+chr(39)+', '+
                                          chr(39)+UniDateTimePicker1.text+chr(39)+', '+
                                          chr(39)+'1'+chr(39));
    UniServerModule.ADOQuery_dados.Open;

    UniLabel_Clientes.Caption:= IntToStr(UniServerModule.ADOQuery_dados.RecordCount) + ' Cliente(s)';


    //Busca top 3 vendedores do mês
    UniServerModule.ADOQuery_ranking.Close;
    UniServerModule.ADOQuery_ranking.SQL.Clear;
    UniServerModule.ADOQuery_ranking.SQL.Add('SELECT top 3 CL_NOME, FORMAT(SUM(SAI_TOT), ''N'') AS TOTAL, '+
                                              'COUNT(SAI_TOT) AS QTD_VENDAS, SUM(SAI_TOT) AS TOTAL_VENDA '+
                                              'FROM SAI_MT_CAB CAB INNER JOIN CAD_CL CL '+
                                              'ON CAB.CL_ID = CL.CL_ID '+
                                              'WHERE CL_CANC IS NULL AND '+
                                              'SAI_DT BETWEEN '+chr(39)+data_inicial+chr(39)+' AND '+chr(39)+data_final+chr(39)+
                                              ' GROUP BY CL_NOME ORDER BY SUM(SAI_TOT) DESC ');
    UniServerModule.ADOQuery_ranking.Open;

    //PREENCHE OS DADOS DOS TOP 3 VENDEDORES NA TELA PRINCIPAL
    UniServerModule.ADOQuery_ranking.First;
    while not (UniServerModule.ADOQuery_ranking.Eof) do begin
      dados:= UniServerModule.ADOQuery_ranking.RecNo;
      case dados of
        1: begin
          vendedor1.Caption:= UniServerModule.ADOQuery_ranking.FieldByName('cl_nome').AsString;
          vendas1.Caption:= 'R$ '+UniServerModule.ADOQuery_ranking.FieldByName('total').AsString;
          Progress1.Position:= Round(UniServerModule.ADOQuery_ranking.FieldByName('total_venda').AsFloat);
        end;

        2: begin
          vendedor2.Caption:= UniServerModule.ADOQuery_ranking.FieldByName('cl_nome').AsString;
          vendas2.Caption:= 'R$ '+UniServerModule.ADOQuery_ranking.FieldByName('total').AsString;
          Progress2.Position:= Round(UniServerModule.ADOQuery_ranking.FieldByName('total_venda').AsFloat);
        end;

        3: begin
          vendedor3.Caption:= UniServerModule.ADOQuery_ranking.FieldByName('cl_nome').AsString;
          vendas3.Caption:= 'R$ '+UniServerModule.ADOQuery_ranking.FieldByName('total').AsString;
          Progress3.Position:= Round(UniServerModule.ADOQuery_ranking.FieldByName('total_venda').AsFloat);
        end;
      end;
      UniServerModule.ADOQuery_ranking.Next
    end;

    //FECHA CONEXÃO COM BANCO
    UniServerModule.ADOConnection1.Connected:= False;

  end else begin
    UniServerModule.Abre_Conexao;
    Atualiza_dados;
  end;
end;


//CALCULA O PERCENTUAL DE DIFERENÇA DE VENDAS DO DIA ATUAL COM O ANTERIOR
procedure TMainForm.calcula_percentual_venda(data: TDate; vendas_hoje: Double);
var data_anterior: TDate;
    venda_anterior: Double;
    percentual: Integer;
begin
  data_anterior:= IncDay(data, -1);
  
  UniServerModule.ADOQuery_percentual_venda.Close;
  UniServerModule.ADOQuery_percentual_venda.SQL.Clear;
  UniServerModule.ADOQuery_percentual_venda.SQL.Add('select cast(sum(sai_tot)as float)as venda_anterior from sai_mt_cab '+
                                                   ' where sai_dt = '+chr(39)+DateToStr(data_anterior)+chr(39)+' and '+
                                                   ' cl_canc is null');
  UniServerModule.ADOQuery_percentual_venda.Open;

  venda_anterior:= UniServerModule.ADOQuery_percentual_venda.FieldByName('venda_anterior').AsCurrency;

  if venda_anterior > vendas_hoje then begin
    percentual:= Round(((vendas_hoje * 100) / venda_anterior) - 100) * -1;
    Label_percentual.Caption:= '▼ -'+ IntToStr(percentual) +'%';   //alt 31
    Label_percentual.Font.Color:= clRed;
  end else begin
    percentual:= Round(((vendas_hoje * 100) / venda_anterior) - 100);
    Label_percentual.Caption:= '▲ +'+ IntToStr(percentual) +'%';    //alt 30
    Label_percentual.Font.Color:= clGreen;
  end;

end;

initialization
  RegisterAppFormClass(TMainForm);

end.
