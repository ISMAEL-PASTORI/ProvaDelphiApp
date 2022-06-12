object fTarefa1: TfTarefa1
  Left = 0
  Top = 0
  Caption = 'Tarefa 1'
  ClientHeight = 401
  ClientWidth = 729
  Color = clAppWorkSpace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Colunas: TLabel
    Left = 32
    Top = 32
    Width = 45
    Height = 16
    Caption = 'Colunas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 224
    Top = 32
    Width = 39
    Height = 16
    Caption = 'Tabela'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 416
    Top = 32
    Width = 58
    Height = 16
    Caption = 'Condi'#231#245'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 32
    Top = 248
    Width = 68
    Height = 16
    Caption = 'SQL Gerado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object mmColuna: TMemo
    Left = 32
    Top = 54
    Width = 145
    Height = 147
    TabOrder = 0
  end
  object mmTabela: TMemo
    Left = 224
    Top = 54
    Width = 145
    Height = 147
    Lines.Strings = (
      '')
    TabOrder = 1
  end
  object mmCondicoes: TMemo
    Left = 416
    Top = 54
    Width = 145
    Height = 147
    Lines.Strings = (
      '')
    TabOrder = 2
  end
  object mmSQL: TMemo
    Left = 32
    Top = 270
    Width = 689
    Height = 124
    TabOrder = 3
  end
  object Button1: TButton
    Left = 600
    Top = 112
    Width = 89
    Height = 25
    Caption = 'Gerar SQL'
    TabOrder = 4
    OnClick = Button1Click
  end
  object spQuery1: TspQuery
    Left = 648
    Top = 184
  end
end
