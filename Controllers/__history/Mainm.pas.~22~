unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, uniLabel, unimLabel, uniToolBar, unimToolbar, uniChart,
  uniPanel, unimChart, unimPanel, uniButton, unimButton, uniTreeView,
  uniTreeMenu, unimTreeMenu, Vcl.Imaging.pngimage, uniImage, unimImage,
  uniBitBtn, unimBitBtn, uniDateTimePicker, unimDatePicker, uniDBDateTimePicker,
  unimDBDatePicker, uniTrackBar, unimSlider, Vcl.Menus, uniMainMenu,
  uniImageList, Dateutils;

type
  TMainmForm = class(TUnimForm)
    Label_loja: TUnimLabel;
    UnimPanel1: TUnimPanel;
    Button_menu: TUnimButton;
    Label_usuario: TUnimLabel;
    Button_sair: TUnimButton;
    UnimContainerPanel1: TUnimContainerPanel;
    UnimPanel2: TUnimPanel;
    UnimImage1: TUnimImage;
    Label_venda_mensal: TUnimLabel;
    UnimPanel3: TUnimPanel;
    UnimImage2: TUnimImage;
    UnimLabel4: TUnimLabel;
    UnimLabel5: TUnimLabel;
    UnimLabel6: TUnimLabel;
    UnimBitBtn1: TUnimBitBtn;
    UnimPanel4: TUnimPanel;
    UnimImage3: TUnimImage;
    UnimLabel1: TUnimLabel;
    UnimLabel3: TUnimLabel;
    DatePicker: TUnimDatePicker;
    Panel_menu: TUnimContainerPanel;
    TreeMenu: TUnimTreeMenu;
    UniMenuItems1: TUniMenuItems;
    Relatrios1: TUniMenuItem;
    icketMdio1: TUniMenuItem;
    Metas1: TUniMenuItem;
    Metasdeloja1: TUniMenuItem;
    Metasdevendedores1: TUniMenuItem;
    Produtos1: TUniMenuItem;
    UniNativeImageList1: TUniNativeImageList;
    procedure UnimFormShow(Sender: TObject);
    procedure UnimFormCreate(Sender: TObject);
    procedure Button_menuClick(Sender: TObject);
    procedure UnimPanel2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure UnimFormScreenResize(Sender: TObject; AWidth, AHeight: Integer);
    procedure UnimBitBtn1Click(Sender: TObject);
    procedure icketMdio1Click(Sender: TObject);
    procedure Metasdeloja1Click(Sender: TObject);
  private
    procedure Atualiza_dados;
    { Private declarations }
  public
    { Public declarations }
  end;

function MainmForm: TMainmForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, ServerModule, U_MLogin, U_ranking_vendas,
  U_MTicket_medio, U_MMetas_loja;

function MainmForm: TMainmForm;
begin
  Result := TMainmForm(Frm_MainModule.GetFormInstance(TMainmForm));
end;

procedure TMainmForm.Button_menuClick(Sender: TObject);
begin
  if TreeMenu.Micro then begin
    Panel_menu.Width:= MainmForm.Width;
    TreeMenu.Width:= Panel_menu.Width;
    TreeMenu.Micro:= Not(TreeMenu.Micro);
  end else begin
    TreeMenu.Micro:= Not(TreeMenu.Micro);
    Panel_menu.Width:= 0
  end;

end;

procedure TMainmForm.icketMdio1Click(Sender: TObject);
begin
  Frm_MTicket_medio.ShowModalN;
end;

procedure TMainmForm.Metasdeloja1Click(Sender: TObject);
begin
  Frm_MMetas_loja.ShowModalN;
end;

procedure TMainmForm.UnimBitBtn1Click(Sender: TObject);
begin
  Atualiza_dados;
end;

procedure TMainmForm.UnimFormCreate(Sender: TObject);
begin
  UniServerModule.carrega_dados_conexao;
  DatePicker.IconCls:= 'fa fa-calendar-o';
end;

procedure TMainmForm.UnimFormScreenResize(Sender: TObject; AWidth,
  AHeight: Integer);
begin
  Self.Scrollable:= Not(Self.Scrollable);
end;

procedure TMainmForm.UnimFormShow(Sender: TObject);
begin
  MainmForm.Label_usuario.Caption:= 'Olá, ' +UniServerModule.usuario_conectado;
  Label_loja.Caption:= UniServerModule.loja_logada;
  DatePicker.date:= Date;
  //Button_data_vendas.Caption:= DateToStr(Date);
  Atualiza_dados;
  Panel_menu.Width:= 0;
end;

procedure TMainmForm.UnimPanel2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Button_menuClick(Self);
end;

PRocedure TMainmForm.Atualiza_dados();
var dados: Integer;
    data_inicial, data_final: String;
begin
  data_inicial:= DateToStr(StartofTheMonth(DatePicker.Date));
  //data_final:=  DateToStr(EndofTheMonth(UniDateTimePicker1.DateTime));
  data_final:=  DateToStr(DatePicker.Date);
  UniServerModule.ADOConnection1.Connected:= True;

  UniServerModule.ADOConnection1.Connected:= True;

  //pega o total de vandas do dia
  UniServerModule.ADOQuery_dados.Close;
  UniServerModule.ADOQuery_dados.SQL.Clear;
  UniServerModule.ADOQuery_dados.SQL.Add('select cast(sum(sai_tot)as float)as venda from sai_mt_cab where sai_dt = '+chr(39)+DatePicker.text+chr(39)+' and cl_canc is null');
  UniServerModule.ADOQuery_dados.Open;

  UnimLabel4.Caption:= FormatCurr('R$ ###,##0.00',UniServerModule.ADOQuery_dados.FieldByName('venda').AsCurrency);

  //pega o valor de venda mensal
  UniServerModule.ADOQuery_dados.Close;
  UniServerModule.ADOQuery_dados.SQL.Clear;
  UniServerModule.ADOQuery_dados.SQL.Add('select cast(sum(sai_tot)as float)as total from sai_mt_cab '+
                                          'where sai_dt between '+chr(39)+data_inicial+chr(39)+' and '
                                          +chr(39)+DatePicker.text+chr(39)+' and cl_canc is null');
  UniServerModule.ADOQuery_dados.Open;
  Label_venda_mensal.Caption:=  FormatCurr('R$ ###,##0.00',UniServerModule.ADOQuery_dados.FieldByName('total').AsCurrency);
  UniServerModule.ADOConnection1.Connected:= False;
end;

  //Frm_ranking_vendas:= TFrm_ranking_vendas.CreateFormInstance(Self,true);
  //Frm_ranking_vendas.ShowModalN;

initialization
  RegisterAppFormClass(TMainmForm);
  ReportMemoryLeaksOnShutDown:= True;

end.
