unit Frm_webpage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniPanel, uniHTMLFrame;

type
  TWebPage = class(TUniForm)
    UniHTMLFrame1: TUniHTMLFrame;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function WebPage: TWebPage;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function WebPage: TWebPage;
begin
  Result := TWebPage(Frm_MainModule.GetFormInstance(TWebPage));
end;

end.
