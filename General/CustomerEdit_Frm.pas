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
  dxCustomHint, cxHint;

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
  inherited;
  Validate;
end;

procedure TCustomerEditFrm.DoTradingAsSameAsCompanyName(Sender: TObject);
begin
  inherited;
  edtTradingAs.EditValue :=  edtCustomerName.EditValue;
end;

procedure TCustomerEditFrm.DoBillToSameAsCompanyName(Sender: TObject);
begin
  inherited;
  edtBillTo.EditValue :=  edtCustomerName.EditValue;
end;

procedure TCustomerEditFrm.edtCoNoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := UpCase(Key);
end;

procedure TCustomerEditFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Caption := 'Customer Insert/Edit Form';
  Self.Height := 660;
  Self.Width := 850;
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
  TcxDateEditProperties(edtCreated.Properties).Buttons.Items[0].Visible := False;
  TcxDateEditProperties(edtModified.Properties).Buttons.Items[0].Visible := False;

  if VBBaseDM.DBAction = acInsert then
  begin
    litCustomerName.Visible := True;
    grpIndividual.Visible := False;
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
  end
//{$IFDEF DEBUG}
//  else
//  begin
//    lucCustomerType.EditValue := 2;
//    edtCustomerName.Text := 'Flippie Gouws cc';
////    edtFirstName.Text := '';
////    edtLastName.Text := '';
////    edtInitials.Text := '';
//    edtCoNo.Text := 'CK1249/12002';
//    lucStatus.EditValue := 1;
//    edtTradingAs.Text := 'Flippie Gouws cc';
////    edtBillTo.Text jj
//    cbxIsActive.Checked := True;
//    lucYearEnd.EditValue := 2;
//    edtTaxNo.Text := '987654321';
//    lucTaxOffice.EditValue := 9;
//    lucARMonth.EditValue := 3;
//    edtVATNo.Text := '316497';
//    lucVATMonth.EditValue := 4;
//    lucVATOffice.EditValue := 1;
//    lucVATCountry.EditValue := 2;
//    edtVATCustomsCode.Text := 'ZA2468';
//    edtPAYENo.Text := '654258';
//    edtUIFNo.Text := '467153';
//    edtSDLNo.Text := '456852';
//    edtWCNo.Text := '951753';
////    dteARCompletionDate.Date := EncodeDate(2020, 6, 30);
//    edtEFiling.Text := 'Hello';
//    edtEFUserName.Text := 'flippie';
//    edtEFPassword.Text := 'qwer123';
//    edtPastelAccCode.Text := 'FLIP003';
//    edtVBTaxAccCode.Text := 'FG987';
//    cbxProvTaxPayer.Checked := True;
//    cbxLivingWill.Checked := False;
//    cbxOrganDonor.Checked := False;
//    dteCreated.Date := Now;
//    dteModified.date := Now;
//  end;
//{$ENDIF}
    ;
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
  MTDM.FFieldValue.PayeNo := edtPAYENo.Text;
  MTDM.FFieldValue.UifNo := edtUIFNo.Text;
  MTDM.FFieldValue.SDLNo := edtSDLNo.Text;
  MTDM.FFieldValue.WCNo := edtWCNo.Text;
//  if VarIsNull(dteARCompletionDate.EditValue) then

//  if Length(Trim(dteARCompletionDate.Text)) = 0 then
//    MTDM.FFieldValue.ARCompletionDate := EncodeDate(1899, 12, 30)
//  else
//    MTDM.FFieldValue.ARCompletionDate := dteARCompletionDate.Date;

  if (FormatDatetime('dd/MM/yyyy', dteARCompletionDate.Date) <> '30/12/1899')
    and (FormatDatetime('dd/MM/yyyy', dteARCompletionDate.Date) <> '00/00/0000') then
////    MTDM.FFieldValue.ARCompletionDate := -693592
////  else
//    MTDM.FFieldValue.ARCompletionDate := dteARCompletionDate.Date;

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

