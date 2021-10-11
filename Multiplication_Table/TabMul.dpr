{
 Ce programme a pour but de montrer "la face cachée des tables de multiplication"
 telle que présentée dans la vidéo de Mickaël Launay :
 https://www.youtube.com/watch?v=-X49VQgi86E

 Les paramètres réglables permettent de voir des figures sorties de nulle part.
}

program TabMul;

uses
  Forms,
  uMain in 'uMain.pas' {fMain};

{$R *.res}


begin
  Application.Initialize;
  Application.CreateForm(TfMain, fMain);
  Application.Run;
end.
