unit Customer_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, System.ImageList, Vcl.ImgList, Vcl.Controls,
  Vcl.Dialogs, System.Actions, Vcl.ActnList, System.StrUtils, Vcl.Menus,
  System.IOUtils, Vcl.StdCtrls, Data.DB,

  BaseLayout_Frm, CommonValues, VBCommonValues,

  FireDAC.Comp.Client,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxScreenTip, dxCustomHint, cxHint, cxClasses, cxStyles,
  cxImageList, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl, cxEdit,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxCurrencyEdit,
  cxDBLookupComboBox, cxTextEdit, cxInplaceContainer, cxVGrid, cxDBVGrid,
  cxDBNavigator, cxButtons, dxLayoutControlAdapters, dxLayoutcxEditAdapters,
  cxContainer, cxMemo, cxDBEdit, cxCalendar, cxCheckBox, cxLabel,
  cxGridInplaceEditForm,

  FireDAC.UI.Intf, FireDAC.VCLUI.Error,
  FireDAC.Stan.Error, FireDAC.Stan.Intf, FireDAC.Comp.UI, FireDAC.Phys.IBWrapper,
  dxSkinMoneyTwins, dxSkinOffice2019Colorful, dxSkinTheBezier,
  dxScrollbarAnnotations, Report_DM, dxBar, cxDropDownEdit, cxBarEditItem;

  // To handle TFDGUIxErrordialog
// FireDAC.UI.Intf, FireDAC.VCLUI.Error,
// FireDAC.Stan.Error, FireDAC.Stan.Intf, FireDAC.Comp.UI, FireDAC.Phys.IBDef,
// FireDAC.Phys, FireDAC.Phys.IBBase, FireDAC.Phys.IB;

type
  DetailDataSetArray = array of TFDMemTable;
  DetailFriendlyNames = array of string;

  TOpenTableParams = record
    ScriptID: Integer;
    DataSet: TFDMemTable;
    DataSetName: string;
    FileName: string;
    GeneratorName: string;
    UpdateTableName: string;
    FieldName: string;
    LocateValue: string;
  end;

  TCustomerFrm = class(TBaseLayoutFrm)
    repScreenTip: TdxScreenTipRepository;
    tipExit: TdxScreenTip;
    tipCloseScreen: TdxScreenTip;
    tipLaunchMasterTableManager: TdxScreenTip;
    styHintController: TcxHintStyleController;
    grdCustomer: TcxGrid;
    viewCustomer: TcxGridDBBandedTableView;
    lvlCustomer: TcxGridLevel;
    edtCustomerID: TcxGridDBBandedColumn;
    lucCustomerType: TcxGridDBBandedColumn;
    lucStatus: TcxGridDBBandedColumn;
    edtName: TcxGridDBBandedColumn;
    edtFirstName: TcxGridDBBandedColumn;
    edtlastName: TcxGridDBBandedColumn;
    edtTaxNo: TcxGridDBBandedColumn;
    grpToolbar: TdxLayoutGroup;
    grpCustomerGrid: TdxLayoutGroup;
    grpDetailGrid: TdxLayoutGroup;
    grpVerticalGrid: TdxLayoutGroup;
    litCustomerGrid: TdxLayoutItem;
    grdVCustomer: TcxDBVerticalGrid;
    litVcustomerGrid: TdxLayoutItem;
    litVNavigator: TdxLayoutItem;
    litNavigator: TdxLayoutItem;
    navCustomer: TcxDBNavigator;
    imgNav: TcxImageList;
    navVCustomer: TcxDBNavigator;
    litCDContactDetail: TdxLayoutItem;
    litContactPerson: TdxLayoutItem;
    litBankingDetail: TdxLayoutItem;
    litDirector: TdxLayoutItem;
    litBeneficiary: TdxLayoutItem;
    litVehicle: TdxLayoutItem;
    litPhysicalAddress: TdxLayoutItem;
    litPostalAddress: TdxLayoutItem;
    litBillingAddress: TdxLayoutItem;
    grdContactDetailCo: TcxGrid;
    viewContactDetailCo: TcxGridDBBandedTableView;
    lvlContactDetailCo: TcxGridLevel;
    edtCDID: TcxGridDBBandedColumn;
    lucCDContactTypeID: TcxGridDBBandedColumn;
    edtCDCusotmerID: TcxGridDBBandedColumn;
    edtCDContactPersonID: TcxGridDBBandedColumn;
    edtCDValue: TcxGridDBBandedColumn;
    memCDComment: TcxDBMemo;
    litlitCDComment: TdxLayoutItem;
    grdPhysicalAddress: TcxDBVerticalGrid;
    grdPostalAddress: TcxDBVerticalGrid;
    grdBillingAddress: TcxDBVerticalGrid;
    edtPhysical1: TcxDBEditorRow;
    edtPhysical2: TcxDBEditorRow;
    edtPhysical3: TcxDBEditorRow;
    edtPhysical4: TcxDBEditorRow;
    edtPhysicaPostalCode: TcxDBEditorRow;
    edtPostal1: TcxDBEditorRow;
    edtPostal2: TcxDBEditorRow;
    edtPostal3: TcxDBEditorRow;
    edtPostal4: TcxDBEditorRow;
    EdtPostalCode: TcxDBEditorRow;
    edtBilling1: TcxDBEditorRow;
    edtBilling2: TcxDBEditorRow;
    edtBilling3: TcxDBEditorRow;
    edtBilling4: TcxDBEditorRow;
    edtBillingPostalCode: TcxDBEditorRow;
    grpContactDetails: TdxLayoutGroup;
    grpCDComment: TdxLayoutGroup;
    grdContactPerson: TcxGrid;
    viewContactPerson: TcxGridDBBandedTableView;
    lvlContactPerson: TcxGridLevel;
    edtCPID: TcxGridDBBandedColumn;
    edtCCustomerID: TcxGridDBBandedColumn;
    lucCPSalutation: TcxGridDBBandedColumn;
    edtCPFirstName: TcxGridDBBandedColumn;
    edtCPLastName: TcxGridDBBandedColumn;
    edtCPInitials: TcxGridDBBandedColumn;
    edtCPOtherName: TcxGridDBBandedColumn;
    lucCPDOB: TcxGridDBBandedColumn;
    edtCPIDNo: TcxGridDBBandedColumn;
    edtCPPassportNo: TcxGridDBBandedColumn;
    cbxCPPrimaryContact: TcxGridDBBandedColumn;
    lucCPJobFunction: TcxGridDBBandedColumn;
    grpContactPerson: TdxLayoutGroup;
    grpCPContactDetail: TdxLayoutGroup;
    grdCPContactDetail: TcxGrid;
    viewCPContactDetail: TcxGridDBBandedTableView;
    lvlCPContactDetail: TcxGridLevel;
    edtCPContactDetailID: TcxGridDBBandedColumn;
    lucCPContactDetailTypeID: TcxGridDBBandedColumn;
    edtCPContactDetailCustomerID: TcxGridDBBandedColumn;
    edtCPContactDetailContactPersonID: TcxGridDBBandedColumn;
    edtwCPContactDetailValue: TcxGridDBBandedColumn;
    litCPContactDetailGrid: TdxLayoutItem;
    litCPContactDetailComment: TdxLayoutItem;
    memCPcontactDetailComment: TcxDBMemo;
    imgNav16: TcxImageList;
    grdBankingDetail: TcxGrid;
    viewBankingDetail: TcxGridDBBandedTableView;
    lvlBankingDetail: TcxGridLevel;
    edtBankDID: TcxGridDBBandedColumn;
    edtBankDCustomerID: TcxGridDBBandedColumn;
    lucBankDBankID: TcxGridDBBandedColumn;
    lucBankDAccountTypeID: TcxGridDBBandedColumn;
    edtBankDBranchCode: TcxGridDBBandedColumn;
    edtBankDAccountNo: TcxGridDBBandedColumn;
    edtBankDFirstName: TcxGridDBBandedColumn;
    edtBankDLastName: TcxGridDBBandedColumn;
    grdDirector: TcxGrid;
    viewDirector: TcxGridDBBandedTableView;
    lvlDirector: TcxGridLevel;
    edtDrID: TcxGridDBBandedColumn;
    edtDrCustomerID: TcxGridDBBandedColumn;
    lucDrSalutation: TcxGridDBBandedColumn;
    edtDrFirstName: TcxGridDBBandedColumn;
    edtDrLastName: TcxGridDBBandedColumn;
    edtDrMiddleName: TcxGridDBBandedColumn;
    edtDrTaxNo: TcxGridDBBandedColumn;
    edtDrMobilePhone: TcxGridDBBandedColumn;
    edtDrEmailAddress: TcxGridDBBandedColumn;
    grdBeneficiary: TcxGrid;
    viewBeneficiary: TcxGridDBBandedTableView;
    lvlBeneficiary: TcxGridLevel;
    edtBFID: TcxGridDBBandedColumn;
    edtBFCustomerID: TcxGridDBBandedColumn;
    lucBFSalutationID: TcxGridDBBandedColumn;
    edtBFFirstName: TcxGridDBBandedColumn;
    edtBFLaastName: TcxGridDBBandedColumn;
    edtBFMobileNo: TcxGridDBBandedColumn;
    edtBFEmailAddress: TcxGridDBBandedColumn;
    grdVehicle: TcxGrid;
    viewVehicle: TcxGridDBBandedTableView;
    lvlVehicle: TcxGridLevel;
    edtVID: TcxGridDBBandedColumn;
    edtVCustomerID: TcxGridDBBandedColumn;
    edtVManYear: TcxGridDBBandedColumn;
    lucVMakeID: TcxGridDBBandedColumn;
    edtVModel: TcxGridDBBandedColumn;
    edtVRegNo: TcxGridDBBandedColumn;
    lucVRenewalDate: TcxGridDBBandedColumn;
    cbxVMaintenancePlan: TcxGridDBBandedColumn;
    edtVComment: TcxGridDBBandedColumn;
    grpGeneralInformation: TcxCategoryRow;
    lucVCustomerType: TcxDBEditorRow;
    edtVCustomerName: TcxDBEditorRow;
    edtVComapnyNo: TcxDBEditorRow;
    lucVStatus: TcxDBEditorRow;
    edtVTradingAs: TcxDBEditorRow;
    edtVBillTo: TcxDBEditorRow;
    cbxVActive: TcxDBEditorRow;
    lucVYearEndmonth: TcxDBEditorRow;
    edtVTaxNo: TcxDBEditorRow;
    lucVTaxOffice: TcxDBEditorRow;
    lucVARMonth: TcxDBEditorRow;
    grpTaxInformation: TcxCategoryRow;
    grpVATInformation: TcxCategoryRow;
    grpSARS: TcxCategoryRow;
    grpMiscellaneous: TcxCategoryRow;
    popDBAction: TPopupMenu;
    actDB: TActionList;
    actInsert: TAction;
    actEdit: TAction;
    actDelete: TAction;
    Addnewcontactdetail1: TMenuItem;
    Editselectedcontactdetail1: TMenuItem;
    Deleteselectedcontactdetail1: TMenuItem;
    litLegend: TdxLayoutItem;
    lblLegend: TcxLabel;
    styLegend: TcxEditStyleController;
    grpAddress: TdxLayoutGroup;
    edtVVATNo: TcxDBEditorRow;
    lucVVATOffice: TcxDBEditorRow;
    lucVVATMonth: TcxDBEditorRow;
    lucVCountry: TcxDBEditorRow;
    edtVCustomsCode: TcxDBEditorRow;
    edtVPAYEUIF: TcxDBEditorRow;
    edtVSDLNo: TcxDBEditorRow;
    edtVWCNo: TcxDBEditorRow;
    lucARCompletionDate: TcxDBEditorRow;
    edtVEFiling: TcxDBEditorRow;
    edtVEFUserName: TcxDBEditorRow;
    edtVEFPassword: TcxDBEditorRow;
    edtVPastelAccCode: TcxDBEditorRow;
    edtVVBTaxCode: TcxDBEditorRow;
    cbxVProvTaxPayer: TcxDBEditorRow;
    cbxVLivingWill: TcxDBEditorRow;
    cbxOrganDonor: TcxDBEditorRow;
    lucCreated: TcxDBEditorRow;
    lucModified: TcxDBEditorRow;
    dlgFireDACError: TFDGUIxErrorDialog;
    litOpenAfterExport: TdxLayoutItem;
    cbxOpenAfterExport: TcxCheckBox;
    docPrint: TdxBarDockControl;
    litPrintToolbar: TdxLayoutItem;
    barManager: TdxBarManager;
    barPrint: TdxBar;
    btnReportType: TdxBarLargeButton;
    lucReportType: TcxBarEditItem;
    cbxIsActive: TcxGridDBBandedColumn;
    grdCustomerListing: TcxGrid;
    viewCustomerListing: TcxGridDBBandedTableView;
    lvlCustomerListing: TcxGridLevel;
    procedure FormCreate(Sender: TObject);
    procedure viewContactDetailNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure FormShow(Sender: TObject);
    procedure grpDetailGridTabChanged(Sender: TObject);
    procedure viewContactDetailCoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DoDBAction(Sender: TObject);
    procedure grdPhysicalAddressEnter(Sender: TObject);
    procedure viewContactDetailCoDblClick(Sender: TObject);
    procedure grdCPContactDetailEnter(Sender: TObject);
    procedure grdPhysicalAddressDblClick(Sender: TObject);

    procedure viewCustomerCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);

    procedure viewContactPersonFocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);

    procedure navCustomerButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure grdContactPersonEnter(Sender: TObject);
    procedure grdVCustomerInitEdit(Sender, AItem: TObject;
      AEdit: TcxCustomEdit);
  private
    { Private declarations }
    FDetailFriendlyName: DetailFriendlyNames;
    FDetailDataSet: DetailDataSetArray;
    FOpenTableParam: TOpenTableParams;

    procedure CmDrawBorder(var Msg: TMessage); message CM_DRAWBORDER;
    procedure OpenTables;
    procedure EditDeleteRecord(Key: Word);
    function FillFieldData(DetailDataSetID: Integer): string;
    // Controls scrolling of embedded loolup comboboxes.
    procedure DoMyMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
  protected
    procedure HandleTSAfterPost(var MyMsg: TMessage); message WM_RECORD_ID;
  public
    { Public declarations }
    property DetailDataSet: DetailDataSetArray read FDetailDataSet write FDetailDataSet;
    property DetailFriendlyName: DetailFriendlyNames read FDetailFriendlyName write FDetailFriendlyName;
  end;

var
  CustomerFrm: TCustomerFrm;

const
  TABLE_COUNT = 21;

implementation

{$R *.dfm}

uses
  Base_DM,
  VBBase_DM,
  Lookup_DM,
  MT_DM,
  MsgDialog_Frm,
  Progress_Frm,
  RUtils,
  CommonFunction,
  CompanyContactDetail_Frm,
  AddressDetail_Frm,
  PersonContactDetail_Frm,
  BankingDetail_Frm,
  DirectorDetail_Frm,
  BeneficiaryDetail_Frm,
  VehicleDetail_Frm,
  ContactPerson_Frm;

procedure TCustomerFrm.CmDrawBorder(var Msg: TMessage);
begin
  if (TObject(Msg.WParam) is TcxCanvas)
    and (TObject(Msg.LParam) is TcxGridTableDataCellViewInfo) then
    TcxCanvas(Msg.WParam).DrawComplexFrame(TcxGridTableDataCellViewInfo(Msg.LParam).ClientBounds, clRed, clRed, cxBordersAll, 1);
end;

procedure TCustomerFrm.DoDBAction(Sender: TObject);
var
  Key: Integer;
begin
  inherited;
  Key := 0;
  case TAction(Sender).Tag of
    0:
      begin
        Key := VK_INSERT;
        VBBaseDM.DBAction := acInsert;
      end;

    1:
      begin
        Key := VK_RETURN; // VK_F2;
        VBBaseDM.DBAction := acModify;
      end;

    2:
      begin
        Key := VK_DELETE;
        VBBaseDM.DBAction := acDelete;
      end;
  end;
  EditDeleteRecord(Key);
end;

procedure TCustomerFrm.DoMyMouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
  if not TcxLookupComboBox(Sender).DroppedDown then
    Handled := True;
end;

function TCustomerFrm.FillFieldData(DetailDataSetID: Integer): string;
const
//  ERROR_MESSAGE =
//    '%s' + CRLF + // Error type
//    '%s' + CRLF + CRLF; // Detail table identifier

  ERROR_VALUES = '%s';
var
  ErrorValues: string;
begin
// if FDetailDataSet[MTDM.DetailIndex].State in [dsEdit, dsInsert] then
// FDetailDataSet[MTDM.DetailIndex].Cancel;

  Result := '';
  case VBBaseDM.DBAction of
    acInsert: FDetailDataSet[MTDM.DetailIndex].Insert;
    acModify: FDetailDataSet[MTDM.DetailIndex].Edit;
  end;

  case DetailDataSetID of
    0: // Company contact
      begin
// MTDM.cdsContactDetailCo.FieldByName('CONTACT_TYPE_ID').AsInteger := MTDM.FFieldValue.ContactTypeID;
// MTDM.cdsContactDetailCo.FieldByName('VALUE').AsString := MTDM.FFieldValue.TextValue;
// MTDM.cdsContactDetailCo.FieldByName('COMMENT').AsString := MTDm.FFieldValue.Comment;
        FDetailDataSet[MTDM.DetailIndex].FieldByName('CONTACT_TYPE_ID').AsInteger := MTDM.FFieldValue.ContactTypeID;
        FDetailDataSet[MTDM.DetailIndex].FieldByName('VALUE').AsString := MTDM.FFieldValue.TextValue;
        FDetailDataSet[MTDM.DetailIndex].FieldByName('COMMENT').AsString := MTDM.FFieldValue.Comment;
        MTDM.ValueArray[0] := 'Contact Type:' + TAB + MTDM.FFieldValue.ContactType;
        MTDM.ValueArray[1] := 'Contact Value:' + TAB + MTDM.FFieldValue.TextValue;
        ErrorValues := Format(ERROR_VALUES, [
          MTDM.ValueArray[0] + CRLF +
            MTDM.ValueArray[1]]);

// if CompanyContactDetailFrm <> nil then
// begin
// CompanyContactDetailFrm.Close;
// FreeAndNil(CompanyContactDetailFrm);
// end;
      end;

    1: // Address
      begin
        MTDM.cdsAddress.FieldByName('PHYSICAL1').AsString := MTDM.FFieldValue.Physical1;
        MTDM.cdsAddress.FieldByName('PHYSICAL2').AsString := MTDM.FFieldValue.Physical2;
        MTDM.cdsAddress.FieldByName('PHYSICAL3').AsString := MTDM.FFieldValue.Physical3;
        MTDM.cdsAddress.FieldByName('PHYSICAL4').AsString := MTDM.FFieldValue.Physical4;
        MTDM.cdsAddress.FieldByName('PHYSICAL_CODE').AsString := MTDM.FFieldValue.PhysicalCode;

        MTDM.cdsAddress.FieldByName('POSTAL1').AsString := MTDM.FFieldValue.Postal1;
        MTDM.cdsAddress.FieldByName('POSTAL2').AsString := MTDM.FFieldValue.Postal2;
        MTDM.cdsAddress.FieldByName('POSTAL3').AsString := MTDM.FFieldValue.Postal3;
        MTDM.cdsAddress.FieldByName('POSTAL4').AsString := MTDM.FFieldValue.Postal4;
        MTDM.cdsAddress.FieldByName('POSTAL_CODE').AsString := MTDM.FFieldValue.PostalCode;

        MTDM.cdsAddress.FieldByName('BILLING1').AsString := MTDM.FFieldValue.Billing1;
        MTDM.cdsAddress.FieldByName('BILLING2').AsString := MTDM.FFieldValue.Billing2;
        MTDM.cdsAddress.FieldByName('BILLING3').AsString := MTDM.FFieldValue.Billing3;
        MTDM.cdsAddress.FieldByName('BILLING4').AsString := MTDM.FFieldValue.Billing4;
        MTDM.cdsAddress.FieldByName('BILLING_CODE').AsString := MTDM.FFieldValue.BillingCode;
        ErrorValues := '';
      end;

    2: // Contact person
      begin
        MTDM.cdsContactPerson.FieldByName('FIRST_NAME').AsString := MTDM.FFieldValue.FirstName;
        MTDM.cdsContactPerson.FieldByName('LAST_NAME').AsString := MTDM.FFieldValue.LastName;
        MTDM.cdsContactPerson.FieldByName('OTHER_NAME').AsString := MTDM.FFieldValue.OtherName;
        MTDM.cdsContactPerson.FieldByName('ID_NUMBER').AsString := MTDM.FFieldValue.IDNo;
        MTDM.cdsContactPerson.FieldByName('PASSPORT_NUMBER').AsString := MTDM.FFieldValue.PassportNo;
        MTDM.cdsContactPerson.FieldByName('SALUTATION_ID').AsInteger := MTDM.FFieldValue.SalutationID;
        MTDM.cdsContactPerson.FieldByName('INITIALS').AsString := MTDM.FFieldValue.Initials;
        MTDM.cdsContactPerson.FieldByName('DOB').AsDateTime := MTDM.FFieldValue.DOB;
        MTDM.cdsContactPerson.FieldByName('JOB_FUNCTION_ID').AsInteger := MTDM.FFieldValue.JobFunctionID;
        MTDM.cdsContactPerson.FieldByName('IS_PRIMARY_CONTACT').AsInteger := BooleanToInteger(MTDM.FFieldValue.PrimaryContact);

        MTDM.ValueArray[0] := 'First Name:' + TAB + MTDM.FFieldValue.FirstName;
        MTDM.ValueArray[1] := 'Last Name:' + TAB + MTDM.FFieldValue.LastName;
        MTDM.ValueArray[2] := 'Salutation:' + TAB + MTDM.FFieldValue.Salutation;
        ErrorValues := Format(ERROR_VALUES, [
          MTDM.ValueArray[0] + CRLF +
            MTDM.ValueArray[1] + CRLF +
            MTDM.ValueArray[1]]);
      end;

    3: // Contact details person
      begin
        MTDM.cdsContactDetailPerson.FieldByName('CONTACT_TYPE_ID').AsInteger := MTDM.FFieldValue.ContactTypeID;
        MTDM.cdsContactDetailPerson.FieldByName('VALUE').AsString := MTDM.FFieldValue.TextValue;
        MTDM.cdsContactDetailPerson.FieldByName('COMMENT').AsString := MTDM.FFieldValue.Comment;

        MTDM.ValueArray[0] := 'Contact Type:' + TAB + MTDM.FFieldValue.ContactType;
        MTDM.ValueArray[1] := 'Contact Value:' + TAB + MTDM.FFieldValue.TextValue;
        ErrorValues := Format(ERROR_VALUES, [
          MTDM.ValueArray[0] + CRLF +
            MTDM.ValueArray[1]]);
      end;

    4: // Banking details
      begin
        MTDM.cdsBankingDetail.FieldByName('BANK_ID').AsInteger := MTDM.FFieldValue.BankID;
        MTDM.cdsBankingDetail.FieldByName('ACCOUNT_TYPE_ID').AsInteger := MTDM.FFieldValue.AccountTypeID;
        MTDM.cdsBankingDetail.FieldByName('BRANCH_CODE').AsString := MTDM.FFieldValue.BranchCode;
        MTDM.cdsBankingDetail.FieldByName('ACCOUNT_NO').AsString := MTDM.FFieldValue.AccountNo;
        MTDM.cdsBankingDetail.FieldByName('FIRST_NAME').AsString := MTDM.FFieldValue.FirstName;
        MTDM.cdsBankingDetail.FieldByName('LAST_NAME').AsString := MTDM.FFieldValue.LastName;

        MTDM.ValueArray[0] := 'Bank:' + TAB + MTDM.FFieldValue.Bank;
        MTDM.ValueArray[1] := 'Account Type:' + TAB + MTDM.FFieldValue.AccountType;
        MTDM.ValueArray[2] := 'Account No:' + TAB + MTDM.FFieldValue.AccountNo;
        ErrorValues := Format(ERROR_VALUES, [
          MTDM.ValueArray[0] + CRLF +
            MTDM.ValueArray[1] + CRLF +
            MTDM.ValueArray[2]
            ]);
      end;

    5: // Director
      begin
        MTDM.cdsDirector.FieldByName('FIRST_NAME').AsString := MTDM.FFieldValue.FirstName;
        MTDM.cdsDirector.FieldByName('LAST_NAME').AsString := MTDM.FFieldValue.LastName;
        MTDM.cdsDirector.FieldByName('MIDDLE_NAME').AsString := MTDM.FFieldValue.OtherName;
        MTDM.cdsDirector.FieldByName('EMAIL_ADDRESS').AsString := MTDM.FFieldValue.EmailAddress;
        MTDM.cdsDirector.FieldByName('SALUTATION_ID').AsInteger := MTDM.FFieldValue.SalutationID;
        MTDM.cdsDirector.FieldByName('TAX_NO').AsString := MTDM.FFieldValue.TaxNo;
        MTDM.cdsDirector.FieldByName('MOBILE_PHONE').AsString := MTDM.FFieldValue.MobileNo;

        MTDM.ValueArray[0] := 'First Name:' + TAB + MTDM.FFieldValue.FirstName;
        MTDM.ValueArray[1] := 'Last Name:' + TAB + MTDM.FFieldValue.LastName;
        MTDM.ValueArray[2] := 'Salutation:' + TAB + MTDM.FFieldValue.Salutation;
        ErrorValues := Format(ERROR_VALUES, [
          MTDM.ValueArray[0] + CRLF +
            MTDM.ValueArray[1] + CRLF +
            MTDM.ValueArray[2]]);
      end;

    6: // Beneficiary
      begin
        MTDM.cdsBeneficiary.FieldByName('SALUTATION_ID').AsInteger := MTDM.FFieldValue.SalutationID;
        MTDM.cdsBeneficiary.FieldByName('FIRST_NAME').AsString := MTDM.FFieldValue.FirstName;
        MTDM.cdsBeneficiary.FieldByName('LAST_NAME').AsString := MTDM.FFieldValue.LastName;
        MTDM.cdsBeneficiary.FieldByName('MOBILE_PHONE').AsString := MTDM.FFieldValue.MobileNo;
        MTDM.cdsBeneficiary.FieldByName('EMAIL_ADDRESS').AsString := MTDM.FFieldValue.EmailAddress;

        MTDM.ValueArray[0] := 'First Name:' + TAB + MTDM.FFieldValue.FirstName;
        MTDM.ValueArray[1] := 'Last Name:' + TAB + MTDM.FFieldValue.LastName;
        MTDM.ValueArray[2] := 'Salutation:' + TAB + MTDM.FFieldValue.Salutation;
        MTDM.ValueArray[3] := 'Mobile No:' + TAB + MTDM.FFieldValue.MobileNo;
        MTDM.ValueArray[4] := 'Email Address:' + TAB + MTDM.FFieldValue.EmailAddress;
        ErrorValues := Format(ERROR_VALUES, [
          MTDM.ValueArray[0] + CRLF +
            MTDM.ValueArray[1] + CRLF +
            MTDM.ValueArray[2] + CRLF +
            MTDM.ValueArray[3] + CRLF +
            MTDM.ValueArray[4]]);
      end;

    7: // Vehicle
      begin
        MTDM.cdsVehicle.FieldByName('THE_YEAR').AsInteger := MTDM.FFieldValue.YearOfManufacture;
        MTDM.cdsVehicle.FieldByName('VEHICLE_MAKE_ID').AsInteger := MTDM.FFieldValue.VehicleMakeID;
        MTDM.cdsVehicle.FieldByName('VEHICLE_MODEL').AsString := MTDM.FFieldValue.VehicleModel;
        MTDM.cdsVehicle.FieldByName('REG_NO').AsString := MTDM.FFieldValue.VehicleRegNo;
        MTDM.cdsVehicle.FieldByName('RENEWAL_DATE').AsDateTime := MTDM.FFieldValue.LicenceRenewalDate;
        MTDM.cdsVehicle.FieldByName('MAINTENANCE_PLAN').AsInteger := BooleanToInteger(MTDM.FFieldValue.MaintenancePlan);
        MTDM.cdsVehicle.FieldByName('COMMENT').AsString := MTDM.FFieldValue.Comment;

        MTDM.ValueArray[0] := 'Make:' + TAB + TAB + MTDM.FFieldValue.VehicleMake;
        MTDM.ValueArray[1] := 'Model:' + TAB + TAB + MTDM.FFieldValue.VehicleModel;
        MTDM.ValueArray[2] := 'Year:' + TAB + TAB + MTDM.FFieldValue.YearOfManufacture.ToString;
        MTDM.ValueArray[3] := 'Reg No:' + TAB + TAB + MTDM.FFieldValue.VehicleRegNo;
        MTDM.ValueArray[4] := 'Renewal Date: ' + TAB + FormatDateTime('dd/MM/yyyy', MTDM.FFieldValue.LicenceRenewalDate);
        ErrorValues := Format(ERROR_VALUES, [
          MTDM.ValueArray[0] + CRLF +
            MTDM.ValueArray[1] + CRLF +
            MTDM.ValueArray[2] + CRLF +
            MTDM.ValueArray[3] + CRLF +
            MTDM.ValueArray[4]]);
      end;
  end;
  Result := ErrorValues;

// // Post the data
// try
/// /    FDetailDataSet[MTDM.DetailIndex].Post;
// MTDM.cdsContactDetailCo.Post;
//
/// /  except on E: Exception do
// except on E: EFDException do
// begin
// if MTDM.PostError then
// begin
/// /        Beep;
// if E.FDCode = 15 then // Duplicate record
// raise EDuplicateException.Create('Duplicate records not allowed.' + CRLF + CRLF +
// FDetailFriendlyName[MTDM.DetailIndex] + ' for ' + MTDM.cdsCustomer.FieldByName('NAME').AsString + ' already exists.' + CRLF + CRLF +
// ErrorValues
// );
//
/// /        DisplayMsg(
/// /          Application.Title,
/// /          'Data Validataion Error',
/// /          'One or more errors occurred in posting data.' + CRLF + CRLF +
/// /          E.Message + CRLF + CRLF +
/// /          FDetailFriendlyName[MTDM.DetailIndex] + ' for ' + MTDM.cdsCustomer.FieldByName('NAME').AsString + ' already exists.' + CRLF + CRLF +
/// /          ErrorValues,
/// /          mtError,
/// /          [mbOK]
/// /          );
// end;
// end;
// end;
end;

// procedure TCustomerFrm.FillFieldData(DetailDataSetID: Integer);
// const
// ERROR_MESSAGE =
// '%s' + CRLF + // Error type
// '%s' + CRLF + CRLF; // Detail table identifier
//
// ERROR_VALUES = '%s';
// var
// ErrorValues: string;
//
// begin
/// /  if FDetailDataSet[MTDM.DetailIndex].State in [dsEdit, dsInsert] then
/// /    FDetailDataSet[MTDM.DetailIndex].Cancel;
//
// case DBAction of
// acInsert: FDetailDataSet[MTDM.DetailIndex].Insert;
// acModify: FDetailDataSet[MTDM.DetailIndex].Edit;
// end;
//
// case DetailDataSetID of
// 0: // Company contact
// begin
// MTDM.cdsContactDetailCo.FieldByName('CONTACT_TYPE_ID').AsInteger := CustomerEditFrm.lucContactType.EditValue;
// MTDM.cdsContactDetailCo.FieldByName('VALUE').AsString := CustomerEditFrm.edtContactDetailValue.Text;
// MTDM.cdsContactDetailCo.FieldByName('COMMENT').AsString := CustomerEditFrm.memContactDetailComment.Text;
//
// MTDM.ValueArray[0] := 'Contact Type:' + TAB + CustomerEditFrm.lucContactType.Text;
// MTDM.ValueArray[1] := 'Contact Value:' + TAB + CustomerEditFrm.edtContactDetailValue.Text;
// ErrorValues := Format(ERROR_VALUES, [
// MTDM.ValueArray[0] + CRLF +
// MTDM.ValueArray[1]]);
// end;
//
// 1: // Address
// begin
// MTDM.cdsAddress.FieldByName('PHYSICAL1').AsString := CustomerEditFrm.edtPhysical1.Text;
// MTDM.cdsAddress.FieldByName('PHYSICAL2').AsString := CustomerEditFrm.edtPhysical2.Text;
// MTDM.cdsAddress.FieldByName('PHYSICAL3').AsString := CustomerEditFrm.edtPhysical3.Text;
// MTDM.cdsAddress.FieldByName('PHYSICAL4').AsString := CustomerEditFrm.edtPhysical4.Text;
// MTDM.cdsAddress.FieldByName('PHYSICAL_CODE').AsString := CustomerEditFrm.edtPhysicalPostalCode.Text;
//
// MTDM.cdsAddress.FieldByName('POSTAL1').AsString := CustomerEditFrm.edtPostal1.Text;
// MTDM.cdsAddress.FieldByName('POSTAL2').AsString := CustomerEditFrm.edtPostal2.Text;
// MTDM.cdsAddress.FieldByName('POSTAL3').AsString := CustomerEditFrm.edtPostal3.Text;
// MTDM.cdsAddress.FieldByName('POSTAL4').AsString := CustomerEditFrm.edtPostal4.Text;
// MTDM.cdsAddress.FieldByName('POSTAL_CODE').AsString := CustomerEditFrm.EdtPostalCode.Text;
//
// MTDM.cdsAddress.FieldByName('BILLING1').AsString := CustomerEditFrm.edtBilling1.Text;
// MTDM.cdsAddress.FieldByName('BILLING2').AsString := CustomerEditFrm.edtBilling2.Text;
// MTDM.cdsAddress.FieldByName('BILLING3').AsString := CustomerEditFrm.edtBilling3.Text;
// MTDM.cdsAddress.FieldByName('BILLING4').AsString := CustomerEditFrm.edtBilling4.Text;
// MTDM.cdsAddress.FieldByName('BILLING_CODE').AsString := CustomerEditFrm.edtBillingPostalCode.Text;
// end;
//
// 2: // Contact person
// begin
// MTDM.cdsContactPerson.FieldByName('FIRST_NAME').AsString := CustomerEditFrm.edtPFirstName.Text;
// MTDM.cdsContactPerson.FieldByName('LAST_NAME').AsString := CustomerEditFrm.edtPLastName.Text;
// MTDM.cdsContactPerson.FieldByName('OTHER_NAME').AsString := CustomerEditFrm.edtPOtherName.Text;
// MTDM.cdsContactPerson.FieldByName('ID_NUMBER').AsString := CustomerEditFrm.edtPIDNo.Text;
// MTDM.cdsContactPerson.FieldByName('PASSPORT_NUMBER').AsString := CustomerEditFrm.edtPPassportNo.Text;
// MTDM.cdsContactPerson.FieldByName('SALUTATION_ID').AsInteger := CustomerEditFrm.lucPSalutation.EditValue;
// MTDM.cdsContactPerson.FieldByName('INITIALS').AsString := CustomerEditFrm.edtPInitials.Text;
// MTDM.cdsContactPerson.FieldByName('DOB').AsDateTime := CustomerEditFrm.lucPDOB.EditValue;
// MTDM.cdsContactPerson.FieldByName('JOB_FUNCTION_ID').AsInteger := CustomerEditFrm.lucPJobFunction.EditValue;
// MTDM.cdsContactPerson.FieldByName('IS_PRIMARY_CONTACT').AsInteger := RUtils.BooleanToInteger(CustomerEditFrm.cbxPPrimaryContact.Checked);
//
// MTDM.ValueArray[0] := 'First Name:' + TAB + CustomerEditFrm.edtPFirstName.Text;
// MTDM.ValueArray[1] := 'Last Name:' + TAB + CustomerEditFrm.edtPLastName.Text;
// MTDM.ValueArray[2] := 'Salutation:' + TAB + CustomerEditFrm.lucPSalutation.Text;
// ErrorValues := Format(ERROR_VALUES, [
// MTDM.ValueArray[0] + CRLF +
// MTDM.ValueArray[1] + CRLF +
// MTDM.ValueArray[1]]);
// end;
//
// 3: // Contact details person
// begin
// MTDM.cdsContactDetailPerson.FieldByName('CONTACT_TYPE_ID').AsInteger := CustomerEditFrm.lucCDPContactType.EditValue;
// MTDM.cdsContactDetailPerson.FieldByName('VALUE').AsString := CustomerEditFrm.edtCDPValue.Text;
// MTDM.cdsContactDetailPerson.FieldByName('COMMENT').AsString := CustomerEditFrm.memCDPComment.Text;
//
// MTDM.ValueArray[0] := 'Contact Type:' + TAB + CustomerEditFrm.lucCDPContactType.Text;
// MTDM.ValueArray[1] := 'Contact Value:' + TAB + CustomerEditFrm.edtCDPValue.Text;
// ErrorValues := Format(ERROR_VALUES, [
// MTDM.ValueArray[0] + CRLF +
// MTDM.ValueArray[1]]);
// end;
//
// 4: // Banking details
// begin
// MTDM.cdsBankingDetail.FieldByName('BANK_ID').AsInteger := CustomerEditFrm.lucBank.EditValue;
// MTDM.cdsBankingDetail.FieldByName('ACCOUNT_TYPE_ID').AsInteger := CustomerEditFrm.lucAccType.EditValue;
// MTDM.cdsBankingDetail.FieldByName('BRANCH_CODE').AsString := CustomerEditFrm.edtBranchCode.Text;
// MTDM.cdsBankingDetail.FieldByName('ACCOUNT_NO').AsString := CustomerEditFrm.edtAccNo.Text;
// MTDM.cdsBankingDetail.FieldByName('FIRST_NAME').AsString := CustomerEditFrm.edtBFirstName.Text;
// MTDM.cdsBankingDetail.FieldByName('LAST_NAME').AsString := CustomerEditFrm.edtBLastName.Text;
//
// MTDM.ValueArray[0] := 'Bank:' + TAB + CustomerEditFrm.lucBank.Text;
// MTDM.ValueArray[1] := 'Account Type:' + TAB + CustomerEditFrm.lucAccType.Text;
// MTDM.ValueArray[2] := 'Account No:' + TAB + CustomerEditFrm.edtAccNo.Text;
// ErrorValues := Format(ERROR_VALUES, [
// MTDM.ValueArray[0] + CRLF +
// MTDM.ValueArray[1] + CRLF +
// MTDM.ValueArray[2]
// ]);
// end;
//
// 5: // Director
// begin
// MTDM.cdsDirector.FieldByName('FIRST_NAME').AsString := CustomerEditFrm.edtDFirstName.Text;
// MTDM.cdsDirector.FieldByName('LAST_NAME').AsString := CustomerEditFrm.edtDLastName.Text;
// MTDM.cdsDirector.FieldByName('MIDDLE_NAME').AsString := CustomerEditFrm.edtDOtherName.Text;
// MTDM.cdsDirector.FieldByName('EMAIL_ADDRESS').AsString := CustomerEditFrm.edtDEmailAddress.Text;
// MTDM.cdsDirector.FieldByName('SALUTATION_ID').AsInteger := CustomerEditFrm.lucDSalutation.EditValue;
// MTDM.cdsDirector.FieldByName('TAX_NO').AsString := CustomerEditFrm.edtDTaxNo.Text;
// MTDM.cdsDirector.FieldByName('MOBILE_PHONE').AsString := CustomerEditFrm.edtDMobileNo.Text;
//
// MTDM.ValueArray[0] := 'First Name:' + TAB + CustomerEditFrm.edtDFirstName.Text;
// MTDM.ValueArray[1] := 'Last Name:' + TAB + CustomerEditFrm.edtDLastName.Text;
// MTDM.ValueArray[2] := 'Salutation:' + TAB + CustomerEditFrm.lucDSalutation.Text;
// ErrorValues := Format(ERROR_VALUES, [
// MTDM.ValueArray[0] + CRLF +
// MTDM.ValueArray[1] + CRLF +
// MTDM.ValueArray[2]]);
// end;
//
// 6: // Beneficiary
// begin
// MTDM.cdsBeneficiary.FieldByName('SALUTATION_ID').AsInteger := CustomerEditFrm.lucBFSalutation.EditValue;
// MTDM.cdsBeneficiary.FieldByName('FIRST_NAME').AsString := CustomerEditFrm.edtBFFirstName.Text;
// MTDM.cdsBeneficiary.FieldByName('LAST_NAME').AsString := CustomerEditFrm.edtBFLastName.Text;
// MTDM.cdsBeneficiary.FieldByName('MOBILE_PHONE').AsString := CustomerEditFrm.edtBFMobileNo.Text;
// MTDM.cdsBeneficiary.FieldByName('EMAIL_ADDRESS').AsString := CustomerEditFrm.edtBFEmailAddress.Text;
//
// MTDM.ValueArray[0] := 'First Name:' + TAB + CustomerEditFrm.edtBFFirstName.Text;
// MTDM.ValueArray[1] := 'Last Name:' + TAB + CustomerEditFrm.edtBFLastName.Text;
// MTDM.ValueArray[2] := 'Salutation:' + TAB + CustomerEditFrm.lucBFSalutation.Text;
// MTDM.ValueArray[3] := 'Mobile No:' + TAB + CustomerEditFrm.edtBFMobileNo.Text;
// MTDM.ValueArray[4] := 'Email Address:' + TAB + CustomerEditFrm.edtBFEmailAddress.Text;
// ErrorValues := Format(ERROR_VALUES, [
// MTDM.ValueArray[0] + CRLF +
// MTDM.ValueArray[1] + CRLF +
// MTDM.ValueArray[2] + CRLF +
// MTDM.ValueArray[3] + CRLF +
// MTDM.ValueArray[4]]);
// end;
//
// 7: // Vehicle
// begin
// MTDM.cdsVehicle.FieldByName('THE_YEAR').AsInteger := CustomerEditFrm.edtYear.EditValue;
// MTDM.cdsVehicle.FieldByName('VEHICLE_MAKE_ID').AsString := CustomerEditFrm.lucVehicleMake.EditValue;
// MTDM.cdsVehicle.FieldByName('VEHICLE_MODEL').AsString := CustomerEditFrm.edtModel.Text;
// MTDM.cdsVehicle.FieldByName('REG_NO').AsString := CustomerEditFrm.edtRegNo.Text;
// MTDM.cdsVehicle.FieldByName('RENEWAL_DATE').AsDateTime := CustomerEditFrm.lucRenewlDate.EditValue;
// MTDM.cdsVehicle.FieldByName('MAINTENANCE_PLAN').AsInteger := RUtils.BooleanToInteger(CustomerEditFrm.cbxMaintenancePlan.Checked);
// MTDM.cdsVehicle.FieldByName('COMMENT').AsString := CustomerEditFrm.memVComment.Text;
//
// MTDM.ValueArray[0] := 'Make:' + TAB + TAB + CustomerEditFrm.lucVehicleMake.Text;
// MTDM.ValueArray[1] := 'Model:' + TAB + TAB + CustomerEditFrm.edtModel.Text;
// MTDM.ValueArray[2] := 'Year:' + TAB + TAB + CustomerEditFrm.edtYear.Text;
// MTDM.ValueArray[3] := 'Reg No:' + TAB + TAB + CustomerEditFrm.edtRegNo.Text;
// MTDM.ValueArray[4] := 'Renewal Date: ' + TAB + CustomerEditFrm.lucVehicleMake.Text;
// ErrorValues := Format(ERROR_VALUES, [
// MTDM.ValueArray[0] + CRLF +
// MTDM.ValueArray[1] + CRLF +
// MTDM.ValueArray[2] + CRLF +
// MTDM.ValueArray[3] + CRLF +
// MTDM.ValueArray[4]]);
// end;
// end;
//
// // Post the data
// try
// FDetailDataSet[MTDM.DetailIndex].Post;
/// /  except on E: EIBNativeException do
/// /  except on E: EFDDBEngineException do
//
/// /  except on E: Exception do
// except on E: EFDException do
// begin
// if MTDM.PostError then
// begin
// Beep;
// if E.FDCode = 15 then // Duplicate record
//
// DisplayMsg(
// Application.Title,
// 'Data Validataion Error',
// 'One or more errors occurred in posting data.' + CRLF + CRLF +
// E.Message + CRLF + CRLF +
// FDetailFriendlyName[MTDM.DetailIndex] + ' for ' + MTDM.cdsCustomer.FieldByName('NAME').AsString + ' already exists.' + CRLF + CRLF +
// ErrorValues,
// mtError,
// [mbOK]
// );
//
/// /        case MTDM.DetailIndex of
/// /          0: // Company contact details
/// /            begin
/// /              DisplayMsg(
/// /                Application.Title,
/// /                'Data Validataion Error',
/// /                'One or more errors occurred in posting data.' + CRLF + CRLF +
/// /                E.Message + CRLF + CRLF +
/// /                FDetailFriendlyName[MTDM.DetailIndex] + ' for ' + MTDM.cdsCustomer.FieldByName('NAME').AsString + CRLF + CRLF +
/// /                ErrorValues,
/// ///                ERROR_VALUES,
/// /                mtError,
/// /                [mbOK]
/// /                );
/// /            end;
/// /
/// /          4: // Banking details
/// /            begin
/// /              DisplayMsg(
/// /                Application.Title,
/// /                'Data Validataion Error',
/// /                'One or more errors occurred in posting data.' + CRLF + CRLF +
/// /                E.Message + CRLF + CRLF +
/// /                FDetailFriendlyName[MTDM.DetailIndex] + ' for ' + MTDM.cdsCustomer.FieldByName('NAME').AsString + CRLF + CRLF +
/// /                ErrorValues,
/// ///                ERROR_VALUES,
/// /                mtError,
/// /                [mbOK]
/// /                );
/// /            end;
/// /        end;
// end;
// end;
// end;
// end;
//

procedure TCustomerFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourglass;
  Caption := 'Customer Manager';
// Customer := TCustomerDetail.Create;
  litLegend.LayoutLookAndFeel := lafCustomSkin;
  styLegend.Style.Font.Color := cxLookAndFeels.RootLookAndFeel.SkinPainter.DefaultContentTextColor;
  styLegend.Style.TextColor := cxLookAndFeels.RootLookAndFeel.SkinPainter.DefaultContentTextColor;

  viewCustomer.DataController.DataSource := MTDM.dtsCustomer;
  grdVCustomer.DataController.DataSource := MTDM.dtsCustomer;
  navCustomer.DataSource := MTDM.dtsCustomer;
  navVCustomer.DataSource := MTDM.dtsCustomer;

  TcxLookupComboBoxProperties(lucCustomerType.Properties).ListSource := LookupDM.dtsCustomerType;
  TcxLookupComboBoxProperties(lucCustomerType.Properties).Buttons.Items[0].Visible := False;

  TcxLookupComboBoxProperties(lucStatus.Properties).ListSource := LookupDM.dtsCustomerStatus;
  TcxLookupComboBoxProperties(lucStatus.Properties).Buttons.Items[0].Visible := False;

  TcxLookupComboBoxProperties(lucCDContactTypeID.Properties).ListSource := LookupDM.dtsContactType;
  TcxLookupComboBoxProperties(lucCDContactTypeID.Properties).Buttons.Items[0].Visible := False;

  TcxLookupComboBoxProperties(lucCPSalutation.Properties).ListSource := LookupDM.dtsSalutation;
  TcxLookupComboBoxProperties(lucDrSalutation.Properties).ListSource := LookupDM.dtsDirectorSalutation;
  TcxLookupComboBoxProperties(lucBFSalutationID.Properties).ListSource := LookupDM.dtsBFSalutation;
  TcxLookupComboBoxProperties(lucVMakeID.Properties).ListSource := LookupDM.dtsVehicleMake;
  TcxLookupComboBoxProperties(lucDrSalutation.Properties).ListSource := LookupDM.dtsDirectorSalutation;

  TcxLookupComboBoxProperties(lucCPJobFunction.Properties).ListSource := LookupDM.dtsJobFunction;
  TcxLookupComboBoxProperties(lucCPContactDetailTypeID.Properties).ListSource := LookupDM.dtsContactType;
  TcxLookupComboBoxProperties(lucBankDBankID.Properties).ListSource := LookupDM.dtsBank;
  TcxLookupComboBoxProperties(lucBankDAccountTypeID.Properties).ListSource := LookupDM.dtsBankAccountType;
  TcxLookupComboBoxProperties(lucVCustomerType.Properties.EditProperties).ListSource := LookupDM.dtsCustomerType;
  TcxLookupComboBoxProperties(lucVStatus.Properties.EditProperties).ListSource := LookupDM.dtsCustomerStatus;

  TcxLookupComboBoxProperties(lucVYearEndmonth.Properties.EditProperties).ListSource := LookupDM.dtsMonthOfyear;
  TcxLookupComboBoxProperties(lucVARMonth.Properties.EditProperties).ListSource := LookupDM.dtsARMonthOfyear;

  TcxLookupComboBoxProperties(lucVTaxOffice.Properties.EditProperties).ListSource := LookupDM.dtsTaxOffice;
  TcxLookupComboBoxProperties(lucVVATOffice.Properties.EditProperties).ListSource := LookupDM.dtsVATOffice;
  TcxLookupComboBoxProperties(lucVVATMonth.Properties.EditProperties).ListSource := LookupDM.dtsVATMonth;
  TcxLookupComboBoxProperties(lucVCountry.Properties.EditProperties).ListSource := LookupDM.dtsCountry;

  // Prevent scrolling in these lookkup comboboxes
//  TcxDBComboBoxAccess(lucVStatus).OnMouseWheel := DoMyMouseWheel;
//  TcxDBComboBoxAccess(lucVYearEndmonth).OnMouseWheel := DoMyMouseWheel;
//  TcxDBComboBoxAccess(lucVTaxOffice).OnMouseWheel := DoMyMouseWheel;
//  TcxDBComboBoxAccess(lucVARMonth).OnMouseWheel := DoMyMouseWheel;
//  TcxDBComboBoxAccess(lucVVATOffice).OnMouseWheel := DoMyMouseWheel;
//  TcxDBComboBoxAccess(lucVVATMonth).OnMouseWheel := DoMyMouseWheel;
//  TcxDBComboBoxAccess(lucVCountry).OnMouseWheel := DoMyMouseWheel;

  viewContactDetailCo.DataController.DataSource := MTDM.dtsContactDetailCo;
  viewContactPerson.DataController.DataSource := MTDM.dtsContactPerson;
  viewCPContactDetail.DataController.DataSource := MTDM.dtsContactDetailPerson;
  viewBankingDetail.DataController.DataSource := MTDM.dtsBankingDetail;
  viewDirector.DataController.DataSource := MTDM.dtsDirector;
  viewBeneficiary.DataController.DataSource := MTDM.dtsBeneficiary;
  viewVehicle.DataController.DataSource := MTDM.dtsVehicle;
  viewCustomerListing.DataController.DataSource :=  ReportDM.dtsCustomerListing;
// FDetailDataSet[0] := MTDM.cdsContactDetailCo;
// FDetailDataSet[1] := MTDM.cdsAddress;
// FDetailDataSet[2] := MTDM.cdsContactPerson;
// FDetailDataSet[3] := MTDM.cdsContactDetailPerson;
// FDetailDataSet[4] := MTDM.cdsBankingDetail;
// FDetailDataSet[5] := MTDM.cdsDirector;
// FDetailDataSet[6] := MTDM.cdsBeneficiary;
// FDetailDataSet[7] := MTDM.cdsVehicle;

  SetLength(FDetailDataSet, 8);
  FDetailDataSet[0] := MTDM.cdsContactDetailCo;
  FDetailDataSet[1] := MTDM.cdsAddress;
  FDetailDataSet[2] := MTDM.cdsContactPerson;
  FDetailDataSet[3] := MTDM.cdsContactDetailPerson;
  FDetailDataSet[4] := MTDM.cdsBankingDetail;
  FDetailDataSet[5] := MTDM.cdsDirector;
  FDetailDataSet[6] := MTDM.cdsBeneficiary;
  FDetailDataSet[7] := MTDM.cdsVehicle;

  SetLength(FDetailFriendlyName, 8);
  FDetailFriendlyName[0] := 'Company Contact Detail';
  FDetailFriendlyName[1] := 'Address';
  FDetailFriendlyName[2] := 'Contact Person Data';
  FDetailFriendlyName[3] := 'Contact Details';
  FDetailFriendlyName[4] := 'Banking Details';
  FDetailFriendlyName[5] := 'Director';
  FDetailFriendlyName[6] := 'Beneficiary';
  FDetailFriendlyName[7] := 'Vehicle';

  OpenTables;
end;

procedure TCustomerFrm.FormShow(Sender: TObject);
begin
  inherited;
  grpDetailGrid.ItemIndex := 0;
  grdCustomer.SetFocus;
  viewCustomer.Focused := True;

  if viewCustomer.DataController.RecordCount > 0 then
    viewCustomer.Controller.FocusedRecordIndex := 0;

  viewCustomer.Controller.FocusedColumn := edtName;
  Screen.Cursor := crDefault;
end;

procedure TCustomerFrm.grpDetailGridTabChanged(Sender: TObject);
begin
  inherited;
  if grpDetailGrid.ItemIndex <= 2 then
    MTDM.DetailIndex := grpDetailGrid.ItemIndex
  else
    MTDM.DetailIndex := grpDetailGrid.ItemIndex + 1;

  if Self.Showing then
  begin
    case MTDM.DetailIndex { grpDetailGrid.ItemIndex } of
      0:
        begin
          grdContactDetailCo.SetFocus;
          viewContactDetailCo.Focused := True;
          actInsert.Caption := 'Add a new company contact detail';
          actEdit.Caption := 'Edit selected contact detail';
          actDelete.Caption := 'Delete selected cotact detail';
          MTDM.FormCaption := 'Company Contact Details';
        end;

      1:
        begin
          grdPhysicalAddress.SetFocus;
          actInsert.Caption := 'Add a new address';
          actEdit.Caption := 'Edit selected address';
          actDelete.Caption := 'Delete selected address';
          MTDM.FormCaption := 'Address Details';
        end;

//      2:
//        begin
//          grdContactPerson.SetFocus;
//          viewContactPerson.Focused := True;
//          actInsert.Caption := 'Add a new contact person';
//          actEdit.Caption := 'Edit selected contact person';
//          actDelete.Caption := 'Delete selected cotact person';
//          MTDM.FormCaption := 'Contact Person Details';
//        end;

        {TODO: Not setting form caption correctly here!!}
// 3:
// begin
// grdCPContactDetail.SetFocus;
// viewCPContactDetail.Focused := True;
// actInsert.Caption := 'Add a new contact detail';
// actEdit.Caption := 'Edit selected contact detail';
// actDelete.Caption := 'Delete selected contact detail';
// end;

      4:
        begin
          grdBankingDetail.SetFocus;
          viewBankingDetail.Focused := True;
          actInsert.Caption := 'Add a new banking detail';
          actEdit.Caption := 'Edit selected banking detail';
          actDelete.Caption := 'Delete selected banking detail';
          MTDM.FormCaption := 'Banking  Details';
        end;

      5:
        begin
          grdDirector.SetFocus;
          viewDirector.Focused := True;
          actInsert.Caption := 'Add a new director';
          actEdit.Caption := 'Edit selected director';
          actDelete.Caption := 'Delete selected director';
          MTDM.FormCaption := 'Director Details';
        end;

      6:
        begin
          grdBeneficiary.SetFocus;
          viewBeneficiary.Focused := True;
          actInsert.Caption := 'Add a new beneficiary';
          actEdit.Caption := 'Edit selected beneficiary';
          actDelete.Caption := 'Delete selected beneficiary';
          MTDM.FormCaption := 'Beneficiary Details';
        end;

      7:
        begin
          grdVehicle.SetFocus;
          viewVehicle.Focused := True;
          actInsert.Caption := 'Add a new vehicle';
          actEdit.Caption := 'Edit selected vehicle';
          actDelete.Caption := 'Delete selected vehicle';
          MTDM.FormCaption := 'Vehicle Details';
        end;
    end;
  end;
end;

procedure TCustomerFrm.HandleTSAfterPost(var MyMsg: TMessage);
//var
//// S: PChar;
//  SL: TStringList;
begin
//  SL := TStringList.Create;
//  SL.Delimiter := PIPE;
//  SL.QuoteChar := '"';
//  SL.DelimitedText := PChar(MyMsg.WParam);
//// S := PChar(MyMsg.LParam);
//
//  try
//    if SL.Values['REQUEST'] = 'REFRESH_DATA' then
//    begin
//      viewBillable.DataController.BeginUpdate;
//      try
//        GetBillableTimesheet;
//        if not ReportDM.cdsTimesheet.Locate('ID', StrToInt(SL.Values['ID']), []) then
//          ReportDM.cdsTimesheet.First;
//      finally
//        viewBillable.DataController.EndUpdate;
//      end;
//    end;
//  finally
//    MyMsg.Result := -1;
//  end;
end;

procedure TCustomerFrm.navCustomerButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
var
  ID: Integer;
begin
  inherited;
  case AButtonIndex of
    16: ReportDM.ReportAction := raPreview;
    17: ReportDM.ReportAction := raPrint;
    18: ReportDM.ReportAction := raExcel;
    19: ReportDM.ReportAction := raPDF;
  end;

  case AButtonIndex of
    NBDI_REFRESH:
      begin
        ADone := True;
        ID := MTDM.cdsCustomer.FieldByName('ID').AsInteger;
        OpenTables;
        if not MTDM.cdsCustomer.Locate('ID', ID, []) then
          MTDM.cdsCustomer.First;
      end;

    16, 17, 18, 19:
      begin
        ReportDM.PrintExporting := True;
        try
          ReportDM.ReportFileName := MTDM.ShellResource.ReportFolder + 'CustomerListing.fr3';
          case ReportDM.ReportAction of
            raPreview, raPrint:
              begin
                if not TFile.Exists(ReportDM.ReportFileName) then
                  raise EFileNotFoundException.Create('Report file: ' + ReportDM.ReportFileName + ' not found. Cannot load report.');

                ReportDM.PrintReport;
              end;

            raExcel:
              begin
//                ReportDM.ExportToExcel(grdMaster, EXCEL_DOCS + 'Activity Type Listing', cbxOpenAfterExport.Checked);
              end;

            raPDF:
              begin
                if not TFile.Exists(ReportDM.ReportFileName) then
                  raise EFileNotFoundException.Create('Report file: ' + ReportDM.ReportFileName + ' not found. Cannot load report.');

                ReportDM.ExportToPDF(PDF_DOCS + 'Activity Type Listing', cbxOpenAfterExport.Checked);
              end;
          end;
        finally
          Screen.Cursor := crDefault;
        end;
      end;
  end;
end;

procedure TCustomerFrm.OpenTables;
var
  Counter: Integer;
  Iteration: Extended;
begin
  if ProgressFrm = nil then
    ProgressFrm := TProgressFrm.Create(nil);
  ProgressFrm.FormStyle := fsStayOnTop;
  ProgressFrm.Show;

  try
    Counter := 1;
    Iteration := Counter / TABLE_COUNT * 100;

// Open all master tables  -----------------------------------------------------

    // Customer
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Customer Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    VBBaseDM.GetData(3, MTDM.cdsCustomer, MTDM.cdsCustomer.Name, ONE_SPACE,
      'C:\Data\Xml\Customer.xml', MTDM.cdsCustomer.UpdateOptions.Generatorname,
      MTDM.cdsCustomer.UpdateOptions.UpdateTableName);

    if not MTDM.cdsCustomer.Active then
      MTDM.cdsCustomer.CreateDataSet;

    // Contact Dtail Co
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Company Contact Detail Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    VBBaseDM.GetData(9, MTDM.cdsContactDetailCo, MTDM.cdsContactDetailCo.Name, ONE_SPACE,
      'C:\Data\Xml\Contact Detail Co.xml', MTDM.cdsContactDetailCo.UpdateOptions.Generatorname,
      MTDM.cdsContactDetailCo.UpdateOptions.UpdateTableName);

    if not MTDM.cdsContactDetailCo.Active then
      MTDM.cdsContactDetailCo.CreateDataSet;

    // Address
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Address Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    VBBaseDM.GetData(4, MTDM.cdsAddress, MTDM.cdsAddress.Name, ONE_SPACE,
      'C:\Data\Xml\Address.xml', MTDM.cdsAddress.UpdateOptions.Generatorname,
      MTDM.cdsAddress.UpdateOptions.UpdateTableName);

    if not MTDM.cdsAddress.Active then
      MTDM.cdsAddress.CreateDataSet;

    // Contact Person
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Contact Person Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    VBBaseDM.GetData(10, MTDM.cdsContactPerson, MTDM.cdsContactPerson.Name, ONE_SPACE,
      'C:\Data\Xml\Contact Person.xml', MTDM.cdsContactPerson.UpdateOptions.Generatorname,
      MTDM.cdsContactPerson.UpdateOptions.UpdateTableName);

    if not MTDM.cdsContactPerson.Active then
      MTDM.cdsContactPerson.CreateDataSet;

    // Person Contact Detail
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Contact Detail Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    VBBaseDM.GetData(37, MTDM.cdsContactDetailPerson, MTDM.cdsContactDetailPerson.Name, ONE_SPACE,
      'C:\Data\Xml\Contact Detail Person Customer.xml', MTDM.cdsContactDetailPerson.UpdateOptions.Generatorname,
      MTDM.cdsContactDetailPerson.UpdateOptions.UpdateTableName);

    if not MTDM.cdsContactDetailPerson.Active then
      MTDM.cdsContactDetailPerson.CreateDataSet;

    // Banking Details
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Banking Detail Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    VBBaseDM.GetData(7, MTDM.cdsBankingDetail, MTDM.cdsBankingDetail.Name, ONE_SPACE,
      'C:\Data\Xml\Banking Detail.xml', MTDM.cdsBankingDetail.UpdateOptions.Generatorname,
      MTDM.cdsBankingDetail.UpdateOptions.UpdateTableName);

    if not MTDM.cdsBankingDetail.Active then
      MTDM.cdsBankingDetail.CreateDataSet;

    // Director
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Director Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    VBBaseDM.GetData(16, MTDM.cdsDirector, MTDM.cdsDirector.Name, ONE_SPACE,
      'C:\Data\Xml\Director.xml', MTDM.cdsDirector.UpdateOptions.Generatorname,
      MTDM.cdsDirector.UpdateOptions.UpdateTableName);

    if not MTDM.cdsDirector.Active then
      MTDM.cdsDirector.CreateDataSet;

    // Beneficiary
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Beneficiary Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    VBBaseDM.GetData(8, MTDM.cdsBeneficiary, MTDM.cdsBeneficiary.Name, ONE_SPACE,
      'C:\Data\Xml\Beneficiary.xml', MTDM.cdsBeneficiary.UpdateOptions.Generatorname,
      MTDM.cdsBeneficiary.UpdateOptions.UpdateTableName);

    if not MTDM.cdsBeneficiary.Active then
      MTDM.cdsBeneficiary.CreateDataSet;

    // Vehicle
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Vehicle Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    VBBaseDM.GetData(49, MTDM.cdsVehicle, MTDM.cdsVehicle.Name, ONE_SPACE,
      'C:\Data\Xml\Vehicle.xml', MTDM.cdsVehicle.UpdateOptions.Generatorname,
      MTDM.cdsVehicle.UpdateOptions.UpdateTableName);

    if not MTDM.cdsVehicle.Active then
      MTDM.cdsVehicle.CreateDataSet;

// Open all lookup tables  -----------------------------------------------------

    // Customer type
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Customer Type Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    VBBaseDM.GetData(15, LookupDM.cdsCustomerType, LookupDM.cdsCustomerType.Name, ONE_SPACE,
      'C:\Data\Xml\Customer Type.xml', LookupDM.cdsCustomerType.UpdateOptions.Generatorname,
      LookupDM.cdsCustomerType.UpdateOptions.UpdateTableName);

    // Customer status
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Customer Status Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    VBBaseDM.GetData(14, LookupDM.cdsCustomerStatus, LookupDM.cdsCustomerStatus.Name, ONE_SPACE,
      'C:\Data\Xml\Customer Status.xml', LookupDM.cdsCustomerStatus.UpdateOptions.Generatorname,
      LookupDM.cdsCustomerStatus.UpdateOptions.UpdateTableName);

    // Contact type
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Contact Type Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    VBBaseDM.GetData(11, LookupDM.cdsContactType, LookupDM.cdsContactType.Name, ONE_SPACE,
      'C:\Data\Xml\Contact Type.xml', LookupDM.cdsContactType.UpdateOptions.Generatorname,
      LookupDM.cdsContactType.UpdateOptions.UpdateTableName);

    // Salutation
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Salutation Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    VBBaseDM.GetData(23, LookupDM.cdsSalutation, LookupDM.cdsSalutation.Name, ONE_SPACE,
      'C:\Data\Xml\Slutation.xml', LookupDM.cdsSalutation.UpdateOptions.Generatorname,
      LookupDM.cdsSalutation.UpdateOptions.UpdateTableName);

    LookupDM.cdsBFSalutation.Close;
    LookupDM.cdsDirectorSalutation.Close;

    LookupDM.cdsBFSalutation.Data := LookupDM.cdsSalutation.Data;
    LookupDM.cdsDirectorSalutation.Data := LookupDM.cdsSalutation.Data;

   // Job function
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Job Function Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    VBBaseDM.GetData(19, LookupDM.cdsJobFunction, LookupDM.cdsJobFunction.Name, ONE_SPACE,
      'C:\Data\Xml\Job Function.xml', LookupDM.cdsJobFunction.UpdateOptions.Generatorname,
      LookupDM.cdsJobFunction.UpdateOptions.UpdateTableName);

    // Bank
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Bank Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    VBBaseDM.GetData(5, LookupDM.cdsBank, LookupDM.cdsBank.Name, ONE_SPACE,
      'C:\Data\Xml\Bank.xml', LookupDM.cdsBank.UpdateOptions.Generatorname,
      LookupDM.cdsBank.UpdateOptions.UpdateTableName);

    // Bank account type
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Bank Account Type Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    VBBaseDM.GetData(6, LookupDM.cdsBankAccountType, LookupDM.cdsBankAccountType.Name, ONE_SPACE,
      'C:\Data\Xml\Bank Account Type.xml', LookupDM.cdsBankAccountType.UpdateOptions.Generatorname,
      LookupDM.cdsBankAccountType.UpdateOptions.UpdateTableName);

    // Tax/VAT Office
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Tax/VAT Office Tables' + '|PROGRESS=' + Iteration.ToString)), 0);
    VBBaseDM.GetData(25, LookupDM.cdsTaxOffice, LookupDM.cdsTaxOffice.Name, ONE_SPACE,
      'C:\Data\Xml\Tax Office.xml', LookupDM.cdsTaxOffice.UpdateOptions.Generatorname,
      LookupDM.cdsTaxOffice.UpdateOptions.UpdateTableName);

    LookupDM.cdsVATOffice.Close;

    LookupDM.cdsVATOffice.Data := LookupDM.cdsTaxOffice.Data;

    // Country
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Country Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    VBBaseDM.GetData(12, LookupDM.cdsCountry, LookupDM.cdsCountry.Name, ONE_SPACE,
      'C:\Data\Xml\Country.xml', LookupDM.cdsCountry.UpdateOptions.Generatorname,
      LookupDM.cdsCountry.UpdateOptions.UpdateTableName);

    // Vehicle make
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Vehicle Make Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    VBBaseDM.GetData(48, LookupDM.cdsVehicleMake, LookupDM.cdsVehicleMake.Name, ONE_SPACE,
      'C:\Data\Xml\Vehicle Make.xml', LookupDM.cdsVehicleMake.UpdateOptions.Generatorname,
      LookupDM.cdsVehicleMake.UpdateOptions.UpdateTableName);

    // Month of Year
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Month of Year Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    VBBaseDM.GetData(20, LookupDM.cdsMonthOfYear, LookupDM.cdsMonthOfYear.Name, ONE_SPACE,
      'C:\Data\Xml\Month of Year.xml', LookupDM.cdsMonthOfYear.UpdateOptions.Generatorname,
      LookupDM.cdsMonthOfYear.UpdateOptions.UpdateTableName);

    LookupDM.cdsARMonthOfYear.Close;
    LookupDM.cdsVATMonth.Close;

    LookupDM.cdsARMonthOfYear.Data := LookupDM.cdsMonthOfYear.Data;
    LookupDM.cdsVATMonth.Data := LookupDM.cdsMonthOfYear.Data;
  finally
    ProgressFrm.Close;
    FreeAndNil(ProgressFrm);
  end;
end;

procedure TCustomerFrm.grdContactPersonEnter(Sender: TObject);
begin
  inherited;
  actInsert.Caption := 'Add a new contact person';
  actEdit.Caption := 'Edit selected contact person';
  actDelete.Caption := 'Delete selected contact person';
  MTDM.FormCaption := 'Contact Person';
  MTDM.DetailIndex := 2;
end;

procedure TCustomerFrm.grdCPContactDetailEnter(Sender: TObject);
begin
  inherited;
  actInsert.Caption := 'Add a new person contact detail';
  actEdit.Caption := 'Edit selected person contact detail';
  actDelete.Caption := 'Delete selected person cotact detail';
  MTDM.FormCaption := 'Contact Person Details';
  MTDM.DetailIndex := 3;
end;

procedure TCustomerFrm.grdPhysicalAddressDblClick(Sender: TObject);
begin
  inherited;
// if TcxGridSite(TcxDBVerticalGrid(Sender)).GridView.DataController.RecordCount = 0 then
  if TcxDBVerticalGrid(Sender).DataController.RecordCount = 0 then
    EditDeleteRecord(VK_INSERT)
  else
    EditDeleteRecord({ VK_F2 }VK_RETURN);
end;

procedure TCustomerFrm.grdPhysicalAddressEnter(Sender: TObject);
begin
  inherited;
  actInsert.Caption := 'Add a new address';
  actEdit.Caption := 'Edit selected address';
  actDelete.Caption := 'Delete selected address';
end;

procedure TCustomerFrm.grdVCustomerInitEdit(Sender, AItem: TObject; AEdit: TcxCustomEdit);
begin
  inherited;
  // Prevent scrolling when editor is not dropped down. This prevents
  // accidental changing of the lookup combo's value.
  if AEdit is TcxLookupComboBox then
    if not TcxLookupComboBox(AEdit).DroppedDown then
      TcxLookupComboBox(AEdit).Properties.UseMouseWheel := False;
end;

procedure TCustomerFrm.EditDeleteRecord(Key: Word);
var
// ModResult: ShortInt;
  ErrorValues: string;
  ModResult: Integer;
  DataSet: TFDMemTable;
begin
  Screen.Cursor := crHourglass;
  ModResult := mrNone;
  ErrorValues := '';
  DataSet := nil;

  case Key of
    VK_INSERT, VK_RETURN { VK_F2 }:
      begin
        FOpenTableParam.ScriptID := 0;
        FOpenTableParam.DataSet := nil;
        FOpenTableParam.DataSetName := '';
        FOpenTableParam.FileName := '';
        FOpenTableParam.GeneratorName := '';
        FOpenTableParam.UpdateTableName := '';
        FOpenTableParam.FieldName := '';
        FOpenTableParam.LocateValue := '';

        case Key of
          VK_INSERT: VBBaseDM.DBAction := acInsert;
          { VK_F2 }VK_RETURN: VBBaseDM.DBAction := acModify;
        end;

        case MTDM.DetailIndex of
          0:
            begin
              DataSet := MTDM.cdsContactDetailCo;

              if CompanyContactDetailFrm = nil then
                CompanyContactDetailFrm := TCompanyContactDetailFrm.Create(nil);

              ModResult := CompanyContactDetailFrm.ShowModal;
              if ModResult = mrOK then
              begin
                FOpenTableParam.ScriptID := 9;
                FOpenTableParam.FileName := 'C:\Data\Xml\Contact Detail Co.xml';
                FOpenTableParam.FieldName := 'VALUE';
                FOpenTableParam.LocateValue := MTDM.FFieldValue.TextValue;
              end;

              CompanyContactDetailFrm.Close;
              FreeAndNil(CompanyContactDetailFrm);
            end;

          1:
            begin
              DataSet := MTDM.cdsAddress;

              if AddressDetailFrm = nil then
                AddressDetailFrm := TAddressDetailFrm.Create(nil);

              ModResult := AddressDetailFrm.ShowModal;
              if ModResult = mrOK then
              begin
                FOpenTableParam.ScriptID := 4;
                FOpenTableParam.FileName := 'C:\Data\Xml\Address.xml';
                FOpenTableParam.FieldName := 'PHYSICAL1';
                FOpenTableParam.LocateValue := MTDM.FFieldValue.Physical1;
              end;

              AddressDetailFrm.Close;
              FreeAndNil(AddressDetailFrm);
            end;

          2:
            begin
              DataSet := MTDM.cdsContactPerson;

              if ContactPersonFrm = nil then
                ContactPersonFrm := TContactPersonFrm.Create(nil);

              ModResult := ContactPersonFrm.ShowModal;
              if ModResult = mrOK then
              begin
                FOpenTableParam.ScriptID := 10;
                FOpenTableParam.FileName := 'C:\Data\Xml\Contact Person.xml';
                FOpenTableParam.FieldName := 'FIRST_NAME';
                FOpenTableParam.LocateValue := MTDM.FFieldValue.FirstName;
              end;

              ContactPersonFrm.Close;
              FreeAndNil(ContactPersonFrm);
            end;

          3:
            begin
              if MTDM.cdsContactPerson.IsEmpty then
              begin
                Screen.Cursor := crDefault;
                raise ENoDataException.Create('Please add a contact person before adding the details.');
              end;

              DataSet := MTDM.cdsContactDetailPerson;

              if PersonContactDetailFrm = nil then
                PersonContactDetailFrm := TPersonContactDetailFrm.Create(nil);

              ModResult := PersonContactDetailFrm.ShowModal;
              if ModResult = mrOK then
              begin
                FOpenTableParam.ScriptID := 37;
                FOpenTableParam.FileName := 'C:\Data\Xml\Contact Detail Person Customer.xml';
                FOpenTableParam.FieldName := 'VALUE';
                FOpenTableParam.LocateValue := MTDM.FFieldValue.TextValue;
              end;

              PersonContactDetailFrm.Close;
              FreeAndNil(PersonContactDetailFrm);
            end;

          4:
            begin
              DataSet := MTDM.cdsBankingDetail;

              if BankingDetailFrm = nil then
                BankingDetailFrm := TBankingDetailFrm.Create(nil);

              ModResult := BankingDetailFrm.ShowModal;
              if ModResult = mrOK then
              begin
                FOpenTableParam.ScriptID := 7;
                FOpenTableParam.FileName := 'C:\Data\Xml\Banking Detail.xml';
                FOpenTableParam.FieldName := 'FIRST_NAME';
                FOpenTableParam.LocateValue := MTDM.FFieldValue.Bank;
              end;

              BankingDetailFrm.Close;
              FreeAndNil(BankingDetailFrm);
            end;

          5:
            begin
              DataSet := MTDM.cdsDirector;

              if DirectorDetailFrm = nil then
                DirectorDetailFrm := TDirectorDetailFrm.Create(nil);

              ModResult := DirectorDetailFrm.ShowModal;
              if ModResult = mrOK then
              begin
                FOpenTableParam.ScriptID := 16;
                FOpenTableParam.FileName := 'C:\Data\Xml\Director.xml';
                FOpenTableParam.FieldName := 'FIRST_NAME';
                FOpenTableParam.LocateValue := MTDM.FFieldValue.FirstName;
              end;

              DirectorDetailFrm.Close;
              FreeAndNil(DirectorDetailFrm);
            end;

          6:
            begin
              DataSet := MTDM.cdsBeneficiary;

              if BeneficiaryDetailFrm = nil then
                BeneficiaryDetailFrm := TBeneficiaryDetailFrm.Create(nil);

              ModResult := BeneficiaryDetailFrm.ShowModal;
              if ModResult = mrOK then
              begin
                FOpenTableParam.ScriptID := 8;
                FOpenTableParam.FileName := 'C:\Data\Xml\Beneficiary.xml';
                FOpenTableParam.FieldName := 'FIRST_NAME';
                FOpenTableParam.LocateValue := MTDM.FFieldValue.FirstName;
              end;

              BeneficiaryDetailFrm.Close;
              FreeAndNil(BeneficiaryDetailFrm);
            end;

          7:
            begin
              DataSet := MTDM.cdsVehicle;

              if VehicleDetailFrm = nil then
                VehicleDetailFrm := TVehicleDetailFrm.Create(nil);

              ModResult := VehicleDetailFrm.ShowModal;
              if ModResult = mrOK then
              begin
                FOpenTableParam.ScriptID := 49;
                FOpenTableParam.FileName := 'C:\Data\Xml\Vehicle.xml';
                FOpenTableParam.FieldName := 'REG_NO';
                FOpenTableParam.LocateValue := MTDM.FFieldValue.VehicleRegNo;
              end;

              VehicleDetailFrm.Close;
              FreeAndNil(VehicleDetailFrm);
            end;
        end;

// SELECT GEN_ID( <GeneratorName>, 0 ) FROM RDB$DATABASE;
        if ModResult = mrOK then
          try
            Screen.Cursor := crHourglass;
            ErrorValues := FillFieldData(MTDM.DetailIndex);
            FOpenTableParam.DataSet := DataSet;
            FOpenTableParam.DataSetName := DataSet.Name;
            FOpenTableParam.GeneratorName := DataSet.UpdateOptions.Generatorname;
            FOpenTableParam.UpdateTableName := DataSet.UpdateOptions.UpdateTableName;

            // Post the data
            try
              FDetailDataSet[MTDM.DetailIndex].Post;

              VBBaseDM.GetData(FOpenTableParam.ScriptID, FOpenTableParam.DataSet, FOpenTableParam.DataSetName, ONE_SPACE,
                FOpenTableParam.FileName, FOpenTableParam.GeneratorName, FOpenTableParam.UpdateTableName);

              // Don't do a located for Address
              if MTDM.DetailIndex <> 1 then
                if not FDetailDataSet[MTDM.DetailIndex].Locate(FOpenTableParam.FieldName, FOpenTableParam.LocateValue, [loCaseInsensitive]) then
                  FDetailDataSet[MTDM.DetailIndex].First;
            except
              on E: EFDException do
              begin
                if MTDM.PostError then
                begin
                  if E.FDCode = 15 then // Duplicate record
                    raise EDuplicateException.Create('Duplicate records not allowed.' + CRLF + CRLF +
                      FDetailFriendlyName[MTDM.DetailIndex] + ' for ' + MTDM.cdsCustomer.FieldByName('NAME').AsString + ' already exists.' + CRLF + CRLF +
                      ErrorValues
                      );
                end;
              end;
            end;
          finally
            Screen.Cursor := crDefault;
          end;
      end;

    VK_DELETE:
      begin
        Beep;
        if DisplayMsg(
          Application.Title,
          'Delete Confirmaiton',
          'Are you sure you want to delete the selected ' + FDetailFriendlyName[MTDM.DetailIndex] + '?' + CRLF + CRLF +
          'This action cannot be undone!',
          mtConfirmation,
          [mbYes, mbNo]
          ) = mrYes then
          FDetailDataSet[MTDM.DetailIndex].Delete;
      end;
  end;
end;

procedure TCustomerFrm.viewContactDetailCoDblClick(Sender: TObject);
begin
  inherited;
  if TcxGridSite(Sender).GridView.DataController.RecordCount = 0 then
    EditDeleteRecord(VK_INSERT)
  else
    EditDeleteRecord({ VK_F2 }VK_RETURN);
end;

procedure TCustomerFrm.viewContactDetailCoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
// var
// KeyPressed: Word;
begin
  inherited;
// KeyPressed := Key;
// case KeyPressed of
// VK_INSERT, VK_F2, VK_DELETE:
// begin
// // We handle key pressed ourselves from here.
// Key := 0;
// if Sender is TcxDBVerticalGrid then
// case KeyPressed of
// VK_INSERT, VK_F2: KeyPressed := VK_F2;
// end;
//
// EditDeleteRecord(KeyPressed);
// end;
// end;
end;

procedure TCustomerFrm.viewContactDetailNavigatorButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
var
  Key: Word;
begin
  inherited;
  ADone := True;

  case AButtonIndex of
    NBDI_INSERT: Key := VK_INSERT;
    NBDI_EDIT: Key := VK_RETURN { VK_F2 };
    NBDI_DELETE: Key := VK_DELETE;
  else
    Key := 0;
  end;

  EditDeleteRecord(Key);

// case AButtonIndex of
// NBDI_DELETE:
// begin
// Beep;
// ADone := DisplayMsg(
// Application.Title,
// 'Delete Confirmaiton',
// 'Are you sure you want to delete the selected Activity Type?' + CRLF + CRLF +
// 'This action cannot be undone!',
// mtConfirmation,
// [mbYes, mbNo]
// ) = mrNo;
// end;
//
// NBDI_INSERT, NBDI_EDIT:
// begin
// if CustomerEditFrm = nil then
// CustomerEditFrm := TCustomerEditFrm.Create(nil);
//
// MTDM.DetailIndex := 0;
// case AButtonIndex of
// NBDI_INSERT: DBAction := acInsert;
// NBDI_EDIT: DBAction := acModify;
// end;
//
// if CustomerEditFrm.ShowModal = mrOK then
// MTDM.cdsContactDetailCo.Post
// else if MTDM.cdsContactDetailCo.State in [dsEdit, dsInsert] then
// MTDM.cdsContactDetailCo.Cancel;
//
// CustomerEditFrm.Close;
// FreeAndNil(CustomerEditFrm);
// end;
// end;
end;

procedure TCustomerFrm.viewContactPersonFocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
// if AFocusedRecord <> nil then
// begin
  viewCPContactDetail.OnKeyDown := viewContactDetailCoKeyDown;
  viewCPContactDetail.OnDblClick := viewContactDetailCoDblClick;
  viewCPContactDetail.Navigator.Visible := viewContactPerson.DataController.RecordCount > 0;

  if viewContactPerson.DataController.RecordCount = 0 then
  begin
    viewCPContactDetail.OnKeyDown := nil;
    viewCPContactDetail.OnDblClick := nil;
  end;

// viewContactPerson.OptionsData.Inserting := viewContactPerson.DataController.RecordCount > 0;
// viewContactPerson.OptionsData.Editing := viewContactPerson.OptionsData.Inserting;
// end;
end;

procedure TCustomerFrm.viewCustomerCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.GridRecord = nil then
    Exit;

  if AViewInfo.GridRecord.Focused then
  // This renders the background and font colours of the focused record
  begin
    if AViewInfo.Item <> nil then
      if AViewInfo.Item.Focused then
      begin
        // This renders the background and border colour of the focused cell
        ACanvas.Brush.Color := $B6EDFA;
        ACanvas.Font.Color := RootLookAndFeel.SkinPainter.DefaultSelectionColor;
        PostMessage(Handle, CM_DRAWBORDER, Integer(ACanvas), Integer(AViewInfo));
      end;
  end;
end;

end.

