{
 Ce programme a pour but de montrer "la face cach�e des tables de multiplication"
 telle que pr�sent�e dans la vid�o de Micka�l Launay :
 https://www.youtube.com/watch?v=-X49VQgi86E

 Les param�tres r�glables permettent de voir des figures sorties de nulle part.
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
