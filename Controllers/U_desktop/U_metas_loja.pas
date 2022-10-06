unit U_metas_loja;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniEdit, uniCalendar, uniDateTimePicker, uniLabel,
  uniGUIBaseClasses, uniPanel, uniProgressBar, uniButton, DateUtils,
  uniMultiItem, uniListBox, uniComboBox, uniDBComboBox;

type
  TFrm_metas_loja = class(TUniForm)
    UniPanel1: TUniPanel;
    UniLabel1: TUniLabel;
    UniButton1: TUniButton;
    UniPanel2: TUniPanel;
    UniProgressBar1: TUniProgressBar;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniEdit_meta: TUniEdit;
    UniLabel4: TUniLabel;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    UniButton4: TUniButton;
    UniLabel5: TUniLabel;
    UniLabel6: TUniLabel;
    UniDBComboBox1: TUniDBComboBox;
    procedure UniButton4Click(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function Frm_metas_loja: TFrm_metas_loja;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function Frm_metas_loja: TFrm_metas_loja;
begin
  Result := TFrm_metas_loja(Frm_MainModule.GetFormInstance(TFrm_metas_loja));
end;

procedure TFrm_metas_loja.UniButton4Click(Sender: TObject);
begin
  Close;
end;

procedure TFrm_metas_loja.UniFormShow(Sender: TObject);
begin
  //UniEdit1.Text:= DateToStr(date);
  UniEdit_meta.Text:= 'R$ 150.350';
end;

end.
