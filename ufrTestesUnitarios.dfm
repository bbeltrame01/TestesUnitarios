object frTestesUnitarios: TfrTestesUnitarios
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frTestesUnitarios'
  ClientHeight = 161
  ClientWidth = 352
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object lbValorA: TLabel
    Left = 24
    Top = 16
    Width = 37
    Height = 15
    Caption = 'Valor A'
  end
  object labQtdPalavras: TLabel
    Left = 24
    Top = 107
    Width = 124
    Height = 15
    Caption = 'Quantidade de Palavras'
  end
  object labValorB: TLabel
    Left = 221
    Top = 18
    Width = 36
    Height = 15
    Caption = 'Valor B'
  end
  object Shape1: TShape
    Left = 24
    Top = 99
    Width = 318
    Height = 2
  end
  object edtValorA: TEdit
    Left = 24
    Top = 37
    Width = 121
    Height = 23
    NumbersOnly = True
    TabOrder = 0
  end
  object btnSomar: TButton
    Left = 24
    Top = 68
    Width = 75
    Height = 25
    Caption = 'Somar'
    TabOrder = 2
    OnClick = btnSomarClick
  end
  object edtResultado: TEdit
    Left = 24
    Top = 128
    Width = 121
    Height = 23
    ReadOnly = True
    TabOrder = 6
  end
  object btnSubtrair: TButton
    Left = 105
    Top = 68
    Width = 75
    Height = 25
    Caption = 'Subtrair'
    TabOrder = 3
    OnClick = btnSubtrairClick
  end
  object edtValorB: TEdit
    Left = 221
    Top = 39
    Width = 121
    Height = 23
    NumbersOnly = True
    TabOrder = 1
  end
  object btnMultiplicar: TButton
    Left = 186
    Top = 68
    Width = 75
    Height = 25
    Caption = 'Multiplicar'
    TabOrder = 4
    OnClick = btnMultiplicarClick
  end
  object btnDividir: TButton
    Left = 267
    Top = 68
    Width = 75
    Height = 25
    Caption = 'Dividir'
    TabOrder = 5
    OnClick = btnDividirClick
  end
end
