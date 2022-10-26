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
    DatePicker_inicial: TUnimDatePicker;
    DatePicker_fim: TUnimDatePicker;
    UnimLabel2: TUnimLabel;
    UnimLabel3: TUnimLabel;
    Label_qtd: TUnimLabel;
    UnimLabel5: TUnimLabel;
    UnimLabel7: TUnimLabel;
    Label_ticket: TUnimLabel;
    Button_buscar: TUnimButton;
    UnimBitBtn1: TUnimBitBtn;
    UnimPanel5: TUnimPanel;
    Label_valor: TUnimLabel;
    UnimLabel11: TUnimLabel;
    procedure UnimBitBtn1Click(Sender: TObject);
    procedure Button_buscarClick(Sender: TObject);
    procedure UnimFormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function Frm_MTicket_medio: TFrm_MTicket_medio;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Mainm, ServerModule;

function Frm_MTicket_medio: TFrm_MTicket_medio;
begin
  Result := TFrm_MTicket_medio(Frm_MainModule.GetFormInstance(TFrm_MTicket_medio));
end;

procedure TFrm_MTicket_medio.UnimBitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrm_MTicket_medio.UnimFormShow(Sender: TObject);
begin
  Button_buscar.Click;
end;

procedure TFrm_MTicket_medio.Button_buscarClick(Sender: TObject);
begin
  UniServerModule.ADOQuery_ticket.Close;
  UniServerModule.ADOQuery_ticket.SQL.Clear;
  UniServerModule.ADOQuery_ticket.SQL.Add('pr_rel_ticket_medio '
                                          +chr(39)+DatePicker_inicial.Text+chr(39)+', '
                                          +chr(39)+DatePicker_fim.Text+chr(39));
  UniServerModule.ADOQuery_ticket.Open;

  Label_qtd.Caption:= UniServerModule.ADOQuery_ticket.FieldByName('total').AsString;
  Label_valor.Caption:= UniServerModule.ADOQuery_ticket.FieldByName('valor').AsString;
  Label_ticket.Caption:= UniServerModule.ADOQuery_ticket.FieldByName('ticket').AsString;
end;

end.
