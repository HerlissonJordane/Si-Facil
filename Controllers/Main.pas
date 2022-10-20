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
    UniLabel1: TUniLabel;
    UniLabel6: TUniLabel;
    UniPanel2: TUniPanel;
    UniImage2: TUniImage;
    UniLabel7: TUniLabel;
    UniLabel8: TUniLabel;
    UniPanel4: TUniPanel;
    UniImage3: TUniImage;
    UniLabel9: TUniLabel;
    UniLabel10: TUniLabel;
    UniLabel12: TUniLabel;
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
    UniPanel6: TUniContainerPanel;
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
    procedure UniLabel2Click(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
    procedure icketMdio1Click(Sender: TObject);
    procedure Metasdeloja1Click(Sender: TObject);
  private
    procedure Atualiza_dados;
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, ServerModule, U_ticket_medio, U_metas_loja;

function MainForm: TMainForm;
begin
  Result := TMainForm(Frm_MainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.icketMdio1Click(Sender: TObject);
begin
// chamada de ticket médio
 // TFrm_ticket_medio.Create(UniApplication);
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
  Atualiza_dados;
  UniServerModule.carrega_dados_conexao;
  Label_loja.Caption:= UniServerModule.loja_logada;
  UniLabel4.Caption:= 'Olá, '+UniServerModule.usuario_conectado;
  UniPanel6.Left:= Round(Panel_central.Width/2) - Round(UniPanel6.Width/2);
end;

procedure TMainForm.UniLabel2Click(Sender: TObject);
begin
  TreeMenu.Micro:= not(TreeMenu.Micro);
  if TreeMenu.Micro then begin
    Panel_menu.Width:= 44;
    Label_loja.Visible:= False;
  end else begin
    Panel_menu.Width:= 281;
    Label_loja.Visible:= True;
  end;
end;

PRocedure TMainForm.Atualiza_dados();
var dados: Integer;
    data_inicial, data_final: String;
begin
  data_inicial:= DateToStr(StartofTheMonth(UniDateTimePicker1.DateTime));
  //data_final:=  DateToStr(EndofTheMonth(UniDateTimePicker1.DateTime));
  data_final:=  DateToStr(UniDateTimePicker1.DateTime);
  UniServerModule.ADOConnection1.Connected:= True;

  //pega o total de vandas do dia
  UniServerModule.ADOQuery_dados.Close;
  UniServerModule.ADOQuery_dados.SQL.Clear;
  UniServerModule.ADOQuery_dados.SQL.Add('select cast(sum(sai_tot)as float)as venda from sai_mt_cab where sai_dt = '+chr(39)+UniDateTimePicker1.text+chr(39)+' and cl_canc is null');
  UniServerModule.ADOQuery_dados.Open;

  UniLabel9.Caption:= FormatCurr('R$ ###,##0.00',UniServerModule.ADOQuery_dados.FieldByName('venda').AsCurrency);

  //pega o valor de venda mensal
  UniServerModule.ADOQuery_dados.Close;
  UniServerModule.ADOQuery_dados.SQL.Clear;
  UniServerModule.ADOQuery_dados.SQL.Add('select cast(sum(sai_tot)as float)as total from sai_mt_cab '+
                                          'where sai_dt between '+chr(39)+data_inicial+chr(39)+' and '
                                          +chr(39)+UniDateTimePicker1.text+chr(39)+' and cl_canc is null');
  UniServerModule.ADOQuery_dados.Open;

  UniLabel7.Caption:=  FormatCurr('R$ ###,##0.00',UniServerModule.ADOQuery_dados.FieldByName('total').AsCurrency);
  UniProgressBar1.Position:=  Round(UniServerModule.ADOQuery_dados.FieldByName('total').AsInteger);

  //Busca top 3 venededores do mês
  UniServerModule.ADOQuery_ranking.Close;
  UniServerModule.ADOQuery_ranking.SQL.Clear;
  UniServerModule.ADOQuery_ranking.SQL.Add('SELECT top 3 CL_NOME, SUM(SAI_TOT) AS TOTAL '+
                                            'FROM SAI_MT_CAB CAB INNER JOIN CAD_CL CL '+
                                            'ON CAB.CL_ID = CL.CL_ID '+
                                            'WHERE CL_CANC IS NULL AND '+
                                            'SAI_DT BETWEEN '+chr(39)+data_inicial+chr(39)+' AND '+chr(39)+data_final+chr(39)+
                                            ' GROUP BY CL_NOME ORDER BY SUM(SAI_TOT) DESC ');
  UniServerModule.ADOQuery_ranking.Open;

  UniServerModule.ADOQuery_ranking.First;
  while not (UniServerModule.ADOQuery_ranking.Eof) do begin
    dados:= UniServerModule.ADOQuery_ranking.RecNo;
    case dados of
      1: begin
        vendedor1.Caption:= UniServerModule.ADOQuery_ranking.FieldByName('cl_nome').AsString;
        vendas1.Caption:= CurrToStrF(UniServerModule.ADOQuery_ranking.FieldByName('total').AsCurrency,ffCurrency,2);
        Progress1.Position:= Round(UniServerModule.ADOQuery_ranking.FieldByName('total').AsInteger);
      end;

      2: begin
        vendedor2.Caption:= UniServerModule.ADOQuery_ranking.FieldByName('cl_nome').AsString;
        vendas2.Caption:= CurrToStrF(UniServerModule.ADOQuery_ranking.FieldByName('total').AsCurrency,ffCurrency,2);
        Progress2.Position:= Round(UniServerModule.ADOQuery_ranking.FieldByName('total').AsInteger);
      end;

      3: begin
        vendedor3.Caption:= UniServerModule.ADOQuery_ranking.FieldByName('cl_nome').AsString;
        vendas3.Caption:= CurrToStrF(UniServerModule.ADOQuery_ranking.FieldByName('total').AsCurrency,ffCurrency,2);
        Progress3.Position:= Round(UniServerModule.ADOQuery_ranking.FieldByName('total').AsInteger);
      end;
    end;
    UniServerModule.ADOQuery_ranking.Next
  end;

  UniServerModule.ADOConnection1.Connected:= False;

  end;

initialization
  RegisterAppFormClass(TMainForm);

end.
