unit ufrTestesUnitarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TOperacao = (toSomar,toSubtrair,toMultiplicar,toDividir);

  TfrTestesUnitarios = class(TForm)
    lbValorA: TLabel;
    labQtdPalavras: TLabel;
    labValorB: TLabel;
    Shape1: TShape;
    edtValorA: TEdit;
    btnSomar: TButton;
    edtResultado: TEdit;
    btnSubtrair: TButton;
    edtValorB: TEdit;
    btnMultiplicar: TButton;
    btnDividir: TButton;
    procedure btnSomarClick(Sender: TObject);
    procedure btnSubtrairClick(Sender: TObject);
    procedure btnMultiplicarClick(Sender: TObject);
    procedure btnDividirClick(Sender: TObject);
  public
    { Public declarations }
    function RealizarOperacao(const AValorA, AValorB: Integer; AOperacao: TOperacao): Integer;
  end;

var
  frTestesUnitarios: TfrTestesUnitarios;

implementation

{$R *.dfm}

procedure TfrTestesUnitarios.btnDividirClick(Sender: TObject);
begin
  edtResultado.Text := IntToStr(RealizarOperacao(StrToIntDef(edtValorA.Text, 0), StrToIntDef(edtValorB.Text, 0), toDividir));
end;

procedure TfrTestesUnitarios.btnMultiplicarClick(Sender: TObject);
begin
  edtResultado.Text := IntToStr(RealizarOperacao(StrToIntDef(edtValorA.Text, 0), StrToIntDef(edtValorB.Text, 0), toMultiplicar));
end;

procedure TfrTestesUnitarios.btnSomarClick(Sender: TObject);
begin
  edtResultado.Text := IntToStr(RealizarOperacao(StrToIntDef(edtValorA.Text, 0), StrToIntDef(edtValorB.Text, 0), toSomar));
end;

procedure TfrTestesUnitarios.btnSubtrairClick(Sender: TObject);
begin
  edtResultado.Text := IntToStr(RealizarOperacao(StrToIntDef(edtValorA.Text, 0), StrToIntDef(edtValorB.Text, 0), toSubtrair));
end;

function TfrTestesUnitarios.RealizarOperacao(const AValorA, AValorB: Integer; AOperacao: TOperacao): Integer;
begin
  case AOperacao of
    toSomar:       Result := AValorA + AValorB;
    toSubtrair:    Result := AValorA - AValorB;
    toMultiplicar: Result := AValorA * AValorB;
    toDividir: begin
      if AValorB=0 then
        Result := 0
      else
        Result := AValorA div AValorB;
    end;
  end;
end;

end.
