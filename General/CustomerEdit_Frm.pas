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
  Vcl.ComCtrls, dxCore, cxDateUtils, cxCalendar, RUtils, dxScreenTip,
  dxCustomHint, cxHint, cxDBEdit, cxCurrencyEdit;

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
    litPAYENo: TdxLayoutItem;
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
    edtPAYENo: TcxTextEdit;
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
    edtCreated: TcxDateEdit;
    edtModified: TcxDateEdit;
    grpIndividual: TdxLayoutGroup;
    litFirstName: TdxLayoutItem;
    litLastName: TdxLayoutItem;
    litInitials: TdxLayoutItem;
    edtFirstName: TcxTextEdit;
    edtLastName: TcxTextEdit;
    edtInitials: TcxTextEdit;
    styMandatory: TcxEditStyleController;
    litLegend: TdxLayoutItem;
    litUIFNo: TdxLayoutItem;
    edtUIFNo: TcxTextEdit;
    grpTradingAs: TdxLayoutGroup;
    litTradingAsSameAsName: TdxLayoutItem;
    btnTradingAsSameAsName: TcxButton;
    styHintController: TcxHintStyleController;
    repScreenTip: TdxScreenTipRepository;
    tipTradingAsSameAsName: TdxScreenTip;
    actTradingAsSameAsName: TAction;
    btnBillToSameAsName: TcxButton;
    grpBillTo: TdxLayoutGroup;
    litBillToSameAsName: TdxLayoutItem;
    tipBillToSameAsName: TdxScreenTip;
    actBillToSameAsName: TAction;
    grpIDNumber: TdxLayoutGroup;
    litIDNumber: TdxLayoutItem;
    edtIDNumber: TcxTextEdit;
    lucSalutation: TcxLookupComboBox;
    litSalutation: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure lucCustomerTypePropertiesEditValueChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure edtCoNoKeyPress(Sender: TObject; var Key: Char);
    procedure DoTradingAsSameAsCompanyName(Sender: TObject);
    procedure DoBillToSameAsCompanyName(Sender: TObject);
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
  Validate;
end;

procedure TCustomerEditFrm.DoTradingAsSameAsCompanyName(Sender: TObject);
begin
  edtTradingAs.EditValue := edtCustomerName.EditValue;
end;

procedure TCustomerEditFrm.DoBillToSameAsCompanyName(Sender: TObject);
begin
  edtBillTo.EditValue := edtCustomerName.EditValue;
end;

procedure TCustomerEditFrm.edtCoNoKeyPress(Sender: TObject; var Key: Char);
begin
  Key := UpCase(Key);
end;

procedure TCustomerEditFrm.FormCreate(Sender: TObject);
begin
  Caption := 'Customer Insert/Edit Form';
  Self.Height := 700;
  Self.Width := 850;
  layMain.Align := alClient;
  MTDM.ClearFieldValues;
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
  lucSalutation.Properties.ListSource := LookupDM.dtsCustomerSalutation;

//  TcxLookupComboBoxProperties(lucCustomerType.Properties).Buttons.Items[0].Visible := False;
  TcxDateEditProperties(edtCreated.Properties).Buttons.Items[0].Visible := False;
  TcxDateEditProperties(edtModified.Properties).Buttons.Items[0].Visible := False;

  if VBBaseDM.DBAction = acInsert then
  begin
    litCustomerName.Visible := True;
    grpIndividual.Visible := False;
    grpIDNumber.Visible := False;
    cbxIsActive.Checked := True;
  end;

  if VBBaseDM.DBAction = acInsert then
  begin
    edtCreated.Date := Now;
    edtModified.date := Now;
  end
  else
  begin
    lucCustomerType.EditValue := MTDM.cdsCustomer.FieldByName('CUSTOMER_TYPE_ID').AsInteger;
    edtCustomerName.Text := MTDM.cdsCustomer.FieldByName('NAME').AsString;
    edtFirstName.Text := MTDM.cdsCustomer.FieldByName('FIRST_NAME').AsString;
    edtLastName.Text := MTDM.cdsCustomer.FieldByName('LAST_NAME').AsString;

    if not VarisNull(MTDM.cdsCustomer.FieldByName('SALUTATION_ID').Value) then
      lucSalutation.EditValue := MTDM.cdsCustomer.FieldByName('SALUTATION_ID').AsInteger;

    edtIDNumber.Text := MTDM.cdsCustomer.FieldByName('ID_NUMBER').AsString;
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
    edtPAYENo.Text := MTDM.cdsCustomer.FieldByName('PAYE_NO').AsString;
    edtUIFNo.Text := MTDM.cdsCustomer.FieldByName('UIF_NO').AsString;
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
    edtCreated.Date := MTDM.cdsCustomer.FieldByName('DATE_CREATED').AsDateTime;
    edtModified.date := MTDM.cdsCustomer.FieldByName('DATE_MODIFIED').AsDateTime;
  end;
end;

procedure TCustomerEditFrm.FormShow(Sender: TObject);
begin
  Screen.Cursor := crDefault;
end;

procedure TCustomerEditFrm.lucCustomerTypePropertiesEditValueChanged(Sender: TObject);
begin
  case lucCustomerType.EditValue of
    // Individual or Sole Proprietor
    4, 7:
      begin
        grpIndividual.Visible := True;
        grpIDNumber.Visible := True;
      end
  else
    begin
      grpIndividual.Visible := False;
      grpIDNumber.Visible := False;
    end;
  end;

  litCustomerName.Visible := not grpIndividual.Visible;
end;

procedure TCustomerEditFrm.Validate;
begin
  if SameText(lucCustomerType.Text, '') then
  begin
    if lucCustomerType.CanFocus then
      lucCustomerType.SetFocus;
    raise EValidateException.Create('Customer type must have a value');
  end;

  case lucCustomerType.EditValue of
    4, 7:
      begin
        if SameText(TrimAll(edtFirstName.Text), '') then
        begin
          if edtFirstName.CanFocus then
            edtFirstName.SetFocus;
          raise EValidateException.Create('First name must have a value');
        end;

        if SameText(TrimAll(edtLastName.Text), '') then
        begin
          if edtLastName.CanFocus then
            edtLastName.SetFocus;
          raise EValidateException.Create('Last name must have a value');
        end;
      end;
  else
    if SameText(TrimAll(edtCustomerName.Text), '') then
    begin
      if edtCustomerName.CanFocus then
        edtCustomerName.SetFocus;
      raise EValidateException.Create('Customer name must have a value');
    end;
  end;

  if SameText(lucStatus.Text, '') then
  begin
    if lucStatus.CanFocus then
      lucStatus.SetFocus;
    raise EValidateException.Create('Customer status must have a value');
  end;

  case lucCustomerType.EditValue of
    4:
      begin
        MTDM.FieldValue.FirstName := edtFirstName.Text;
        MTDM.FieldValue.LastName := edtLastName.Text;
        MTDM.FieldValue.Initials := edtInitials.Text;
        MTDM.FieldValue.Name := edtFirstName.Text + ' ' + edtLastName.Text;
      end;
  else
    MTDM.FieldValue.Name := edtCustomerName.Text;
  end;

  MTDM.FieldValue.CustomerTypeID := lucCustomerType.EditValue;
  MTDM.FieldValue.YearEndMonthID := NullToZero(lucYearEnd.EditValue);
  MTDM.FieldValue.TaxOfficeID := NullToZero(lucTaxOffice.EditValue);
  MTDM.FieldValue.VATMonthID := NullToZero(lucVATMonth.EditValue);
  MTDM.FieldValue.VATCountryID := NullToZero(lucVATCountry.EditValue);
  MTDM.FieldValue.VATOfficeID := NullToZero(lucVATOffice.EditValue);
  MTDM.FieldValue.ARMonthID := NullToZero(lucARMonth.EditValue);
  MTDM.FieldValue.StatauID := NullToZero(lucStatus.EditValue);
  MTDM.FieldValue.IsActive := BooleanToInteger(cbxIsActive.Checked);
  MTDM.FieldValue.Initials := Trim(edtInitials.Text);
  MTDM.FieldValue.TradingAs := Trim(edtTradingAs.Text);
  MTDM.FieldValue.BillTo := Trim(edtBillTo.Text);
  MTDM.FieldValue.CoNo := Trim(edtCoNo.Text);
  MTDM.FieldValue.TaxNo := Trim(edtTaxNo.Text);
  MTDM.FieldValue.VATNo := Trim(edtVATNo.Text);
  MTDM.FieldValue.VATCustomsCode := Trim(edtVATCustomsCode.Text);
  MTDM.FieldValue.PayeNo := Trim(edtPAYENo.Text);
  MTDM.FieldValue.UifNo := Trim(edtUIFNo.Text);
  MTDM.FieldValue.SDLNo := Trim(edtSDLNo.Text);
  MTDM.FieldValue.WCNo := Trim(edtWCNo.Text);
  MTDM.FieldValue.IDNumber := Trim(edtIDNumber.Text);

  if not VarIsNull(lucSalutation.EditValue) then
  begin
    MTDM.FieldValue.SalutationID := lucSalutation.EditValue;
    MTDM.FieldValue.Salutation := lucSalutation.Text;
  end;

  if (FormatDatetime('dd/MM/yyyy', dteARCompletionDate.Date) <> '30/12/1899')
    and (FormatDatetime('dd/MM/yyyy', dteARCompletionDate.Date) <> '00/00/0000') then
////    MTDM.FieldValue.ARCompletionDate := -693592
////  else
//    MTDM.FieldValue.ARCompletionDate := dteARCompletionDate.Date;

    MTDM.FieldValue.ARCompletionDate := dteARCompletionDate.Date;
  MTDM.FieldValue.PasteAccCode := edtPastelAccCode.Text;
  MTDM.FieldValue.VBTaxAccCode := edtVBTaxAccCode.Text;
  MTDM.FieldValue.IsProvTaxPayer := BooleanToInteger(cbxProvTaxPayer.Checked);
  MTDM.FieldValue.HasLivingWill := BooleanToInteger(cbxLivingWill.Checked);
  MTDM.FieldValue.IsOrganDonor := BooleanToInteger(cbxOrganDonor.Checked);
  MTDM.FieldValue.EFiling := edtEFiling.Text;
  MTDM.FieldValue.EFUserName := edtEFUserName.Text;
  MTDM.FieldValue.EFPassword := edtEFPassword.Text;

  ModalResult := mrOK;
end;

end.



