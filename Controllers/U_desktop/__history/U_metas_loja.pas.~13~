unit U_metas_loja;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniEdit, uniCalendar, uniDateTimePicker, uniLabel,
  uniGUIBaseClasses, uniPanel, uniProgressBar, uniButton, DateUtils,
  uniMultiItem, uniListBox, uniComboBox, uniDBComboBox, uniSpinEdit, Data.DB,
  Data.Win.ADODB;

type
  TFrm_metas_loja = class(TUniForm)
    UniPanel1: TUniPanel;
    UniLabel1: TUniLabel;
    Button_buscar: TUniButton;
    UniPanel2: TUniPanel;
    ProgressBar_meta: TUniProgressBar;
    UniLabel2: TUniLabel;
    UniEdit_meta: TUniEdit;
    UniLabel4: TUniLabel;
    Button_alterar: TUniButton;
    Button_gravar: TUniButton;
    UniButton4: TUniButton;
    UniLabel5: TUniLabel;
    Label_total: TUniLabel;
    ComboBox_mes: TUniComboBox;
    SpinEdit_ano: TUniSpinEdit;
    ADOQuery_meta: TADOQuery;
    ADOQuery_vendas: TADOQuery;
    Label_meta: TUniLabel;
    procedure UniButton4Click(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure Button_buscarClick(Sender: TObject);
    procedure Button_alterarClick(Sender: TObject);
    procedure Button_gravarClick(Sender: TObject);
  private
    function BuscaVendasMetas(data: TDate): Double;
    { Private declarations }
  public
    { Public declarations }
  end;

function Frm_metas_loja: TFrm_metas_loja;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, ServerModule;

function Frm_metas_loja: TFrm_metas_loja;
begin
  Result := TFrm_metas_loja(Frm_MainModule.GetFormInstance(TFrm_metas_loja));
end;

procedure TFrm_metas_loja.Button_buscarClick(Sender: TObject);
var total_vendas: Double;
    data: String;
    valor_meta: Currency;
begin
  if ComboBox_mes.Text = '' then begin
    ShowMessageN('Selecione um mês para realizar a busca.');
    ComboBox_mes.SetFocus;
    Abort;
  end;

  ADOQuery_meta.Close;
  ADOQuery_meta.SQL.Clear;
  ADOQuery_meta.SQL.Add('select top 1(CAST(mdt_metareal2 AS decimal(10,2)))as mdt_metareal2 from tab_mdt '+
                        'where mdt_mes = '+chr(39)+IntToStr(ComboBox_mes.ItemIndex+1)+chr(39)+
                        ' and mdt_ano = '+chr(39)+IntToStr(SpinEdit_ano.Value)+chr(39)+
                        ' and lj_id = 2020');
  ADOQuery_meta.Open;

  UniLabel2.Caption:= 'Meta atual do mês de '+ ComboBox_mes.Text;


  data:= '01/'+IntToStr(ComboBox_mes.ItemIndex+1)+'/'+IntToStr(SpinEdit_ano.Value);
  total_vendas:= BuscaVendasMetas(StrToDate(data));

  if ADOQuery_meta.FieldByName('mdt_metareal2').AsString = '' then begin
    UniEdit_meta.Text:= 'Nenhuma meta registrada para esse mês';
    ProgressBar_meta.Max:=0;
    ProgressBar_meta.Position:= 0;
    ProgressBar_meta.Text:= 'Sem meta cadastrada nesse mês';
    Label_meta.Caption:= '';
  end else begin
    valor_meta:=  ADOQuery_meta.FieldByName('mdt_metareal2').AsCurrency;
    UniEdit_meta.Text:= FormatCurr('R$ ###,##0.00',valor_meta);
    ProgressBar_meta.Max:= Round(ADOQuery_meta.FieldByName('mdt_metareal2').AsInteger);
    ProgressBar_meta.Position:=  Round(total_vendas);
    Label_meta.Caption:= UniEdit_meta.Text;
  end;
  Label_total.Caption:= FormatCurr('R$ ###,##0.00',total_vendas);

end;

procedure TFrm_metas_loja.Button_gravarClick(Sender: TObject);
var nova_meta: Double;
begin
  try
    Button_alterar.Enabled:= True;
    UniEdit_meta.ReadOnly:= True;
    Button_gravar.Enabled:= False;


    //CASO NÃO TENHA NENHUMA META CADASTRADA ESSE MÊS, FAZ O INSERT
    if Label_meta.Caption = '' then begin
      nova_meta:= StrToFloat(UniEdit_meta.Text);

      ADOQuery_meta.Close;
      ADOQuery_meta.SQL.Clear;
      ADOQuery_meta.SQL.Add('pr_conf_meta '
                            +chr(39)+IntToStr(ComboBox_mes.ItemIndex+1)+chr(39)+', '
                            +chr(39)+IntToStr(SpinEdit_ano.Value)+chr(39)+', '
                            +chr(39)+'0'+chr(39)+', '
                            +chr(39)+FloatToStr(nova_meta)+chr(39)+', '
                            +chr(39)+'2020'+chr(39));


      ADOQuery_meta.ExecSQL;
      ShowMessageN('Nova meta cadastrada com sucesso!');
    end else begin //CASO SEJA UPDATE

      UniEdit_meta.Text:=  StringReplace(UniEdit_meta.Text,'R$','',[rfReplaceAll, rfIgnoreCase]);
      UniEdit_meta.Text:=  StringReplace(UniEdit_meta.Text,'.','',[rfReplaceAll, rfIgnoreCase]);
      nova_meta:= StrToFloat(UniEdit_meta.Text);

      ADOQuery_meta.Close;
      ADOQuery_meta.SQL.Clear;
      ADOQuery_meta.SQL.Add('UPDATE TAB_MDT SET mdt_metareal2 = '+chr(39)+FloatToStr(nova_meta)+chr(39)+
                            ' WHERE mdt_mes = '+chr(39)+IntToStr(ComboBox_mes.ItemIndex+1)+chr(39)+
                            ' AND MDT_ANO = '+chr(39)+IntToStr(SpinEdit_ano.Value)+chr(39)+
                            ' and lj_id = 2020');

      ADOQuery_meta.ExecSQL;

      ShowMessageN('Meta alterada com sucesso!');
    end;

    except on E: Exception do begin
      ShowMessageN('Erro ao tentar atualizar informações.');
      Abort;
    end;
  end;

  Button_buscar.Click;

end;

procedure TFrm_metas_loja.Button_alterarClick(Sender: TObject);
begin
  if MonthOf(Date) <= ComboBox_mes.ItemIndex+1 then begin
    //deixa alterar
    Button_alterar.Enabled:= False;
    UniEdit_meta.ReadOnly:= False;
    Button_gravar.Enabled:= True;
  end else begin
    ShowMessageN('Não é permitido alterar meta de datas anteriores.');
    Abort;
  end;
end;

procedure TFrm_metas_loja.UniButton4Click(Sender: TObject);
begin
  Close;
end;

procedure TFrm_metas_loja.UniFormShow(Sender: TObject);
begin

  ComboBox_mes.ItemIndex:= MonthOf(Date)-1;
  SpinEdit_ano.Value:= YearOf(Date);

  try
    Button_buscar.Click;
  except on E: Exception do
    ShowMessage('Erro ao carregar os dados');
  end;
end;

function TFrm_metas_loja.BuscaVendasMetas(data: TDate): Double;
var data_inicio, data_final: STring;
begin

  //data_inicio:= IntToStr(ano)+'-'+mes+'-'+'01';
  data_inicio:=  DateToStr(StartofTheMonth(data));
  data_final:=  DateToStr(EndofTheMonth(data));
  ADOQuery_vendas.Close;
  ADOQuery_vendas.SQL.Clear;
  ADOQuery_vendas.SQL.Add('select cast(sum(sai_tot)as float)as total from sai_mt_cab '+
                          'where sai_dt between '+chr(39)+data_inicio+chr(39)+' and '
                          +chr(39)+ data_final+chr(39)+' and cl_canc is null');
  ADOQuery_vendas.Open;
  Result:= ADOQuery_vendas.FieldByName('total').AsFloat;
end;

end.
