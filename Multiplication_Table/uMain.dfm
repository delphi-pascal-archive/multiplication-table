object fMain: TfMain
  Left = 252
  Top = 124
  Width = 593
  Height = 646
  Caption = 'La face cahee des tables de multiplication'
  Color = clYellow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnPaint = FormPaint
  OnResize = FormPaint
  PixelsPerInch = 120
  TextHeight = 20
  object PaintBox: TPaintBox
    Left = 0
    Top = 160
    Width = 585
    Height = 439
    Align = alClient
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 585
    Height = 65
    Align = alTop
    Caption = 'Hidden side of the multiplication tables'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -30
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 599
    Width = 585
    Height = 19
    Panels = <>
    SimplePanel = True
    SimpleText = 'Programme par Martin AJARD pour le site Codes-Sources'
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 65
    Width = 585
    Height = 95
    Align = alTop
    Caption = ' Parametres '
    Color = clInfoBk
    ParentColor = False
    TabOrder = 2
    object Label1: TLabel
      Left = 14
      Top = 24
      Width = 484
      Height = 20
      Caption = 
        'Amusez-vous a modifier ces valeurs: (par ex.: Table = 5, Limite ' +
        '= 500)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 14
      Top = 56
      Width = 65
      Height = 20
      Caption = 'Table de '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 172
      Top = 56
      Width = 134
      Height = 20
      Caption = 'Limite (ou modulo):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object spModulo: TSpinEdit
      Left = 320
      Top = 51
      Width = 73
      Height = 31
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxValue = 500
      MinValue = 1
      ParentFont = False
      TabOrder = 0
      Value = 10
      OnChange = OpererChange
    end
    object spTable: TSpinEdit
      Left = 84
      Top = 51
      Width = 69
      Height = 31
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxValue = 100
      MinValue = 1
      ParentFont = False
      TabOrder = 1
      Value = 2
      OnChange = OpererChange
    end
    object cbNombres: TCheckBox
      Left = 419
      Top = 55
      Width = 142
      Height = 21
      Caption = 'Nombres visibles'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 2
      OnClick = OpererChange
    end
  end
end
