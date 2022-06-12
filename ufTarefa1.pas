unit ufTarefa1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.StdCtrls, Vcl.Controls, Vcl.Forms, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uspQuery, Dialogs;

type
  TfTarefa1 = class(TForm)
    Colunas: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    mmColuna: TMemo;
    mmTabela: TMemo;
    mmCondicoes: TMemo;
    Label3: TLabel;
    mmSQL: TMemo;
    Button1: TButton;
    spQuery1: TspQuery;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
  public
    function GetStringList(Memo: TMemo): TStringList;
  end;

var
  fTarefa1: TfTarefa1;

implementation

{$R *.dfm}

procedure TfTarefa1.Button1Click(Sender: TObject);
begin
   try
     spQuery1.spColunas   := GetStringList(mmColuna);
     spQuery1.spTabelas   := GetStringList(mmTabela);
     spQuery1.spCondicoes := GetStringList(mmCondicoes);
     spQuery1.GerarSql;
     mmSQL.Lines.Text     := spQuery1.SQL.Text;
   Except on e: exception do
      begin
      ShowMessage('Não foi possível gerar o sql, ocorreu o seguinte erro: '+e.Message);
      end;
   end;
end;

procedure TfTarefa1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfTarefa1.FormCreate(Sender: TObject);
begin
  mmColuna.Lines.Clear;
  mmTabela.Lines.Clear;
  mmCondicoes.Lines.Clear;
end;

function TfTarefa1.GetStringList(Memo: TMemo): TStringList;
var
  i: Word;
  FStringList: TStringList;
begin
  FStringList := TStringList.Create;
  for i := 0 to Memo.Lines.Count - 1 do
     FStringList.Add(Memo.Lines[i]);
  Result := FStringList;
end;

end.
