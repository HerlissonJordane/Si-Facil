unit U_ticket_medio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniLabel, uniEdit,
  uniDBDateTimePicker, uniCalendar, uniDateTimePicker, uniButton, uniPanel;

type
  TFrm_ticket_medio = class(TUniForm)
    UniLabel1: TUniLabel;
    UniPanel1: TUniPanel;
    data_inicial: TUniDateTimePicker;
    UniLabel2: TUniLabel;
    data_final: TUniDateTimePicker;
    UniLabel3: TUniLabel;
    Button_buscar: TUniButton;
    UniContainerPanel1: TUniContainerPanel;
    ticket: TUniLabel;
    UniLabel5: TUniLabel;
    total: TUniLabel;
    UniLabel7: TUniLabel;
    vendas: TUniLabel;
    UniLabel9: TUniLabel;
    UniPanel2: TUniPanel;
    UniPanel3: TUniPanel;
    bt_sair: TUniButton;
    procedure Button_buscarClick(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure bt_sairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function Frm_ticket_medio: TFrm_ticket_medio;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, ServerModule, Main;

function Frm_ticket_medio: TFrm_ticket_medio;
begin
  Result := TFrm_ticket_medio(Frm_MainModule.GetFormInstance(TFrm_ticket_medio));
end;

procedure TFrm_ticket_medio.bt_sairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_ticket_medio.Button_buscarClick(Sender: TObject);
begin
  UniServerModule.Abre_Conexao;

  UniServerModule.ADOQuery_ticket.Close;
  UniServerModule.ADOQuery_ticket.SQL.Clear;
  UniServerModule.ADOQuery_ticket.SQL.Add('pr_rel_ticket_medio '
                                          +chr(39)+data_inicial.Text+chr(39)+', '
                                          +chr(39)+data_final.Text+chr(39));
  UniServerModule.ADOQuery_ticket.Open;

  vendas.Caption:= UniServerModule.ADOQuery_ticket.FieldByName('total').AsString;
  total.Caption:= UniServerModule.ADOQuery_ticket.FieldByName('valor').AsString;
  ticket.Caption:= UniServerModule.ADOQuery_ticket.FieldByName('ticket').AsString;

  UniServerModule.Fecha_Conexao;
end;

procedure TFrm_ticket_medio.UniFormShow(Sender: TObject);
begin
  data_inicial.DateTime:= Date;
  data_final.DateTime:= Date;
  Button_buscar.Click;
end;

end.
