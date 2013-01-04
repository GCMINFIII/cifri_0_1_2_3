unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Memo1: TMemo;
    Memo2: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  n:boolean; a:integer;
implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var d,i,j:integer;  c:string;
begin

if n=false then begin
                a:=strtoint(edit1.text);
                n:=true;
                end
            else begin
              memo1.Lines.Add(edit1.text);
              if memo1.Lines.count=a then begin
                                        Edit1.Visible:=false;
                                        button1.Visible:=false;
                                        memo2.Visible:=true;
                                        for i:=0 to (a-1) do begin
                                                          d:=0;
                                                          c:=memo1.Lines.Strings[i];
                                                          for j:=1 to length(c) do
                                                                      if (c[j]<='3') and (c[j]>='0') then d:=d+1;
                                                          if d=length(c) then memo2.Lines.add(c);
                                                            end;
                                            end;
                end;
if memo2.Visible=true then begin label1.visible:=true;
                            label2.visible:=true;
                            end;
end;


procedure TForm1.FormCreate(Sender: TObject);
begin
label1.Visible:=false;
label2.Visible:=false;
n:=false;
edit1.Text:='Zadaj ��slo.';
memo1.Clear;
memo2.Clear;
memo2.Visible:=false;
end;

end.
