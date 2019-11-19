unit VehicleDetail_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, Vcl.Menus, System.ImageList, Vcl.ImgList,
  Vcl.Controls, Vcl.Dialogs, System.Actions, Vcl.ActnList, Vcl.StdCtrls,
  Vcl.ComCtrls,

  BaseCustomerEdit_Frm, CommonValues,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxContainer, cxEdit, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, dxScreenTip, dxCustomHint, cxHint, cxImageList,
  dxLayoutLookAndFeels, cxClasses, cxStyles, dxLayoutContainer, cxDBLabel,
  cxButtons, cxLabel, dxLayoutControl, dxCore, cxDateUtils, cxCheckBox,
  cxCurrencyEdit, cxMemo, cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TVehicleDetailFrm = class(TBaseCustomerEditFrm)
    lucVehicleMake: TcxLookupComboBox;
    edtRegNo: TcxTextEdit;
    dteRenewlDate: TcxDateEdit;
    memComment: TcxMemo;
    lblReq1: TcxLabel;
    lblReq2: TcxLabel;
    lblReq3: TcxLabel;
    edtModel: TcxTextEdit;
    edtYear: TcxCurrencyEdit;
    cbxMaintenancePlan: TcxCheckBox;
    lblReq4: TcxLabel;
    lblReq5: TcxLabel;
    grpMake: TdxLayoutGroup;
    grpRegNo: TdxLayoutGroup;
    grpRenewalDate: TdxLayoutGroup;
    litMake: TdxLayoutItem;
    litModel: TdxLayoutItem;
    litRegNo: TdxLayoutItem;
    litRenewalDate: TdxLayoutItem;
    litMaintenancePlan: TdxLayoutItem;
    litComment: TdxLayoutItem;
    litReq1: TdxLayoutItem;
    litReq2: TdxLayoutItem;
    litReq3: TdxLayoutItem;
    litReq4: TdxLayoutItem;
    litReq5: TdxLayoutItem;
    litYear: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
    procedure Validate;
  public
    { Public declarations }
  end;

var
  VehicleDetailFrm: TVehicleDetailFrm;

implementation

{$R *.dfm}

uses
  MT_DM,
  Lookup_DM,
  RUtils;

procedure TVehicleDetailFrm.btnOKClick(Sender: TObject);
begin
  inherited;
  Validate;
end;

procedure TVehicleDetailFrm.FormCreate(Sender: TObject);
begin
  inherited;
// Width = 520; Height = 360
  lucVehicleMake.Properties.ListSource := LookupDM.dtsVehicleMake;
  edtYear.Properties.MinValue :=  1950;
  edtYear.Properties.MaxValue :=  CurrentYear;

  if MTDM.DBAction = acModify then
  begin
    lucVehicleMake.EditValue := MTDM.cdsVehicle.FieldByName('VEHICLE_MAKE_ID').AsInteger;
    edtModel.Text := MTDM.cdsVehicle.FieldByName('MODEL').AsString;
    edtRegNo.Text := MTDM.cdsVehicle.FieldByName('REG_NO').AsString;
    edtYear.Value := MTDM.cdsVehicle.FieldByName('THE_YEAR').AsInteger;
    dteRenewlDate.Date := MTDM.cdsVehicle.FieldByName('RENEWAL_DATE').AsDateTime;
    cbxMaintenancePlan.Checked := IntegerToBoolean(MTDM.cdsVehicle.FieldByName('MAINTENANCE_PLAN').AsInteger);
    memComment.Text := MTDM.cdsVehicle.FieldByName('COMMENT').AsString;
  end;
end;

procedure TVehicleDetailFrm.Validate;
begin
  if SameText(lucVehicleMake.Text, '') then
    raise EValidateException.Create('Vehicle make must have a value');

  if SameText(TrimAll(edtModel.Text), '') then
    raise EValidateException.Create('Vehicle model must have a value');

  if SameText(TrimAll(edtRegNo.Text), '') then
    raise EValidateException.Create('Vehicle registration number must have a value');

  if SameText(edtYear.Text, '') then
    raise EValidateException.Create('Salutation must have a value');

  MTDM.FFieldValue.VehicleMakeID := VarAsType(lucVehicleMake.EditValue, varInteger);
  MTDM.FFieldValue.VehicleMake := lucVehicleMake.Text;
  MTDM.FFieldValue.VehicleModel := edtModel.Text;
  MTDM.FFieldValue.VehicleRegNo := edtRegNo.Text;
  MTDM.FFieldValue.YearOfManufacture := Trunc(edtYear.Value);
  MTDM.FFieldValue.LicenceRenewalDate := dteRenewlDate.Date;
  MTDM.FFieldValue.MaintenancePlan :=  BooleanToInteger(cbxMaintenancePlan.Checked);
  MTDM.FFieldValue.Comment :=  memComment.Text;

  ModalResult := mrOK;
end;

end.

