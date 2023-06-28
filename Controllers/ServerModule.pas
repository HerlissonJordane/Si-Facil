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
    ADOQuery_percentual_venda: TADOQuery;
  private
    function Data_Formato_americano(data: string): string;
    function Criptografar(wStri: String): String;

    { Private declarations }
  protected
    procedure FirstInit; override;
  public
    { Public declarations }
  var usuario_conectado, id_usuario_conectado, loja_logada, id_loja: String;
  procedure carrega_dados_loja;
  Procedure Abre_Conexao;
  procedure Fecha_Conexao;
  Function Login(usuario, senha: String; id_loja: Integer): Boolean;
  procedure ExtAlert(Titulo, mensagem: String);
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

procedure TUniServerModule.carrega_dados_loja;
begin
//BUSCA DADOS DE CONEXÃO INICIAL
  if UniServerModule.ADOConnection1.Connected then begin
    ADOQuery_dados.Close;
    ADOQuery_dados.SQL.Clear;
    ADOQuery_dados.SQL.Add('pr_abre_loja 0');

    ADOQuery_dados.Open;

    loja_logada:= ADOQuery_dados.FieldByName('lj_razao').AsString;
    id_loja    := ADOQuery_dados.FieldByName('lj_id').AsString;

    //FECHA A CONEXÃO
    UniServerModule.ADOConnection1.Connected:= False;

  end else begin //HABILITA A CONEXÃO E CHAMA A PROCEDURE RECURSIVAMENTE
    Abre_Conexao;
    carrega_dados_loja;
  end;

end;

Procedure TUniServerModule.Abre_Conexao;
begin
    try
    if not(UniServerModule.ADOConnection1.Connected) then begin
      UniServerModule.ADOConnection1.Connected:= True;
    end
    except on E: Exception do begin
      //Application.MessageBox('Erro ao conectar no banco de dados!', 'Erro de conexão', mb_oK+mb_IconInformation);
      Abort;
    end;
  end;
end;

Procedure TUniServerModule.Fecha_Conexao;
begin
  if UniServerModule.ADOConnection1.Connected then begin
    UniServerModule.ADOConnection1.Connected:= False;
  end;
end;

Function TUniServerModule.Login(usuario, senha: String; id_loja: Integer): Boolean;
var id_usuario: String;
begin
  if UniServerModule.ADOConnection1.Connected then begin
    senha:= Criptografar(senha);

    //BUSCA USUÁRIO NO BANCO
    UniServerModule.ADOQuery_login.Close;
    UniServerModule.ADOQuery_login.SQL.Clear;
    UniServerModule.ADOQuery_login.SQL.Add('SELECT CL_ID,CL_USUARIO FROM CAD_CL '+
                                           ' WHERE CL_NOME = '+chr(39)+usuario+chr(39)+
                                           ' and cl_senha = '+chr(39)+senha+chr(39)
                                          );//FALTA PASSAR ID DA LOJA LOGADA

    UniServerModule.ADOQuery_login.Open;
    id_usuario:= UniServerModule.ADOQuery_login.FieldByName('cl_id').AsString;

    //Fecha a conexão
    Fecha_Conexao;

    if not(id_usuario.IsEmpty) then begin
      //Frm_login.Application.MessageBox('Usuário ou senha estão incorretos!', 'Erro de Login', mb_oK+mb_IconInformation);
      UniServerModule.id_usuario_conectado:=  id_usuario;
      UniServerModule.usuario_conectado:= usuario;
      Result:= True;
    end else begin
      Result:= False;
      Abort;  //provoca o erro do Try Except
    end;
  end;
end;

function TUniServerModule.Criptografar(wStri: String): String;
var Simbolos : array [0..4] of String;
x : Integer;
begin
  Simbolos[1]:=
  'ABCDEFGHIJLMNOPQRSTUVXZYWK ~!@#$%^&*()\';

  Simbolos[2]:=
  'ÂÀ©Øû×ƒçêùÿ5Üø£úñÑªº¿®¬¼ëèïÙýÄÅÉæÆôöò»Á';

  Simbolos[3]:='abcdefghijlmnopqrstuvxzywk1234567890';

  Simbolos[4]:='áâäàåíóÇüé¾¶§÷ÎÏ-+ÌÓß¸°¨·¹³²Õµþîì¡«½';

  for x := 1 to Length(Trim(wStri)) do begin
    if pos(copy(wStri,x,1),Simbolos[1])>0 then
      Result := Result+copy(Simbolos[2],
      pos(copy(wStri,x,1),Simbolos[1]),1)

    else if pos(copy(wStri,x,1),Simbolos[2])>0 then
      Result := Result+copy(Simbolos[1],
      pos(copy(wStri,x,1),Simbolos[2]),1)

    else if pos(copy(wStri,x,1),Simbolos[3])>0 then
      Result := Result+copy(Simbolos[4],
      pos(copy(wStri,x,1),Simbolos[3]),1)

    else if pos(copy(wStri,x,1),Simbolos[4])>0 then
      Result := Result+copy(Simbolos[3],
      pos(copy(wStri,x,1),Simbolos[4]),1);
  end;
end;

procedure TUniServerModule.ExtAlert(Titulo, mensagem: String);
begin
  //FUNÇÃO DE ALERTA EM JAVASCRIPT
  UniSession.AddJS('Ext.example.msg('+
                  quotedstr(Titulo) + ',' +
                  quotedstr(Mensagem)+');');
end;


initialization
  RegisterServerModuleClass(TUniServerModule);
end.
