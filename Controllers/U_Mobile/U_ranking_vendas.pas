unit U_ranking_vendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  Vcl.Imaging.pngimage, uniImage, unimImage, uniLabel, unimLabel,
  uniGUIBaseClasses, unimPanel;

type
  TFrm_ranking_vendas = class(TUnimForm)
    UnimPanel1: TUnimPanel;
    UnimLabel1: TUnimLabel;
    UnimLabel2: TUnimLabel;
    UnimLabel3: TUnimLabel;
    UnimImage1: TUnimImage;
    UnimLabel4: TUnimLabel;
    UnimLabel5: TUnimLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uniGUIApplication, MainModule, Mainm;

{$R *.dfm}


end.
