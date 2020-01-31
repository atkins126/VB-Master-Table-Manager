unit CustomerEdit_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,

  BaseLayout_Frm, CommonValues,

  cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  System.ImageList, Vcl.ImgList, cxImageList, dxLayoutLookAndFeels,
  System.Actions, Vcl.ActnList, cxClasses, cxStyles, dxLayoutContainer,
  dxLayoutControl, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxLabel, cxTextEdit, cxCheckBox,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxCalendar, RUtils;

type
  TCustomerEditFrm = class(TBaseLayoutFrm)
    grpCustomer: TdxLayoutGroup;
    grpOther: TdxLayoutGroup;
    grpRoot: TdxLayoutGroup;
    litCustomerName: TdxLayoutItem;
    litCoNo: TdxLayoutItem;
    litStatus: TdxLayoutItem;
    litTradingAs: TdxLayoutItem;
    litBillTo: TdxLayoutItem;
    litActive: TdxLayoutItem;
    grpGeneralInfo: TdxLayoutGroup;
    litCustomerType: TdxLayoutItem;
    grpTaxInfo: TdxLayoutGroup;
    litYearEndMonth: TdxLayoutItem;
    litTaxNo: TdxLayoutItem;
    litTaxOffice: TdxLayoutItem;
    litARMonth: TdxLayoutItem;
    grpVATInfo: TdxLayoutGroup;
    litVATNo: TdxLayoutItem;
    litVATOffice: TdxLayoutItem;
    litVATCountry: TdxLayoutItem;
    litCustomsCode: TdxLayoutItem;
    litVATMonth: TdxLayoutItem;
    grpSARS: TdxLayoutGroup;
    litPAYEUIF: TdxLayoutItem;
    litSDLNo: TdxLayoutItem;
    litWCNo: TdxLayoutItem;
    litARCmpletionDate: TdxLayoutItem;
    litEFiling: TdxLayoutItem;
    litEFUserName: TdxLayoutItem;
    litEFPassword: TdxLayoutItem;
    grpMiscellaneous: TdxLayoutGroup;
    litPastelAccCode: TdxLayoutItem;
    litVBTaxAccCode: TdxLayoutItem;
    litLivingWill: TdxLayoutItem;
    litOrganDonor: TdxLayoutItem;
    litCreated: TdxLayoutItem;
    litModified: TdxLayoutItem;
    litProvTaxPayer: TdxLayoutItem;
    grpCustomerHeader: TdxLayoutGroup;
    grpButtons: TdxLayoutGroup;
    litOK: TdxLayoutItem;
    litCancel: TdxLayoutItem;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    sep1: TdxLayoutSeparatorItem;
    litCustomerHeader: TdxLayoutItem;
    lblCustomerHeader: TcxLabel;
    sep2: TdxLayoutSeparatorItem;
    edtCustomerName: TcxTextEdit;
    edtCoNo: TcxTextEdit;
    edtTradingAs: TcxTextEdit;
    edtBillTo: TcxTextEdit;
    lucCustomerType: TcxLookupComboBox;
    lucStatus: TcxLookupComboBox;
    cbxIsActive: TcxCheckBox;
    lucYearEnd: TcxLookupComboBox;
    lucTaxOffice: TcxLookupComboBox;
    lucARMonth: TcxLookupComboBox;
    edtTaxNo: TcxTextEdit;
    lucVATOffice: TcxLookupComboBox;
    lucVATMonth: TcxLookupComboBox;
    lucVATCountry: TcxLookupComboBox;
    edtVATNo: TcxTextEdit;
    edtVATCustomsCode: TcxTextEdit;
    edtPAYEUIF: TcxTextEdit;
    edtSDLNo: TcxTextEdit;
    edtWCNo: TcxTextEdit;
    edtEFiling: TcxTextEdit;
    edtEFUserName: TcxTextEdit;
    edtEFPassword: TcxTextEdit;
    dteARCompletionDate: TcxDateEdit;
    edtPastelAccCode: TcxTextEdit;
    edtVBTaxAccCode: TcxTextEdit;
    cbxProvTaxPayer: TcxCheckBox;
    cbxLivingWill: TcxCheckBox;
    cbxOrganDonor: TcxCheckBox;
    dteCreated: TcxDateEdit;
    dteModified: TcxDateEdit;
    grpIndividual: TdxLayoutGroup;
    litFirstName: TdxLayoutItem;
    litLastName: TdxLayoutItem;
    litInitials: TdxLayoutItem;
    edtFirstName: TcxTextEdit;
    edtLastName: TcxTextEdit;
    edtInitials: TcxTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure lucCustomerTypePropertiesEditValueChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
    procedure Validate;
  public
    { Public declarations }
  end;

var
  CustomerEditFrm: TCustomerEditFrm;

implementation

{$R *.dfm}

uses
  VBBase_DM,
  Lookup_DM,
  MT_DM,
  VBCommonValues;

procedure TCustomerEditFrm.btnOKClick(Sender: TObject);
begin
  inherited;
  Validate;
end;

procedure TCustomerEditFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Caption := 'Customer Insert/Edit Form';
  Self.Height := 660;
  Self.Width := 830;
  layMain.Align := alClient;
  lblCustomerHeader.Style.TextColor := RootLookAndFeel.SkinPainter.DefaultSelectionColor;
  lblCustomerHeader.Style.Font.Color := RootLookAndFeel.SkinPainter.DefaultSelectionColor;
  lucCustomerType.Properties.ListSource := LookupDM.dtsCustomerType;
  lucStatus.Properties.ListSource := LookupDM.dtsCustomerStatus;
  lucYearEnd.Properties.ListSource := LookupDM.dtsMonthOfyear;
  lucTaxOffice.Properties.ListSource := LookupDM.dtsTaxOffice;
  lucARMonth.Properties.ListSource := LookupDM.dtsARMonthOfyear;
  lucVATMonth.Properties.ListSource := LookupDM.dtsVATMonth;
  lucVATOffice.Properties.ListSource := LookupDM.dtsVATOffice;
  lucVATCountry.Properties.ListSource := LookupDM.dtsCountry;

//  TcxLookupComboBoxProperties(lucCustomerType.Properties).Buttons.Items[0].Visible := False;
  TcxDateEditProperties(dteCreated.Properties).Buttons.Items[0].Visible := False;
  TcxDateEditProperties(dteModified.Properties).Buttons.Items[0].Visible := False;

  if VBBaseDM.DBAction = acInsert then
  begin
    litCustomerName.Visible := True;
    grpIndividual.Visible := False;
    cbxIsActive.Checked := True;
  end;

  if VBBaseDM.DBAction = acModify then
  begin
    lucCustomerType.EditValue := MTDM.cdsCustomer.FieldByName('CUSTOMER_TYPE_ID').AsInteger;
    edtCustomerName.Text := MTDM.cdsCustomer.FieldByName('NAME').AsString;
    edtFirstName.Text := MTDM.cdsCustomer.FieldByName('FIRST_NAME').AsString;
    edtLastName.Text := MTDM.cdsCustomer.FieldByName('LAST_NAME').AsString;
    edtInitials.Text := MTDM.cdsCustomer.FieldByName('INITIALS').AsString;
    edtCoNo.Text := MTDM.cdsCustomer.FieldByName('CO_NO').AsString;
    lucStatus.EditValue := MTDM.cdsCustomer.FieldByName('STATUS_ID').AsInteger;
    edtTradingAs.Text := MTDM.cdsCustomer.FieldByName('TRADING_AS').AsString;
    edtBillTo.Text := MTDM.cdsCustomer.FieldByName('BILL_TO').AsString;
    cbxIsActive.Checked := IntegerToBoolean(MTDM.cdsCustomer.FieldByName('IS_ACTIVE').AsInteger);
    lucYearEnd.EditValue := MTDM.cdsCustomer.FieldByName('YEAR_END_MONTH_ID').Asinteger;
    edtTaxNo.Text := MTDM.cdsCustomer.FieldByName('TAX_NO').AsString;
    lucTaxOffice.EditValue := MTDM.cdsCustomer.FieldByName('TAX_OFFICE_ID').AsInteger;
    lucARMonth.EditValue := MTDM.cdsCustomer.FieldByName('AR_MONTH_ID').Asinteger;
    edtVATNo.Text := MTDM.cdsCustomer.FieldByName('VAT_NO').AsString;
    lucVATMonth.EditValue := MTDM.cdsCustomer.FieldByName('VAT_MONTH_ID').AsInteger;
    lucVATOffice.EditValue := MTDM.cdsCustomer.FieldByName('VAT_OFFICE_ID').AsInteger;
    lucVATCountry.EditValue := MTDM.cdsCustomer.FieldByName('VAT_COUNTRY_ID').AsInteger;
    edtVATCustomsCode.Text := MTDM.cdsCustomer.FieldByName('VAT_CUSTOMS_CODE').AsString;
    edtPAYEUIF.Text := MTDM.cdsCustomer.FieldByName('PAYE_UIF_NO').AsString;
    edtSDLNo.Text := MTDM.cdsCustomer.FieldByName('SDL_NO').AsString;
    edtWCNo.Text := MTDM.cdsCustomer.FieldByName('WC_NO').AsString;
    if FormatDatetime('dd/MM/yyyy', MTDM.cdsCustomer.FieldByName('AR_COMPLETION_DATE').AsDateTime) <> '30/12/1899' then
      dteARCompletionDate.Date := MTDM.cdsCustomer.FieldByName('AR_COMPLETION_DATE').AsDateTime;
    edtEFiling.Text := MTDM.cdsCustomer.FieldByName('EFILING').AsString;
    edtEFUserName.Text := MTDM.cdsCustomer.FieldByName('EF_USER_NAME').AsString;
    edtEFPassword.Text := MTDM.cdsCustomer.FieldByName('EF_PASSWORD').AsString;
    edtPastelAccCode.Text := MTDM.cdsCustomer.FieldByName('PASTEL_ACC_CODE').AsString;
    edtVBTaxAccCode.Text := MTDM.cdsCustomer.FieldByName('VB_TAX_ACC_CODE').AsString;
    cbxProvTaxPayer.Checked := IntegerToBoolean(MTDM.cdsCustomer.FieldByName('IS_PROV_TAX_PAYER').AsInteger);
    cbxLivingWill.Checked := IntegerToBoolean(MTDM.cdsCustomer.FieldByName('HAS_LIVING_WILL').AsInteger);
    cbxOrganDonor.Checked := IntegerToBoolean(MTDM.cdsCustomer.FieldByName('IS_ORGAN_DONOR').Asinteger);
    dteCreated.Date := MTDM.cdsCustomer.FieldByName('DATE_CREATED').AsDateTime;
    dteModified.date := MTDM.cdsCustomer.FieldByName('DATE_MODIFIED').AsDateTime;
  end;
end;

procedure TCustomerEditFrm.FormShow(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crDefault;
end;

procedure TCustomerEditFrm.lucCustomerTypePropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  case lucCustomerType.EditValue of
    // Individual or Sole Proprietor
    4, 7: grpIndividual.Visible := True;
  else
    grpIndividual.Visible := False;
  end;

  litCustomerName.Visible := not grpIndividual.Visible;
end;

procedure TCustomerEditFrm.Validate;
begin
  if SameText(lucCustomerType.Text, '') then
    raise EValidateException.Create('Customer type must have a value');

  case lucCustomerType.EditValue of
    4, 7:
      begin
        if SameText(TrimAll(edtFirstName.Text), '') then
          raise EValidateException.Create('First name must have a value');

        if SameText(TrimAll(edtLastName.Text), '') then
          raise EValidateException.Create('Last name must have a value');
      end;
  else
    if SameText(TrimAll(edtCustomerName.Text), '') then
      raise EValidateException.Create('Customer name must have a value');
  end;

  if SameText(lucStatus.Text, '') then
    raise EValidateException.Create('Customer status must have a value');

  case lucCustomerType.EditValue of
    4:
      begin
        MTDM.FFieldValue.FirstName := edtFirstName.Text;
        MTDM.FFieldValue.LastName := edtLastName.Text;
        MTDM.FFieldValue.Initials := edtInitials.Text;
        MTDM.FFieldValue.Name := edtFirstName.Text + ' ' + edtLastName.Text;
      end;
  else
    MTDM.FFieldValue.Name := edtCustomerName.Text;
  end;

  MTDM.FFieldValue.CustomerTypeID := lucCustomerType.EditValue;
  MTDM.FFieldValue.YearEndMonthID := NullToZero(lucYearEnd.EditValue);
  MTDM.FFieldValue.TaxOfficeID := NullToZero(lucTaxOffice.EditValue);
  MTDM.FFieldValue.VATMonthID := NullToZero(lucVATMonth.EditValue);
  MTDM.FFieldValue.VATCountryID := NullToZero(lucVATCountry.EditValue);
  MTDM.FFieldValue.VATOfficeID := NullToZero(lucVATOffice.EditValue);
  MTDM.FFieldValue.ARMonthID := NullToZero(lucARMonth.EditValue);
  MTDM.FFieldValue.StatauID := NullToZero(lucStatus.EditValue);
  MTDM.FFieldValue.IsActive := BooleanToInteger(cbxIsActive.Checked);
  MTDM.FFieldValue.Initials := edtInitials.Text;
  MTDM.FFieldValue.TradingAs := edtTradingAs.Text;
  MTDM.FFieldValue.BillTo := edtBillTo.Text;
  MTDM.FFieldValue.CoNo := edtCoNo.Text;
  MTDM.FFieldValue.TaxNo := edtTaxNo.Text;
  MTDM.FFieldValue.VATNo := edtVATNo.Text;
  MTDM.FFieldValue.VATCustomsCode := edtVATCustomsCode.Text;
  MTDM.FFieldValue.PayeUifNo := edtPAYEUIF.Text;
  MTDM.FFieldValue.SDLNo := edtSDLNo.Text;
  MTDM.FFieldValue.WCNo := edtWCNo.Text;
  MTDM.FFieldValue.ARCompletionDate := dteARCompletionDate.Date;
  MTDM.FFieldValue.PasteAccCode := edtPastelAccCode.Text;
  MTDM.FFieldValue.VBTaxAccCode := edtVBTaxAccCode.Text;
  MTDM.FFieldValue.IsProvTaxPayer := BooleanToInteger(cbxProvTaxPayer.Checked);
  MTDM.FFieldValue.HasLivingWill := BooleanToInteger(cbxLivingWill.Checked);
  MTDM.FFieldValue.IsOrganDonor := BooleanToInteger(cbxOrganDonor.Checked);
  MTDM.FFieldValue.EFiling := edtEFiling.Text;
  MTDM.FFieldValue.EFUserName := edtEFUserName.Text;
  MTDM.FFieldValue.EFPassword := edtEFPassword.Text;

  ModalResult := mrOK;
end;

end.

