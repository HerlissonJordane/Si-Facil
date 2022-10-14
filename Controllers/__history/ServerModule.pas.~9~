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

initialization
  RegisterServerModuleClass(TUniServerModule);
end.
