unit PersonContactDetail_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, Vcl.Menus, System.ImageList, Vcl.ImgList,
  Vcl.Controls, Vcl.Dialogs, System.Actions, Vcl.ActnList, Vcl.StdCtrls,

  BaseCustomerEdit_Frm, CommonValues,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxContainer, cxEdit, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, dxScreenTip, dxCustomHint, cxHint, cxImageList,
  dxLayoutLookAndFeels, cxClasses, cxStyles, dxLayoutContainer, cxButtons,
  cxLabel, dxLayoutControl, cxMemo, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxDBLabel;

type
  TPersonContactDetailFrm = class(TBaseCustomerEditFrm)
    lucContactType: TcxLookupComboBox;
    edtValue: TcxTextEdit;
    memComment: TcxMemo;
    litContactType: TdxLayoutItem;
    litValue: TdxLayoutItem;
    litComment: TdxLayoutItem;
    grpContactType: TdxLayoutGroup;
    grpgrpValue: TdxLayoutGroup;
    litReq1: TdxLayoutItem;
    litReq2: TdxLayoutItem;
    lblReq1: TcxLabel;
    lblReq2: TcxLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure Validate;
  public
    { Public declarations }
  end;

var
  PersonContactDetailFrm: TPersonContactDetailFrm;

implementation

{$R *.dfm}

uses
  MT_DM,
  Lookup_DM, RUtils;

procedure TPersonContactDetailFrm.FormCreate(Sender: TObject);
begin
  inherited;
  // Width = 390; Height = 335

  lucContactType.Properties.ListSource := LookupDM.dtsContactType;

  if MTDM.DBAction = acModify then
  begin
    lucContactType.EditValue := MTDM.cdsContactDetailPerson.FieldByName('CONTACT_TYPE_ID').AsInteger;
    edtValue.Text := MTDM.cdsContactDetailPerson.FieldByName('VALUE').AsString;
    memComment.Text := MTDM.cdsContactDetailPerson.FieldByName('COMMENT').AsString;
  end;
end;

procedure TPersonContactDetailFrm.Validate;
begin
  if SameText(lucContactType.Text, '') then
    raise EValidateException.Create('Contact type must have a value');

  if SameText(TrimAll(edtValue.Text), '') then
    raise EValidateException.Create(lucContactType.Text + ' must have a value');

  MTDM.FFieldValue.ContactTypeID :=  VarAsType(lucContactType.EditValue, varInteger);
  MTDM.FFieldValue.ContactType :=  lucContactType.Text;
  MTDM.FFieldValue.TextValue :=  TrimAll(edtValue.Text);
  MTDM.FFieldValue.Comment :=  TrimAll(memComment.Text);

  ModalResult := mrOK;
end;

end.

