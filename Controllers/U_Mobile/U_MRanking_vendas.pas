unit U_MRanking_vendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, uniBasicGrid, uniDBGrid, unimDBListGrid, uniButton,
  uniBitBtn, unimBitBtn, unimPanel, uniLabel, unimLabel, DateUtils;

type
  TFrm_MRanking_vendas = class(TUnimForm)
    UnimDBListGrid1: TUnimDBListGrid;
    UnimPanel2: TUnimPanel;
    Button_sair: TUnimBitBtn;
    UnimLabel1: TUnimLabel;
    UnimBitBtn1: TUnimBitBtn;
    procedure UnimFormShow(Sender: TObject);
    procedure Button_sairClick(Sender: TObject);
    procedure UnimBitBtn1Click(Sender: TObject);
  private
    procedure atualiza;
    { Private declarations }
  public
    { Public declarations }
  end;

function Frm_MRanking_vendas: TFrm_MRanking_vendas;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, ServerModule, Mainm;

function Frm_MRanking_vendas: TFrm_MRanking_vendas;
begin
  Result := TFrm_MRanking_vendas(Frm_MainModule.GetFormInstance(TFrm_MRanking_vendas));
end;

procedure TFrm_MRanking_vendas.Button_sairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_MRanking_vendas.UnimBitBtn1Click(Sender: TObject);
begin
  atualiza;
end;

procedure TFrm_MRanking_vendas.UnimFormShow(Sender: TObject);
begin
  UnimBitBtn1.Click;
end;

procedure TFrm_MRanking_vendas.atualiza;
var data_inicial, data_final: String;
begin
  data_inicial:= DateToStr(StartofTheMonth(Date));
  data_final:=  DateToStr(EndofTheMonth(Date));

  UniServerModule.ADOQuery_ranking.Close;
  UniServerModule.ADOQuery_ranking.SQL.Clear;
  UniServerModule.ADOQuery_ranking.SQL.Add('SELECT CL_NOME, FORMAT(SUM(SAI_TOT), ''N'') AS TOTAL, COUNT(SAI_TOT) AS QTD_VENDAS, 1.1 as total_venda '+
                                            'FROM SAI_MT_CAB CAB INNER JOIN CAD_CL CL '+
                                            'ON CAB.CL_ID = CL.CL_ID '+
                                            'WHERE CL_CANC IS NULL AND '+
                                            'SAI_DT BETWEEN '+chr(39)+data_inicial+chr(39)+' and '+chr(39)+data_final+chr(39)+
                                            ' GROUP BY CL_NOME ORDER BY SUM(SAI_TOT) DESC ');
  UniServerModule.ADOQuery_ranking.Open;
end;
end.
