object fTarefa2: TfTarefa2
  Left = 0
  Top = 0
  Caption = 'Tarefa 2'
  ClientHeight = 345
  ClientWidth = 679
  Color = clMedGray
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
  PixelsPerInch = 96
  TextHeight = 13
  object pgDois: TProgressBar
    Left = 0
    Top = 320
    Width = 679
    Height = 25
    Align = alBottom
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 296
    Width = 679
    Height = 24
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'Progresso 2'
    TabOrder = 1
    ExplicitTop = 290
  end
  object pgUm: TProgressBar
    Left = 0
    Top = 271
    Width = 679
    Height = 25
    Align = alBottom
    TabOrder = 2
  end
  object pnUm: TPanel
    Left = 0
    Top = 247
    Width = 679
    Height = 24
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'Progresso 1'
    TabOrder = 3
    ExplicitLeft = 8
    ExplicitTop = 217
  end
  object edTempoUm: TEdit
    Left = 296
    Top = 120
    Width = 81
    Height = 21
    TabOrder = 4
    Text = '10'
  end
  object edTempoDois: TEdit
    Left = 296
    Top = 160
    Width = 81
    Height = 21
    TabOrder = 5
    Text = '20'
  end
  object btnComecar: TButton
    Left = 424
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Come'#231'ar'
    TabOrder = 6
    OnClick = btnComecarClick
  end
end
