unit HeirDetail_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,

  BaseCustomerEdit_Frm, CommonValues,

  cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxContainer, cxEdit, Vcl.Menus,
  dxLayoutControlAdapters, dxLayoutcxEditAdapters, dxScreenTip, dxCustomHint,
  cxHint, System.ImageList, Vcl.ImgList, cxImageList, dxLayoutLookAndFeels,
  System.Actions, Vcl.ActnList, cxClasses, cxStyles, dxLayoutContainer,
  cxDBLabel, Vcl.StdCtrls, cxButtons, cxLabel, dxLayoutControl, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit;

type
  THeirDetailFrm = class(TBaseCustomerEditFrm)
    edtFirstName: TcxTextEdit;
    lucSalutation: TcxLookupComboBox;
    edtLastName: TcxTextEdit;
    edtIDNo: TcxTextEdit;
    grpName: TdxLayoutGroup;
    grpSalutation: TdxLayoutGroup;
    grpAddress: TdxLayoutGroup;
    grpPhysicalAddress: TdxLayoutGroup;
    grpPostalAddress: TdxLayoutGroup;
    litFirstName: TdxLayoutItem;
    litLastName: TdxLayoutItem;
    litSalutation: TdxLayoutItem;
    litIDNumber: TdxLayoutItem;
    litPhysical1: TdxLayoutItem;
    litPhysical2: TdxLayoutItem;
    litPhysical3: TdxLayoutItem;
    litPhysical4: TdxLayoutItem;
    litPhysicalCode: TdxLayoutItem;
    litPostal1: TdxLayoutItem;
    litPostal2: TdxLayoutItem;
    litPostal3: TdxLayoutItem;
    litPostal4: TdxLayoutItem;
    litPostalCode: TdxLayoutItem;
    edtPhysical1: TcxTextEdit;
    edtPhysical2: TcxTextEdit;
    edtPhysical3: TcxTextEdit;
    edtPhysical4: TcxTextEdit;
    edtPhysicalCode: TcxTextEdit;
    edtPostal1: TcxTextEdit;
    edtPostal2: TcxTextEdit;
    edtPostal3: TcxTextEdit;
    edtPostal4: TcxTextEdit;
    edtPostalCode: TcxTextEdit;
    sep3: TdxLayoutSeparatorItem;
    grpAccountHolder: TdxLayoutGroup;
    grpAHName: TdxLayoutGroup;
    grpAHSalutation: TdxLayoutGroup;
    edtHAHFirstName: TcxTextEdit;
    lucHAHSalutation: TcxLookupComboBox;
    edtHAHLastName: TcxTextEdit;
    lucBank: TcxLookupComboBox;
    lucAccType: TcxLookupComboBox;
    edtBranchCode: TcxTextEdit;
    edtAccNo: TcxTextEdit;
    grpAHBank: TdxLayoutGroup;
    grpAHAccount: TdxLayoutGroup;
    litAHFirstName: TdxLayoutItem;
    litAHLastName: TdxLayoutItem;
    litAHSalutation: TdxLayoutItem;
    litAHBank: TdxLayoutItem;
    litAHBranchCode: TdxLayoutItem;
    litAHAccountType: TdxLayoutItem;
    litAHAccountNo: TdxLayoutItem;
    litAHNameSameAsHeirName: TdxLayoutItem;
    btnAccHolderNameSameAsHeirName: TcxButton;
    sep4: TdxLayoutSeparatorItem;
    spc1: TdxLayoutEmptySpaceItem;
    grpHeirDetails: TdxLayoutGroup;
    spc2: TdxLayoutEmptySpaceItem;
    procedure FormCreate(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnAccHolderNameSameAsHeirNameClick(Sender: TObject);
  private
    { Private declarations }
    procedure Validate;
  public
    { Public declarations }
  end;

var
  HeirDetailFrm: THeirDetailFrm;

implementation

{$R *.dfm}

uses
  VBBase_DM,
  MT_DM,
  Lookup_DM,
  RUtils;

procedure THeirDetailFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Self.Height := 595;
  Self.Width := 700;
  MTDM.ClearFieldValues;
  lucSalutation.Properties.ListSource := LookupDM.dtsSalutation;
  TcxLookupComboBoxProperties(lucSalutation.Properties).ListSource := LookupDM.dtsSHSalutation;

  if VBBaseDM.DBAction = acModify then
  begin
    edtFirstName.Text := MTDM.cdsHeir.FieldByName('FIRST_NAME').AsString;
    edtLastName.Text := MTDM.cdsHeir.FieldByName('LAST_NAME').AsString;
    lucSalutation.EditValue := MTDM.cdsHeir.FieldByName('SALUTATION_ID').AsInteger;

    edtHAHFirstName.Text := MTDM.cdsHeir.FieldByName('ACC_HOLDER_FIRST_NAME').AsString;
    edtHAHLastName.Text := MTDM.cdsHeir.FieldByName('ACC_HOLDER_LAST_NAME').AsString;
    lucHAHSalutation.EditValue := MTDM.cdsHeir.FieldByName('ACC_HOLDER_SALUTATION_ID').AsInteger;

    lucBank.EditValue := MTDM.cdsHeir.FieldByName('BANK_ID').AsInteger;
    edtBranchCode.Text := MTDM.cdsHeir.FieldByName('BRANCH_CODE').AsString;
    lucAccType.EditValue := MTDM.cdsHeir.FieldByName('ACCOUNT_TYPE_ID').AsInteger;
    edtAccNo.Text := MTDM.cdsHeir.FieldByName('ACCOUNT_NO').AsString;
    edtIDNo.Text := MTDM.cdsHeir.FieldByName('ID_NUMBER').AsString;

    edtPhysical1.Text := MTDM.cdsHeir.FieldByName('PHYSICAL1').AsString;
    edtPhysical2.Text := MTDM.cdsHeir.FieldByName('PHYSICAL2').AsString;
    edtPhysical3.Text := MTDM.cdsHeir.FieldByName('PHYSICAL3').AsString;
    edtPhysical4.Text := MTDM.cdsHeir.FieldByName('PHYSICAL4').AsString;
    edtPhysicalCode.Text := MTDM.cdsHeir.FieldByName('PHYSICAL_CODE').AsString;

    edtPostal1.Text := MTDM.cdsHeir.FieldByName('POSTAL1').AsString;
    edtPostal2.Text := MTDM.cdsHeir.FieldByName('POSTAL2').AsString;
    edtPostal3.Text := MTDM.cdsHeir.FieldByName('POSTAL3').AsString;
    edtPostal4.Text := MTDM.cdsHeir.FieldByName('POSTAL4').AsString;
    edtPostalCode.Text := MTDM.cdsHeir.FieldByName('POSTAL_CODE').AsString;
  end;

  edtFirstName.Properties.OnChange := ValueChanged;
  edtLastName.Properties.OnChange := ValueChanged;
  lucSalutation.Properties.OnChange := ValueChanged;

  edtHAHFirstName.Properties.OnChange := ValueChanged;
  edtHAHLastName.Properties.OnChange := ValueChanged;
  lucHAHSalutation.Properties.OnChange := ValueChanged;

  lucBank.Properties.OnChange := ValueChanged;
  edtBranchCode.Properties.OnChange := ValueChanged;
  lucAccType.Properties.OnChange := ValueChanged;
  edtAccNo.Properties.OnChange := ValueChanged;
  edtIDNo.Properties.OnChange := ValueChanged;

  edtPhysical1.Properties.OnChange := ValueChanged;
  edtPhysical2.Properties.OnChange := ValueChanged;
  edtPhysical3.Properties.OnChange := ValueChanged;
  edtPhysical4.Properties.OnChange := ValueChanged;
  edtPhysicalCode.Properties.OnChange := ValueChanged;

  edtPostal1.Properties.OnChange := ValueChanged;
  edtPostal2.Properties.OnChange := ValueChanged;
  edtPostal3.Properties.OnChange := ValueChanged;
  edtPostal4.Properties.OnChange := ValueChanged;
  edtPostalCode.Properties.OnChange := ValueChanged;
end;

procedure THeirDetailFrm.btnAccHolderNameSameAsHeirNameClick(Sender: TObject);
begin
  inherited;
  lucHAHSalutation.EditValue := lucSalutation.EditValue;
  edtHAHFirstName.Text := edtFirstName.Text;
  edtHAHLastName.Text := edtLastName.Text;
end;

procedure THeirDetailFrm.btnOKClick(Sender: TObject);
begin
  inherited;
  Validate;
end;

procedure THeirDetailFrm.Validate;
begin
  if SameText(TrimAll(edtFirstName.Text), '') then
    raise EValidateException.Create('First name must have a value');

  if SameText(TrimAll(edtLastName.Text), '') then
    raise EValidateException.Create('Last name must have a value');

  if SameText(lucSalutation.Text, '') then
    raise EValidateException.Create('Salutation must have a value');

  if SameText(TrimAll(edtHAHFirstName.Text), '') then
    raise EValidateException.Create('Account holder first name must have a value');

  if SameText(TrimAll(edtHAHLastName.Text), '') then
    raise EValidateException.Create('Account holder last name must have a value');

  if SameText(lucHAHSalutation.Text, '') then
    raise EValidateException.Create('Account holder salutation must have a value');

  if SameText(lucBank.Text, '') then
    raise EValidateException.Create('Bank must have a value');

  if SameText(lucAccType.Text, '') then
    raise EValidateException.Create('Account type must have a value');

  if SameText(TrimAll(edtAccNo.Text), '') then
    raise EValidateException.Create('Account number must have a value');

  MTDM.FFieldValue.SalutationID := lucSalutation.EditValue;
  MTDM.FFieldValue.FirstName := edtFirstName.Text;
  MTDM.FFieldValue.LastName := edtLastName.Text;
  MTDM.FFieldValue.IDNo := edtIDNo.Text;

  MTDM.FFieldValue.HAHKSalutatioinID := lucHAHSalutation.EditValue;
  MTDM.FFieldValue.HAHFirstName := edtHAHFirstName.Text;
  MTDM.FFieldValue.HAHLastName := edtHAHLastName.Text;

  MTDM.FFieldValue.BankID := lucBank.EditValue;
  MTDM.FFieldValue.BranchCode := edtBranchCode.Text;
  MTDM.FFieldValue.AccountTypeID := lucAccType.EditValue;
  MTDM.FFieldValue.AccountNo := edtAccNo.Text;

  MTDM.FFieldValue.Physical1 := edtPhysical1.Text;
  MTDM.FFieldValue.Physical2 := edtPhysical2.Text;
  MTDM.FFieldValue.Physical3 := edtPhysical3.Text;
  MTDM.FFieldValue.Physical4 := edtPhysical4.Text;
  MTDM.FFieldValue.PhysicalCode := edtPhysicalCode.Text;

  MTDM.FFieldValue.Postal1 := edtPostal1.Text;
  MTDM.FFieldValue.Postal2 := edtPostal2.Text;
  MTDM.FFieldValue.Postal3 := edtPostal3.Text;
  MTDM.FFieldValue.Postal4 := edtPostal4.Text;
  MTDM.FFieldValue.PostalCode := edtPostalCode.Text;

  ModalResult := mrOK;
end;

end.

