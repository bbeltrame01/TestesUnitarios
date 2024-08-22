program TestesUnitarios;

uses
  Vcl.Forms,
  ufrTestesUnitarios in 'ufrTestesUnitarios.pas' {frTestesUnitarios};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrTestesUnitarios, frTestesUnitarios);
  Application.Run;
end.
