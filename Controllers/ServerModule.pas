unit ServerModule;

interface

uses
  Classes, SysUtils, uniGUIServer, uniGUIMainModule, uniGUIApplication, uIdCustomHTTPServer,
  uniGUITypes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait, Data.Win.ADODB, Data.DB,
  FireDAC.Comp.Client;

type
  TUniServerModule = class(TUniGUIServerModule)
    FDConnection1: TFDConnection;
    ADOConnection1: TADOConnection;
    ADOQuery_login: TADOQuery;
    ADOQuery_dados: TADOQuery;
    ADOQuery_ranking: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery_rankingcl_nome: TStringField;
    ADOQuery_rankingtotal: TCurrencyField;
    ADOQuery_ticket: TADOQuery;
  private
    function Data_Formato_americano(data: string): string;
    { Private declarations }
  protected
    procedure FirstInit; override;
  public
    { Public declarations }
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

initialization
  RegisterServerModuleClass(TUniServerModule);
end.
