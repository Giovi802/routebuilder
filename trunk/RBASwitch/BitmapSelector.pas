unit BitmapSelector;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls, FileCtrl;

type
  TFormBitmapSelector = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Image1: TImage;
    FileListBox1: TFileListBox;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FileListBox1Change(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    Directory: string;
    Filename: string;
  end;

var
  FormBitmapSelector: TFormBitmapSelector;

implementation

{$R *.dfm}

procedure TFormBitmapSelector.FormCreate(Sender: TObject);
begin
  //
end;

procedure TFormBitmapSelector.FormShow(Sender: TObject);
begin
  Filelistbox1.Directory := Directory;
  FileListBox1.FileName := Directory + Filename;
end;

procedure TFormBitmapSelector.FileListBox1Change(Sender: TObject);
begin
  if fileexists(FileListBox1.FileName) then
    Image1.picture.LoadFromFile(FileListBox1.FileName);
end;

procedure TFormBitmapSelector.OKBtnClick(Sender: TObject);
begin
  Filename := extractfilename(FileListBox1.FileName);
  modalResult := mrOK;
end;

procedure TFormBitmapSelector.CancelBtnClick(Sender: TObject);
begin
  modalResult := mrCancel;
end;

procedure TFormBitmapSelector.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
