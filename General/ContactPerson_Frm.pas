unit ContactPerson_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, System.ImageList, Vcl.ImgList, Vcl.Menus,
  Vcl.Controls, Vcl.Dialogs, System.Actions, Vcl.ActnList, Vcl.StdCtrls,
  Vcl.ComCtrls,

  BaseCustomerEdit_Frm, CommonValues,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxContainer, cxEdit, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, dxScreenTip, dxCustomHint, cxHint, cxImageList,
  dxLayoutLookAndFeels, cxClasses, cxStyles, dxLayoutContainer, cxDBLabel,
  cxButtons, cxLabel, dxLayoutControl, dxCore, cxDateUtils, cxCheckBox,
  cxDropDownEdit, cxCalendar, cxMaskEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxTextEdit;

type
  TContactPersonFrm = class(TBaseCustomerEditFrm)
    edtFirstName: TcxTextEdit;
    lucSalutation: TcxLookupComboBox;
    edtOtherName: TcxTextEdit;
    edtIDNo: TcxTextEdit;
    lucJobFunction: TcxLookupComboBox;
    edtLastName: TcxTextEdit;
    edtInitials: TcxTextEdit;
    dteDOB: TcxDateEdit;
    edtPassportNo: TcxTextEdit;
    cbxPrimaryContact: TcxCheckBox;
    grpName: TdxLayoutGroup;
    grpSalutation: TdxLayoutGroup;
    grpOtherName: TdxLayoutGroup;
    grpIDNo: TdxLayoutGroup;
    litFirstName: TdxLayoutItem;
    litLastName: TdxLayoutItem;
    litSalutation: TdxLayoutItem;
    litOtherName: TdxLayoutItem;
    litInitials: TdxLayoutItem;
    litDOB: TdxLayoutItem;
    litIDNo: TdxLayoutItem;
    litPassportNo: TdxLayoutItem;
    litPrimaryContact: TdxLayoutItem;
    litJobFunction: TdxLayoutItem;
    grpJobFunction: TdxLayoutGroup;
    litLabel1: TdxLayoutItem;
    litLabel2: TdxLayoutItem;
    lbl1: TcxLabel;
    lbl2: TcxLabel;
    lbl3: TcxLabel;
    litLabel3: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure edtFirstNamePropertiesChange(Sender: TObject);
  private
    { Private declarations }
    procedure Validate;
  public
    { Public declarations }
  end;

var
  ContactPersonFrm: TContactPersonFrm;

implementation

{$R *.dfm}

uses
  VBBase_DM,
  MT_DM,
  Lookup_DM,
  RUtils;

procedure TContactPersonFrm.btnOKClick(Sender: TObject);
begin
  inherited;
  if VBBaseDM.MadeChanges then
    Validate;
end;

procedure TContactPersonFrm.edtFirstNamePropertiesChange(Sender: TObject);
begin
  inherited;
  VBBaseDM.MadeChanges := True;
end;

procedure TContactPersonFrm.FormCreate(Sender: TObject);
begin
  inherited;
  // Width = 550; Height = 310
  MTDM.ClearFieldValues;
  lucSalutation.Properties.ListSource := LookupDM.dtsSalutation;
  lucJobFunction.Properties.ListSource := LookupDM.dtsJobFunction;
  dteDOB.Properties.MinDate := StrToDate('10/01/1900');
  dteDOB.Properties.MaxDate := Date;

  if VBBaseDM.DBAction = acModify then
  begin
    edtFirstName.Text := MTDM.cdsContactPerson.FieldByName('FIRST_NAME').AsString;
    edtLastName.Text := MTDM.cdsContactPerson.FieldByName('LAST_NAME').AsString;
    edtOtherName.Text := MTDM.cdsContactPerson.FieldByName('OTHER_NAME').AsString;
    edtIDNo.Text := MTDM.cdsContactPerson.FieldByName('ID_NUMBER').AsString;
    edtPassportNo.Text := MTDM.cdsContactPerson.FieldByName('PASSPORT_NUMBER').AsString;
    lucSalutation.EditValue := MTDM.cdsContactPerson.FieldByName('SALUTATION_ID').AsInteger;
    edtInitials.Text := MTDM.cdsContactPerson.FieldByName('INITIALS').AsString;
    dteDOB.EditValue := MTDM.cdsContactPerson.FieldByName('DOB').AsDateTime;
    lucJobFunction.EditValue := MTDM.cdsContactPerson.FieldByName('JOB_FUNCTION_ID').AsInteger;
    cbxPrimaryContact.Checked := MTDM.cdsContactPerson.FieldByName('IS_PRIMARY_CONTACT').AsInteger = 1;
  end;
end;

procedure TContactPersonFrm.Validate;
begin
  if SameText(edtFirstName.Text, '') then
    raise EValidateException.Create('First name must have a value');

  if SameText(edtLastName.Text, '') then
    raise EValidateException.Create('Last name must have a value');

  if SameText(lucSalutation.Text, '') then
    raise EValidateException.Create('Salutation must have a value');

  if SameText(lucJobFunction.Text, '') then
    raise EValidateException.Create('Job function must have a value');

  MTDM.FFieldValue.FirstName := edtFirstName.Text;
  MTDM.FFieldValue.LastName := edtLastName.Text;
  MTDM.FFieldValue.SalutationID := VarAsType(lucSalutation.EditValue, varInteger);
  MTDM.FFieldValue.Salutation := lucSalutation.Text;
  MTDM.FFieldValue.Initials := edtInitials.Text;
  MTDM.FFieldValue.OtherName := edtOtherName.Text;
  MTDM.FFieldValue.DOB := dteDOB.Date;
  MTDM.FFieldValue.IDNo := edtIDNo.Text;
  MTDM.FFieldValue.PassportNo := edtPassportNo.Text;
  MTDM.FFieldValue.JobFunctionID := VarAsType(lucJobFunction.EditValue, varInteger);
  MTDM.FFieldValue.JobFunction := lucJobFunction.Text;
  MTDM.FFieldValue.PrimaryContact := cbxPrimaryContact.Checked;

  ModalResult := mrOK;
end;

end.

