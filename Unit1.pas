unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Win.ScktComp, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    ClientSocket1: TClientSocket;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  ClientSocket1.Active:=False;    //Close Socket Port
  ClientSocket1.Active:=True;     //Open Socket Port
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ClientSocket1.Socket.SendText('RELAY-SCAN_DEVICE-NOW');  //Send Initialization Command-1
  Sleep(1000);                                             //Delay 1S
  ClientSocket1.Socket.SendText('RELAY-TEST-NOW');         //Send Initialization Command-2
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  ClientSocket1.Socket.SendText('RELAY-SET-1,1,1');        //Turn First Light ON

end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  ClientSocket1.Socket.SendText('RELAY-SET-1,1,0');       //Turn First Light OFF
end;

end.
