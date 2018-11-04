unit Unit1; 

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Spin,
  StdCtrls, ExtCtrls, Menus, ComCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    SpinEdit5: TSpinEdit;
    SpinEdit6: TSpinEdit;
    SpinEdit7: TSpinEdit;
    SpinEdit8: TSpinEdit;
    TrackBar1: TTrackBar;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label16Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure RadioButton1Change(Sender: TObject);
    procedure RadioButton2Change(Sender: TObject);
    procedure RadioButton3Change(Sender: TObject);
    procedure SpinEdit4Change(Sender: TObject);
    procedure SpinEdit4Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  Form1: TForm1;
  dlugosc, wysokosc, szerokosc, dluworka, szeworka, zakladka, wypustka ,szefoli, dlufoli,wagafoli:integer;
   pluss,plusszer, zaklplus, plusklips, obcislosc,iloscfoli:real;
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button2Click(Sender: TObject);

begin
  form1.Close;

end;

procedure TForm1.Button3Click(Sender: TObject);

begin


    szeworka:=spinedit4.Value ;
    dluworka:=spinedit5.Value ;
    zakladka:=spinedit6.Value ;
    wypustka:=spinedit8.Value;
   szefoli:=dluworka+dluworka+zakladka+zakladka+wypustka;
    label10.Caption:='Potrzebny CPP o szerokości '+inttostr(szefoli)+'mm';
    iloscfoli:=(spinedit4.Value*spinedit7.Value)*0.001 ; //ile milimetrow foli

   label11.Caption:=inttostr(round(iloscfoli))+' m foli';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.Label16Click(Sender: TObject);
begin
  end;

procedure TForm1.Label4Click(Sender: TObject);
begin

end;



procedure TForm1.Button1Click(Sender: TObject);
begin
  wypustka:=45;
  dlugosc:=spinedit1.Value ;
    szerokosc:=spinedit2.Value ;
      wysokosc:=spinedit3.Value ;
  if radiobutton1.Checked = true then  //tradycyjny
   begin
      obcislosc:=10-trackbar1.Position;    //suwak wartosc 10-pozycja srodek to 5
       zaklplus:=wysokosc*0.43;   //zakladka powiekszona
     plusklips:=30+wysokosc*0.1;

   end;
    if radiobutton2.Checked = true then  //foremkowy
       begin

           obcislosc:=10-trackbar1.Position;    //suwak wartosc 10-pozycja srodekto5
            zaklplus:=wysokosc*0.46;  //zakladka powiekszona
          plusklips:=30+wysokosc*0.4;
       end;


    dluworka:=dlugosc+wysokosc+round(plusklips);    //dlugosc+wysokosc+zamkniecie bez wypustki
    szeworka:=szerokosc+round(plusszer) + wysokosc+round(obcislosc);//szerokosc+wysokosc
    zakladka:= round(zaklplus);                      //zakladka proporcjonalna do ksztaltu chleba
    pluss:=zakladka/5;           //zaokraglam do 5
    zakladka:=round(pluss)*5;
    pluss:=dluworka/5;
    dluworka:=round(pluss)*5;
    pluss:=szeworka/5;
    szeworka:=round(pluss)*5;

    label4.Caption :='rozmiar potrzebnego worka to '+inttostr(szeworka)
                   +'mm szerokosci na '+inttostr(dluworka)+'mm glebokosci. Worek bedze z zakladka '
                   +inttostr(zakladka) +'mm i wypustką '+inttostr(spinedit8.Value)
                   +'mm na klipsy';
    label15.Caption:='lub '+inttostr(szeworka)+'mm szerokosci na '+inttostr(dluworka+(zakladka+zakladka))
                   +'mm glebokosci. Worek bedze bez zakladki '
                   +'z wypustką '+inttostr(spinedit8.Value)
                   +'mm na klipsy';

    spinedit4.Value:=szeworka;
    spinedit5.Value:=dluworka;
    spinedit6.Value:=zakladka;




    {

   canvas.Line(460,180,460+spinedit2.Value ,180);        //  x odprawejdolewej,y odgurydodolu

   canvas.Arc(460,  180                                //poczatek prostokata
              ,460+spinedit2.Value,180+spinedit2.Value   //koniec prostokata w ktory wpisany jest obiekt
              ,460,  180                                //poczatek krzywej
              ,460+spinedit2.Value,180);               //koniec krzywej
  }



end;

procedure TForm1.RadioButton1Change(Sender: TObject);
begin
  image1.Visible:=true;
  image2.Visible:=false;
  button1.click;

end;

procedure TForm1.RadioButton2Change(Sender: TObject);
begin
  image1.Visible:=false;
  image2.Visible:=true;

end;

procedure TForm1.RadioButton3Change(Sender: TObject);
begin
  image1.Visible:=false;
  image2.Visible:=false;

end;

procedure TForm1.SpinEdit4Change(Sender: TObject);
begin

end;

procedure TForm1.SpinEdit4Click(Sender: TObject);
begin

  end;

end.

