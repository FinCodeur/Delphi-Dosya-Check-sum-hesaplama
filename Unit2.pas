unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    GroupBox1: TGroupBox;
    dosya_adi: TEdit;
    hash_adi: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    kontrol: TButton;
    GroupBox2: TGroupBox;
    Dosya_md5: TEdit;
    Label3: TLabel;
    Hash_md5: TEdit;
    Label8: TLabel;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Dosya_Sha1: TEdit;
    Hash_sha1: TEdit;
    GroupBox4: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Dosya_sha256: TEdit;
    hash_sha256: TEdit;
    GroupBox5: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Dosya_Sha384: TEdit;
    hash_sha384: TEdit;
    GroupBox6: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    Dosya_sha512: TEdit;
    Hash_sha512: TEdit;
    sha1_onay: TShape;
    md5_onay: TShape;
    sha256_onay: TShape;
    sha384_onay: TShape;
    sha512_onay: TShape;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure kontrolClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Unit1;

procedure temizle;
begin
Form2.md5_onay.Brush.Color := clwhite;
Form2.sha1_onay.Brush.Color := clwhite;
Form2.sha256_onay.Brush.Color := clwhite;
Form2.sha384_onay.Brush.Color := clwhite;
Form2.sha512_onay.Brush.Color := clwhite;

form2.Dosya_md5.Clear;
form2.Hash_md5.Clear;

form2.Dosya_sha1.Clear;
form2.Hash_sha1.Clear;

form2.Dosya_sha256.Clear;
form2.Hash_sha256.Clear;

form2.Dosya_sha384.Clear;
form2.Hash_sha384.Clear;

form2.Dosya_sha512.Clear;
form2.Hash_sha512.Clear;

end;

procedure TForm2.Button1Click(Sender: TObject);
begin
Form1.OpenDialog1.Filter := 'Tum Dosyalar (*.*)|*.*';
Form1.OpenDialog1.FileName :='';
if Form1.OpenDialog1.Execute = True then
  begin
  dosya_adi.text := Form1.OpenDialog1.FileName;
  temizle;
  end;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin

Form1.OpenDialog1.Filter := 'Hash Dosyasi (*.hash)|*.hash';
Form1.OpenDialog1.FileName :='';

if Form1.OpenDialog1.Execute = True then
  begin
  hash_adi.text := Form1.OpenDialog1.FileName;
  temizle;
  end;

end;

procedure TForm2.FormShow(Sender: TObject);
begin
temizle;
if dosya_Adi.Text <> '' then
begin
  Button2.OnClick(self);
end;
end;

procedure TForm2.kontrolClick(Sender: TObject);
var
Liste : TStringList;
begin
temizle;
Kontrol.Enabled := false;
if ((dosya_Adi.Text <> '') and (hash_Adi.Text <> '')) then
begin
   dosya_md5.Text  := Form1.Dosya_Hash(dosya_Adi.Text,0);
   application.ProcessMessages;
   dosya_sha1.Text := Form1.Dosya_Hash(dosya_Adi.Text,1);
   application.ProcessMessages;
   dosya_sha256.Text := Form1.Dosya_Hash(dosya_Adi.Text,2);
   application.ProcessMessages;
   dosya_sha384.Text := Form1.Dosya_Hash(dosya_Adi.Text,3);
   application.ProcessMessages;
   dosya_sha512.Text := Form1.Dosya_Hash(dosya_Adi.Text,4);
   application.ProcessMessages;

   Liste := TStringList.Create;
   Liste.LoadFromFile(hash_adi.Text);

   Hash_md5.Text := Trim(Liste.Strings[5]);
   Hash_sha1.Text := Trim(Liste.Strings[6]);
   Hash_sha256.Text := Trim(Liste.Strings[7]);
   Hash_sha384.Text := Trim(Liste.Strings[8]);
   Hash_sha512.Text := Trim(Liste.Strings[9]);

   if Dosya_md5.Text = Hash_md5.Text then
    md5_onay.brush.Color := clLime
    else
    md5_onay.brush.Color := clred;

    if Dosya_sha1.Text = Hash_sha1.Text then
    sha1_onay.brush.Color := clLime
    else
    sha1_onay.brush.Color := clred;

    if Dosya_sha256.Text = Hash_sha256.Text then
    sha256_onay.brush.Color := clLime
    else
    sha256_onay.brush.Color := clred;

    if Dosya_sha384.Text = Hash_sha384.Text then
    sha384_onay.brush.Color := clLime
    else
    sha384_onay.brush.Color := clred;

    if Dosya_sha512.Text = Hash_sha512.Text then
    sha512_onay.brush.Color := clLime
    else
    sha512_onay.brush.Color := clred;

    Kontrol.Enabled := true;
    Liste.Free;

    if  ((md5_onay.Brush.Color = clLime) and
        (sha1_onay.Brush.Color = clLime) and
        (sha256_onay.Brush.Color = clLime) and
        (sha384_onay.Brush.Color = clLime) and
        (sha512_onay.Brush.Color = clLime)) then
    begin
      Showmessage('Verilen Hash Bilgisine göre Dosya Ýçeriði Deðiþtirilmemiþtir.');
    end
    else
    begin
      Showmessage('Dosya Ýçeriði Deðiþtirilmiþtir.Dosya Geçersizdir.');
    end;


end
else
begin
  Showmessage('Dosya ve Hash Dosyasýný Seçmelisiniz.');
end;


end;

end.
