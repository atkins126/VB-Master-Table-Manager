unit ContactDetail_Fra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Dialogs,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxClasses,
  dxLayoutContainer, cxLabel, cxMemo, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxLayoutControl;

type
  TContactDetailFra = class(TFrame)
    layContactDetails: TdxLayoutControl;
    lucContactType: TcxLookupComboBox;
    edtContactDetailValue: TcxTextEdit;
    memContactDetailComment: TcxMemo;
    lblReq1: TcxLabel;
    lblReq2: TcxLabel;
    layContactDetailsGroup_Root: TdxLayoutGroup;
    grpContactType: TdxLayoutGroup;
    grpContactValue: TdxLayoutGroup;
    litContactType: TdxLayoutItem;
    litContactValue: TdxLayoutItem;
    litContactComment: TdxLayoutItem;
    litMand1: TdxLayoutItem;
    litMand2: TdxLayoutItem;
    styMandatory: TcxEditStyleController;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  MT_DM,
  VBBase_DM;

end.

