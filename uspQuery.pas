unit uspQuery;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TspQuery = class(TFDQuery)
  private
    FSQL: TStringList;
    FspCondiceos: TStringList;
    FspColunas: TStringList;
    FspTabelas: TStringList;
    function GetSQL: TStringList;
  protected
    procedure SetColunas(const Value: TStringList);
    procedure SetCondicoes(const Value: TStringList);
    procedure SetTabelas(const Value: TStringList);
    procedure PreencheSQL(Value: TStringList);
  public
    procedure GerarSql;
    property spCondicoes: TStringList write SetCondicoes;
    property spColunas: TStringList write SetColunas;
    property spTabelas: TStringList write SetTabelas;
    property SQL: TStringList read GetSQL;
  published

  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('spComponentes', [TspQuery]);
end;

{ TspQuery }

procedure TspQuery.GerarSql;
begin
  FSQL := TStringList.Create;
  FSQL.Add('SELECT');
  PreencheSQL(FspColunas);
  FSQL.Add('FROM');
  PreencheSQL(FspTabelas);

  if FspCondiceos.Count > 0 then
     begin
     FSQL.Add('WHERE');
     PreencheSQL(FspCondiceos);
     end;
end;

function TspQuery.GetSQL: TStringList;
begin
   Result := FSQL;
end;

procedure TspQuery.PreencheSQL(Value: TStringList);
var
  i: Word;
begin
  for i := 0 to Value.Count - 1 do
     FSQL.Add(Value.Strings[i]);
end;

procedure TspQuery.SetColunas(const Value: TStringList);
begin
  if Value.Count <= 0 then
     raise Exception.Create('Lista de Colunas não Informado.');
  FspColunas := Value;
end;

procedure TspQuery.SetCondicoes(const Value: TStringList);
begin
  if Value.Count > 0 then
    FspCondiceos := Value;
end;

procedure TspQuery.SetTabelas(const Value: TStringList);
begin
  if Value.Count <= 0 then
     raise Exception.Create('Lista de Tabelas não Informado.');
  if Value.Count > 1 then
     raise Exception.Create('Informar apenas uma tabela.');
  FspTabelas := Value;
end;

end.
