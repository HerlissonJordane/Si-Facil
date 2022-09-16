unit U_login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniEdit, unimEdit, uniLabel,
  unimLabel, uniGUImJSForm, unimPanel, uniGUIBaseClasses, uniPanel;

type
  TUniLoginForm1 = class(TUniLoginForm)
    UniPanel2: TUniPanel;
    UnimLabel1: TUnimLabel;
    UnimEdit1: TUnimEdit;
    UnimLabel2: TUnimLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UniLoginForm1: TUniLoginForm1;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function UniLoginForm1: TUniLoginForm1;
begin
  Result := TUniLoginForm1(UniMainModule.GetFormInstance(TUniLoginForm1));
end;

initialization
  RegisterAppFormClass(TUniLoginForm1);

end.
