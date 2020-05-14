unit BankingDetail_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, Vcl.Menus, System.ImageList, Vcl.ImgList,
  Vcl.Controls, Vcl.Dialogs, System.Actions, Vcl.ActnList, Vcl.StdCtrls,

  BaseCustomerEdit_Frm, CommonValues,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxContainer, cxEdit, dxLayoutControlAdapters, cxHint,
  dxLayoutcxEditAdapters, dxScreenTip, dxCustomHint, cxImageList, dxLayoutControl,
  dxLayoutLookAndFeels, cxClasses, cxStyles, dxLayoutContainer, cxButtons, cxLabel,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxDBLabel;

type
  TBankingDetailFrm = class(TBaseCustomerEditFrm)
    lucBank: TcxLookupComboBox;
    lucAccType: TcxLookupComboBox;
    edtFirstName: TcxTextEdit;
    edtBranchCode: TcxTextEdit;
    edtAccNo: TcxTextEdit;
    edtLastName: TcxTextEdit;
    grpBankName: TdxLayoutGroup;
    grpBankAccount: TdxLayoutGroup;
    grpName: TdxLayoutGroup;
    litBank: TdxLayoutItem;
    litBranchCode: TdxLayoutItem;
    litAccountType: TdxLayoutItem;
    litAccounto: TdxLayoutItem;
    litFirstName: TdxLayoutItem;
    litLastname: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
    procedure Validate;
  public
    { Public declarations }
  end;

var
  BankingDetailFrm: TBankingDetailFrm;

implementation

{$R *.dfm}

uses
  VBBase_DM,
  MT_DM,
  Lookup_DM,
  RUtils;
{TODO: Add OnChange event to enable OK button}

procedure TBankingDetailFrm.btnOKClick(Sender: TObject);
begin
  inherited;
  Validate;
end;

procedure TBankingDetailFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Width := 345;
  Height := 325;
  lucBank.Properties.ListSource := LookupDM.dtsBank;
  lucAccType.Properties.ListSource := LookupDM.dtsBankAccountType;
  MTDM.ClearFieldValues;

  if VBBaseDM.DBAction = acEdit then
  begin
    lucBank.EditValue := MTDM.cdsBankingDetail.FieldByName('BANK_ID').AsInteger;
    edtBranchCode.Text := MTDM.cdsBankingDetail.FieldByName('BRANCH_CODE').AsString;
    lucAccType.EditValue := MTDM.cdsBankingDetail.FieldByName('ACCOUNT_TYPE_ID').AsInteger;
    edtAccNo.Text := MTDM.cdsBankingDetail.FieldByName('ACCOUNT_NO').AsString;
    edtFirstName.Text := MTDM.cdsBankingDetail.FieldByName('FIRST_NAME').AsString;
    edtLastName.Text := MTDM.cdsBankingDetail.FieldByName('LAST_NAME').AsString;
  end;

  lucBank.Properties.OnChange := ValueChanged;
  edtBranchCode.Properties.OnChange := ValueChanged;
  lucAccType.Properties.OnChange := ValueChanged;
  edtAccNo.Properties.OnChange := ValueChanged;
  edtFirstName.Properties.OnChange := ValueChanged;
  edtLastName.Properties.OnChange := ValueChanged;
end;

procedure TBankingDetailFrm.Validate;
begin
  if SameText(lucBank.Text, '') then
    raise EValidateException.Create('Bank name must have a value');

  if SameText(TrimAll(edtBranchCode.Text), '') then
    raise EValidateException.Create('Branch code must have a value');

  if SameText(lucAccType.Text, '') then
    raise EValidateException.Create('Account type must have a value');

  if SameText(TrimAll(edtAccNo.Text), '') then
    raise EValidateException.Create('Account number must have a value');

  if SameText(TrimAll(edtFirstName.Text), '') then
    raise EValidateException.Create('First name must have a value');

  if SameText(TrimAll(edtLastName.Text), '') then
    raise EValidateException.Create('Last name must have a value');

  MTDM.FFieldValue.BankID := VarAsType(lucBank.EditValue, varInteger);
  MTDM.FFieldValue.Bank := lucBank.Text;
  MTDM.FFieldValue.BranchCode := edtBranchCode.Text;
  MTDM.FFieldValue.AccountTypeID := VarAsType(lucAccType.EditValue, varInteger);
  MTDM.FFieldValue.AccountType := lucAccType.Text;
  MTDM.FFieldValue.AccountNo := edtAccNo.Text;
  MTDM.FFieldValue.FirstName := edtFirstName.Text;
  MTDM.FFieldValue.LastName := edtLastName.Text;

  ModalResult := mrOK;
end;

end.

