program CRUD;

uses
  Vcl.Forms,
  main in 'main.pas' {Form2},
  editP in 'editP.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
