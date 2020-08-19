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
  cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  Data.DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  cxCurrencyEdit, cxCheckBox;

type
//  TcxCustomEditPropertiesAccess = class(TcxCustomEditProperties);

  TDirectorDetailFrm = class(TBaseCustomerEditFrm)
    edtFirstName: TcxTextEdit;
    lucSalutation: TcxLookupComboBox;
    edtMobileNo: TcxTextEdit;
    edtLastName: TcxTextEdit;
    edtOtherName: TcxTextEdit;
    edtTaxNo: TcxTextEdit;
    edtEmailAddress: TcxTextEdit;
    grpName: TdxLayoutGroup;
    grpSalutation: TdxLayoutGroup;
    grpMobileNo: TdxLayoutGroup;
    litFirstName: TdxLayoutItem;
    litLastName: TdxLayoutItem;
    litSalutation: TdxLayoutItem;
    litTaxNo: TdxLayoutItem;
    litMobileNo: TdxLayoutItem;
    litEmailAddress: TdxLayoutItem;
    litOtherName: TdxLayoutItem;
    spc1: TdxLayoutEmptySpaceItem;
    imgNav16: TcxImageList;
    litIDNumber: TdxLayoutItem;
    edtIDNumber: TcxTextEdit;
    litDirectorFromCustomer: TdxLayoutItem;
    cbxDirectorFromCustomer: TcxCheckBox;
    litCustomer: TdxLayoutItem;
    lucCustomer: TcxLookupComboBox;
    styReadOnly: TcxEditStyleController;
    procedure FormCreate(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure lucCompanyGetDisplayText(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AText: string);
    procedure cbxDirectorFromCustomerPropertiesEditValueChanged(Sender: TObject);
    procedure lucCustomerPropertiesEditValueChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lucCustomerPropertiesPopup(Sender: TObject);
  private
    { Private declarations }
    FCustomerID: Integer;

    procedure Validate;
    procedure CmDrawBorder(var Msg: TMessage); message CM_DRAWBORDER;
    procedure SetReadOnlystatus(CanEdit: Boolean);
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

procedure TDirectorDetailFrm.CmDrawBorder(var Msg: TMessage);
begin
  if (TObject(Msg.WParam) is TcxCanvas)
    and (TObject(Msg.LParam) is TcxGridTableDataCellViewInfo) then
    TcxCanvas(Msg.WParam).DrawComplexFrame(TcxGridTableDataCellViewInfo(Msg.LParam).ClientBounds, clRed, clRed, cxBordersAll, 1);
end;

procedure TDirectorDetailFrm.FormCreate(Sender: TObject);
//var
//  OrderByClause, FileName: string;
begin
//  Width := 555;
//  Height := 480;
  Self.Height := 350;
  Self.Width := 565;
  FCustomerID := MTDM.FieldValue.CustomerID;
  MTDM.ClearFieldValues;
  lucSalutation.Properties.ListSource := LookupDM.dtsDirectorSalutationLU;
  lucCustomer.Properties.ListSource := LookupDM.dtsCustomerLookup;
  lucSalutation.Properties.ListSource := LookupDM.dtsDirectorSalutationLU;
//  OrderByClause := ' ORDER BY C."NAME"';
//  FileName := 'Customer Lookup';
//
//  VBBaseDM.GetData(58, LookupDM.cdsCustomerLookup, LookupDM.cdsCustomerLookup.Name, OrderByClause,
//    'C:\Data\Xml\' + FileName + '.xml', LookupDM.cdsCustomerLookup.UpdateOptions.Generatorname,
//    LookupDM.cdsCustomerLookup.UpdateOptions.UpdateTableName);
//
//  if VBBaseDM.DBAction = acEdit then
//  begin
//    edtFirstName.Text := MTDM.cdsDirector.FieldByName('FIRST_NAME').AsString;
//    edtLastName.Text := MTDM.cdsDirector.FieldByName('LAST_NAME').AsString;
//
//    if not VarIsNull(MTDM.cdsDirector.FieldByName('SALUTATION_ID').Value) then
//      lucSalutation.EditValue := MTDM.cdsDirector.FieldByName('SALUTATION_ID').AsInteger;
//
//    edtOtherName.Text := MTDM.cdsDirector.FieldByName('OTHER_NAME').AsString;
//    edtTaxNo.Text := MTDM.cdsDirector.FieldByName('TAX_NO').AsString;
//    edtMobileNo.Text := MTDM.cdsDirector.FieldByName('MOBILE_PHONE').AsString;
//    edtEmailAddress.Text := MTDM.cdsDirector.FieldByName('EMAIL_ADDRESS').AsString;
//
//    if FCustomerID > 0 then
//      lucCustomer.EditValue := FCustomerID;
//  end;
//
//  if VBBaseDM.DBAction = acInsert then
//    lblSubTitle.Caption := 'New Director'
//  else
//    lblSubTitle.Caption := edtFirstName.Text + ' ' + edtLastName.Text;
//
//  edtFirstName.Properties.OnChange := ValueChanged;
//  edtLastName.Properties.OnChange := ValueChanged;
//  lucSalutation.Properties.OnChange := ValueChanged;
//  edtOtherName.Properties.OnChange := ValueChanged;
//  edtTaxNo.Properties.OnChange := ValueChanged;
//  edtMobileNo.Properties.OnChange := ValueChanged;
//  edtEmailAddress.Properties.OnChange := ValueChanged;
end;

procedure TDirectorDetailFrm.FormShow(Sender: TObject);
var
  OrderByClause, FileName: string;
begin
  cbxDirectorFromCustomer.Checked := VBBaseDM.IsCustomer;
  litCustomer.Visible := cbxDirectorFromCustomer.Checked;
  OrderByClause := ' ORDER BY C."NAME"';
  FileName := 'Customer Lookup';

  VBBaseDM.GetData(58, LookupDM.cdsCustomerLookup, LookupDM.cdsCustomerLookup.Name, OrderByClause,
    'C:\Data\Xml\' + FileName + '.xml', LookupDM.cdsCustomerLookup.UpdateOptions.Generatorname,
    LookupDM.cdsCustomerLookup.UpdateOptions.UpdateTableName);

  if VBBaseDM.DBAction = acEdit then
  begin
    edtFirstName.Text := MTDM.cdsDirector.FieldByName('FIRST_NAME').AsString;
    edtLastName.Text := MTDM.cdsDirector.FieldByName('LAST_NAME').AsString;
    edtIDNumber.Text := MTDM.cdsDirector.FieldByName('ID_NUMBER').AsString;

    if not VarIsNull(MTDM.cdsDirector.FieldByName('SALUTATION_ID').Value) then
      lucSalutation.EditValue := MTDM.cdsDirector.FieldByName('SALUTATION_ID').AsInteger;

    edtOtherName.Text := MTDM.cdsDirector.FieldByName('OTHER_NAME').AsString;
    edtTaxNo.Text := MTDM.cdsDirector.FieldByName('TAX_NO').AsString;
    edtMobileNo.Text := MTDM.cdsDirector.FieldByName('MOBILE_PHONE').AsString;
    edtEmailAddress.Text := MTDM.cdsDirector.FieldByName('EMAIL_ADDRESS').AsString;

    if FCustomerID > 0 then
      lucCustomer.EditValue := FCustomerID;
  end;

  if VBBaseDM.DBAction = acInsert then
    lblSubTitle.Caption := 'New Director'
  else
    lblSubTitle.Caption := edtFirstName.Text + ' ' + edtLastName.Text;

  edtFirstName.Properties.OnChange := ValueChanged;
  edtLastName.Properties.OnChange := ValueChanged;
  lucSalutation.Properties.OnChange := ValueChanged;
  edtOtherName.Properties.OnChange := ValueChanged;
  edtTaxNo.Properties.OnChange := ValueChanged;
  edtMobileNo.Properties.OnChange := ValueChanged;
  edtEmailAddress.Properties.OnChange := ValueChanged;

  if cbxDirectorFromCustomer.Checked then
    lucCustomer.SetFocus
  else
    edtFirstName.SetFocus;
end;

procedure TDirectorDetailFrm.btnOKClick(Sender: TObject);
begin
  Validate;
end;

procedure TDirectorDetailFrm.cbxDirectorFromCustomerPropertiesEditValueChanged(Sender: TObject);
begin
  litCustomer.Visible := cbxDirectorFromCustomer.Checked;
  MTDM.ClearFieldValues;
  edtFirstName.Clear;
  edtLastName.Clear;
  lucSalutation.EditValue := Null;
  edtIDNumber.Clear;
  edtTaxNo.Clear;
  edtOtherName.Clear;
  edtMobileNo.Clear;
  edtEmailAddress.Clear;

  SetReadOnlystatus(not cbxDirectorFromCustomer.Checked);

  if cbxDirectorFromCustomer.Checked then
    lucCustomer.SetFocus
  else
    edtFirstName.SetFocus;
end;

procedure TDirectorDetailFrm.lucCompanyGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AText: string);
begin
  MTDM.CompanyName := AText;
end;

procedure TDirectorDetailFrm.lucCustomerPropertiesEditValueChanged(Sender: TObject);
begin
  lucSalutation.EditValue := LookupDM.cdsCustomerLookup.FieldByName('SALUTATION_ID').AsInteger;
  edtFirstName.Text := LookupDM.cdsCustomerLookup.FieldByName('FIRST_NAME').AsString;
  edtLastName.Text := LookupDM.cdsCustomerLookup.FieldByName('LAST_NAME').AsString;
  edtOtherName.Text := LookupDM.cdsCustomerLookup.FieldByName('OTHER_NAME').AsString;
  edtTaxNo.Text := LookupDM.cdsCustomerLookup.FieldByName('TAX_NO').AsString;
  if VBBaseDM.DBAction = acEdit then

end;

procedure TDirectorDetailFrm.lucCustomerPropertiesPopup(Sender: TObject);
begin
  if cbxDirectorFromCustomer.Checked then
    lucCustomer.DroppedDown := False;
end;

procedure TDirectorDetailFrm.SetReadOnlystatus(CanEdit: Boolean);
begin
  if CanEdit then
  begin
    lucCustomer.Style.StyleController := nil;
    lucCustomer.Properties.Buttons.Items[0].Visible := True;
//    TcxCustomEditPropertiesAccess(lucCustomer.Properties).Buttons.Items[0].Visible := True;
    edtFirstName.Style.StyleController := nil;
    edtLastName.Style.StyleController := nil;
    lucSalutation.Style.StyleController := nil;
    edtIDNumber.Style.StyleController := nil;
    edtTaxNo.Style.StyleController := nil;

    lucCustomer.Properties.ReadOnly := False;
    edtFirstName.Properties.ReadOnly := False;
    edtLastName.Properties.ReadOnly := False;
    lucSalutation.Properties.ReadOnly := False;
    edtIDNumber.Properties.ReadOnly := False;
    edtTaxNo.Properties.ReadOnly := False;
  end
  else
  begin
    begin
      lucCustomer.Style.StyleController := nil;
      lucCustomer.Properties.Buttons.Items[0].Visible := False;
//      TcxCustomEditPropertiesAccess(lucCustomer.Properties).Buttons.Items[0].Visible := False;
      edtFirstName.Style.StyleController := styReadOnly;
      edtLastName.Style.StyleController := styReadOnly;
      lucSalutation.Style.StyleController := styReadOnly;
      edtIDNumber.Style.StyleController := styReadOnly;
      edtTaxNo.Style.StyleController := styReadOnly;

      lucCustomer.Properties.ReadOnly := True;
      edtFirstName.Properties.ReadOnly := True;
      edtLastName.Properties.ReadOnly := True;
      lucSalutation.Properties.ReadOnly := True;
      edtIDNumber.Properties.ReadOnly := True;
      edtTaxNo.Properties.ReadOnly := True;
    end;
  end;
end;

procedure TDirectorDetailFrm.Validate;
begin
  if SameText(TrimAll(edtFirstName.Text), '') then
    raise EValidateException.Create('First name must have a value');

  if SameText(TrimAll(edtLastName.Text), '') then
    raise EValidateException.Create('Last name must have a value');

  if SameText(TrimAll(edtTaxNo.Text), '') then
    raise EValidateException.Create('tax number must have a value');

  if not VarIsNull(lucSalutation.EditValue) then
    MTDM.FieldValue.SalutationID := lucSalutation.EditValue;

  MTDM.FieldValue.FirstName := Trim(edtFirstName.Text);
  MTDM.FieldValue.LastName := Trim(edtLastName.Text);
  MTDM.FieldValue.OtherName := Trim(edtOtherName.Text);
  MTDM.FieldValue.TaxNo := Trim(edtTaxNo.Text);
  MTDM.FieldValue.MobileNumber := Trim(edtMobileNo.Text);
  MTDM.FieldValue.EmailAddress := Trim(edtEmailAddress.Text);
  MTDM.FieldValue.IDNumber := Trim(edtIDNumber.Text);

  if cbxDirectorFromCustomer.Checked then
    MTDM.FieldValue.CustomerID := lucCustomer.EditValue
  else
    MTDM.FieldValue.CustomerID := 0;

  ModalResult := mrOK;
end;

end.



