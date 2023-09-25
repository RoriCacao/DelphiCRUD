unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Menus;


type
  TForm2 = class(TForm)
    ADOTable1: TADOTable;
    ADOTable1ID: TIntegerField;
    ADOTable1NAME: TStringField;
    ADOTable1STATUS: TStringField;
    DBGrid2: TDBGrid;
    DataSource1: TDataSource;
    Edit1: TEdit;
    Edit2: TEdit;
    StaticText1: TStaticText;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ADOQuery1: TADOQuery;
    ADOCommand1: TADOCommand;
    ADODataSet1: TADODataSet;
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses editP;

function IfNull( const Value, Default : OleVariant ) : OleVariant;
begin
  if Value = NULL then
    Result := Default
  else
    Result := Value;
end;


procedure TForm2.Button1Click(Sender: TObject);
begin
  ADOCommand1.CommandText:='INSERT INTO test1 (NAME,STATUS) VALUES (''' + Edit1.Text + ''', ''' + ifNull(Edit2.Text,'') +''')  ' ;
  ADOCommand1.Execute;
  Edit1.Clear;
  Edit2.Clear;
  DBGrid2.DataSource.DataSet.close;
  DBGrid2.DataSource.DataSet.open;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  ADOCommand1.CommandText:='DELETE FROM test1 WHERE ID = ' + DBGrid2.Fields[0].asString;
  ADOCommand1.Execute;
  DBGrid2.DataSource.DataSet.close;
  DBGrid2.DataSource.DataSet.open;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  Form3.Show;
end;


procedure TForm2.Edit1Change(Sender: TObject);
begin
  if length(Edit1.Text) > 0 then
    Button1.Enabled:= true
  else Button1.Enabled:= false;
end;

end.



