object FrmProvaDelphiApp: TFrmProvaDelphiApp
  Left = 0
  Top = 0
  Caption = 'Prova Delphi App'
  ClientHeight = 386
  ClientWidth = 705
  Color = clMedGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = mmMenu
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object mmMenu: TMainMenu
    Left = 80
    Top = 56
    object arefas1: TMenuItem
      Caption = 'Tarefas'
      object Tarefa11: TMenuItem
        Action = acTarefa1
      end
      object arefa21: TMenuItem
        Action = acTarefa2
      end
      object arefa31: TMenuItem
        Action = acTarefa3
      end
    end
  end
  object acMenu: TActionList
    Left = 120
    Top = 56
    object acTarefa1: TAction
      Category = 'Tarefas'
      Caption = 'Tarefa 1'
      OnExecute = acTarefa1Execute
    end
    object acTarefa2: TAction
      Category = 'Tarefas'
      Caption = 'Tarefa 2'
      OnExecute = acTarefa2Execute
    end
    object acTarefa3: TAction
      Category = 'Tarefas'
      Caption = 'Tarefa 3'
      OnExecute = acTarefa3Execute
    end
  end
end
