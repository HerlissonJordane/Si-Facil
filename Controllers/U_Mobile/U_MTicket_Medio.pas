unit U_MTicket_Medio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniBitBtn, unimBitBtn, uniButton, unimButton, uniDateTimePicker,
  unimDatePicker, unimPanel, uniGUIBaseClasses, uniLabel, unimLabel;

type
  TFrm_MTicket_medio = class(TUnimForm)
    UnimLabel1: TUnimLabel;
    UnimPanel1: TUnimPanel;
    UnimPanel2: TUnimPanel;
    UnimPanel3: TUnimPanel;
    UnimPanel4: TUnimPanel;
    UnimDatePicker1: TUnimDatePicker;
    UnimDatePicker2: TUnimDatePicker;
    UnimLabel2: TUnimLabel;
    UnimLabel3: TUnimLabel;
    UnimLabel4: TUnimLabel;
    UnimLabel5: TUnimLabel;
    UnimLabel7: TUnimLabel;
    UnimLabel8: TUnimLabel;
    UnimButton1: TUnimButton;
    UnimBitBtn1: TUnimBitBtn;
    UnimPanel5: TUnimPanel;
    UnimLabel10: TUnimLabel;
    UnimLabel11: TUnimLabel;
    procedure UnimBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function Frm_MTicket_medio: TFrm_MTicket_medio;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Mainm;

function Frm_MTicket_medio: TFrm_MTicket_medio;
begin
  Result := TFrm_MTicket_medio(Frm_MainModule.GetFormInstance(TFrm_MTicket_medio));
end;

procedure TFrm_MTicket_medio.UnimBitBtn1Click(Sender: TObject);
begin
  Close;
end;

end.
