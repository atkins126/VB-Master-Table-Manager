unit Customer_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, System.ImageList, Vcl.ImgList, Vcl.Controls,
  Vcl.Dialogs, System.Actions, Vcl.ActnList, System.StrUtils, Vcl.Menus,
  System.IOUtils, Vcl.StdCtrls, Data.DB,

  BaseLayout_Frm, CommonValues, VBCommonValues,

  FireDAC.Comp.Client,

  frxClass,

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
  dxScrollbarAnnotations, Report_DM, dxBar, cxDropDownEdit, cxBarEditItem,
  cxMaskEdit, dxPrnDev, dxPrnDlg, AccountHolder_Frm, cxButtonEdit,
  CustomerEdit_Frm;

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
    mnuInsertContactDetail: TMenuItem;
    mnuEditSelectedContactDetail: TMenuItem;
    mnuDeleteSelectedContactDetail: TMenuItem;
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
    litPrintToolbar: TdxLayoutItem;
    barManager: TdxBarManager;
    cbxIsActive: TcxGridDBBandedColumn;
    grdCustomerListing: TcxGrid;
    viewCustomerListing: TcxGridDBBandedTableView;
    lvlCustomerListing: TcxGridLevel;
    tipPersistSelection: TdxScreenTip;
    cbxPersistSelection: TcxCheckBox;
    litPersistSelection: TdxLayoutItem;
    litReportType: TdxLayoutItem;
    litWhatToPrint: TdxLayoutItem;
    litGroupBy: TdxLayoutItem;
    cbxGroupedReport: TcxCheckBox;
    lucPrintWhat: TcxComboBox;
    lucReportType: TcxComboBox;
    tipOpenAfterExport: TdxScreenTip;
    tipGroupedReport: TdxScreenTip;
    tipRepoortType: TdxScreenTip;
    tipPrintWhat: TdxScreenTip;
    edtCLID: TcxGridDBBandedColumn;
    edtCLCustomerTypeID: TcxGridDBBandedColumn;
    edtCLYearEndMonthID: TcxGridDBBandedColumn;
    edtCLTaxOfficeID: TcxGridDBBandedColumn;
    edtCLARMonthID: TcxGridDBBandedColumn;
    edtCLVATMonthID: TcxGridDBBandedColumn;
    edtCLVATCountryID: TcxGridDBBandedColumn;
    edtCLVATOfficeID: TcxGridDBBandedColumn;
    edtCLStatusID: TcxGridDBBandedColumn;
    edtCLCustomerType: TcxGridDBBandedColumn;
    edtCLName: TcxGridDBBandedColumn;
    edtCLTradingAs: TcxGridDBBandedColumn;
    edtCLCoNo: TcxGridDBBandedColumn;
    edtCLTaxNo: TcxGridDBBandedColumn;
    edtCLVATNo: TcxGridDBBandedColumn;
    cbxCLIsActive: TcxGridDBBandedColumn;
    edtCLStatus: TcxGridDBBandedColumn;
    dlgFileSave: TSaveDialog;
    dlgPrint: TdxPrintDialog;
    grdCustomerReport: TcxGrid;
    viewCustomerReport: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    grpReportOptions: TdxLayoutGroup;
    litPrintContactDetails: TdxLayoutItem;
    cbxPrintContactDetails: TcxCheckBox;
    tipPrintContactDetails: TdxScreenTip;
    viewCustomerReportID: TcxGridDBBandedColumn;
    viewCustomerReportCUSTOMER_TYPE_ID: TcxGridDBBandedColumn;
    viewCustomerReportYEAR_END_MONTH_ID: TcxGridDBBandedColumn;
    viewCustomerReportTAX_OFFICE_ID: TcxGridDBBandedColumn;
    viewCustomerReportVAT_MONTH_ID: TcxGridDBBandedColumn;
    viewCustomerReportVAT_COUNTRY_ID: TcxGridDBBandedColumn;
    viewCustomerReportVAT_OFFICE_ID: TcxGridDBBandedColumn;
    viewCustomerReportAR_MONTH_ID: TcxGridDBBandedColumn;
    viewCustomerReportSTATUS_ID: TcxGridDBBandedColumn;
    viewCustomerReportNAME: TcxGridDBBandedColumn;
    viewCustomerReportFIRST_NAME: TcxGridDBBandedColumn;
    viewCustomerReportLAST_NAME: TcxGridDBBandedColumn;
    viewCustomerReportINITIALS: TcxGridDBBandedColumn;
    viewCustomerReportTRADING_AS: TcxGridDBBandedColumn;
    viewCustomerReportBILL_TO: TcxGridDBBandedColumn;
    viewCustomerReportCO_NO: TcxGridDBBandedColumn;
    viewCustomerReportTAX_NO: TcxGridDBBandedColumn;
    viewCustomerReportVAT_NO: TcxGridDBBandedColumn;
    viewCustomerReportVAT_CUSTOMS_CODE: TcxGridDBBandedColumn;
    viewCustomerReportPAYE_UIF_NO: TcxGridDBBandedColumn;
    viewCustomerReportSDL_NO: TcxGridDBBandedColumn;
    viewCustomerReportWC_NO: TcxGridDBBandedColumn;
    viewCustomerReportAR_COMPLETION_DATE: TcxGridDBBandedColumn;
    viewCustomerReportSARS_AUTHORIZATION_SHEET: TcxGridDBBandedColumn;
    viewCustomerReportPASTEL_ACC_CODE: TcxGridDBBandedColumn;
    viewCustomerReportVB_TAX_ACC_CODE: TcxGridDBBandedColumn;
    viewCustomerReportIS_PROV_TAX_PAYER: TcxGridDBBandedColumn;
    viewCustomerReportHAS_LIVING_WILL: TcxGridDBBandedColumn;
    viewCustomerReportIS_ORGAN_DONOR: TcxGridDBBandedColumn;
    viewCustomerReportDATE_CREATED: TcxGridDBBandedColumn;
    viewCustomerReportDATE_MODIFIED: TcxGridDBBandedColumn;
    viewCustomerReportIS_ACTIVE: TcxGridDBBandedColumn;
    viewCustomerReportEFILING: TcxGridDBBandedColumn;
    viewCustomerReportEF_USER_NAME: TcxGridDBBandedColumn;
    viewCustomerReportEF_PASSWORD: TcxGridDBBandedColumn;
    viewCustomerReportCUSTOMER_GROUP_ID: TcxGridDBBandedColumn;
    lucAccountHolderName: TcxGridDBBandedColumn;
    actAccountHolderName: TAction;
    actCustList: TActionList;
    actInstCust: TAction;
    actEditCust: TAction;
    actDeleteCust: TAction;
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
    procedure cbxPersistSelectionPropertiesEditValueChanged(Sender: TObject);
    procedure lucPrintWhatPropertiesEditValueChanged(Sender: TObject);
    procedure cbxOpenAfterExportPropertiesEditValueChanged(Sender: TObject);
    procedure DoSetCoporateAccHolderName(Sender: TObject);
    procedure grdCustomerEnter(Sender: TObject);
    procedure grdVCustomerDblClick(Sender: TObject);
    procedure grdCustomerExit(Sender: TObject);
  private
    { Private declarations }
    FDetailFriendlyName: DetailFriendlyNames;
    FDetailDataSet: DetailDataSetArray;
    FOpenTableParam: TOpenTableParams;

    FCustomerWhereClause: string;
    FCustomerOrderByClause: string;

    FAddressWhereClause: string;
    FAddressOrderByClause: string;

    FContactDetailCoWhereClause: string;
    FContactDetailCoOrderByClause: string;

    FBankingDetailWhereClause: string;
    FBankingDetailOrderByClause: string;

    FContactDetailPersonWhereClause: string;
    FContactDetailPersonOrderByClause: string;

    FContactPersonWhereClause: string;
    FContactPersonOrderByClause: string;

    FDirecterWhereClaue: string;
    FDirectorOrderByClause: string;

    FBeneficiaryWhereClaue: string;
    FBeneficiaryOrderByClause: string;

    FVehicleWhereClause: string;
    FVehicleOrderByClaue: string;

    procedure CmDrawBorder(var Msg: TMessage); message CM_DRAWBORDER;
    procedure OpenTables;
    procedure EditDeleteRecord(Key: Word);
    function FillFieldData(DetailDataSetID: Integer): string;
    procedure OpenReportDataSets;
    // Controls scrolling of embedded loolup comboboxes.
//    procedure DoMyMouseWheel(Sender: TObject; Shift: TShiftState;
//      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
  protected
    procedure HandleTSAfterPost(var MyMsg: TMessage); message WM_RECORD_ID;
  public
    { Public declarations }
    property DetailDataSet: DetailDataSetArray read FDetailDataSet write FDetailDataSet;
    property DetailFriendlyName: DetailFriendlyNames read FDetailFriendlyName write FDetailFriendlyName;
  end;

var
  CustomerFrm: TCustomerFrm;

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

procedure TCustomerFrm.cbxOpenAfterExportPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  if Self.Showing then
  begin
    grdCustomer.SetFocus;
    viewCustomer.Focused := True;
  end;
end;

procedure TCustomerFrm.cbxPersistSelectionPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  if cbxPersistSelection.Checked then
    viewCustomer.OptionsSelection.MultiSelectMode := msmPersistent
  else
    viewCustomer.OptionsSelection.MultiSelectMode := msmStandard;

  if Self.Showing then
  begin
    grdCustomer.SetFocus;
    viewCustomer.Focused := True;
  end;
end;

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

    8: // Customer
      begin
        MTDM.cdsCustomer.FieldByName('CUSTOMER_TYPE_ID').AsInteger := MTDM.FFieldValue.CustomerTypeID;
        MTDM.cdsCustomer.FieldByName('YEAR_END_MONTH_ID').AsInteger := MTDM.FFieldValue.YearEndMonthID;
        MTDM.cdsCustomer.FieldByName('TAX_OFFICE_ID').AsInteger := MTDM.FFieldValue.TaxOfficeID;
        MTDM.cdsCustomer.FieldByName('VAT_MONTH_ID').AsInteger := MTDM.FFieldValue.VATMonthID;
        MTDM.cdsCustomer.FieldByName('VAT_COUNTRY_ID').AsInteger := MTDM.FFieldValue.VATCountryID;
        MTDM.cdsCustomer.FieldByName('VAT_OFFICE_ID').AsInteger := MTDM.FFieldValue.VATOfficeID;
        MTDM.cdsCustomer.FieldByName('AR_MONTH_ID').AsInteger := MTDM.FFieldValue.ARMonthID;
        MTDM.cdsCustomer.FieldByName('STATUS_ID').AsInteger := MTDM.FFieldValue.StatauID;
        MTDM.cdsCustomer.FieldByName('IS_ACTIVE').AsInteger := MTDM.FFieldValue.IsActive;
        MTDM.cdsCustomer.FieldByName('NAME').AsString := MTDM.FFieldValue.Name;
        MTDM.cdsCustomer.FieldByName('FIRST_NAME').AsString := MTDM.FFieldValue.FirstName;
        MTDM.cdsCustomer.FieldByName('LAST_NAME').AsString := MTDM.FFieldValue.LastName;
        MTDM.cdsCustomer.FieldByName('INITIALS').AsString := MTDM.FFieldValue.Initials;
        MTDM.cdsCustomer.FieldByName('TRADING_AS').AsString := MTDM.FFieldValue.TradingAs;
        MTDM.cdsCustomer.FieldByName('BILL_TO').AsString := MTDM.FFieldValue.BillTo;
        MTDM.cdsCustomer.FieldByName('CO_NO').AsString := MTDM.FFieldValue.CoNo;
        MTDM.cdsCustomer.FieldByName('TAX_NO').AsString := MTDM.FFieldValue.TaxNo;
        MTDM.cdsCustomer.FieldByName('VAT_NO').AsString := MTDM.FFieldValue.VATNo;
        MTDM.cdsCustomer.FieldByName('VAT_CUSTOMS_CODE').AsString := MTDM.FFieldValue.VATCustomsCode;
        MTDM.cdsCustomer.FieldByName('PAYE_UIF_NO').AsString := MTDM.FFieldValue.PayeUifNo;
        MTDM.cdsCustomer.FieldByName('SDL_NO').AsString := MTDM.FFieldValue.SDLNo;
        MTDM.cdsCustomer.FieldByName('WC_NO').AsString := MTDM.FFieldValue.WCNo;

        if (FormatDatetime('dd/MM/yyyy', MTDM.FFieldValue.ARCompletionDate) <> '30/12/1899')
          and (FormatDatetime('dd/MM/yyyy', MTDM.FFieldValue.ARCompletionDate) <> '00/00/0000') then
          MTDM.cdsCustomer.FieldByName('AR_COMPLETION_DATE').AsDateTime := MTDM.FFieldValue.ARCompletionDate;
//        MTDM.cdsCustomer.FieldByName('AR_COMPLETION_DATE').Value := MTDM.FFieldValue.ARCompletionDate;
        MTDM.cdsCustomer.FieldByName('PASTEL_ACC_CODE').AsString := MTDM.FFieldValue.PasteAccCode;
        MTDM.cdsCustomer.FieldByName('VB_TAX_ACC_CODE').AsString := MTDM.FFieldValue.VBTaxAccCode;
        MTDM.cdsCustomer.FieldByName('IS_PROV_TAX_PAYER').AsInteger := MTDM.FFieldValue.IsProvTaxPayer;
        MTDM.cdsCustomer.FieldByName('HAS_LIVING_WILL').AsInteger := MTDM.FFieldValue.HasLivingWill;
        MTDM.cdsCustomer.FieldByName('IS_ORGAN_DONOR').AsInteger := MTDM.FFieldValue.IsOrganDonor;
        MTDM.cdsCustomer.FieldByName('EFILING').AsString := MTDM.FFieldValue.EFiling;
        MTDM.cdsCustomer.FieldByName('EF_USER_NAME').AsString := MTDM.FFieldValue.EFUserName;
        MTDM.cdsCustomer.FieldByName('EF_PASSWORD').AsString := MTDM.FFieldValue.EFPassword;

        MTDM.ValueArray[0] := 'Customer ' + MTDM.FFieldValue.Name;
        ErrorValues := Format(ERROR_VALUES, [
          MTDM.ValueArray[0]]);
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
  Application.HintPause := 0;
  Application.HintShortPause := 0;
  Application.HintHidePause := 250000;
  styHintController.HintHidePause := 25000;
  litLegend.LayoutLookAndFeel := lafCustomSkin;
  styLegend.Style.Font.Color := cxLookAndFeels.RootLookAndFeel.SkinPainter.DefaultContentTextColor;
  styLegend.Style.TextColor := cxLookAndFeels.RootLookAndFeel.SkinPainter.DefaultContentTextColor;

  viewCustomer.DataController.DataSource := MTDM.dtsCustomer;
  viewCustomerReport.DataController.DataSource := ReportDM.dtsCustomer;
  viewCustomerListing.DataController.DataSource := ReportDM.dtsCustomerListing;
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

  viewContactDetailCo.DataController.DataSource := MTDM.dtsContactDetailCo;
  viewContactPerson.DataController.DataSource := MTDM.dtsContactPerson;
  viewCPContactDetail.DataController.DataSource := MTDM.dtsContactDetailPerson;
  viewBankingDetail.DataController.DataSource := MTDM.dtsBankingDetail;
  viewDirector.DataController.DataSource := MTDM.dtsDirector;
  viewBeneficiary.DataController.DataSource := MTDM.dtsBeneficiary;
  viewVehicle.DataController.DataSource := MTDM.dtsVehicle;
// FDetailDataSet[0] := MTDM.cdsContactDetailCo;
// FDetailDataSet[1] := MTDM.cdsAddress;
// FDetailDataSet[2] := MTDM.cdsContactPerson;
// FDetailDataSet[3] := MTDM.cdsContactDetailPerson;
// FDetailDataSet[4] := MTDM.cdsBankingDetail;
// FDetailDataSet[5] := MTDM.cdsDirector;
// FDetailDataSet[6] := MTDM.cdsBeneficiary;
// FDetailDataSet[7] := MTDM.cdsVehicle;

  SetLength(FDetailDataSet, 9);
  FDetailDataSet[0] := MTDM.cdsContactDetailCo;
  FDetailDataSet[1] := MTDM.cdsAddress;
  FDetailDataSet[2] := MTDM.cdsContactPerson;
  FDetailDataSet[3] := MTDM.cdsContactDetailPerson;
  FDetailDataSet[4] := MTDM.cdsBankingDetail;
  FDetailDataSet[5] := MTDM.cdsDirector;
  FDetailDataSet[6] := MTDM.cdsBeneficiary;
  FDetailDataSet[7] := MTDM.cdsVehicle;
  FDetailDataSet[8] := MTDM.cdsCustomer;

  SetLength(FDetailFriendlyName, 9);
  FDetailFriendlyName[0] := 'Company Contact Detail';
  FDetailFriendlyName[1] := 'Address';
  FDetailFriendlyName[2] := 'Contact Person Data';
  FDetailFriendlyName[3] := 'Contact Details';
  FDetailFriendlyName[4] := 'Banking Details';
  FDetailFriendlyName[5] := 'Director';
  FDetailFriendlyName[6] := 'Beneficiary';
  FDetailFriendlyName[7] := 'Vehicle';
  FDetailFriendlyName[8] := 'Customer';

  OpenTables;
end;

procedure TCustomerFrm.FormShow(Sender: TObject);
begin
  inherited;
  grpDetailGrid.ItemIndex := 0;
  grdCustomer.SetFocus;
  viewCustomer.Focused := True;

  if viewCustomer.DataController.RecordCount > 0 then
  begin
    viewCustomer.Controller.FocusedRecordIndex := 0;
    viewCustomer.Controller.FocusedRecord.Selected := True;
  end;

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

procedure TCustomerFrm.lucPrintWhatPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  if Self.Showing then
  begin
    grdCustomer.SetFocus;
    viewCustomer.Focused := True;
  end;
end;

procedure TCustomerFrm.navCustomerButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
var
  ID: Integer;
//  CustomerWhereClause, CustomerOrderByClause, AddressClause, ContactDetailCoClause: string;
//  BankingDetailClause: string;
  DC: TcxDBDataController;
  C: TcxCustomGridTableController;
  I: Integer;
//  Counter: Integer;
//  Iteration: Extended;
//const
//  REPORT_TABLE_COUNT = 4;
begin
  inherited;
  case AButtonIndex of
    NBDI_INSERT:
      begin
        ADone := True;
        EditDeleteRecord(VK_INSERT);
      end;

    NBDI_EDIT:
      begin
        ADone := True;
        EditDeleteRecord(VK_RETURN);
      end;

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
        DC := viewCustomer.DataController;
        C := viewCustomer.Controller;
        case lucReportType.ItemIndex of
          0: // Customer listing
            begin
              try
                ReportDM.ReportFileName := MTDM.ShellResource.ReportFolder + 'CustomerListing.fr3';
                ReportDM.cdsAddress.IndexName := 'idxCustID';
                case ReportDM.ReportAction of
                  raPreview, raPrint:
                    begin
                      if not TFile.Exists(ReportDM.ReportFileName) then
                        raise EFileNotFoundException.Create('Report file: ' + ReportDM.ReportFileName + ' not found. Cannot load report.');

                      TfrxMemoView(ReportDM.rptCustomerListing.FindObject('lblReportTypeName')).Text := 'Customer Listing';
                      TfrxGroupHeader(ReportDM.rptCustomerListing.FindObject('bndCustomerTypeGroup')).Visible := cbxGroupedReport.Checked;

                      if cbxGroupedReport.Checked then
                      begin
                        FCustomerOrderByClause := ' ORDER BY C.CUSTOMER_TYPE, C."NAME" ';
                        ReportDM.cdsCustomerListing.IndexName := 'idxTypeName';
                      end
                      else
                      begin
                        FCustomerOrderByClause := ' ORDER BY C."NAME" ';
                        ReportDM.cdsCustomerListing.IndexName := 'idxCustName';
                      end;

//                if cbxPrintContactDetails.Checked then
//                  TfrxGroupHeader(ReportDM.rptCustomerListing.FindObject('bndCustomerTypeGroup')).Height := 2
//                else
//                  TfrxGroupHeader(ReportDM.rptCustomerListing.FindObject('bndCustomerTypeGroup')).Height := 1.05;

                      FCustomerWhereClause := ' WHERE C.ID IN (';

                      case lucPrintWhat.ItemIndex of
                        0:
                          begin
                            FCustomerWhereClause := '';
                            FAddressWhereClause := '';
                            FContactDetailCoWhereClause := '';
                            FBankingDetailWhereClause := '';
                            FContactDetailPersonWhereClause := '';
                            FContactPersonWhereClause := '';
                            FDirecterWhereClaue := '';
                            FBeneficiaryWhereClaue := '';
                            FVehicleWhereClause := '';
                          end;

                        1:
                          begin
                            if C.SelectedRecordCount = 0 then
                              raise ESelectionException.Create('No customers have been selected. Please select at least one customer before using this option.');

                            for I := 0 to C.SelectedRecordCount - 1 do
                            begin
                              FCustomerWhereClause := FCustomerWhereClause + IntToStr(DC.Values[C.SelectedRecords[I].RecordIndex, edtCustomerID.Index]);
                              if I < C.SelectedRecordCount - 1 then
                                FCustomerWhereClause := FCustomerWhereClause + ',';
                            end;
                            FCustomerWhereClause := FCustomerWhereClause + ')';
                          end;

                        2:
                          begin
                            if not DC.filter.Active then
                              raise ESelectionException.Create('No filter has been applied to the customer list. Please apply a filter before using this option.');

                            for I := 0 to DC.FilteredRecordCount - 1 do
                            begin
                              FCustomerWhereClause := FCustomerWhereClause + IntToStr(DC.Values[DC.FilteredRecordIndex[I], edtCustomerID.Index]);
                              if I < DC.FilteredRecordCount - 1 then
                                FCustomerWhereClause := FCustomerWhereClause + ',';
                            end;
                            FCustomerWhereClause := FCustomerWhereClause + ')';
                          end;
                      end;

                      FCustomerWhereClause := FCustomerWhereClause {+ FCustomerOrderByClause};

                      // Customer data
                      VBBaseDM.GetData(66, ReportDM.cdsCustomerListing, ReportDM.cdsCustomerListing.Name, FCustomerWhereClause,
                        'C:\Data\Xml\Customer Listing.xml', ReportDM.cdsCustomerListing.UpdateOptions.Generatorname,
                        ReportDM.cdsCustomerListing.UpdateOptions.UpdateTableName);

                      case ReportDM.ReportAction of
                        raPreview, raPrint:
                          begin
                            if ReportDM.rptCustomerListing.PrepareReport then
                              if ReportDM.ReportAction = raPreview then
                                ReportDM.rptCustomerListing.ShowPreparedReport
                              else
                              begin
                                if dlgPrint.Execute then
                                begin
                                  ReportDM.rptCustomerListing.PrintOptions.Copies :=
                                    dlgPrint.DialogData.Copies;

                                  ReportDM.rptCustomerListing.Print;
                                end;
                              end;
                          end;
                      end;
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

          1: // Customer detail report
            begin
              if ProgressFrm = nil then
                ProgressFrm := TProgressFrm.Create(nil);
              ProgressFrm.FormStyle := fsStayOnTop;
              ProgressFrm.Show;

              try
                ReportDM.ReportFileName := MTDM.ShellResource.ReportFolder + 'CustomerDetail.fr3';
                case ReportDM.ReportAction of
                  raPreview, raPrint:
                    begin
                      if not TFile.Exists(ReportDM.ReportFileName) then
                        raise EFileNotFoundException.Create('Report file: ' + ReportDM.ReportFileName + ' not found. Cannot load report.');

                      TfrxMemoView(ReportDM.rptCustomer.FindObject('lblReportTypeName')).Text := 'Customer Detail Report';

//                      TfrxMemoView(ReportDM.rptCustomer.FindObject('lblPhysicalTitle')).Font.Name := 'Calibri';
//                      TfrxMemoView(ReportDM.rptCustomer.FindObject('lblPhysicalTitle')).Font.Size := 10;
//                      TfrxMemoView(ReportDM.rptCustomer.FindObject('lblPhysicalTitle')).Font.Style := [fsBold];
//
//                      TfrxMemoView(ReportDM.rptCustomer.FindObject('lblPhysical1')).Font.Name := 'Calibri';
//                      TfrxMemoView(ReportDM.rptCustomer.FindObject('lblPhysical1')).Font.Size := 10;
//
//                      TfrxMemoView(ReportDM.rptCustomer.FindObject('lblPhysical2')).Font.Name := 'Calibri';
//                      TfrxMemoView(ReportDM.rptCustomer.FindObject('lblPhysical2')).Font.Size := 10;

                      FCustomerWhereClause := ' WHERE C.ID IN (';
                      FCustomerOrderByClause := ' ORDER BY C."NAME" ';

                      FAddressWhereClause := ' WHERE A.CUSTOMER_ID IN (';
                      FAddressOrderByClause := ' ORDER BY A.CUSTOMER_ID ';

                      FContactDetailCoWhereClause := ' WHERE O.CUSTOMER_ID IN (';
                      FContactDetailCoOrderByClause := ' ORDER BY O.CUSTOMER_ID, O.CONTACT_TYPE ';

                      FBankingDetailWhereClause := ' WHERE D.CUSTOMER_ID IN (';
                      FBankingDetailOrderByClause := ' ORDER BY D.CUSTOMER_ID, D.ACCOUNT_TYPE ';

                      FContactDetailPersonWhereClause := ' WHERE P.CUSTOMER_ID IN (';
                      FContactDetailPersonOrderByClause := ' ORDER BY P.CUSTOMER_ID, P.CONTACT_TYPE ';

                      FContactPersonWhereClause := ' WHERE P.CUSTOMER_ID IN (';
                      FContactPersonOrderByClause := ' ORDER BY P.CUSTOMER_ID, P.FIRST_NAME, P.LAST_NAME ';

                      FDirecterWhereClaue := ' WHERE D.CUSTOMER_ID IN (';
                      FDirectorOrderByClause := ' ORDER BY D.CUSTOMER_ID, D.FIRST_NAME, D.LAST_NAME ';

                      FBeneficiaryWhereClaue := ' WHERE B.CUSTOMER_ID IN (';
                      FBeneficiaryOrderByClause := ' ORDER BY B.CUSTOMER_ID, B.FIRST_NAME, B.LAST_NAME ';

                      FVehicleWhereClause := ' WHERE V.CUSTOMER_ID IN (';
                      FVehicleOrderByClaue := ' ORDER BY V.CUSTOMER_ID, V.VEHICLE_MAKE, V.VEHICLE_MODEL ';

                      case lucPrintWhat.ItemIndex of
                        0:
                          begin
                            FCustomerWhereClause := '';
                            FAddressWhereClause := '';
                            FContactDetailCoWhereClause := '';
                            FBankingDetailWhereClause := '';
                            FContactDetailPersonWhereClause := '';
                            FContactPersonWhereClause := '';
                            FDirecterWhereClaue := '';
                            FBeneficiaryWhereClaue := '';
                            FVehicleWhereClause := '';
                          end;

                        1:
                          begin
                            if C.SelectedRecordCount = 0 then
                              raise ESelectionException.Create('No customers have been selected. Please select at least one customer before using this option.');

                            for I := 0 to C.SelectedRecordCount - 1 do
                            begin
                              FCustomerWhereClause := FCustomerWhereClause + IntToStr(DC.Values[C.SelectedRecords[I].RecordIndex, edtCustomerID.Index]);
                              FAddressWhereClause := FAddressWhereClause + IntToStr(DC.Values[C.SelectedRecords[I].RecordIndex, edtCustomerID.Index]);
                              if I < C.SelectedRecordCount - 1 then
                              begin
                                FCustomerWhereClause := FCustomerWhereClause + ',';
                                FAddressWhereClause := FAddressWhereClause + ',';
                                FContactDetailCoWhereClause := FContactDetailCoWhereClause + ',';
                                FBankingDetailWhereClause := FBankingDetailWhereClause + ',';
                                FContactDetailPersonWhereClause := FContactDetailPersonWhereClause + ',';
                                FContactPersonWhereClause := FContactPersonWhereClause + ',';
                                FDirecterWhereClaue := FDirecterWhereClaue + ',';
                                FBeneficiaryWhereClaue := FBeneficiaryWhereClaue + ',';
                                FVehicleWhereClause := FVehicleWhereClause + ',';
                              end;
                            end;
                            FCustomerWhereClause := FCustomerWhereClause + ') ';
                            FAddressWhereClause := FAddressWhereClause + ') ';
                            FContactDetailCoWhereClause := FContactDetailCoWhereClause + ') ';
                            FBankingDetailWhereClause := FBankingDetailWhereClause + ') ';
                            FContactDetailPersonWhereClause := FContactDetailPersonWhereClause + ') ';
                            FContactPersonWhereClause := FContactPersonWhereClause + ') ';
                            FDirecterWhereClaue := FDirecterWhereClaue + ') ';
                            FBeneficiaryWhereClaue := FBeneficiaryWhereClaue + ') ';
                            FVehicleWhereClause := FVehicleWhereClause + ') ';

                          end;

                        2:
                          begin
                            if not DC.filter.Active then
                              raise ESelectionException.Create('No filter has been applied to the customer list. Please apply a filter before using this option.');

                            for I := 0 to DC.FilteredRecordCount - 1 do
                            begin
                              FCustomerWhereClause := FCustomerWhereClause + IntToStr(DC.Values[DC.FilteredRecordIndex[I], edtCustomerID.Index]);
                              FAddressWhereClause := FAddressWhereClause + IntToStr(DC.Values[C.SelectedRecords[I].Index, edtCustomerID.Index]);
                              if I < DC.FilteredRecordCount - 1 then
                              begin
                                FCustomerWhereClause := FCustomerWhereClause + ',';
                                FAddressWhereClause := FAddressWhereClause + ',';
                                FContactDetailCoWhereClause := FContactDetailCoWhereClause + ',';
                                FBankingDetailWhereClause := FBankingDetailWhereClause + ',';
                                FContactDetailPersonWhereClause := FContactDetailPersonWhereClause + ',';
                                FContactPersonWhereClause := FContactPersonWhereClause + ',';
                                FDirecterWhereClaue := FDirecterWhereClaue + ',';
                                FBeneficiaryWhereClaue := FBeneficiaryWhereClaue + ',';
                                FVehicleWhereClause := FVehicleWhereClause + ',';
                              end;
                            end;
                            FCustomerWhereClause := FCustomerWhereClause + ') ';
                            FAddressWhereClause := FAddressWhereClause + ') ';
                            FContactDetailCoWhereClause := FContactDetailCoWhereClause + ') ';
                            FBankingDetailWhereClause := FBankingDetailWhereClause + ') ';
                            FContactDetailPersonWhereClause := FContactDetailPersonWhereClause + ') ';
                            FContactPersonWhereClause := FContactPersonWhereClause + ') ';
                            FDirecterWhereClaue := FDirecterWhereClaue + ') ';
                            FBeneficiaryWhereClaue := FBeneficiaryWhereClaue + ') ';
                            FVehicleWhereClause := FVehicleWhereClause + ') ';
                          end;
                      end;
//                      FCustomerWhereClause := FCustomerWhereClause + FCustomerOrderByClause;
//                      FAddressWhereClause := FAddressWhereClause + FAddressOrderByClause;
//                      FContactDetailCoWhereClause := FContactDetailCoWhereClause + FContactDetailCoOrderByClause;
//                      FBankingDetailWhereClause := FBankingDetailWhereClause + FBankingDetailOrderByClause;
//                      FContactDetailPersonWhereClaue := FContactDetailPersonWhereClaue + FContactDetailPersonOrderByClause;
//                      FContactPersonWhereClaue := FContactPersonWhereClaue + FContactPersonOrderByClause;
//                      FDirecterWhereClaue := FDirecterWhereClaue + FDirectorOrderByClause;
//                      FBeneficiaryWhereClaue := FBeneficiaryWhereClaue + FBeneficiaryOrderByClause;
//                      FVehicleWhereClause := FVehicleWhereClause + FVehicleOrderByClaue;

//                       ReportDM.cdsCustomer.DisableControls;

                      OpenReportDataSets;

//                      // Customer data
//                      Counter := 1;
//                      Iteration := Counter / REPORT_TABLE_COUNT * 100;
//                      SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Preparing Report: Customer Table' + '|PROGRESS=' + Iteration.ToString)), 0);
//                      VBBaseDM.GetData(53, ReportDM.cdsCustomer, ReportDM.cdsCustomer.Name, FCustomerWhereClause,
//                        'C:\Data\Xml\Customer Detail.xml', ReportDM.cdsCustomer.UpdateOptions.Generatorname,
//                        ReportDM.cdsCustomer.UpdateOptions.UpdateTableName);
//
////                      VBBaseDM.GetData(67, ReportDM.cdsAddress, ReportDM.cdsAddress.Name, FAddressClause,
////                        'C:\Data\Xml\Address Report.xml', ReportDM.cdsAddress.UpdateOptions.Generatorname,
////                        ReportDM.cdsAddress.UpdateOptions.UpdateTableName);
//
//                      Inc(Counter);
//                      Iteration := Counter / REPORT_TABLE_COUNT * 100;
//                      SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Preparing Report: Address Table' + '|PROGRESS=' + Iteration.ToString)), 0);
//                      VBBaseDM.GetData(4, ReportDM.cdsAddress, ReportDM.cdsAddress.Name, FAddressClause,
//                        'C:\Data\Xml\Address.xml', ReportDM.cdsAddress.UpdateOptions.Generatorname,
//                        ReportDM.cdsAddress.UpdateOptions.UpdateTableName);
//
//                      Inc(Counter);
//                      Iteration := Counter / REPORT_TABLE_COUNT * 100;
//                      SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Preparing Report: Details' + '|PROGRESS=' + Iteration.ToString)), 0);
//                      VBBaseDM.GetData(54, ReportDM.cdsContactDetailCo, ReportDM.cdsContactDetailCo.Name, FContactDetailCoClause,
//                        'C:\Data\Xml\Contact Detail Co.xml', ReportDM.cdsContactDetailCo.UpdateOptions.Generatorname,
//                        ReportDM.cdsContactDetailCo.UpdateOptions.UpdateTableName);
//
//                      Inc(Counter);
//                      Iteration := Counter / REPORT_TABLE_COUNT * 100;
//                      SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Preparing Report: Banking Details' + '|PROGRESS=' + Iteration.ToString)), 0);
//                      VBBaseDM.GetData(69, ReportDM.cdsBankingDetail, ReportDM.cdsBankingDetail.Name, FBankingDetailClause,
//                        'C:\Data\Xml\Banking Detail.xml', ReportDM.cdsBankingDetail.UpdateOptions.Generatorname,
//                        ReportDM.cdsBankingDetail.UpdateOptions.UpdateTableName);

                      viewCustomerReport.DataController.BeginUpdate;
                      try
                        case ReportDM.ReportAction of
                          raPreview, raPrint:
                            begin
                              if ReportDM.rptCustomer.PrepareReport then
                                if ReportDM.ReportAction = raPreview then
                                  ReportDM.rptCustomer.ShowPreparedReport
                                else
                                begin
                                  if dlgPrint.Execute then
                                  begin
                                    ReportDM.rptCustomer.PrintOptions.Copies :=
                                      dlgPrint.DialogData.Copies;

                                    ReportDM.rptCustomer.Print;
                                  end;
                                end;
                            end;
                        end;
                      finally
                        viewCustomerReport.DataController.EndUpdate;
                      end;
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
                FreeAndNil(ProgressFrm);
                Screen.Cursor := crDefault;
              end;
            end;
        end;
      end;

    NBDI_DELETE:
      begin
        ADone := True;
        actDelete.Execute;
      end;
  end;
end;

procedure TCustomerFrm.OpenReportDataSets;
var
  Counter: Integer;
  Iteration: Extended;

const
  REPORT_TABLE_COUNT = 9;
begin
  // Customer
  Counter := 1;
  Iteration := Counter / REPORT_TABLE_COUNT * 100;
  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Preparing Report: Customer Table' + '|PROGRESS=' + Iteration.ToString)), 0);
  VBBaseDM.GetData(53, ReportDM.cdsCustomer, ReportDM.cdsCustomer.Name, FCustomerWhereClause + FCustomerOrderByClause,
    'C:\Data\Xml\Customer Detail.xml', ReportDM.cdsCustomer.UpdateOptions.Generatorname,
    ReportDM.cdsCustomer.UpdateOptions.UpdateTableName);

  // Address
  Inc(Counter);
  Iteration := Counter / REPORT_TABLE_COUNT * 100;
  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Preparing Report: Address Table' + '|PROGRESS=' + Iteration.ToString)), 0);
  VBBaseDM.GetData(4, ReportDM.cdsAddress, ReportDM.cdsAddress.Name, FAddressWhereClause {+ FAddressOrderByClause},
    'C:\Data\Xml\Address.xml', ReportDM.cdsAddress.UpdateOptions.Generatorname,
    ReportDM.cdsAddress.UpdateOptions.UpdateTableName);

  // Company contact details
  Inc(Counter);
  Iteration := Counter / REPORT_TABLE_COUNT * 100;
  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Preparing Report: Company Contact Details' + '|PROGRESS=' + Iteration.ToString)), 0);
  VBBaseDM.GetData(54, ReportDM.cdsContactDetailCo, ReportDM.cdsContactDetailCo.Name, FContactDetailCoWhereClause + FContactDetailCoOrderByClause,
    'C:\Data\Xml\Contact Detail Co.xml', ReportDM.cdsContactDetailCo.UpdateOptions.Generatorname,
    ReportDM.cdsContactDetailCo.UpdateOptions.UpdateTableName);

  // Banking details
  Inc(Counter);
  Iteration := Counter / REPORT_TABLE_COUNT * 100;
  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Preparing Report: Banking Details' + '|PROGRESS=' + Iteration.ToString)), 0);
  VBBaseDM.GetData(68, ReportDM.cdsBankingDetail, ReportDM.cdsBankingDetail.Name, FBankingDetailWhereClause + FBankingDetailOrderByClause,
    'C:\Data\Xml\Banking Detail.xml', ReportDM.cdsBankingDetail.UpdateOptions.Generatorname,
    ReportDM.cdsBankingDetail.UpdateOptions.UpdateTableName);

  // Contact person
  Inc(Counter);
  Iteration := Counter / REPORT_TABLE_COUNT * 100;
  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Preparing Report: Person Contact' + '|PROGRESS=' + Iteration.ToString)), 0);
  VBBaseDM.GetData(70, ReportDM.cdsContactPerson, ReportDM.cdsContactPerson.Name, FContactPersonWhereClause + FContactPersonOrderByClause,
    'C:\Data\Xml\Contact Person.xml', ReportDM.cdsContactPerson.UpdateOptions.Generatorname,
    ReportDM.cdsContactPerson.UpdateOptions.UpdateTableName);

  // Contact person contact details
  Inc(Counter);
  Iteration := Counter / REPORT_TABLE_COUNT * 100;
  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Preparing Report: Person Contact Details' + '|PROGRESS=' + Iteration.ToString)), 0);
  VBBaseDM.GetData(69, ReportDM.cdsContactDetailPerson, ReportDM.cdsContactDetailPerson.Name, FContactDetailPersonWhereClause + FContactDetailPersonOrderByClause,
    'C:\Data\Xml\Contact Detail Person.xml', ReportDM.cdsContactDetailPerson.UpdateOptions.Generatorname,
    ReportDM.cdsContactDetailPerson.UpdateOptions.UpdateTableName);

  // Directors
  Inc(Counter);
  Iteration := Counter / REPORT_TABLE_COUNT * 100;
  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Preparing Report: Director Table' + '|PROGRESS=' + Iteration.ToString)), 0);
  VBBaseDM.GetData(71, ReportDM.cdsDirector, ReportDM.cdsDirector.Name, FDirecterWhereClaue + FDirectorOrderByClause,
    'C:\Data\Xml\Director.xml', ReportDM.cdsDirector.UpdateOptions.Generatorname,
    ReportDM.cdsDirector.UpdateOptions.UpdateTableName);

  // Beneficiaries
  Inc(Counter);
  Iteration := Counter / REPORT_TABLE_COUNT * 100;
  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Preparing Report: Beneficiary Table' + '|PROGRESS=' + Iteration.ToString)), 0);
  VBBaseDM.GetData(72, ReportDM.cdsBeneficiary, ReportDM.cdsBeneficiary.Name, FBeneficiaryWhereClaue + FBeneficiaryOrderByClause,
    'C:\Data\Xml\Beneficiary.xml', ReportDM.cdsBeneficiary.UpdateOptions.Generatorname,
    ReportDM.cdsBeneficiary.UpdateOptions.UpdateTableName);

  // Vehicles
  Inc(Counter);
  Iteration := Counter / REPORT_TABLE_COUNT * 100;
  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Preparing Report: Vehicle Table' + '|PROGRESS=' + Iteration.ToString)), 0);
  VBBaseDM.GetData(73, ReportDM.cdsVehicle, ReportDM.cdsVehicle.Name, FVehicleWhereClause + FVehicleOrderByClaue,
    'C:\Data\Xml\Vehicle.xml', ReportDM.cdsVehicle.UpdateOptions.Generatorname,
    ReportDM.cdsVehicle.UpdateOptions.UpdateTableName);
end;

procedure TCustomerFrm.OpenTables;
var
  Counter: Integer;
  Iteration: Extended;

const
  TABLE_COUNT = 21;
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

procedure TCustomerFrm.grdCustomerEnter(Sender: TObject);
begin
  inherited;
  MTDM.DetailIndex := 8;
  actInsert.Caption := 'Add a new customer';
  actEdit.Caption := 'Edit selected customer';
  actDelete.Caption := 'Delete selected customer';
  MTDM.FormCaption := 'Customer Details';
end;

procedure TCustomerFrm.grdCustomerExit(Sender: TObject);
begin
  inherited;
  grpDetailGridTabChanged(nil);
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

//procedure TCustomerFrm.DoMyMouseWheel(Sender: TObject; Shift: TShiftState;
//  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
//begin
//  if not TcxLookupComboBox(Sender).DroppedDown then
//    Handled := True;
//end;

procedure TCustomerFrm.DoSetCoporateAccHolderName(Sender: TObject);
begin
  inherited;
  if AccountHolderFrm = nil then
    AccountHolderFrm := TAccountHolderFrm.Create(nil);
  if AccountHolderFrm.ShowModal = mrOK then
  begin
    case AccountHolderFrm.radCustomerName.ItemIndex of
      0:
        begin
          if not (MTDM.cdsBankingDetail.State in [dsEdit, dsInsert]) then
            MTDM.cdsBankingDetail.Edit;
          MTDM.cdsBankingDetail.FieldByName('FIRST_NAME').AsString :=
            MTDM.cdsCustomer.FieldByName('NAME').AsString;
          MTDM.cdsBankingDetail.FieldByName('LAST_NAME').AsString := '';
        end;
      1:
        begin
          if not (MTDM.cdsBankingDetail.State in [dsEdit, dsInsert]) then
            MTDM.cdsBankingDetail.Edit;
          MTDM.cdsBankingDetail.FieldByName('FIRST_NAME').AsString :=
            MTDM.cdsCustomer.FieldByName('TRADING_AS').AsString;
          MTDM.cdsBankingDetail.FieldByName('LAST_NAME').AsString := '';
        end;
    end;

    if DisplayMsg(
      Application.Title,
      'Data Overwrite',
      'This action will overwrite any existing values for First and Last names.' + CRLF + CRLF +
      'Are you sure you want to proceed?',
      mtConfirmation,
      [mbYes, mbNo]
      ) = mrYes then

      if MTDM.cdsBankingDetail.State in [dsEdit, dsInsert] then
        MTDM.cdsBankingDetail.Post;
  end;
  AccountHolderFrm.Close;
  FreeAndNil(AccountHolderFrm);
end;

procedure TCustomerFrm.grdVCustomerDblClick(Sender: TObject);
begin
  inherited;
  if grdVCustomer.DataController.RecordCount = 0 then
    EditDeleteRecord(VK_INSERT)
  else
    EditDeleteRecord({ VK_F2 }VK_RETURN);
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
  ErrorValues: string;
  ModResult: Integer;
  DataSet: TFDMemTable;
begin
  Screen.Cursor := crHourglass;
  ModResult := mrNone;
  ErrorValues := '';
  DataSet := nil;

  case MTDM.DetailIndex of
    0: DataSet := MTDM.cdsContactDetailCo;
    1: DataSet := MTDM.cdsAddress;
    2: DataSet := MTDM.cdsContactPerson;
    3: DataSet := MTDM.cdsContactDetailPerson;
    4: DataSet := MTDM.cdsBankingDetail;
    5: DataSet := MTDM.cdsDirector;
    6: DataSet := MTDM.cdsBeneficiary;
    7: DataSet := MTDM.cdsVehicle;
    8: DataSet := MTDM.cdsCustomer;
  end;

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
          0: // Company conatact detail
            begin
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

          1: // Address
            begin
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

          2: // Contact person details
            begin
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

          3: // Contact person
            begin
              if MTDM.cdsContactPerson.IsEmpty then
              begin
                Screen.Cursor := crDefault;
                raise ENoDataException.Create('Please add a contact person before adding the details.');
              end;

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

          4: //Banking details
            begin
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

          5: // Director
            begin
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

          6: // Beneficiary
            begin
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

          7: // Vehicle
            begin
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

          8: // Customer
            begin
              if CustomerEditFrm = nil then
                CustomerEditFrm := TCustomerEditFrm.Create(nil);

              case VBBaseDM.DBAction of
                acInsert: CustomerEditFrm.lblCustomerHeader.Caption := 'Adding a New Customer';
                acModify: CustomerEditFrm.lblCustomerHeader.Caption :=
                  'Modifying Customer: ' + MTDM.cdsCustomer.FieldByName('NAME').AsString;
              end;

              ModResult := CustomerEditFrm.ShowModal;
              if ModResult = mrOK then
              begin
                FOpenTableParam.ScriptID := 3;
                FOpenTableParam.FileName := 'C:\Data\Xml\Customer.xml';
                FOpenTableParam.FieldName := 'NAME';
                FOpenTableParam.LocateValue := MTDM.FFieldValue.Name;
              end;

              CustomerEditFrm.Close;
              FreeAndNil(CustomerEditFrm);
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

              // Don't do a locate for Address
              if MTDM.DetailIndex <> 1 then
                if not FDetailDataSet[MTDM.DetailIndex].Locate(FOpenTableParam.FieldName, FOpenTableParam.LocateValue, [loCaseInsensitive]) then
                  FDetailDataSet[MTDM.DetailIndex].First;
            except
              on E: EFDException do
              begin
                if MTDM.PostError then
                begin
                  if E.FDCode = 15 then // Duplicate record
                  begin
                    if MTDM.DetailIndex = 8 then // Customer
                      raise EDuplicateException.Create('Duplicate records not allowed.' + CRLF + CRLF +
                        ErrorValues + ' already exists.')
//                        FDetailFriendlyName[MTDM.DetailIndex] + ' already exists.') // + CRLF + CRLF +
//                      ErrorValues);
                    else
                      raise EDuplicateException.Create('Duplicate records not allowed.' + CRLF + CRLF +
                        FDetailFriendlyName[MTDM.DetailIndex] + ' for ' + MTDM.cdsCustomer.FieldByName('NAME').AsString + ' already exists.' + CRLF + CRLF +
                        ErrorValues);
                  end;
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
        if DataSet.IsEmpty then
          raise EValidateException.Create('Dataset is empty. No records to delete.');

        case MTDM.DetailIndex of
          8: // Customer
            ModResult :=
              DisplayMsg(
              Application.Title,
              'Delete Confirmaiton',
              'Deleting a customer will also delete ALL linked data tables. This action cannot be undone!' + CRLF + CRLF +
              'Are you sure you want to delete customer ' + MTDM.cdsCustomer.FieldByName('NAME').AsString + '?',
              mtConfirmation,
              [mbYes, mbNo]
              );
        else
          ModResult :=
            DisplayMsg(
            Application.Title,
            'Delete Confirmaiton',
            'Are you sure you want to delete the selected ' + FDetailFriendlyName[MTDM.DetailIndex] + '?' + CRLF + CRLF +
            'This action cannot be undone!',
            mtConfirmation,
            [mbYes, mbNo]
            );
        end;

        if Modresult = mrYes then
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

