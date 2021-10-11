unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, ExtCtrls, ComCtrls;

type
  TfMain = class(TForm)
    Panel1: TPanel;
    PaintBox: TPaintBox;
    StatusBar: TStatusBar;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    spModulo: TSpinEdit;
    Label2: TLabel;
    Label3: TLabel;
    spTable: TSpinEdit;
    cbNombres: TCheckBox;
    procedure FormPaint(Sender: TObject);
    procedure OpererChange(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
    procedure DessineTab(Max: integer);
  end;

var
  fMain: TfMain;

implementation

{$R *.dfm}
{
Const
  Table = 2;
  Max = 10;
}
var
  Vect : array[0..1000] of TPoint;

procedure TfMain.DessineTab(Max: integer);
var
  Xc,Yc,// Centre
  x,y,
  R,    // rayon
  n : integer; // compteur
  A: real;     // Angle en radian
begin
  with PaintBox, Canvas do
  begin
    // nettoyer ecran
    Brush.Color:=clYellow; //
    Brush.Style:=bsSolid; // bsClear;
    FillRect(Rect(0,0,ClientWidth,ClientHeight));

    // Dessiner cercle
    Pen.Color:=clBlue;
    Pen.Width:=2;
    Xc:=ClientWidth div 2; Yc:=ClientHeight div 2; R:=(ClientWidth div 3);
    Brush.Color := clRed;
    Brush.Style := bsClear; // bsDiagCross;
    Ellipse(Xc-R,Yc-R, Xc+R, Yc+R);

    // Dessiner Origine
    {
    Pen.Color:=clBlack;
    Pen.Width:=1;
    Moveto(Xc-5,Yc-5); Lineto(Xc+5,Yc+5);
    Moveto(Xc-5,Yc+5); Lineto(Xc+5,Yc-5);
    }

    Pen.Color:=clRed;
    Pen.Width:=4;
    Pixels[Xc,Yc]:=clRed;

    // Calculer suite points
    for n:=0 to pred(Max) do
    begin
      A:=n*2*Pi/Max-Pi/2;
      X:=trunc(Xc + R*cos(A));
      Y:=trunc(Yc + R*sin(A));
      Vect[n].X:=X;
      Vect[n].Y:=Y;

      // Dessiner Marque
      Pixels[X,Y]:=clRed;
      Moveto(X,Y); Lineto(X+1,Y+1);

      // Dessiner chiffres
      if cbNombres.Checked then
      begin
        X:=trunc(Xc + (R+20)*cos(A));
        Y:=trunc(Yc + (R+20)*sin(A));
        Font.Color:=clRed;
        TextOut(X,Y, InttoStr(n))
      end
    end;

    // Tracer segments
    Pen.Color:=clMaroon;
    Pen.Width:=1;
    for n:=1 to pred(Max) do
    begin
      with Vect[n] do Moveto(X,Y);
      with Vect[n*spTable.Value mod Max] do Lineto(X,Y);
    end;
  end;
end;

procedure TfMain.FormPaint(Sender: TObject);
begin
  DessineTab(spModulo.Value)
end;

procedure TfMain.OpererChange(Sender: TObject);
begin
  if (spModulo.Value>2) and (spModulo.Value<=500)
   then DessineTab(spModulo.Value)
end;

end.
