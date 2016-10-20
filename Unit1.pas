{
  Delphi Ýle Checksum Hesaplama
  MD5,SHA-1,SHA256,SHA384,SHA512
  Sercan TEK  - 20.10.2016
  www.sercanca.com
  Delphi 10 Seattle
}

unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,Vcl.StdCtrls,Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Menus;

type
  TForm1 = class(TForm)
    Ac: TButton;
    OpenDialog1: TOpenDialog;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    Edit4: TEdit;
    Label4: TLabel;
    Edit5: TEdit;
    Label5: TLabel;
    Edit6: TEdit;
    Label6: TLabel;
    StatusBar1: TStatusBar;
    Bar: TProgressBar;
    Label7: TLabel;
    MainMenu1: TMainMenu;
    Dosya1: TMenuItem;
    Hakknda1: TMenuItem;
    A1: TMenuItem;
    Kaydet1: TMenuItem;
    wwwsercancacom1: TMenuItem;
    SaveDialog1: TSaveDialog;
    Hakknda2: TMenuItem;
    Karlatr1: TMenuItem;
    procedure wwwsercancacom1Click(Sender: TObject);
    procedure Kaydet1Click(Sender: TObject);
    procedure hesaplama(dosya:strinG);
    procedure AcClick(Sender: TObject);
    procedure Hakknda2Click(Sender: TObject);
    procedure Karlatr1Click(Sender: TObject);
    function Dosya_Hash(const FileName: string;Hash_tipi:integer): string;

  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  Form1: TForm1;

implementation

uses  IdHashMessageDigest, IdHashSHA, IdSSLOpenSSL,Winapi.ShellAPI, Unit2;

{$R *.dfm}

// Dosya MD5 hash alma
function MD5(const FileName: string): string;
var
  IdMD5: TIdHashMessageDigest5;
  FS: TFileStream;
begin
 IdMD5 := TIdHashMessageDigest5.Create;
 FS := TFileStream.Create(FileName, fmOpenRead or fmShareDenyWrite);
 try
   Result := IdMD5.HashStreamAsHex(FS)
 finally
   FS.Free;
   IdMD5.Free;
 end;
end;

// Dosya SHA hash alma
function TForm1.Dosya_Hash(const FileName: string;Hash_tipi:integer): string;
var
  MD5: TIdHashMessageDigest5;
  SHA1: TIdHashSHA1;
  SHA256: TIdHashSHA256;
  SHA384: TIdHashSHA384;
  SHA512: TIdHashSHA512;
  Dosya: TFileStream;
  cikis : String;
begin
 Dosya := TFileStream.Create(FileName, fmOpenRead or fmShareDenyWrite);
 LoadOpenSSLLibrary;
  case Hash_tipi of
    0 :begin // MD5
       MD5 := TIdHashMessageDigest5.Create;
       try cikis := MD5.HashStreamAsHex(Dosya);
        finally MD5.Free;
       end;
      end;

    1 : begin  // SHA-1
        SHA1 := TIdHashSHA1.Create;
       try
        cikis := SHA1.HashStreamAsHex(Dosya);
        finally
        SHA1.Free;
       end;
    end;

    2 : begin  // SHA-256
        SHA256 := TIdHashSHA256.Create;
       try
        cikis := SHA256.HashStreamAsHex(Dosya);
        finally
        SHA256.Free;
       end;
    end;

    3 : begin  // SHA-348
        SHA384 := TIdHashSHA384.Create;
       try
        cikis := SHA384.HashStreamAsHex(Dosya);
        finally
        SHA384.Free;
       end;
    end;

    4 : begin  // SHA-512
        SHA512 := TIdHashSHA512.Create;
       try
        cikis := SHA512.HashStreamAsHex(Dosya);
        finally
        SHA512.Free;
       end;
    end;

 end;
 Dosya.Free;
 result := cikis;

end;

procedure TForm1.AcClick(Sender: TObject);
begin
 hesaplama('');
end;

procedure TForm1.Hakknda2Click(Sender: TObject);
begin
Showmessage('Delphi Dosya Checksum Hesaplama - Ekim-2016');
Showmessage('www.sercanca.com');
end;

procedure TForm1.hesaplama(dosya:strinG);
begin

edit1.Clear;
edit2.Clear;
edit3.Clear;
edit4.Clear;
edit5.Clear;
edit6.Clear;
bar.Position := 0 ;

if dosya = '' then
begin
Form1.OpenDialog1.Filter := 'Tum Dosyalar (*.*)|*.*';
Form1.OpenDialog1.FileName :='';
if OpenDialog1.Execute = True then
  begin
  Dosya := OpenDialog1.FileName;
  end;
end;

  if opendialog1.filename = '' then
    begin
      exit;
    end;

edit1.Text := Dosya;
   StatusBar1.Panels[0].Text := 'Durum : Hesaplanýyor...';
   application.ProcessMessages;
   edit2.Text := Dosya_Hash(Dosya,0);
      StatusBar1.Panels[0].Text := 'Durum : MD5 Hesaplandý';
      bar.Position := bar.Position + 20 ;
      application.ProcessMessages;
   edit3.Text := Dosya_Hash(Dosya,1);
      StatusBar1.Panels[0].Text := 'Durum : SHA1 Hesaplandý';
      bar.Position := bar.Position + 20 ;
      application.ProcessMessages;
   edit4.Text := Dosya_Hash(Dosya,2);
      StatusBar1.Panels[0].Text := 'Durum : SHA256 Hesaplandý';
      bar.Position := bar.Position + 20 ;
      application.ProcessMessages;
   edit5.Text := Dosya_Hash(Dosya,3);
      StatusBar1.Panels[0].Text := 'Durum : SHA384 Hesaplandý';
      bar.Position := bar.Position + 20 ;
      application.ProcessMessages;
   edit6.Text := Dosya_Hash(Dosya,4);
      StatusBar1.Panels[0].Text := 'Durum : SHA512 Hesaplandý';
      bar.Position := bar.Position + 20 ;
      application.ProcessMessages;

StatusBar1.Panels[0].Text := 'Durum : Hesaplama Bitti Yeni Dosya Açabilirsiniz...';

end;

procedure TForm1.Karlatr1Click(Sender: TObject);
begin
if edit1.Text<>'' then
begin
  form2.dosya_adi.Text := edit1.Text;
end;
Form2.showmodal;
end;

procedure TForm1.Kaydet1Click(Sender: TObject);
var
Liste : TStringList;
begin
Liste := TStringList.Create;
Liste.Add('*********************************************************************');
Liste.Add('*  Delphi Dosya Checksum Hesaplama - www.sercanca.com - Ekim-2016   *');
Liste.Add('*********************************************************************');
Liste.Add('Tarih      : '+Datetostr(Now)+ '-'+Timetostr(Now));
Liste.Add('Dosya Adý  : '+Edit1.Text);
Liste.Add(Edit2.Text);
Liste.Add(Edit3.Text);
Liste.Add(Edit4.Text);
Liste.Add(Edit5.Text);
Liste.Add(Edit6.Text);

savedialog1.Filename := ExtractFileName(edit1.Text)+'_Checksum';

if savedialog1.Execute then
begin
   Liste.SaveToFile(savedialog1.FileName+'.hash');
end;
Liste.Free;
end;

procedure TForm1.wwwsercancacom1Click(Sender: TObject);
begin
ShellExecute(self.WindowHandle,'open','www.sercanca.com',nil,nil, SW_SHOWNORMAL);
end;

end.
