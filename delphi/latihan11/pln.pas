unit pln;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  Tflatihan11 = class(TForm)
    Label1: TLabel;
    golongtarif: TRadioGroup;
    daya: TRadioGroup;
    Label2: TLabel;
    teditinput1: TEdit;
    Label3: TLabel;
    teditoutput1: TEdit;
    teditoutput2: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    teditoutput3: TEdit;
    teditoutput4: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    teditoutputhasil: TEdit;
    btn1: TButton;
    procedure golongtarifClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  flatihan11: Tflatihan11;

implementation

{$R *.dfm}

procedure Tflatihan11.btn1Click(Sender: TObject);
const biayabeban:array[0..2,0..2] of integer=(
((4500), (13500), (0)),
((4950), (18000), (39130)),
((10575), (23850), (36660))
);
const biayapemakaian:array[0..2,0..2,0..2] of integer=(
((123,265,360), (200,295,360), (0,0,0)),
((169,360,495), (275,445,495), (385,445,495)),
((254,420,470), (420,465,515), (470,473,523))
);

var
  tbiayapemakaian, tbiayabeban, ppju, total, materai, totaltagihan : real;
  pemakaian : Integer;
  blok : Integer;
begin
     tbiayabeban := biayabeban[golongtarif.ItemIndex, daya.ItemIndex];
     pemakaian := StrToInt(teditinput1.Text);
     case (pemakaian) of
      0..30 : blok := 0;
      31..60 : blok := 1;
      else blok := 2;
     end;

     tbiayapemakaian := pemakaian * biayapemakaian[golongtarif.ItemIndex, daya.ItemIndex, blok];

     ppju := (tbiayapemakaian + tbiayabeban) * 3/100;
    total := tbiayapemakaian + tbiayabeban + ppju;

    if total < 250000 then materai := 0
    else if total <= 1000000 then materai := 3000
    else materai := 6000;

    teditoutput3.Text := FormatFloat(',0', ppju);
    teditoutput1.Text := FormatFloat(',0', tbiayabeban);
    teditoutput2.Text := FormatFloat(',0', tbiayapemakaian);
    teditoutput4.Text := FormatFloat(',0', materai);
    teditoutputhasil.Text := FormatFloat(',0', total);
end;

procedure Tflatihan11.golongtarifClick(Sender: TObject);
begin
daya.Items.Clear;
case golongtarif.ItemIndex of
  0: begin
    daya.Items.Add('450');
    daya.Items.Add('900');
  end;
  1: begin
    daya.Items.Add('450');
    daya.Items.Add('900');
    daya.Items.Add('1300');
  end;
  2: begin
    daya.Items.Add('450');
    daya.Items.Add('900');
    daya.Items.Add('1300');
  end;
end;
end;

end.