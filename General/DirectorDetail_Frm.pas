unit DirectorDetail_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, System.ImageList, Vcl.ImgList, Vcl.StdCtrls,
  Vcl.Controls, Vcl.Dialogs, System.Actions, Vcl.ActnList, Vcl.Menus,

  BaseCustomerEdit_Frm, CommonValues,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxContainer, cxEdit, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, dxScreenTip, dxCustomHint, cxHint, cxImageList,
  dxLayoutLookAndFeels, cxClasses, cxStyles, dxLayoutContainer, cxDBLabel,
  cxButtons, cxLabel, dxLayoutControl, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit;

type
  TDirectorDetailFrm = class(TBaseCustomerEditFrm)
    edtFirstName: TcxTextEdit;
    lucSalutation: TcxLookupComboBox;
    edtMobileNo: TcxTextEdit;
    lblReq1: TcxLabel;
    lblReq2: TcxLabel;
    edtLastName: TcxTextEdit;
    edtOtherName: TcxTextEdit;
    edtTaxNo: TcxTextEdit;
    edtEmailAddress: TcxTextEdit;
    lblReq3: TcxLabel;
    grpName: TdxLayoutGroup;
    grpSalutation: TdxLayoutGroup;
    grpMobileNo: TdxLayoutGroup;
    litFirstName: TdxLayoutItem;
    litLastName: TdxLayoutItem;
    litSalutation: TdxLayoutItem;
    litTaxNo: TdxLayoutItem;
    litMobileNo: TdxLayoutItem;
    litEmailAddress: TdxLayoutItem;
    litReq1: TdxLayoutItem;
    litReq2: TdxLayoutItem;
    LitReq3: TdxLayoutItem;
    litOtherName: TdxLayoutItem;
    spc1: TdxLayoutEmptySpaceItem;
    procedure FormCreate(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
    procedure Validate;
  public
    { Public declarations }
  end;

var
  DirectorDetailFrm: TDirectorDetailFrm;

implementation

{$R *.dfm}

uses
  VBBase_DM,
  MT_DM,
  Lookup_DM,
  RUtils;

procedure TDirectorDetailFrm.btnOKClick(Sender: TObject);
begin
  inherited;
  Validate;
end;

procedure TDirectorDetailFrm.FormCreate(Sender: TObject);
begin
  inherited;
// Width = 560; Height = 285
  MTDM.ClearFieldValues;
  lucSalutation.Properties.ListSource := LookupDM.dtsSalutation;

  if VBBaseDM.DBAction = acModify then
  begin
    edtFirstName.Text := MTDM.cdsDirector.FieldByName('FIRST_NAME').AsString;
    edtLastName.Text := MTDM.cdsDirector.FieldByName('LAST_NAME').AsString;
    lucSalutation.EditValue := MTDM.cdsDirector.FieldByName('SALUTATION_ID').AsInteger;
    edtOtherName.Text := MTDM.cdsDirector.FieldByName('MIDDLE_NAME').AsString;
    edtTaxNo.Text := MTDM.cdsDirector.FieldByName('TAX_NO').AsString;
    edtMobileNo.Text := MTDM.cdsDirector.FieldByName('MOBILE_PHONE').AsString;
    edtEmailAddress.Text := MTDM.cdsDirector.FieldByName('EMAIL_ADDRESS').AsString;
  end;
end;

procedure TDirectorDetailFrm.Validate;
begin
  if SameText(TrimAll(edtFirstName.Text), '') then
    raise EValidateException.Create('First name must have a value');

  if SameText(TrimAll(edtLastName.Text), '') then
    raise EValidateException.Create('Last name must have a value');

  if SameText(lucSalutation.Text, '') then
    raise EValidateException.Create('Salutation must have a value');

  MTDM.FFieldValue.FirstName := edtFirstName.Text;
  MTDM.FFieldValue.LastName := edtLastName.Text;
  MTDM.FFieldValue.OtherName := edtOtherName.Text;
  MTDM.FFieldValue.TaxNo := edtTaxNo.Text;
  MTDM.FFieldValue.MobileNo := edtMobileNo.Text;
  MTDM.FFieldValue.EmailAddress := edtEmailAddress.Text;

  ModalResult := mrOK;
end;

end.

