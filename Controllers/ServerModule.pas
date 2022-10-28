unit ServerModule;

interface

uses
  Classes, SysUtils, uniGUIServer, uniGUIMainModule, uniGUIApplication, uIdCustomHTTPServer,
  uniGUITypes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait, Data.Win.ADODB, Data.DB,
  FireDAC.Comp.Client, uniGUIBaseClasses, uniGUIClasses, uniImageList;

type
  TUniServerModule = class(TUniGUIServerModule)
    FDConnection1: TFDConnection;
    ADOConnection1: TADOConnection;
    ADOQuery_login: TADOQuery;
    ADOQuery_dados: TADOQuery;
    ADOQuery_ranking: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery_rankingcl_nome: TStringField;
    ADOQuery_ticket: TADOQuery;
    ADOQuery1: TADOQuery;
    ADOQuery_meta: TADOQuery;
    ADOQuery_vendas: TADOQuery;
    ADOQuery_rankingtotal2: TStringField;
    ADOQuery_rankingqtd_vendas: TIntegerField;
    ADOQuery_rankingtotal_venda: TFloatField;
  private
    function Data_Formato_americano(data: string): string;
    { Private declarations }
  protected
    procedure FirstInit; override;
  public
    { Public declarations }
  var usuario_conectado, id_usuario_conectado, loja_logada: String;
  procedure carrega_dados_conexao;
  end;

function UniServerModule: TUniServerModule;

implementation

{$R *.dfm}

uses
  UniGUIVars, U_Mlogin;

function UniServerModule: TUniServerModule;
begin
  Result:=TUniServerModule(UniGUIServerInstance);
end;

procedure TUniServerModule.FirstInit;
begin
  InitServerModule(Self);
end;

function TUniServerModule.Data_Formato_americano(data:string): string;
begin
  Result:= copy(data,7,4)+'-'+copy(data,4,2)+'-'+copy(data,1,2);
end;

procedure TUniServerModule.carrega_dados_conexao;
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

initialization
  RegisterServerModuleClass(TUniServerModule);
end.
