unit U_login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniLabel, uniEdit,
  uniGUIBaseClasses, uniPanel, uniButton, Vcl.Imaging.pngimage, uniImage;

type
  TFrm_login = class(TUniLoginForm)
    UniPanel2: TUniPanel;
    UniPanel1: TUniPanel;
    UniPanel3: TUniPanel;
    UniPanel4: TUniPanel;
    UniPanel5: TUniPanel;
    UniEdit_user: TUniEdit;
    UniLabel2: TUniLabel;
    UniEdit_senha: TUniEdit;
    UniPanel9: TUniPanel;
    UniEdit_loja: TUniEdit;
    UniPanel8: TUniPanel;
    UniPanel11: TUniPanel;
    Button_login: TUniButton;
    UniImage1: TUniImage;
    procedure Button_loginClick(Sender: TObject);
    procedure UniLoginFormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function Frm_login: TFrm_login;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, ServerModule;

function Frm_login: TFrm_login;
begin
  Result := TFrm_login(Frm_MainModule.GetFormInstance(TFrm_login));
end;

procedure TFrm_login.Button_loginClick(Sender: TObject);
var usuario, senha, id_usuario: String;
begin
  //TESTA A CONEXÃO COM O BANCO
  UniServerModule.Abre_Conexao;


  //TESTA O LOGIN DE USUÁRIO
  try
    if UniServerModule.Login(UniEdit_user.Text, UniEdit_senha.Text, 2020) then begin
      Button_login.ModalResult:= mrOK;
    end;
    except on E: Exception do begin
      Application.MessageBox('Usuário ou senha estão incorretos!', 'Erro de Login', mb_oK+mb_IconInformation);
      Abort;
    end;
  end;

end;

procedure TFrm_login.UniLoginFormShow(Sender: TObject);
begin
  UniPanel8.Color:= clYellow;
end;

initialization
  RegisterAppFormClass(TFrm_login);

end.
