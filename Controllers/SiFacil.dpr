{$define UNIGUI_VCL} // Comment out this line to turn this project into an ISAPI module

{$ifndef UNIGUI_VCL}
library
{$else}
program
{$endif}
  SiFacil;

uses
  uniGUIISAPI,
  Forms,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {Frm_MainModule: TUniGUIMainModule},
  Main in 'Main.pas' {MainForm: TUniForm},
  Mainm in 'Mainm.pas' {MainmForm: TUnimForm},
  U_MLogin in 'U_Mobile\U_MLogin.pas' {Frm_MLogin: TUnimLoginForm},
  U_login in 'U_desktop\U_login.pas' {Frm_login: TUniLoginForm},
  U_ranking_vendas in 'U_Mobile\U_ranking_vendas.pas' {Frm_ranking_vendas: TUnimForm},
  U_ticket_medio in 'U_desktop\U_ticket_medio.pas' {Frm_ticket_medio: TUniForm},
  U_metas_loja in 'U_desktop\U_metas_loja.pas' {Frm_metas_loja: TUniForm},
  U_MTicket_Medio in 'U_Mobile\U_MTicket_Medio.pas' {Frm_MTicket_medio: TUnimForm},
  U_MMetas_loja in 'U_Mobile\U_MMetas_loja.pas' {Frm_MMetas_loja: TUnimForm},
  U_MRanking_vendas in 'U_Mobile\U_MRanking_vendas.pas' {Frm_MRanking_vendas: TUnimForm},
  Frm_webpage in 'Frm_webpage.pas' {WebPage: TUniForm};

{$R *.res}

{$ifndef UNIGUI_VCL}
exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;
{$endif}

begin
{$ifdef UNIGUI_VCL}
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;
{$endif}
end.
