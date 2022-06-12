object fTarefa3: TfTarefa3
  Left = 0
  Top = 0
  Caption = 'Tarefa 3'
  ClientHeight = 369
  ClientWidth = 666
  Color = clBtnFace
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
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 96
    Height = 13
    Caption = 'Valores por Projeto:'
  end
  object TLabel
    Left = 512
    Top = 268
    Width = 40
    Height = 13
    Caption = 'Total R$'
  end
  object TLabel
    Left = 512
    Top = 319
    Width = 81
    Height = 13
    Caption = 'Total divis'#245'es R$'
  end
  object gdProjeto: TDBGrid
    Left = 24
    Top = 43
    Width = 609
    Height = 219
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        Title.Caption = 'idProjeto'
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'NomeProjeto'
        Width = 223
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Valor'
        Width = 66
        Visible = True
      end>
  end
  object edObterTotal: TEdit
    Left = 512
    Top = 282
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edTotalDiv: TEdit
    Left = 512
    Top = 333
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object btnObterTotal: TButton
    Left = 376
    Top = 280
    Width = 121
    Height = 25
    Caption = 'Obter Total'
    TabOrder = 3
    OnClick = btnObterTotalClick
  end
  object btnObterTotalDivis: TButton
    Left = 376
    Top = 331
    Width = 121
    Height = 25
    Caption = 'Obter Total Divis'#245'es'
    TabOrder = 4
    OnClick = btnObterTotalDivisClick
  end
end
