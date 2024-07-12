object satuan: Tsatuan
  Left = 185
  Top = 78
  Width = 561
  Height = 460
  Caption = 'SATUAN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 32
    Width = 48
    Height = 19
    Caption = 'NAMA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 72
    Width = 75
    Height = 19
    Caption = 'DISKRIPSI'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 32
    Top = 360
    Width = 132
    Height = 19
    Caption = 'MASUKAN NAMA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 160
    Top = 32
    Width = 345
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 160
    Top = 72
    Width = 345
    Height = 21
    TabOrder = 1
  end
  object bt_simpan: TButton
    Left = 32
    Top = 144
    Width = 81
    Height = 33
    Caption = 'SIMPAN'
    TabOrder = 2
    OnClick = bt_simpanClick
  end
  object bt_edit: TButton
    Left = 168
    Top = 144
    Width = 81
    Height = 33
    Caption = 'EDIT'
    TabOrder = 3
    OnClick = bt_editClick
  end
  object bt_hapus: TButton
    Left = 296
    Top = 144
    Width = 81
    Height = 33
    Caption = 'HAPUS'
    TabOrder = 4
    OnClick = bt_hapusClick
  end
  object bt_batal: TButton
    Left = 424
    Top = 144
    Width = 81
    Height = 33
    Caption = 'BATAL'
    TabOrder = 5
  end
  object dbgrid1: TDBGrid
    Left = 32
    Top = 200
    Width = 473
    Height = 137
    DataSource = DataModule2.DataSource1
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = dbgrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Alignment = taCenter
        Title.Caption = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama'
        Title.Alignment = taCenter
        Title.Caption = 'NAMA'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'diskripsi'
        Title.Alignment = taCenter
        Title.Caption = 'DISKRIPSI'
        Visible = True
      end>
  end
  object Edit3: TEdit
    Left = 176
    Top = 360
    Width = 329
    Height = 21
    TabOrder = 7
  end
end
