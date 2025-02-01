unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  TypInfo, Variants;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnSearch: TButton;
    Edit1: TEdit;
    edtPropertyName: TEdit;
    lblPrompt: TLabel;
    memoResults: TMemo;
    Panel1: TPanel;

    procedure btnSearchClick(Sender: TObject);
  private
    function GetPropertyValue(Control: TControl; const PropName: string): string;
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

// Function to retrieve the value of a property
function TForm1.GetPropertyValue(Control: TControl; const PropName: string): string;
begin
  if GetPropInfo(Control, PropName) <> nil then
    Result := VarToStr(GetPropValue(Control, PropName))
  else
    Result := 'Property not found!';
end;

// Button Click Event: Searches for the property and displays its value
procedure TForm1.btnSearchClick(Sender: TObject);
var
  SearchText: string;
begin
  SearchText := Trim(edtPropertyName.Text);
  if SearchText = '' then
  begin
    ShowMessage('Please enter a property name to search.');
    Exit;
  end;

  // Search in the test button (btnTest)
  memoResults.Lines.Clear;
  memoResults.Lines.Add('Searching for property: ' + SearchText);
  memoResults.Lines.Add('---------------------------');
  memoResults.Lines.Add('Value: ' + GetPropertyValue(Edit1, SearchText));
end;

end.

