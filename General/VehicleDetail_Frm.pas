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
    edtModel: TcxTextEdit;
    edtYear: TcxCurrencyEdit;
    cbxMaintenancePlan: TcxCheckBox;
    grpMake: TdxLayoutGroup;
    grpRegNo: TdxLayoutGroup;
    grpRenewalDate: TdxLayoutGroup;
    litMake: TdxLayoutItem;
    litModel: TdxLayoutItem;
    litRegNo: TdxLayoutItem;
    litRenewalDate: TdxLayoutItem;
    litMaintenancePlan: TdxLayoutItem;
    litComment: TdxLayoutItem;
    litYear: TdxLayoutItem;
    litCharCount: TdxLayoutItem;
    lblCharCount: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure edtRegNoKeyPress(Sender: TObject; var Key: Char);
    procedure memCommentPropertiesChange(Sender: TObject);
    procedure dteRenewlDatePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
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
  VBBase_DM,
  MT_DM,
  Lookup_DM,
  RUtils;

procedure TVehicleDetailFrm.btnOKClick(Sender: TObject);
begin
  inherited;
  if ValidationError then
  begin
    ValidationError := False;
    raise EValidateException.Create('A validation error has been detected. Please correct and try again or cancel the transactoin.');
  end;
//    DisplayMsg(
//      Application.Title,
//      'Input Validation',
//      'A validation error has been detected. Please correct and try again or cancel the transactoin.',
//      mtError,
//      [mbOK]
//      );

  Validate;
end;

procedure TVehicleDetailFrm.dteRenewlDatePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  ErrorText := '';
  ValidationError := Error;
  if Error then
  begin
    ErrorText := 'Invalid date: ' + DisplayValue + ' for renewal date. Please cancel or correct.';
    raise EValidateException.Create(ErrorText);
  end;
end;

procedure TVehicleDetailFrm.edtRegNoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := UpCase(Key);
end;

procedure TVehicleDetailFrm.FormCreate(Sender: TObject);
begin
  inherited;
// Width = 520; Height = 360
  MTDM.ClearFieldValues;
  lucVehicleMake.Properties.ListSource := LookupDM.dtsVehicleMake;
//  edtYear.Properties.MinValue :=  1950;
  edtYear.Properties.MaxValue := YearInt(Date);
//  edtYear.Value := 0;
  lblCharCount.Caption := 'Characters Left: ' + memComment.Properties.MaxLength.ToString;
  ValidationError := False;

  if VBBaseDM.DBAction = acModify then
  begin
    lucVehicleMake.EditValue := MTDM.cdsVehicle.FieldByName('VEHICLE_MAKE_ID').AsInteger;
    edtModel.Text := MTDM.cdsVehicle.FieldByName('VEHICLE_MODEL').AsString;
    edtRegNo.Text := MTDM.cdsVehicle.FieldByName('REG_NO').AsString;
    edtYear.Value := MTDM.cdsVehicle.FieldByName('THE_YEAR').AsInteger;
    dteRenewlDate.Date := MTDM.cdsVehicle.FieldByName('RENEWAL_DATE').AsDateTime;
    cbxMaintenancePlan.Checked := IntegerToBoolean(MTDM.cdsVehicle.FieldByName('MAINTENANCE_PLAN').AsInteger);
    memComment.Text := MTDM.cdsVehicle.FieldByName('COMMENT').AsString;
  end;
end;

procedure TVehicleDetailFrm.memCommentPropertiesChange(Sender: TObject);
begin
  inherited;

  lblCharCount.Caption := 'Characters left: ' + IntToStr(memComment.Properties.MaxLength - Length(memComment.Text));
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
    raise EValidateException.Create('Manufacturing year must have a value');

  if SameText(dteRenewlDate.Text, '') then
    raise EValidateException.Create('Renewal date must have a value');

  MTDM.FFieldValue.VehicleMakeID := VarAsType(lucVehicleMake.EditValue, varInteger);
  MTDM.FFieldValue.VehicleMake := lucVehicleMake.Text;
  MTDM.FFieldValue.VehicleModel := edtModel.Text;
  MTDM.FFieldValue.VehicleRegNo := edtRegNo.Text;
  MTDM.FFieldValue.YearOfManufacture := Trunc(edtYear.Value);
  MTDM.FFieldValue.LicenceRenewalDate := dteRenewlDate.Date;
  MTDM.FFieldValue.MaintenancePlan := cbxMaintenancePlan.Checked;
  MTDM.FFieldValue.Comment := memComment.Text;

  ModalResult := mrOK;
end;

end.

