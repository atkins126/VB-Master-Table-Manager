unit AddressDetail_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, Vcl.Menus, System.ImageList, Vcl.ImgList,
  Vcl.Controls, Vcl.Dialogs, System.Actions, Vcl.ActnList, Vcl.StdCtrls,

  VBBase_DM, BaseCustomerEdit_Frm, CommonValues, VBCommonValues,

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
    procedure btnPhysicalToPostalClick(Sender: TObject);
    procedure btnPostalToPhysicalClick(Sender: TObject);
    procedure btnPhysicalToBillingClick(Sender: TObject);
    procedure btnBillingToPhysicalClick(Sender: TObject);
    procedure btnBillingToPostalClick(Sender: TObject);
    procedure btnPostalToBillingClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
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
  MT_DM;

procedure TAddressDetailFrm.btnPhysicalToPostalClick(Sender: TObject);
begin
  inherited;
  edtPostal1.Text := edtPhysical1.Text;
  edtPostal2.Text := edtPhysical2.Text;
  edtPostal3.Text := edtPhysical3.Text;
  edtPostal4.Text := edtPhysical4.Text;
  EdtPostalCode.Text := edtPhysicalCode.Text;
end;

procedure TAddressDetailFrm.btnPostalToPhysicalClick(Sender: TObject);
begin
  inherited;
  edtPhysical1.Text := edtPostal1.Text;
  edtPhysical2.Text := edtPostal2.Text;
  edtPhysical3.Text := edtPostal3.Text;
  edtPhysical4.Text := edtPostal4.Text;
  edtPhysicalCode.Text := EdtPostalCode.Text;
end;

procedure TAddressDetailFrm.btnPhysicalToBillingClick(Sender: TObject);
begin
  inherited;
  edtBilling1.Text := edtPhysical1.Text;
  edtBilling2.Text := edtPhysical2.Text;
  edtBilling3.Text := edtPhysical3.Text;
  edtBilling4.Text := edtPhysical4.Text;
  edtBillingCode.Text := edtPhysicalCode.Text;
end;

procedure TAddressDetailFrm.btnBillingToPhysicalClick(Sender: TObject);
begin
  inherited;
  edtPhysical1.Text := edtBilling1.Text;
  edtPhysical2.Text := edtBilling2.Text;
  edtPhysical3.Text := edtBilling3.Text;
  edtPhysical4.Text := edtBilling4.Text;
  edtPhysicalCode.Text := edtBillingCode.Text;
end;

procedure TAddressDetailFrm.btnBillingToPostalClick(Sender: TObject);
begin
  inherited;
  edtPostal1.Text := edtBilling1.Text;
  edtPostal2.Text := edtBilling2.Text;
  edtPostal3.Text := edtBilling3.Text;
  edtPostal4.Text := edtBilling4.Text;
  EdtPostalCode.Text := edtBillingCode.Text;
end;

procedure TAddressDetailFrm.btnOKClick(Sender: TObject);
begin
  inherited;
  Validate;
end;

procedure TAddressDetailFrm.btnPostalToBillingClick(Sender: TObject);
begin
  inherited;
  edtBilling1.Text := edtPostal1.Text;
  edtBilling2.Text := edtPostal2.Text;
  edtBilling3.Text := edtPostal3.Text;
  edtBilling4.Text := edtPostal4.Text;
  edtBillingCode.Text := EdtPostalCode.Text;
end;

procedure TAddressDetailFrm.FormCreate(Sender: TObject);
begin
  inherited;
  //  Width = 615, Height = 495
  MTDM.ClearFieldValues;

  if VBBaseDM.DBAction = acEdit then
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

  edtPhysical1.Properties.OnChange :=  ValueChanged;
  edtPhysical2.Properties.OnChange :=  ValueChanged;
  edtPhysical3.Properties.OnChange :=  ValueChanged;
  edtPhysical4.Properties.OnChange :=  ValueChanged;
  edtPhysicalCode.Properties.OnChange :=  ValueChanged;

  edtPostal1.Properties.OnChange :=  ValueChanged;
  edtPostal2.Properties.OnChange :=  ValueChanged;
  edtPostal3.Properties.OnChange :=  ValueChanged;
  edtPostal4.Properties.OnChange :=  ValueChanged;
  edtPostalCode.Properties.OnChange :=  ValueChanged;

  edtBilling1.Properties.OnChange :=  ValueChanged;
  edtBilling2.Properties.OnChange :=  ValueChanged;
  edtBilling3.Properties.OnChange :=  ValueChanged;
  edtBilling4.Properties.OnChange :=  ValueChanged;
  edtBillingCode.Properties.OnChange :=  ValueChanged;
end;

procedure TAddressDetailFrm.Validate;
begin
  MTDM.FieldValue.Physical1 := edtPhysical1.Text;
  MTDM.FieldValue.Physical2 := edtPhysical2.Text;
  MTDM.FieldValue.Physical3 := edtPhysical3.Text;
  MTDM.FieldValue.Physical4 := edtPhysical4.Text;
  MTDM.FieldValue.PhysicalCode := edtPhysicalCode.Text;

  MTDM.FieldValue.Postal1 := edtPostal1.Text;
  MTDM.FieldValue.Postal2 := edtPostal2.Text;
  MTDM.FieldValue.Postal3 := edtPostal3.Text;
  MTDM.FieldValue.Postal4 := edtPostal4.Text;
  MTDM.FieldValue.PostalCode := edtPostalCode.Text;

  MTDM.FieldValue.Billing1 := edtBilling1.Text;
  MTDM.FieldValue.Billing2 := edtBilling2.Text;
  MTDM.FieldValue.Billing3 := edtBilling3.Text;
  MTDM.FieldValue.Billing4 := edtBilling4.Text;
  MTDM.FieldValue.BillingCode := edtBillingCode.Text;

  ModalResult := mrOK;
end;

end.

