unit ShareHolderDetail_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, Vcl.Menus, System.Actions, Vcl.ActnList,
  Vcl.Controls, Vcl.Dialogs, System.ImageList, Vcl.ImgList, Vcl.StdCtrls,

  BaseCustomerEdit_Frm, CommonValues,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxContainer, cxEdit, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, dxScreenTip, dxCustomHint, cxHint, cxImageList,
  dxLayoutLookAndFeels, cxClasses, cxStyles, dxLayoutContainer, cxDBLabel,
  cxButtons, cxLabel, dxLayoutControl, cxSpinEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit;

type
  TShareHolderDetailFrm = class(TBaseCustomerEditFrm)
    edtFirstName: TcxTextEdit;
    edtLastName: TcxTextEdit;
    lucSalutation: TcxLookupComboBox;
    edtEmailAddress: TcxTextEdit;
    edtMobileNo: TcxTextEdit;
    spnPercentShare: TcxSpinEdit;
    grpName: TdxLayoutGroup;
    grpSalutation: TdxLayoutGroup;
    grpEmailAddress: TdxLayoutGroup;
    litFirstName: TdxLayoutItem;
    litLastName: TdxLayoutItem;
    litSalutation: TdxLayoutItem;
    litMobilePhone: TdxLayoutItem;
    litEmailAddress: TdxLayoutItem;
    litPercentShare: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
    procedure Validate;
  public
    { Public declarations }
  end;

var
  ShareHolderDetailFrm: TShareHolderDetailFrm;

implementation

{$R *.dfm}

uses
  VBBase_DM,
  MT_DM,
  Lookup_DM,
  RUtils;

procedure TShareHolderDetailFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Self.Height := 280;
  Self.Width := 540;
  MTDM.ClearFieldValues;
  lucSalutation.Properties.ListSource := LookupDM.dtsSalutation;
  TcxLookupComboBoxProperties(lucSalutation.Properties).ListSource := LookupDM.dtsSHSalutation;

  if VBBaseDM.DBAction = acEdit then
  begin
    edtFirstName.Text := MTDM.cdsShareHolder.FieldByName('FIRST_NAME').AsString;
    edtLastName.Text := MTDM.cdsShareHolder.FieldByName('LAST_NAME').AsString;
    lucSalutation.EditValue := MTDM.cdsShareHolder.FieldByName('SALUTATION_ID').AsInteger;
    spnPercentShare.Value := MTDM.cdsShareHolder.FieldByName('PERCENT_SHARE').AsFloat;
    edtMobileNo.Text := MTDM.cdsShareHolder.FieldByName('MOBILE_PHONE').AsString;
    edtEmailAddress.Text := MTDM.cdsShareHolder.FieldByName('EMAIL_ADDRESS').AsString;
  end;

  edtFirstName.Properties.OnChange := ValueChanged;
  edtLastName.Properties.OnChange := ValueChanged;
  lucSalutation.Properties.OnChange := ValueChanged;
  spnPercentShare.Properties.OnChange := ValueChanged;
  edtMobileNo.Properties.OnChange := ValueChanged;
  edtEmailAddress.Properties.OnChange := ValueChanged;
end;

procedure TShareHolderDetailFrm.Validate;
begin
  if SameText(TrimAll(edtFirstName.Text), '') then
    raise EValidateException.Create('First name must have a value');

  if SameText(TrimAll(edtLastName.Text), '') then
    raise EValidateException.Create('Last name must have a value');

  if SameText(lucSalutation.Text, '') then
    raise EValidateException.Create('Salutation must have a value');

  MTDM.FFieldValue.SalutationID := lucSalutation.EditValue;
  MTDM.FFieldValue.FirstName := edtFirstName.Text;
  MTDM.FFieldValue.LastName := edtLastName.Text;
  MTDM.FFieldValue.PercenShare := spnPercentShare.Value;
  MTDM.FFieldValue.MobileNo := edtMobileNo.Text;
  MTDM.FFieldValue.EmailAddress := edtEmailAddress.Text;

  ModalResult := mrOK;
end;

procedure TShareHolderDetailFrm.btnOKClick(Sender: TObject);
begin
  inherited;
  Validate;
end;

end.

