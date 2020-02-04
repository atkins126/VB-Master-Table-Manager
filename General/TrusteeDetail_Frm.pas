unit TrusteeDetail_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, Vcl.Menus, System.ImageList, Vcl.ImgList,
  Vcl.Controls, Vcl.Dialogs, System.Actions, Vcl.ActnList, Vcl.StdCtrls,

  BaseCustomerEdit_Frm, CommonValues,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxContainer, cxEdit, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, dxScreenTip, dxCustomHint, cxHint, cxImageList,
  dxLayoutLookAndFeels, cxClasses, cxStyles, dxLayoutContainer, cxDBLabel,
  cxButtons, cxLabel, dxLayoutControl, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit;

type
  TTrusteeDetailFrm = class(TBaseCustomerEditFrm)
    edtFirstname: TcxTextEdit;
    lucSalutation: TcxLookupComboBox;
    edtEmailAddress: TcxTextEdit;
    edtLastName: TcxTextEdit;
    edtMobileNo: TcxTextEdit;
    grpName: TdxLayoutGroup;
    grpSalutation: TdxLayoutGroup;
    grpEmailAddress: TdxLayoutGroup;
    litFirstName: TdxLayoutItem;
    litLastName: TdxLayoutItem;
    litSalutation: TdxLayoutItem;
    litMobileNo: TdxLayoutItem;
    litEmailAddress: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    Procedure Validate;
  public
    { Public declarations }
  end;

var
  TrusteeDetailFrm: TTrusteeDetailFrm;

implementation

{$R *.dfm}

uses
  VBBase_DM,
  MT_DM,
  Lookup_DM,
  RUtils;

procedure TTrusteeDetailFrm.FormCreate(Sender: TObject);
begin
  inherited;
  MTDM.ClearFieldValues;
  lucSalutation.Properties.ListSource := LookupDM.dtsSalutation;

  if VBBaseDM.DBAction = acModify then
  begin
    edtFirstName.Text := MTDM.cdsBeneficiary.FieldByName('FIRST_NAME').AsString;
    edtLastName.Text := MTDM.cdsBeneficiary.FieldByName('LAST_NAME').AsString;
    lucSalutation.EditValue := MTDM.cdsBeneficiary.FieldByName('SALUTATION_ID').AsInteger;
    edtMobileNo.Text := MTDM.cdsBeneficiary.FieldByName('MOBILE_PHONE').AsString;
    edtEmailAddress.Text := MTDM.cdsBeneficiary.FieldByName('EMAIL_ADDRESS').AsString;
  end;
end;

procedure TTrusteeDetailFrm.Validate;
begin
  if SameText(TrimAll(edtFirstName.Text), '') then
    raise EValidateException.Create('First name must have a value');

  if SameText(TrimAll(edtLastName.Text), '') then
    raise EValidateException.Create('Last name must have a value');

  if SameText(lucSalutation.Text, '') then
    raise EValidateException.Create('Salutation must have a value');

  if SameText(TrimAll(edtMobileNo.Text), '') then
    raise EValidateException.Create('Mobile number must have a value');

  if SameText(TrimAll(edtEmailAddress.Text), '') then
    raise EValidateException.Create('Email address must have a value');

  MTDM.FFieldValue.FirstName := edtFirstName.Text;
  MTDM.FFieldValue.LastName := edtLastName.Text;
  MTDM.FFieldValue.SalutationID := VarAsType(lucSalutation.EditValue, varInteger);
  MTDM.FFieldValue.Salutation := lucSalutation.Text;
  MTDM.FFieldValue.MobileNo := edtMobileNo.Text;
  MTDM.FFieldValue.EmailAddress := edtEmailAddress.Text;

  ModalResult := mrOK;
end;

end.
