unit ufTarefa3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfTarefa3 = class(TForm)
    Label1: TLabel;
    gdProjeto: TDBGrid;
    edObterTotal: TEdit;
    edTotalDiv: TEdit;
    btnObterTotal: TButton;
    btnObterTotalDivis: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnObterTotalClick(Sender: TObject);
    procedure btnObterTotalDivisClick(Sender: TObject);
  private
    FDataProjeto: TClientDataSet;
    FDataSource: TDataSource;
  public
    procedure CriarDataSet;
    procedure PopularDataSet;
    procedure ObterTotal;
    function ObterDivisao(Valor: Double): Double;
    property DataSetProjeto: TClientDataSet read FDataProjeto;
    property DataSourceProjeto: TDataSource read FDataSource;
  end;

var
  fTarefa3: TfTarefa3;

implementation

{$R *.dfm}

procedure TfTarefa3.btnObterTotalClick(Sender: TObject);
begin
   ObterTotal;
end;

procedure TfTarefa3.btnObterTotalDivisClick(Sender: TObject);
begin
  FDataProjeto.First;
  edTotalDiv.Text := FormatFloat('R$ #,##0.00', ObterDivisao(FDataProjeto.Fields[2].AsFloat));
end;

function TfTarefa3.ObterDivisao(Valor: Double): Double;
begin
   FDataProjeto.Next;
   if not FDataProjeto.eof then
      begin
      Result := FDataProjeto.Fields[2].AsFloat / Valor ;
      Result := Result + ObterDivisao(FDataProjeto.Fields[2].AsFloat);
      end;
end;

procedure TfTarefa3.CriarDataSet;
begin
  FDataProjeto := TClientDataSet.Create(Self);
  FDataProjeto.FieldDefs.Clear;
  FDataProjeto.FieldDefs.Add('idPrjeto', ftInteger);
  FDataProjeto.FieldDefs.Add('NomeProjeto', ftString, 150);
  FDataProjeto.FieldDefs.Add('Valor', ftFloat);
  FDataProjeto.CreateDataSet;
  TFloatField(FDataProjeto.Fields[2]).currency := True;

  FDataSource := TDataSource.Create(Self);
  FDataSource.DataSet := FDataProjeto;

  gdProjeto.DataSource := FDataSource;
  gdProjeto.Columns[0].FieldName := FDataProjeto.Fields[0].FieldName;
  gdProjeto.Columns[1].FieldName := FDataProjeto.Fields[1].FieldName;
  gdProjeto.Columns[2].FieldName := FDataProjeto.Fields[2].FieldName;
end;

procedure TfTarefa3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FDataProjeto);
  FreeAndNil(FDataSource);
  Action := caFree;
end;

procedure TfTarefa3.FormCreate(Sender: TObject);
begin
  CriarDataSet;
  PopularDataSet;
end;

procedure TfTarefa3.ObterTotal;
var
   Total: Double;
begin
   Total := 0;
   FDataProjeto.DisableControls;
   FDataProjeto.First;
   while not FDataProjeto.eof do
      begin
      Total := Total + FDataProjeto.Fields[2].AsFloat;
      FDataProjeto.Next;
      end;
   FDataProjeto.EnableControls;
   edObterTotal.Text := FormatFloat('R$ #,##0.00', Total);
end;

procedure TfTarefa3.PopularDataSet;
var
   I: Byte;
begin

   for I := 1 to 10 do
     begin
     FDataProjeto.Append;
     FDataProjeto.Fields[0].Value := I;
     FDataProjeto.Fields[1].Value := 'Eescrição do Projeto '+IntToStr(I);
     FDataProjeto.Fields[2].Value := I*10;
     FDataProjeto.Post;
     end;

end;

end.
