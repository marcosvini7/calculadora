unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  Tform_historico = class(TForm)
    memo_historico: TMemo;
    btn_limpar: TSpeedButton;
    procedure btn_limparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_historico: Tform_historico;

implementation

{$R *.dfm}

procedure Tform_historico.btn_limparClick(Sender: TObject);
begin
  memo_historico.Clear;
end;

end.
