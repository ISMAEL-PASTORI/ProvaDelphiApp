unit ufTarefa2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls;

const
  WM_UPDATE_PB = WM_USER;

type
  TfTarefa2 = class(TForm)
    pgDois: TProgressBar;
    Panel1: TPanel;
    pgUm: TProgressBar;
    pnUm: TPanel;
    edTempoUm: TEdit;
    edTempoDois: TEdit;
    btnComecar: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnComecarClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure WMUpdatePB(var msg: TMessage); message WM_UPDATE_PB;
  end;

var
  fTarefa2: TfTarefa2;

implementation

{$R *.dfm}

procedure UpdateFromThreadViaMessage;
var
  i: integer;
begin
  for i := 1 to 100 do begin
    Sleep(StrToIntDef(fTarefa2.edTempoUm.Text, 10));
    PostMessage(fTarefa2.Handle, WM_UPDATE_PB, i, 0);
  end;
end;

procedure UpdateFromThreadViaQueue;
var
  i: integer;
begin
  for i := 1 to 100 do begin
    Sleep(StrToIntDef(fTarefa2.edTempoDois.Text, 10));
    TThread.Queue(nil,
      procedure begin
        fTarefa2.pgDois.Position := i;
      end);
  end;
end;

procedure TfTarefa2.btnComecarClick(Sender: TObject);
begin
  TThread.CreateAnonymousThread(UpdateFromThreadViaMessage).Start;
  TThread.CreateAnonymousThread(UpdateFromThreadViaQueue).Start;
end;

procedure TfTarefa2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfTarefa2.WMUpdatePB(var msg: TMessage);
begin
  pgUm.Position := msg.WParam;
end;

end.
