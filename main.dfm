object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'MainForm'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object DBGrid2: TDBGrid
    Left = 8
    Top = 88
    Width = 612
    Height = 272
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUS'
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 8
    Top = 48
    Width = 121
    Height = 23
    TabOrder = 1
    TextHint = #1048#1084#1103
    OnChange = Edit1Change
  end
  object Edit2: TEdit
    Left = 135
    Top = 48
    Width = 121
    Height = 23
    TabOrder = 2
    TextHint = #1057#1090#1072#1090#1091#1089
  end
  object StaticText1: TStaticText
    Left = 8
    Top = 23
    Width = 126
    Height = 19
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1072
    TabOrder = 3
  end
  object Button1: TButton
    Left = 262
    Top = 47
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    Enabled = False
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 366
    Width = 75
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 104
    Top = 366
    Width = 89
    Height = 25
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 6
    OnClick = Button3Click
  end
  object ADOTable1: TADOTable
    Active = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=123456;Persist Security Info=True;U' +
      'ser ID=st1;Initial Catalog=testDB;Data Source=User-PC;Use Proced' +
      'ure for Prepare=1;Auto Translate=True;Packet Size=4096;Workstati' +
      'on ID=USER-PC;Use Encryption for Data=False;Tag with column coll' +
      'ation when possible=False'
    CursorType = ctStatic
    TableDirect = True
    TableName = 'test1'
    Left = 544
    Top = 40
    object ADOTable1ID: TIntegerField
      DisplayWidth = 4
      FieldName = 'ID'
    end
    object ADOTable1NAME: TStringField
      DisplayWidth = 39
      FieldName = 'NAME'
      Size = 50
    end
    object ADOTable1STATUS: TStringField
      DisplayWidth = 50
      FieldName = 'STATUS'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 544
    Top = 120
  end
  object ADOQuery1: TADOQuery
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=123456;Persist Security Info=True;U' +
      'ser ID=st1;Initial Catalog=testDB;Data Source=USER-PC'
    DataSource = DataSource1
    Parameters = <>
    Left = 344
    Top = 120
  end
  object ADOCommand1: TADOCommand
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=123456;Persist Security Info=True;U' +
      'ser ID=st1;Initial Catalog=testDB;Data Source=USER-PC'
    Parameters = <>
    Left = 440
    Top = 120
  end
  object ADODataSet1: TADODataSet
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=123456;Persist Security Info=True;U' +
      'ser ID=st1;Initial Catalog=testDB;Data Source=USER-PC'
    DataSource = DataSource1
    Parameters = <>
    Left = 528
    Top = 376
  end
end
