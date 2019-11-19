unit AddressDetail_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, Vcl.Menus, System.ImageList, Vcl.ImgList,
  Vcl.Controls, Vcl.Dialogs, System.Actions, Vcl.ActnList, Vcl.StdCtrls,

  BaseCustomerEdit_Frm, CommonValues,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxContainer, cxEdit, dxLayoutControlAdapters, cxLabel,
  dxLayoutcxEditAdapters, dxScreenTip, cxClasses, dxCustomHint, cxHint, cxStyles,
  cxImageList, dxLayoutLookAndFeels, dxLayoutContainer, cxButtons, dxLayoutControl,
  cxTextEdit, cxGroupBox, cxDBLabel;

type
  TAddressDetailFrm = class(TBaseCustomerEditFrm)
    litPhysical1: TdxLayoutItem;
    litPhysiclToPostal: TdxLayoutItem;
    litPostalToPhysical: TdxLayoutItem;
    litPhysicalToBilling: TdxLayoutItem;
    spc1: TdxLayoutEmptySpaceItem;
    litBillingToPhysical: TdxLayoutItem;
    litPostal1: TdxLayoutItem;
    litBilling1: TdxLayoutItem;
    litBillingToPostal: TdxLayoutItem;
    litPostalToBilling: TdxLayoutItem;
    edtPhysical1: TcxTextEdit;
    edtPhysical2: TcxTextEdit;
    edtPhysical3: TcxTextEdit;
    edtPhysical4: TcxTextEdit;
    edtPhysicalCode: TcxTextEdit;
    grpPhysical: TdxLayoutGroup;
    grpPostal: TdxLayoutGroup;
    grpBilling: TdxLayoutGroup;
    grpPhysPostalControl: TdxLayoutGroup;
    grpBillingControls: TdxLayoutGroup;
    litPhysical2: TdxLayoutItem;
    litPhysical3: TdxLayoutItem;
    litPhysical4: TdxLayoutItem;
    litPhysicalCode: TdxLayoutItem;
    litPostal2: TdxLayoutItem;
    litPostal3: TdxLayoutItem;
    litPostal4: TdxLayoutItem;
    litPostalCode: TdxLayoutItem;
    edtPostal1: TcxTextEdit;
    edtPostal2: TcxTextEdit;
    edtPostal3: TcxTextEdit;
    edtPostal4: TcxTextEdit;
    edtPostalCode: TcxTextEdit;
    edtBilling1: TcxTextEdit;
    edtBilling2: TcxTextEdit;
    edtBilling3: TcxTextEdit;
    edtBilling4: TcxTextEdit;
    edtBillingCode: TcxTextEdit;
    litBilling2: TdxLayoutItem;
    litBilling3: TdxLayoutItem;
    litBilling4: TdxLayoutItem;
    litBillingCode: TdxLayoutItem;
    grpBillingDetails: TdxLayoutGroup;
    btnPhysicalToPostal: TcxButton;
    btnPostalToPhysical: TcxButton;
    btnPhysicalToBilling: TcxButton;
    btnBillingToPhysical: TcxButton;
    btnBillingToPostal: TcxButton;
    btnPostalToBilling: TcxButton;
    tipPhysicalTopostal: TdxScreenTip;
    tipPostalToPhysical: TdxScreenTip;
    tipPhysicalToBilling: TdxScreenTip;
    tipBillingToPhysical: TdxScreenTip;
    tipBillingToPostal: TdxScreenTip;
    tipPostalToBilling: TdxScreenTip;
    spc2: TdxLayoutEmptySpaceItem;
    spc3: TdxLayoutEmptySpaceItem;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure Validate;
  public
    { Public declarations }
  end;

var
  AddressDetailFrm: TAddressDetailFrm;

implementation

{$R *.dfm}

uses
  MT_DM,
  VBCommonValues;

procedure TAddressDetailFrm.FormCreate(Sender: TObject);
begin
  inherited;
  //  Width = 615, Height = 495
  if MTDM.DBAction = acModify then
  begin
    edtPhysical1.Text := MTDM.cdsAddress.FieldByName('PHYSICAL1').AsString;
    edtPhysical2.Text := MTDM.cdsAddress.FieldByName('PHYSICAL2').AsString;
    edtPhysical3.Text := MTDM.cdsAddress.FieldByName('PHYSICAL3').AsString;
    edtPhysical4.Text := MTDM.cdsAddress.FieldByName('PHYSICAL4').AsString;
    edtPhysicalCode.Text := MTDM.cdsAddress.FieldByName('PHYSICAL_CODE').AsString;

    edtPostal1.Text := MTDM.cdsAddress.FieldByName('POSTAL1').AsString;
    edtPostal2.Text := MTDM.cdsAddress.FieldByName('POSTAL2').AsString;
    edtPostal3.Text := MTDM.cdsAddress.FieldByName('POSTAL3').AsString;
    edtPostal4.Text := MTDM.cdsAddress.FieldByName('POSTAL4').AsString;
    EdtPostalCode.Text := MTDM.cdsAddress.FieldByName('POSTAL_CODE').AsString;

    edtBilling1.Text := MTDM.cdsAddress.FieldByName('BILLING1').AsString;
    edtBilling2.Text := MTDM.cdsAddress.FieldByName('BILLING2').AsString;
    edtBilling3.Text := MTDM.cdsAddress.FieldByName('BILLING3').AsString;
    edtBilling4.Text := MTDM.cdsAddress.FieldByName('BILLING4').AsString;
    edtBillingCode.Text := MTDM.cdsAddress.FieldByName('BILLING_CODE').AsString;
  end;
end;

procedure TAddressDetailFrm.Validate;
begin
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

  MTDM.FFieldValue.Billing1 := edtBilling1.Text;
  MTDM.FFieldValue.Billing2 := edtBilling2.Text;
  MTDM.FFieldValue.Billing3 := edtBilling3.Text;
  MTDM.FFieldValue.Billing4 := edtBilling4.Text;
  MTDM.FFieldValue.BillingCode := edtBillingCode.Text;

  ModalResult := mrOK;
end;

end.

