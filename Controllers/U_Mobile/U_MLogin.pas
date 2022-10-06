unit U_MLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniButton, unimButton, uniGUIBaseClasses, uniLabel, unimLabel, uniEdit,
  unimEdit, uniMultiItem, unimSelect, uniImage, unimImage, Data.DB,
  Data.Win.ADODB, Vcl.Imaging.pngimage;

type
  TFrm_MLogin = class(TUnimLoginForm)
    UnimButton1: TUnimButton;
    UnimImage1: TUnimImage;
    UnimSelect1: TUnimSelect;
    UnimEdit_usuario: TUnimEdit;
    UnimEdit_senha: TUnimEdit;
    procedure UnimButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Criptografar(wStri: String): String;
  end;

function Frm_MLogin: TFrm_MLogin;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, ServerModule;

function Frm_MLogin: TFrm_MLogin;
begin
  Result := TFrm_MLogin(Frm_MainModule.GetFormInstance(TFrm_MLogin));
end;

procedure TFrm_MLogin.UnimButton1Click(Sender: TObject);
var usuario, senha, id_usuario: String;
begin
  usuario:= UnimEdit_usuario.Text;
  senha:= Criptografar(UnimEdit_senha.Text);

  UniServerModule.ADOQuery_login.Close;
  UniServerModule.ADOQuery_login.SQL.Clear;
  UniServerModule.ADOQuery_login.SQL.Add('SELECT CL_ID,CL_USUARIO FROM CAD_CL WHERE CL_NOME = '+chr(39)+usuario+chr(39)
                                         +' and cl_senha = '+chr(39)+senha+chr(39)
                                        );

  try
    UniServerModule.ADOConnection1.Connected:= True;
    UniServerModule.ADOQuery_login.Open;
    id_usuario:= UniServerModule.ADOQuery_login.FieldByName('cl_id').AsString;
    UniServerModule.ADOConnection1.Connected:= False;
    except on E: Exception do begin
      ShowMessage('Erro ao conectar no banco de dados! - '+E.Message);
    end;

  End;
  if id_usuario.IsEmpty then begin
    Application.MessageBox('Usu�rio ou senha est�o incorretos!', 'Erro de Login', mb_oK+mb_IconInformation);
  end else begin
    Frm_MainModule.id_usuario_conectado:=  id_usuario;
    Frm_MainModule.usuario_conectado:= usuario;
    ModalResult:= mrOK;
  end;

end;

function TFrm_MLogin.Criptografar(wStri: String): String;
var Simbolos : array [0..4] of String;
x : Integer;
begin
  Simbolos[1]:=
  'ABCDEFGHIJLMNOPQRSTUVXZYWK ~!@#$%^&*()\';

  Simbolos[2]:=
  '�����׃����5�����Ѫ�������������������';

  Simbolos[3]:='abcdefghijlmnopqrstuvxzywk1234567890';

  Simbolos[4]:='���������龶����-+��߸������յ��졫�';

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

initialization
  RegisterAppFormClass(TFrm_MLogin);
  ReportMemoryLeaksOnShutDown:= True;

end.
