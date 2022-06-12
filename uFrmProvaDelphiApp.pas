unit uFrmProvaDelphiApp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList, Vcl.Menus,
  ufTarefa1, ufTarefa2, ufTarefa3;

type
  TFrmProvaDelphiApp = class(TForm)
    mmMenu: TMainMenu;
    acMenu: TActionList;
    acTarefa1: TAction;
    acTarefa2: TAction;
    arefas1: TMenuItem;
    Tarefa11: TMenuItem;
    arefa21: TMenuItem;
    acTarefa3: TAction;
    arefa31: TMenuItem;
    procedure acTarefa1Execute(Sender: TObject);
    procedure acTarefa2Execute(Sender: TObject);
    procedure acTarefa3Execute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
  public
  end;

var
  FrmProvaDelphiApp: TFrmProvaDelphiApp;

implementation

{$R *.dfm}

procedure TFrmProvaDelphiApp.acTarefa1Execute(Sender: TObject);
begin
   fTarefa1 := TfTarefa1.Create(Application);
   fTarefa1.Show;
end;

procedure TFrmProvaDelphiApp.acTarefa2Execute(Sender: TObject);
begin
   fTarefa2 := TfTarefa2.Create(Application);
   fTarefa2.Show;
end;

procedure TFrmProvaDelphiApp.acTarefa3Execute(Sender: TObject);
begin
   fTarefa3 := TfTarefa3.Create(Application);
   fTarefa3.Show;
end;

procedure TFrmProvaDelphiApp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
end;



end.
