unit editP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses main;





procedure TForm3.Button1Click(Sender: TObject);
begin
  Form2.ADOCommand1.CommandText:='UPDATE test1 SET NAME = '''+ Edit2.Text +''' ,STATUS = '''+ Edit1.Text +'''  WHERE ID = ' + Form2.DBGrid2.Fields[0].asString;
  Form2.ADOCommand1.Execute;
  Form2.DBGrid2.DataSource.DataSet.close;
  Form2.DBGrid2.DataSource.DataSet.open;
  Form3.Close;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  Form3.Close;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
  Edit2.text:= Form2.DBGrid2.Fields[1].asString;
  Edit1.text:= Form2.DBGrid2.Fields[2].asString;
  Edit2.textHint:= Form2.DBGrid2.Fields[1].asString;
  Edit1.textHint:= Form2.DBGrid2.Fields[2].asString;
end;

end.
