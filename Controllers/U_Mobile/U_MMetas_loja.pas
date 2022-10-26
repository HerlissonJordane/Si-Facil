unit U_MMetas_loja;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniTreeView, unimNestedList, unimSegmentedButton, unimSpinner, uniEdit,
  unimEdit, unimList, uniMultiItem, unimSelect, uniLabel, unimLabel,
  uniGUIBaseClasses, unimPanel, uniTrackBar, unimSlider, uniButton, unimButton,
  uniProgressBar, uniRadioButton, unimRadio, uniBitBtn, unimBitBtn, DateUtils;

type
  TFrm_MMetas_loja = class(TUnimForm)
    UnimPanel1: TUnimPanel;
    UnimLabel2: TUnimLabel;
    UnimLabel1: TUnimLabel;
    Select_mes: TUnimSelect;
    Spinner_ano: TUnimSpinner;
    Button_buscar: TUnimButton;
    UnimPanel4: TUnimPanel;
    Label_mes_meta: TUnimLabel;
    Edit_meta: TUnimEdit;
    Edit_valor_venda: TUnimEdit;
    Label_meta_mes: TUnimLabel;
    UnimPanel2: TUnimPanel;
    Button_sair: TUnimBitBtn;
    Button_gravar: TUnimBitBtn;
    Button_alterar: TUnimButton;
    procedure Button_sairClick(Sender: TObject);
    procedure UnimFormShow(Sender: TObject);
    procedure Button_buscarClick(Sender: TObject);
    procedure Button_alterarClick(Sender: TObject);
    procedure Button_gravarClick(Sender: TObject);
  private
    function BuscaVendasMetas(data: TDate): Double;
    { Private declarations }
  public
    { Public declarations }
  end;

function Frm_MMetas_loja: TFrm_MMetas_loja;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Mainm, ServerModule;

function Frm_MMetas_loja: TFrm_MMetas_loja;
begin
  Result := TFrm_MMetas_loja(Frm_MainModule.GetFormInstance(TFrm_MMetas_loja));
end;

procedure TFrm_MMetas_loja.Button_buscarClick(Sender: TObject);
var total_vendas, meta_cadastrada: Double;
    data: String;
    valor_meta: Currency;
    percentual_meta: Integer;
begin
  if Select_mes.Text = '' then begin
    ShowMessageN('Selecione um m�s para realizar a busca.');
    Select_mes.SetFocus;
    Abort;
  end;

  UniServerModule.ADOQuery_meta.Close;
  UniServerModule.ADOQuery_meta.SQL.Clear;
  UniServerModule.ADOQuery_meta.SQL.Add('select top 1(CAST(mdt_metareal2 AS decimal(10,2)))as mdt_metareal2 from tab_mdt '+
                        'where mdt_mes = '+chr(39)+IntToStr(Select_mes.ItemIndex+1)+chr(39)+
                        ' and mdt_ano = '+chr(39)+FloatToStr(Spinner_ano.Value)+chr(39)+
                        ' and lj_id = 2020');
  UniServerModule.ADOQuery_meta.Open;

  Label_mes_meta.Caption:= 'Meta atual do m�s de '+ Select_mes.Text;

  data:= '01/'+IntToStr(Select_mes.ItemIndex+1)+'/'+FloatToStr(Spinner_ano.Value);
  total_vendas:= BuscaVendasMetas(StrToDate(data));
    if UniServerModule.ADOQuery_meta.FieldByName('mdt_metareal2').AsString = '' then begin
    Edit_meta.Text:= 'Nenhuma meta registrada para esse m�s';
    Label_meta_mes.Caption:= '';
  end else begin
    valor_meta:=  UniServerModule.ADOQuery_meta.FieldByName('mdt_metareal2').AsCurrency;
    Edit_meta.Text:= FormatCurr('R$ ###,##0.00',valor_meta);
    meta_cadastrada:= UniServerModule.ADOQuery_meta.FieldByName('mdt_metareal2').AsFloat;
    percentual_meta:= Round((valor_meta * 100) / meta_cadastrada);
    Label_meta_mes.Caption:= IntToStr(percentual_meta) + '% da meta atingida';
  end;
  Edit_valor_venda.Text:= FormatCurr('R$ ###,##0.00',total_vendas);

end;

procedure TFrm_MMetas_loja.Button_gravarClick(Sender: TObject);
begin
 // try
    Button_alterar.Enabled:= True;
    Edit_meta.ReadOnly:= True;
    Button_gravar.Enabled:= False;


    //CASO N�O TENHA NENHUMA META CADASTRADA ESSE M�S, FAZ O INSERT
//    if Label_meta.Caption = '' then begin
//      nova_meta:= StrToFloat(UniEdit_meta.Text);
//
//      ADOQuery_meta.Close;
//      ADOQuery_meta.SQL.Clear;
//      ADOQuery_meta.SQL.Add('pr_conf_meta '
//                            +chr(39)+IntToStr(ComboBox_mes.ItemIndex+1)+chr(39)+', '
//                            +chr(39)+IntToStr(SpinEdit_ano.Value)+chr(39)+', '
//                            +chr(39)+'0'+chr(39)+', '
//                            +chr(39)+FloatToStr(nova_meta)+chr(39)+', '
//                            +chr(39)+'2020'+chr(39));
//
//
//      ADOQuery_meta.ExecSQL;
//      ShowMessageN('Nova meta cadastrada com sucesso!');
//    end else begin //CASO SEJA UPDATE
//
//      UniEdit_meta.Text:=  StringReplace(UniEdit_meta.Text,'R$','',[rfReplaceAll, rfIgnoreCase]);
//      UniEdit_meta.Text:=  StringReplace(UniEdit_meta.Text,'.','',[rfReplaceAll, rfIgnoreCase]);
//      nova_meta:= StrToFloat(UniEdit_meta.Text);
//
//      ADOQuery_meta.Close;
//      ADOQuery_meta.SQL.Clear;
//      ADOQuery_meta.SQL.Add('UPDATE TAB_MDT SET mdt_metareal2 = '+chr(39)+FloatToStr(nova_meta)+chr(39)+
//                            ' WHERE mdt_mes = '+chr(39)+IntToStr(ComboBox_mes.ItemIndex+1)+chr(39)+
//                            ' AND MDT_ANO = '+chr(39)+IntToStr(SpinEdit_ano.Value)+chr(39)+
//                            ' and lj_id = 2020');
//
//      ADOQuery_meta.ExecSQL;

      ShowMessageN('Meta alterada com sucesso!');
    //end;

   // except on E: Exception do begin
      ShowMessageN('Erro ao tentar atualizar informa��es.');
      Abort;
   // end;
  //end;

  Button_buscar.Click;
end;

procedure TFrm_MMetas_loja.Button_sairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_MMetas_loja.Button_alterarClick(Sender: TObject);
begin
  if MonthOf(Date) <= Select_mes.ItemIndex+1 then begin
    //deixa alterar
    Button_alterar.Enabled:= False;
    Edit_meta.ReadOnly:= False;
    Button_gravar.Enabled:= True;
  end else begin
    ShowMessageN('N�o � permitido alterar meta de datas anteriores.');
    Abort;
  end;
end;

procedure TFrm_MMetas_loja.UnimFormShow(Sender: TObject);
begin
  Spinner_ano.Value:= YearOf(Date);
  Select_mes.ItemIndex:= MonthOf(Date)-1;

  try
    Button_buscar.Click;
  except on E: Exception do
    ShowMessage('Erro ao carregar os dados');
  end;
end;

Function TFrm_MMetas_loja.BuscaVendasMetas(data: TDate): Double;
var data_inicio, data_final: STring;
begin
  //data_inicio:= IntToStr(ano)+'-'+mes+'-'+'01';
  data_inicio:=  DateToStr(StartofTheMonth(data));
  data_final:=  DateToStr(EndofTheMonth(data));
  UniServerModule.ADOQuery_vendas.Close;
  UniServerModule.ADOQuery_vendas.SQL.Clear;
  UniServerModule.ADOQuery_vendas.SQL.Add('select cast(sum(sai_tot)as float)as total from sai_mt_cab '+
                          'where sai_dt between '+chr(39)+data_inicio+chr(39)+' and '
                          +chr(39)+ data_final+chr(39)+' and cl_canc is null');
  UniServerModule.ADOQuery_vendas.Open;
  Result:= UniServerModule.ADOQuery_vendas.FieldByName('total').AsFloat;
end;

end.
