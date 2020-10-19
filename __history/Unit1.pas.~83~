unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Menus;

type
  Tform_principal = class(TForm)
    edit_visor: TEdit;
    btn_9: TSpeedButton;
    btn_8: TSpeedButton;
    btn_7: TSpeedButton;
    btn_3: TSpeedButton;
    btn_2: TSpeedButton;
    btn_1: TSpeedButton;
    btn_6: TSpeedButton;
    btn_5: TSpeedButton;
    btn_4: TSpeedButton;
    btn_0: TSpeedButton;
    btn_div: TSpeedButton;
    btn_mult: TSpeedButton;
    btn_adicao: TSpeedButton;
    btn_sub: TSpeedButton;
    btn_c: TSpeedButton;
    btn_ok: TSpeedButton;
    MainMenu1: TMainMenu;
    Opes1: TMenuItem;
    menu_item_historico: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    procedure btn_0Click(Sender: TObject);
    procedure btn_1Click(Sender: TObject);
    procedure btn_2Click(Sender: TObject);
    procedure btn_3Click(Sender: TObject);
    procedure btn_4Click(Sender: TObject);
    procedure btn_5Click(Sender: TObject);
    procedure btn_6Click(Sender: TObject);
    procedure btn_7Click(Sender: TObject);
    procedure btn_8Click(Sender: TObject);
    procedure btn_9Click(Sender: TObject);
    procedure btn_cClick(Sender: TObject);
    procedure btn_divClick(Sender: TObject);
    procedure btn_multClick(Sender: TObject);
    procedure btn_adicaoClick(Sender: TObject);
    procedure btn_subClick(Sender: TObject);
    procedure btn_okClick(Sender: TObject);
    procedure menu_item_historicoClick(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_principal: Tform_principal;
  valor : double = 0;
  valor2 : double = 0;
  operacao : string;

function
   ajustar_valores(Sender: TObject; edit_visor : TEdit):string;
function
   ajustar_operacao(Sender: TObject; edit_visor : TEdit; op : char):string;
function
    resultado(op: char):double;

implementation

{$R *.dfm}

uses Unit2;

function resultado(op: char):double;
var results : double;
begin
    results := 0;
    case op of
    '+': results := valor + valor2;
    '-': results := valor - valor2;
    '*': results := valor * valor2;
    '/':
    begin
      if (valor = 0) or (valor2 = 0) then
      begin
        results := 0;
      end
      else
      begin
        results := valor / valor2;
      end;
    end;
    end;
    resultado := results;
end;

function ajustar_valores(Sender: TObject; edit_visor : TEdit):string;
begin
  edit_visor.Text := edit_visor.Text + TSpeedButton(Sender).caption;
  if(operacao <> '')  then
  begin
    valor2 := strToFloat(edit_visor.Text);
  end
  else
  begin
      valor := strToFloat(edit_visor.Text);
  end;

  ajustar_valores := '';
end;

function
  ajustar_operacao(Sender: TObject; edit_visor : TEdit; op : char):string;
begin
  if(operacao <> '')  then
  begin
    form_historico.memo_historico.Lines.Add(floatToStr(valor) + operacao
      + floatToStr(valor2) + ' = ' + floatToStr(resultado(operacao[1])));
    valor := resultado(operacao[1]);
    edit_visor.Text := floatToStr(valor);
    operacao := '';
  end
  else
  begin
    operacao := op;
    edit_visor.Clear;
  end;
  ajustar_operacao := '';
end;

procedure Tform_principal.btn_0Click(Sender: TObject);
begin
  ajustar_valores(Sender, edit_visor);
end;

procedure Tform_principal.btn_1Click(Sender: TObject);
begin
  ajustar_valores(Sender, edit_visor);
end;

procedure Tform_principal.btn_2Click(Sender: TObject);
begin
  ajustar_valores(Sender, edit_visor);
end;

procedure Tform_principal.btn_3Click(Sender: TObject);
begin
  ajustar_valores(Sender, edit_visor);
end;

procedure Tform_principal.btn_4Click(Sender: TObject);
begin
  ajustar_valores(Sender, edit_visor);
end;

procedure Tform_principal.btn_5Click(Sender: TObject);
begin
  ajustar_valores(Sender, edit_visor);
end;

procedure Tform_principal.btn_6Click(Sender: TObject);
begin
  ajustar_valores(Sender, edit_visor);
end;

procedure Tform_principal.btn_7Click(Sender: TObject);
begin
  ajustar_valores(Sender, edit_visor);
end;

procedure Tform_principal.btn_8Click(Sender: TObject);
begin
  ajustar_valores(Sender, edit_visor);
end;

procedure Tform_principal.btn_9Click(Sender: TObject);
begin
  ajustar_valores(Sender, edit_visor);
end;

procedure Tform_principal.btn_cClick(Sender: TObject);
begin
  edit_visor.clear;
  valor := 0;
  valor2 := 0;
  operacao := '';
end;

procedure Tform_principal.btn_divClick(Sender: TObject);
  var op : char;
begin
  op := '/';
  ajustar_operacao(Sender, edit_visor, op);
end;

procedure Tform_principal.btn_adicaoClick(Sender: TObject);
  var op : char;
begin
  op := '+';
  ajustar_operacao(Sender, edit_visor, op);
end;

procedure Tform_principal.btn_multClick(Sender: TObject);
  var op : char;
begin
  op := '*';
  ajustar_operacao(Sender, edit_visor, op);
end;

procedure Tform_principal.btn_okClick(Sender: TObject);
begin
  if(operacao <> '') then
  begin
    form_historico.memo_historico.Lines.Add(floatToStr(valor) + operacao
      + floatToStr(valor2) + ' = ' + floatToStr(resultado(operacao[1])));
    valor := resultado(operacao[1]);
    edit_visor.Text := floatToStr(valor);
    operacao := '';
  end;
end;

procedure Tform_principal.btn_subClick(Sender: TObject);
  var op : char;
begin
  op := '-';
  ajustar_operacao(Sender, edit_visor, op);
end;

procedure Tform_principal.menu_item_historicoClick(Sender: TObject);
begin
  form_historico.ShowModal;
end;

procedure Tform_principal.Sair1Click(Sender: TObject);
begin
  form_principal.Close;
end;

end.
