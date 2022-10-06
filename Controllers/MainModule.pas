unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, Data.DB, Data.Win.ADODB,
  uniGUIBaseClasses, uniGUIClasses, uniImageList, Vcl.Menus, uniMainMenu;

type
  TFrm_MainModule = class(TUniGUIMainModule)
    ADOQuery_dados: TADOQuery;
    UniNativeImageList1: TUniNativeImageList;
    UniMenuItems1: TUniMenuItems;
    Relatrios1: TUniMenuItem;
    Metas1: TUniMenuItem;
    RanckingdeVendas1: TUniMenuItem;
    icketMdio1: TUniMenuItem;
    Produtosporatendimento1: TUniMenuItem;
    Metasindividuais1: TUniMenuItem;
    Metasmensais1: TUniMenuItem;
    procedure RanckingdeVendas1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure carrega_dados_conexao();
    var usuario_conectado, id_usuario_conectado, loja_logada: String;
  end;

function Frm_MainModule: TFrm_MainModule;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

uses
  UniGUIVars, ServerModule, uniGUIApplication, U_ranking_vendas;

function Frm_MainModule: TFrm_MainModule;
begin
  Result := TFrm_MainModule(UniApplication.UniMainModule)
end;

{ TFrm_MainModule }

procedure TFrm_MainModule.carrega_dados_conexao;
begin
  if UniServerModule.ADOConnection1.Connected then begin
    ADOQuery_dados.Close;
    ADOQuery_dados.SQL.Clear;
    ADOQuery_dados.SQL.Add('SELECT LJ_RAZAO FROM CAD_LJ');

    ADOQuery_dados.Open;

    loja_logada:= ADOQuery_dados.FieldByName('lj_razao').AsString;
    
  end else begin
    UniServerModule.ADOConnection1.Connected:= True;
    carrega_dados_conexao;
  end;

end;

procedure TFrm_MainModule.RanckingdeVendas1Click(Sender: TObject);
begin
  //Frm_ranking_vendas:= TFrm_ranking_vendas.CreateFormInstance(Self,true);
  //Frm_ranking_vendas.ShowModalN;
end;

initialization
  RegisterMainModuleClass(TFrm_MainModule);
end.
