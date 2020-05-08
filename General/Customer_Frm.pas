unit Customer_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, System.ImageList, Vcl.ImgList, Vcl.Controls,
  Vcl.Dialogs, System.Actions, Vcl.ActnList, System.StrUtils, Vcl.Menus,
  System.IOUtils, Vcl.StdCtrls, Data.DB,

  BaseLayout_Frm, CommonValues, VBCommonValues,

  FireDAC.Comp.Client, FireDAC.UI.Intf, FireDAC.VCLUI.Error, FireDAC.Stan.Error,
  FireDAC.Stan.Intf, FireDAC.Comp.UI, FireDAC.Phys.IBWrapper,

  frxClass,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxScreenTip, dxCustomHint, cxHint, cxClasses, cxStyles,
  cxImageList, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl, cxEdit,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxCurrencyEdit,
  cxDBLookupComboBox, cxTextEdit, cxInplaceContainer, cxVGrid, cxDBVGrid,
  cxDBNavigator, cxButtons, dxLayoutControlAdapters, dxLayoutcxEditAdapters,
  cxContainer, cxMemo, cxDBEdit, cxCalendar, cxCheckBox, cxLabel, cxButtonEdit,
  cxGridInplaceEditForm, dxScrollbarAnnotations, dxBar, cxDropDownEdit, dxPrnDev,
  cxBarEditItem, cxMaskEdit, dxPrnDlg, cxSpinEdit;

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
    lucBankDBank: TcxGridDBBandedColumn;
    lucBankDAccountType: TcxGridDBBandedColumn;
    edtBankDBranchCode: TcxGridDBBandedColumn;
    edtBankDAccountNo: TcxGridDBBandedColumn;
    edtBankDFirstName: TcxGridDBBandedColumn;
    edtBankDLastName: TcxGridDBBandedColumn;
    grdDirector: TcxGrid;
    viewDirector: TcxGridDBBandedTableView;
    lvlDirector: TcxGridLevel;
    edtDrID: TcxGridDBBandedColumn;
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
    lucBFSalutation: TcxGridDBBandedColumn;
    edtBFFirstName: TcxGridDBBandedColumn;
    edtBFLaastName: TcxGridDBBandedColumn;
    edtBFMobilePhone: TcxGridDBBandedColumn;
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
    edtVPAYENo: TcxDBEditorRow;
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
    viewCustomerReportSDL_NO: TcxGridDBBandedColumn;
    viewCustomerReportWC_NO: TcxGridDBBandedColumn;
    viewCustomerReportAR_COMPLETION_DATE: TcxGridDBBandedColumn;
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
    edtUIFNo: TcxDBEditorRow;
    viewCustomerReportPAYE_NO: TcxGridDBBandedColumn;
    viewCustomerReportUIF_NO: TcxGridDBBandedColumn;
    litTrusteeDetail: TdxLayoutItem;
    grdTrustee: TcxGrid;
    viewTrustee: TcxGridDBBandedTableView;
    edtTID: TcxGridDBBandedColumn;
    edtTCustomerID: TcxGridDBBandedColumn;
    lucTSalutation: TcxGridDBBandedColumn;
    edtTFirstName: TcxGridDBBandedColumn;
    edtTLastName: TcxGridDBBandedColumn;
    edtTMobilePhone: TcxGridDBBandedColumn;
    edtTEmailAddress: TcxGridDBBandedColumn;
    lvlTrustee: TcxGridLevel;
    grpDirector: TdxLayoutGroup;
    litDirectorOfCompany: TdxLayoutItem;
    grdDirectorOfCompany: TcxGrid;
    viewDirectorOfCompany: TcxGridDBBandedTableView;
    lvlDirectorOfCompany: TcxGridLevel;
    grpDirectorVerticalGrid: TdxLayoutGroup;
    grpPersonAttribute: TcxCategoryRow;
    edtCoID: TcxGridDBBandedColumn;
    edtCoDirectorID: TcxGridDBBandedColumn;
    lucCoCustomerID: TcxGridDBBandedColumn;
    litHeir: TdxLayoutItem;
    litShareHolder: TdxLayoutItem;
    grdHeir: TcxGrid;
    viewHeir: TcxGridDBBandedTableView;
    lvlHeir: TcxGridLevel;
    grdShareHolder: TcxGrid;
    viewShareHolder: TcxGridDBBandedTableView;
    lvlShareHolder: TcxGridLevel;
    edtSHID: TcxGridDBBandedColumn;
    edtSHCustomerID: TcxGridDBBandedColumn;
    edtSHFirstName: TcxGridDBBandedColumn;
    edtSHLastName: TcxGridDBBandedColumn;
    edtSHMobilePhone: TcxGridDBBandedColumn;
    edtSHEmailAddress: TcxGridDBBandedColumn;
    edtSHPerecentShare: TcxGridDBBandedColumn;
    edtHID: TcxGridDBBandedColumn;
    edtHCustomerID: TcxGridDBBandedColumn;
    lucHSalutation: TcxGridDBBandedColumn;
    edtHFirstName: TcxGridDBBandedColumn;
    edtHLastName: TcxGridDBBandedColumn;
    edtHIDNumber: TcxGridDBBandedColumn;
    edtHPhysical1: TcxGridDBBandedColumn;
    edtHPhysical2: TcxGridDBBandedColumn;
    edtHPhysical3: TcxGridDBBandedColumn;
    edtHPhysical4: TcxGridDBBandedColumn;
    edtHPhysicalCode: TcxGridDBBandedColumn;
    edtHPostal1: TcxGridDBBandedColumn;
    edtHPostal2: TcxGridDBBandedColumn;
    edtHPostal3: TcxGridDBBandedColumn;
    edtHPostal4: TcxGridDBBandedColumn;
    edtHPostalCode: TcxGridDBBandedColumn;
    edtHBranchCode: TcxGridDBBandedColumn;
    edtHAccountNo: TcxGridDBBandedColumn;
    edtAccHolderFirstName: TcxGridDBBandedColumn;
    edtAccHolderlastName: TcxGridDBBandedColumn;
    lucSHSalutation: TcxGridDBBandedColumn;
    grpHeir: TdxLayoutGroup;
    litHeirVert: TdxLayoutItem;
    grdHeirVertical: TcxDBVerticalGrid;
    grdHeirVerticalPHYSICAL1: TcxDBEditorRow;
    grdHeirVerticalPHYSICAL2: TcxDBEditorRow;
    grdHeirVerticalPHYSICAL3: TcxDBEditorRow;
    grdHeirVerticalPHYSICAL4: TcxDBEditorRow;
    grdHeirVerticalPHYSICAL_CODE: TcxDBEditorRow;
    grdHeirVerticalPOSTAL1: TcxDBEditorRow;
    grdHeirVerticalPOSTAL2: TcxDBEditorRow;
    grdHeirVerticalPOSTAL3: TcxDBEditorRow;
    grdHeirVerticalPOSTAL4: TcxDBEditorRow;
    grdHeirVerticalPOSTAL_CODE: TcxDBEditorRow;
    lucVAccHolderSalutation: TcxDBEditorRow;
    grdHeirVerticalACC_HOLDER_FIRST_NAME: TcxDBEditorRow;
    grdHeirVerticalACC_HOLDER_LAST_NAME: TcxDBEditorRow;
    lucVHBank: TcxDBEditorRow;
    grdHeirVerticalBRANCH_CODE: TcxDBEditorRow;
    lucVHAccountType: TcxDBEditorRow;
    catPhysicalAddress: TcxCategoryRow;
    catPostalAddress: TcxCategoryRow;
    catAccountHolder: TcxCategoryRow;
    styCellBackground: TcxStyle;
    grpBeneficiary: TdxLayoutGroup;
    grpTrustee: TdxLayoutGroup;
    grpVehicle: TdxLayoutGroup;
    grpShareholder: TdxLayoutGroup;
    grpBankingDetail: TdxLayoutGroup;
    grpPhysicalAddress: TdxLayoutGroup;
    grpPostalAddress: TdxLayoutGroup;
    grpBillingAddress: TdxLayoutGroup;
    procedure FormCreate(Sender: TObject);
    procedure viewContactDetailNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure FormShow(Sender: TObject);
    procedure grpDetailGridTabChanged(Sender: TObject);
    procedure DoDBAction(Sender: TObject);
    procedure grdPhysicalAddressEnter(Sender: TObject);
    procedure viewContactDetailCoDblClick(Sender: TObject);
    procedure grdCPContactDetailEnter(Sender: TObject);
    procedure grdPhysicalAddressDblClick(Sender: TObject);

    procedure grdContactPersonEnter(Sender: TObject);
    procedure grdVCustomerInitEdit(Sender, AItem: TObject; AEdit: TcxCustomEdit);
    procedure cbxPersistSelectionPropertiesEditValueChanged(Sender: TObject);
    procedure lucPrintWhatPropertiesEditValueChanged(Sender: TObject);
    procedure cbxOpenAfterExportPropertiesEditValueChanged(Sender: TObject);
    procedure DoSetCoporateAccHolderName(Sender: TObject);
    procedure grdCustomerEnter(Sender: TObject);
    procedure grdVCustomerDblClick(Sender: TObject);
    procedure grdCustomerExit(Sender: TObject);
    procedure grdDirectorEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grdHeirVerticalEnter(Sender: TObject);

    procedure viewCustomerCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);

    procedure viewContactPersonFocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);

    procedure navCustomerButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);

    procedure viewCustomerFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);

    procedure grdHeirVerticalDrawRowHeader(Sender: TObject; ACanvas: TcxCanvas;
      APainter: TcxvgPainter; AHeaderViewInfo: TcxCustomRowHeaderInfo; var Done: Boolean);

    procedure grdHeirVerticalStylesGetContentStyle(Sender: TObject;
      AEditProp: TcxCustomEditorRowProperties; AFocused: Boolean;
      ARecordIndex: Integer; var AStyle: TcxStyle);
  private
    { Private declarations }
    FDetailFriendlyName: DetailFriendlyNames;
    FDetailDataSet: DetailDataSetArray;
    FOpenTableParam: TOpenTableParams;
    FClosingFrm: Boolean;
    FCurrentItemIndex: Integer;

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

    FTrusteeWhereClause: string;
    FTrusteeOrderByClause: string;

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
  Report_DM,
  MsgDialog_Frm,
  Progress_Frm,
  RUtils,
  CommonFunctions,
  CompanyContactDetail_Frm,
  AddressDetail_Frm,
  PersonContactDetail_Frm,
  BankingDetail_Frm,
  DirectorDetail_Frm,
  BeneficiaryDetail_Frm,
  VehicleDetail_Frm,
  CustomerEdit_Frm,
  ContactPerson_Frm,
  AccountHolder_Frm,
  TrusteeDetail_Frm,
  ShareHolderDetail_Frm,
  HeirDetail_Frm, CustomerReportSelection_Frm;

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
//        MTDM.ValueArray[2] := 'Salutation:' + TAB + MTDM.FFieldValue.Salutation;
        ErrorValues := Format(ERROR_VALUES, [
          MTDM.ValueArray[0] + CRLF +
            MTDM.ValueArray[1]]);
  //          MTDM.ValueArray[2]]);
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

    7: // Trustee
      begin
        MTDM.cdsTrustee.FieldByName('SALUTATION_ID').AsInteger := MTDM.FFieldValue.SalutationID;
        MTDM.cdsTrustee.FieldByName('FIRST_NAME').AsString := MTDM.FFieldValue.FirstName;
        MTDM.cdsTrustee.FieldByName('LAST_NAME').AsString := MTDM.FFieldValue.LastName;
        MTDM.cdsTrustee.FieldByName('MOBILE_PHONE').AsString := MTDM.FFieldValue.MobileNo;
        MTDM.cdsTrustee.FieldByName('EMAIL_ADDRESS').AsString := MTDM.FFieldValue.EmailAddress;

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

    8: // Shareholder
      begin
        MTDM.cdsShareHolder.FieldByName('SALUTATION_ID').AsInteger := MTDM.FFieldValue.SalutationID;
        MTDM.cdsShareHolder.FieldByName('FIRST_NAME').AsString := MTDM.FFieldValue.FirstName;
        MTDM.cdsShareHolder.FieldByName('LAST_NAME').AsString := MTDM.FFieldValue.LastName;
        MTDM.cdsShareHolder.FieldByName('PERCENT_SHARE').AsFloat := MTDM.FFieldValue.PercenShare;
        MTDM.cdsShareHolder.FieldByName('MOBILE_PHONE').AsString := MTDM.FFieldValue.MobileNo;
        MTDM.cdsShareHolder.FieldByName('EMAIL_ADDRESS').AsString := MTDM.FFieldValue.EmailAddress;

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

    9: // Heir
      begin
        MTDM.cdsHeir.FieldByName('SALUTATION_ID').AsInteger := MTDM.FFieldValue.SalutationID;
        MTDM.cdsHeir.FieldByName('FIRST_NAME').AsString := MTDM.FFieldValue.FirstName;
        MTDM.cdsHeir.FieldByName('LAST_NAME').AsString := MTDM.FFieldValue.LastName;
        MTDM.cdsHeir.FieldByName('ID_NUMBER').AsString := MTDM.FFieldValue.IDNo;

        MTDM.cdsHeir.FieldByName('PHYSICAL1').AsString := MTDM.FFieldValue.Physical1;
        MTDM.cdsHeir.FieldByName('PHYSICAL2').AsString := MTDM.FFieldValue.Physical2;
        MTDM.cdsHeir.FieldByName('PHYSICAL3').AsString := MTDM.FFieldValue.Physical3;
        MTDM.cdsHeir.FieldByName('PHYSICAL4').AsString := MTDM.FFieldValue.Physical4;
        MTDM.cdsHeir.FieldByName('PHYSICAL_CODE').AsString := MTDM.FFieldValue.PhysicalCode;

        MTDM.cdsHeir.FieldByName('POSTAL1').AsString := MTDM.FFieldValue.Postal1;
        MTDM.cdsHeir.FieldByName('POSTAL2').AsString := MTDM.FFieldValue.Postal2;
        MTDM.cdsHeir.FieldByName('POSTAL3').AsString := MTDM.FFieldValue.Postal3;
        MTDM.cdsHeir.FieldByName('POSTAL4').AsString := MTDM.FFieldValue.Postal4;
        MTDM.cdsHeir.FieldByName('POSTAL_CODE').AsString := MTDM.FFieldValue.PostalCode;

        MTDM.cdsHeir.FieldByName('ACC_HOLDER_SALUTATION_ID').AsInteger := MTDM.FFieldValue.HAHKSalutatioinID;
        MTDM.cdsHeir.FieldByName('ACC_HOLDER_FIRST_NAME').AsString := MTDM.FFieldValue.HAHFirstName;
        MTDM.cdsHeir.FieldByName('ACC_HOLDER_LAST_NAME').AsString := MTDM.FFieldValue.HAHLastName;
        MTDM.cdsHeir.FieldByName('BANK_ID').AsInteger := MTDM.FFieldValue.BankID;
        MTDM.cdsHeir.FieldByName('ACCOUNT_TYPE_ID').AsInteger := MTDM.FFieldValue.AccountTypeID;
        MTDM.cdsHeir.FieldByName('BRANCH_CODE').AsString := MTDM.FFieldValue.BranchCode;
        MTDM.cdsHeir.FieldByName('ACCOUNT_NO').AsString := MTDM.FFieldValue.AccountNo;

        MTDM.ValueArray[0] := 'First Name:' + TAB + MTDM.FFieldValue.FirstName;
        MTDM.ValueArray[1] := 'Last Name:' + TAB + MTDM.FFieldValue.LastName;
        MTDM.ValueArray[2] := 'Salutation:' + TAB + MTDM.FFieldValue.Salutation;
        MTDM.ValueArray[3] := 'ID No:' + TAB + MTDM.FFieldValue.IDNo;
        ErrorValues := Format(ERROR_VALUES, [
          MTDM.ValueArray[0] + CRLF +
            MTDM.ValueArray[1] + CRLF +
            MTDM.ValueArray[2] + CRLF +
            MTDM.ValueArray[3]]);
      end;

    10: // Vehicle
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

    11: // Director of Company
      begin
        MTDM.cdsDirectorOfCompany.FieldByName('THE_YEAR').AsInteger := MTDM.FFieldValue.YearOfManufacture;
        MTDM.cdsDirectorOfCompany.FieldByName('VEHICLE_MAKE_ID').AsInteger := MTDM.FFieldValue.VehicleMakeID;
        MTDM.cdsDirectorOfCompany.FieldByName('VEHICLE_MODEL').AsString := MTDM.FFieldValue.VehicleModel;
        MTDM.cdsDirectorOfCompany.FieldByName('REG_NO').AsString := MTDM.FFieldValue.VehicleRegNo;
        MTDM.cdsDirectorOfCompany.FieldByName('RENEWAL_DATE').AsDateTime := MTDM.FFieldValue.LicenceRenewalDate;
        MTDM.cdsDirectorOfCompany.FieldByName('MAINTENANCE_PLAN').AsInteger := BooleanToInteger(MTDM.FFieldValue.MaintenancePlan);
        MTDM.cdsDirectorOfCompany.FieldByName('COMMENT').AsString := MTDM.FFieldValue.Comment;

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

    12: // Customer
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
        MTDM.cdsCustomer.FieldByName('PAYE_NO').AsString := MTDM.FFieldValue.PayeNo;
        MTDM.cdsCustomer.FieldByName('UIF_NO').AsString := MTDM.FFieldValue.UifNo;
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

//  FDetailDataSet[9] := MTDM.cdsTrustee;
//  FDetailDataSet[10] := MTDM.cdsDirectorOfCompany;
//  FDetailDataSet[11] := MTDM.cdsShareHolder;
//  FDetailDataSet[12] := MTDM.cdsHeir;

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

procedure TCustomerFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FClosingFrm := True;
end;

procedure TCustomerFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourglass;
  Caption := 'Customer Manager';
  Application.HintPause := 0;
  Application.HintShortPause := 0;
  Application.HintHidePause := 250000;
  FClosingFrm := False;
  styHintController.HintHidePause := 25000;
  litLegend.LayoutLookAndFeel := lafCustomSkin;
  styLegend.Style.Font.Color := cxLookAndFeels.RootLookAndFeel.SkinPainter.DefaultContentTextColor;
  styLegend.Style.TextColor := cxLookAndFeels.RootLookAndFeel.SkinPainter.DefaultContentTextColor;
  FCurrentItemIndex := 0;
//  grdHeirVertical.FullCollapse;
//  grdHeirVertical.ViewInfo.

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
  TcxLookupComboBoxProperties(lucCPSalutation.Properties).Buttons.Items[0].Visible := False;

  TcxLookupComboBoxProperties(lucDrSalutation.Properties).ListSource := LookupDM.dtsDirectorSalutation;
  TcxLookupComboBoxProperties(lucDrSalutation.Properties).Buttons.Items[0].Visible := False;

  TcxLookupComboBoxProperties(lucBFSalutation.Properties).ListSource := LookupDM.dtsBFSalutation;
  TcxLookupComboBoxProperties(lucBFSalutation.Properties).Buttons.Items[0].Visible := False;

  TcxLookupComboBoxProperties(lucVMakeID.Properties).ListSource := LookupDM.dtsVehicleMake;
  TcxLookupComboBoxProperties(lucVMakeID.Properties).Buttons.Items[0].Visible := False;

  TcxLookupComboBoxProperties(lucDrSalutation.Properties).ListSource := LookupDM.dtsDirectorSalutation;
  TcxLookupComboBoxProperties(lucDrSalutation.Properties).Buttons.Items[0].Visible := False;

  TcxLookupComboBoxProperties(lucTSalutation.Properties).ListSource := LookupDM.dtsTrusteeSalutation;
  TcxLookupComboBoxProperties(lucTSalutation.Properties).Buttons.Items[0].Visible := False;

  TcxLookupComboBoxProperties(lucSHSalutation.Properties).ListSource := LookupDM.dtsSHSalutation;
  TcxLookupComboBoxProperties(lucSHSalutation.Properties).Buttons.Items[0].Visible := False;

  TcxLookupComboBoxProperties(lucHSalutation.Properties).ListSource := LookupDM.dtsHeirSalutation;
  TcxLookupComboBoxProperties(lucHSalutation.Properties).Buttons.Items[0].Visible := False;

  TcxLookupComboBoxProperties(lucVAccHolderSalutation.Properties.EditProperties).ListSource := LookupDM.dtsAccHolderSalutation;
  TcxLookupComboBoxProperties(lucVAccHolderSalutation.Properties.EditProperties).Buttons.Items[0].Visible := False;

  TcxLookupComboBoxProperties(lucCPJobFunction.Properties).ListSource := LookupDM.dtsJobFunction;
  TcxLookupComboBoxProperties(lucCPJobFunction.Properties).Buttons.Items[0].Visible := False;

  TcxLookupComboBoxProperties(lucCPContactDetailTypeID.Properties).ListSource := LookupDM.dtsContactType;
  TcxLookupComboBoxProperties(lucCPContactDetailTypeID.Properties).Buttons.Items[0].Visible := False;

  TcxLookupComboBoxProperties(lucBankDBank.Properties).ListSource := LookupDM.dtsBank;
  TcxLookupComboBoxProperties(lucBankDBank.Properties).Buttons.Items[0].Visible := False;

  TcxLookupComboBoxProperties(lucBankDAccountType.Properties).ListSource := LookupDM.dtsBankAccountType;
  TcxLookupComboBoxProperties(lucBankDAccountType.Properties).Buttons.Items[0].Visible := False;

  TcxLookupComboBoxProperties(lucVCustomerType.Properties.EditProperties).ListSource := LookupDM.dtsCustomerType;
  TcxLookupComboBoxProperties(lucVCustomerType.Properties.EditProperties).Buttons.Items[0].Visible := False;

  TcxLookupComboBoxProperties(lucVStatus.Properties.EditProperties).ListSource := LookupDM.dtsCustomerStatus;
  TcxLookupComboBoxProperties(lucVStatus.Properties.EditProperties).Buttons.Items[0].Visible := False;

  TcxLookupComboBoxProperties(lucVYearEndmonth.Properties.EditProperties).ListSource := LookupDM.dtsMonthOfyear;
  TcxLookupComboBoxProperties(lucVYearEndmonth.Properties.EditProperties).Buttons.Items[0].Visible := False;

  TcxLookupComboBoxProperties(lucVARMonth.Properties.EditProperties).ListSource := LookupDM.dtsARMonthOfyear;
  TcxLookupComboBoxProperties(lucVARMonth.Properties.EditProperties).Buttons.Items[0].Visible := False;

  TcxLookupComboBoxProperties(lucVTaxOffice.Properties.EditProperties).ListSource := LookupDM.dtsTaxOffice;
  TcxLookupComboBoxProperties(lucVTaxOffice.Properties.EditProperties).Buttons.Items[0].Visible := False;

  TcxLookupComboBoxProperties(lucVVATOffice.Properties.EditProperties).ListSource := LookupDM.dtsVATOffice;
  TcxLookupComboBoxProperties(lucVVATOffice.Properties.EditProperties).Buttons.Items[0].Visible := False;

  TcxLookupComboBoxProperties(lucVVATMonth.Properties.EditProperties).ListSource := LookupDM.dtsVATMonth;
  TcxLookupComboBoxProperties(lucVVATMonth.Properties.EditProperties).Buttons.Items[0].Visible := False;

  TcxLookupComboBoxProperties(lucVCountry.Properties.EditProperties).ListSource := LookupDM.dtsCountry;
  TcxLookupComboBoxProperties(lucVCountry.Properties.EditProperties).Buttons.Items[0].Visible := False;

  TcxLookupComboBoxProperties(lucVHBank.Properties.EditProperties).ListSource := LookupDM.dtsHeirBank;
  TcxLookupComboBoxProperties(lucVHBank.Properties.EditProperties).Buttons.Items[0].Visible := False;

  TcxLookupComboBoxProperties(lucVHAccountType.Properties.EditProperties).ListSource := LookupDM.dtsHeirBankAccountType;
  TcxLookupComboBoxProperties(lucVHAccountType.Properties.EditProperties).Buttons.Items[0].Visible := False;

  viewContactDetailCo.DataController.DataSource := MTDM.dtsContactDetailCo;
  viewContactPerson.DataController.DataSource := MTDM.dtsContactPerson;
  viewCPContactDetail.DataController.DataSource := MTDM.dtsContactDetailPerson;
  viewBankingDetail.DataController.DataSource := MTDM.dtsBankingDetail;
  viewDirector.DataController.DataSource := MTDM.dtsDirector;
  viewBeneficiary.DataController.DataSource := MTDM.dtsBeneficiary;
  viewTrustee.DataController.DataSource := MTDM.dtsTrustee;
  viewVehicle.DataController.DataSource := MTDM.dtsVehicle;
  viewDirectorOfCompany.DataController.DataSource := MTDM.dtsDirectorOfCompany;
  viewHeir.DataController.DataSource := MTDM.dtsHeir;
  grdHeirVertical.DataController.DataSource := MTDM.dtsHeir;
  viewShareHolder.DataController.DataSource := MTDM.dtsShareHolder;
  TcxLookupComboBoxProperties(lucCoCustomerID.Properties).ListSource := LookupDM.dtsCompany;

  SetLength(FDetailDataSet, CUSTOMER_DETAIL_COUNT);
  FDetailDataSet[0] := MTDM.cdsContactDetailCo;
  FDetailDataSet[1] := MTDM.cdsAddress;
  FDetailDataSet[2] := MTDM.cdsContactPerson;
  FDetailDataSet[3] := MTDM.cdsContactDetailPerson;
  FDetailDataSet[4] := MTDM.cdsBankingDetail;
  FDetailDataSet[5] := MTDM.cdsDirector;
  FDetailDataSet[6] := MTDM.cdsBeneficiary;
  FDetailDataSet[7] := MTDM.cdsTrustee;
  FDetailDataSet[8] := MTDM.cdsShareHolder;
  FDetailDataSet[9] := MTDM.cdsHeir;
  FDetailDataSet[10] := MTDM.cdsVehicle;
  FDetailDataSet[11] := MTDM.cdsDirectorOfCompany;
  FDetailDataSet[12] := MTDM.cdsCustomer;

  SetLength(FDetailFriendlyName, CUSTOMER_DETAIL_COUNT);
  FDetailFriendlyName[0] := 'Company Contact Detail';
  FDetailFriendlyName[1] := 'Address';
  FDetailFriendlyName[2] := 'Contact Person Data';
  FDetailFriendlyName[3] := 'Contact Details';
  FDetailFriendlyName[4] := 'Banking Details';
  FDetailFriendlyName[5] := 'Director';
  FDetailFriendlyName[6] := 'Beneficiary';
  FDetailFriendlyName[7] := 'Turstee';
  FDetailFriendlyName[8] := 'Shareholder';
  FDetailFriendlyName[9] := 'Heir';
  FDetailFriendlyName[10] := 'Vehicle';
  FDetailFriendlyName[11] := 'Director of Company';
  FDetailFriendlyName[12] := 'Customer';
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
  if FClosingFrm then
    Exit;

//  FCurrentItemIndex := grpDetailGrid.ItemIndex;

//  if grpDetailGrid.ItemIndex <= 2 then
//    MTDM.DetailIndex := grpDetailGrid.ItemIndex
//  else
//    MTDM.DetailIndex := grpDetailGrid.ItemIndex + 1;

  if grpDetailGrid.ItemIndex <= 2 then
    MTDM.DetailIndex := grpDetailGrid.Items[grpDetailGrid.ItemIndex].Tag
  else
    MTDM.DetailIndex := grpDetailGrid.Items[grpDetailGrid.ItemIndex].Tag + 1;

  if Self.Showing then
  begin
    case MTDM.DetailIndex of
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

      2:
        begin
          grdContactPerson.SetFocus;
          viewContactPerson.Focused := True;
          actInsert.Caption := 'Add a new contact person';
          actEdit.Caption := 'Edit selected contact person';
          actDelete.Caption := 'Delete selected cotact person';
          MTDM.FormCaption := 'Contact Person Details';
        end;

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
          viewDirector.Controller.FocusedColumn := edtDrFirstName;
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
          grdTrustee.SetFocus;
          viewTrustee.Focused := True;
          actInsert.Caption := 'Add a new trustee';
          actEdit.Caption := 'Edit selected trustee';
          actDelete.Caption := 'Delete selected trustee';
          MTDM.FormCaption := 'trustee Details';
        end;

      8:
        begin
          grdShareHolder.SetFocus;
          viewShareHolder.Focused := True;
          actInsert.Caption := 'Add a new Shareholder';
          actEdit.Caption := 'Edit selected Shareholder';
          actDelete.Caption := 'Delete selected Shareholder';
          MTDM.FormCaption := 'Shareholder Details';
        end;

      9:
        begin
          grdHeir.SetFocus;
          viewHeir.Focused := True;
          actInsert.Caption := 'Add a new Heir';
          actEdit.Caption := 'Edit selected Heir';
          actDelete.Caption := 'Delete selected Heir';
          MTDM.FormCaption := 'Heir Details';
        end;

      10:
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

//    16:
//      begin
//        if CustomerReportSelectionFrm = nil then
//          CustomerReportSelectionFrm := TCustomerReportSelectionFrm.Create(nil);
//        CustomerReportSelectionFrm.ShowModal;
//        CustomerReportSelectionFrm.Close;
//        FreeAndNil(CustomerReportSelectionFrm);
//      end;

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
                            FTrusteeWhereClause := '';
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

                      FCustomerWhereClause := FCustomerWhereClause + FCustomerOrderByClause;

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

                      FTrusteeWhereClause := ' WHERE T.CUSTOMER_ID IN (';
                      FTrusteeOrderByClause := ' ORDER BY T.CUSTOMER_ID, T.FIRST_NAME, T.LAST_NAME ';

                      FVehicleWhereClause := ' WHERE V.CUSTOMER_ID IN (';
                      FVehicleOrderByClaue := ' ORDER BY V.CUSTOMER_ID, V.VEHICLE_MAKE, V.VEHICLE_MODEL ';

                      FTrusteeWhereClause := ' WHERE T.CUSTOMER_ID IN (';
                      FTrusteeOrderByClause := ' ORDER BY T.CUSTOMER_ID, T.FIRST_NAME, T.LAST_NAME ';

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
                            FTrusteeWhereClause := '';
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
                                FTrusteeWhereClause := FTrusteeWhereClause + ','
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
                            FTrusteeWhereClause := FTrusteeWhereClause + ') ';
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
                                FTrusteeWhereClause := FTrusteeWhereClause + ','
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
                            FTrusteeWhereClause := FTrusteeWhereClause + ') ';
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
  REPORT_TABLE_COUNT = 10;
begin
  // Customer
  Counter := 1;
  Iteration := Counter / REPORT_TABLE_COUNT * 100;
//  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Preparing Report: Customer Table' + '|PROGRESS=' + Iteration.ToString)), 0);
  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('Preparing Report: Customer')), 0);
  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(Iteration.ToString)), 0);
  VBBaseDM.GetData(53, ReportDM.cdsCustomer, ReportDM.cdsCustomer.Name, FCustomerWhereClause + FCustomerOrderByClause,
    'C:\Data\Xml\Customer Detail.xml', ReportDM.cdsCustomer.UpdateOptions.Generatorname,
    ReportDM.cdsCustomer.UpdateOptions.UpdateTableName);

  // Address
  Inc(Counter);
  Iteration := Counter / REPORT_TABLE_COUNT * 100;
//  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Preparing Report: Address Table' + '|PROGRESS=' + Iteration.ToString)), 0);
  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('Preparing Report: Address')), 0);
  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(Iteration.ToString)), 0);
  VBBaseDM.GetData(4, ReportDM.cdsAddress, ReportDM.cdsAddress.Name, FAddressWhereClause {+ FAddressOrderByClause},
    'C:\Data\Xml\Address.xml', ReportDM.cdsAddress.UpdateOptions.Generatorname,
    ReportDM.cdsAddress.UpdateOptions.UpdateTableName);

  // Company contact details
  Inc(Counter);
  Iteration := Counter / REPORT_TABLE_COUNT * 100;
//  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Preparing Report: Company Contact Details' + '|PROGRESS=' + Iteration.ToString)), 0);
  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('Preparing Report: Company Contact Details')), 0);
  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(Iteration.ToString)), 0);
  VBBaseDM.GetData(54, ReportDM.cdsContactDetailCo, ReportDM.cdsContactDetailCo.Name, FContactDetailCoWhereClause + FContactDetailCoOrderByClause,
    'C:\Data\Xml\Contact Detail Co.xml', ReportDM.cdsContactDetailCo.UpdateOptions.Generatorname,
    ReportDM.cdsContactDetailCo.UpdateOptions.UpdateTableName);

  // Banking details
  Inc(Counter);
  Iteration := Counter / REPORT_TABLE_COUNT * 100;
//  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Preparing Report: Banking Details' + '|PROGRESS=' + Iteration.ToString)), 0);
  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('Preparing Report: Banking Details')), 0);
  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(Iteration.ToString)), 0);
  VBBaseDM.GetData(68, ReportDM.cdsBankingDetail, ReportDM.cdsBankingDetail.Name, FBankingDetailWhereClause + FBankingDetailOrderByClause,
    'C:\Data\Xml\Banking Detail.xml', ReportDM.cdsBankingDetail.UpdateOptions.Generatorname,
    ReportDM.cdsBankingDetail.UpdateOptions.UpdateTableName);

  // Contact person
  Inc(Counter);
  Iteration := Counter / REPORT_TABLE_COUNT * 100;
//  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Preparing Report: Person Contact' + '|PROGRESS=' + Iteration.ToString)), 0);
  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('Preparing Report: Person Contact')), 0);
  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(Iteration.ToString)), 0);
  VBBaseDM.GetData(70, ReportDM.cdsContactPerson, ReportDM.cdsContactPerson.Name, FContactPersonWhereClause + FContactPersonOrderByClause,
    'C:\Data\Xml\Contact Person.xml', ReportDM.cdsContactPerson.UpdateOptions.Generatorname,
    ReportDM.cdsContactPerson.UpdateOptions.UpdateTableName);

  // Contact person contact details
  Inc(Counter);
  Iteration := Counter / REPORT_TABLE_COUNT * 100;
//  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Preparing Report: Person Contact Details' + '|PROGRESS=' + Iteration.ToString)), 0);
  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('Preparing Report: Person Contact Details')), 0);
  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(Iteration.ToString)), 0);
  VBBaseDM.GetData(69, ReportDM.cdsContactDetailPerson, ReportDM.cdsContactDetailPerson.Name, FContactDetailPersonWhereClause + FContactDetailPersonOrderByClause,
    'C:\Data\Xml\Contact Detail Person.xml', ReportDM.cdsContactDetailPerson.UpdateOptions.Generatorname,
    ReportDM.cdsContactDetailPerson.UpdateOptions.UpdateTableName);

  // Directors
  Inc(Counter);
  Iteration := Counter / REPORT_TABLE_COUNT * 100;
//  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Preparing Report: Director Table' + '|PROGRESS=' + Iteration.ToString)), 0);
  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('Preparing Report: Director')), 0);
  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(Iteration.ToString)), 0);
  VBBaseDM.GetData(71, ReportDM.cdsDirector, ReportDM.cdsDirector.Name, FDirecterWhereClaue + FDirectorOrderByClause,
    'C:\Data\Xml\Director.xml', ReportDM.cdsDirector.UpdateOptions.Generatorname,
    ReportDM.cdsDirector.UpdateOptions.UpdateTableName);

  // Beneficiaries
  Inc(Counter);
  Iteration := Counter / REPORT_TABLE_COUNT * 100;
//  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Preparing Report: Beneficiary Table' + '|PROGRESS=' + Iteration.ToString)), 0);
  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('Preparing Report: Beneficiary')), 0);
  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(Iteration.ToString)), 0);
  VBBaseDM.GetData(72, ReportDM.cdsBeneficiary, ReportDM.cdsBeneficiary.Name, FBeneficiaryWhereClaue + FBeneficiaryOrderByClause,
    'C:\Data\Xml\Beneficiary.xml', ReportDM.cdsBeneficiary.UpdateOptions.Generatorname,
    ReportDM.cdsBeneficiary.UpdateOptions.UpdateTableName);

  // Vehicles
  Inc(Counter);
  Iteration := Counter / REPORT_TABLE_COUNT * 100;
//  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Preparing Report: Vehicle Table' + '|PROGRESS=' + Iteration.ToString)), 0);
  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('Preparing Report: Vehicle')), 0);
  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(Iteration.ToString)), 0);
  VBBaseDM.GetData(73, ReportDM.cdsVehicle, ReportDM.cdsVehicle.Name, FVehicleWhereClause + FVehicleOrderByClaue,
    'C:\Data\Xml\Vehicle.xml', ReportDM.cdsVehicle.UpdateOptions.Generatorname,
    ReportDM.cdsVehicle.UpdateOptions.UpdateTableName);

  // Trustees
  Inc(Counter);
  Iteration := Counter / REPORT_TABLE_COUNT * 100;
//  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Preparing Report: Trustee Table' + '|PROGRESS=' + Iteration.ToString)), 0);
  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('Preparing Report: Trustee')), 0);
  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(Iteration.ToString)), 0);
  VBBaseDM.GetData(74, ReportDM.cdsTrustee, ReportDM.cdsTrustee.Name, FTrusteeWhereClause + FTrusteeOrderByClause,
    'C:\Data\Xml\Trustee.xml', ReportDM.cdsTrustee.UpdateOptions.Generatorname,
    ReportDM.cdsTrustee.UpdateOptions.UpdateTableName);
end;

procedure TCustomerFrm.OpenTables;
var
  Counter: Integer;
  Iteration: Extended;

const
  TABLE_COUNT = 26;
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
//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Customer Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('Opening Customer Table')), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(Iteration.ToString)), 0);

    VBBaseDM.GetData(3, MTDM.cdsCustomer, MTDM.cdsCustomer.Name, ONE_SPACE,
      'C:\Data\Xml\Customer.xml', MTDM.cdsCustomer.UpdateOptions.Generatorname,
      MTDM.cdsCustomer.UpdateOptions.UpdateTableName);

    if not MTDM.cdsCustomer.Active then
      MTDM.cdsCustomer.CreateDataSet;

    // Contact Dtail Co
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Company Contact Detail Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('Opening Company Contact Detail Table')), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(Iteration.ToString)), 0);
    VBBaseDM.GetData(9, MTDM.cdsContactDetailCo, MTDM.cdsContactDetailCo.Name, ONE_SPACE,
      'C:\Data\Xml\Contact Detail Co.xml', MTDM.cdsContactDetailCo.UpdateOptions.Generatorname,
      MTDM.cdsContactDetailCo.UpdateOptions.UpdateTableName);

    if not MTDM.cdsContactDetailCo.Active then
      MTDM.cdsContactDetailCo.CreateDataSet;

    // Address
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Address Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('Opening Address Table')), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(Iteration.ToString)), 0);
    VBBaseDM.GetData(4, MTDM.cdsAddress, MTDM.cdsAddress.Name, ONE_SPACE,
      'C:\Data\Xml\Address.xml', MTDM.cdsAddress.UpdateOptions.Generatorname,
      MTDM.cdsAddress.UpdateOptions.UpdateTableName);

    if not MTDM.cdsAddress.Active then
      MTDM.cdsAddress.CreateDataSet;

    // Contact Person
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Contact Person Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('Opening Contact Person Table')), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(Iteration.ToString)), 0);
    VBBaseDM.GetData(10, MTDM.cdsContactPerson, MTDM.cdsContactPerson.Name, ONE_SPACE,
      'C:\Data\Xml\Contact Person.xml', MTDM.cdsContactPerson.UpdateOptions.Generatorname,
      MTDM.cdsContactPerson.UpdateOptions.UpdateTableName);

    if not MTDM.cdsContactPerson.Active then
      MTDM.cdsContactPerson.CreateDataSet;

    // Person Contact Detail
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Contact Detail Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('Opening Contact Detail Table')), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(Iteration.ToString)), 0);
    VBBaseDM.GetData(37, MTDM.cdsContactDetailPerson, MTDM.cdsContactDetailPerson.Name, ONE_SPACE,
      'C:\Data\Xml\Contact Detail Person Customer.xml', MTDM.cdsContactDetailPerson.UpdateOptions.Generatorname,
      MTDM.cdsContactDetailPerson.UpdateOptions.UpdateTableName);

    if not MTDM.cdsContactDetailPerson.Active then
      MTDM.cdsContactDetailPerson.CreateDataSet;

    // Banking Details
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Banking Detail Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('Opening Banking Detail Table')), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(Iteration.ToString)), 0);
    VBBaseDM.GetData(7, MTDM.cdsBankingDetail, MTDM.cdsBankingDetail.Name, ONE_SPACE,
      'C:\Data\Xml\Banking Detail.xml', MTDM.cdsBankingDetail.UpdateOptions.Generatorname,
      MTDM.cdsBankingDetail.UpdateOptions.UpdateTableName);

    if not MTDM.cdsBankingDetail.Active then
      MTDM.cdsBankingDetail.CreateDataSet;

    // Director
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Director Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('Opening Director Table')), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(Iteration.ToString)), 0);
    VBBaseDM.GetData(16, MTDM.cdsDirector, MTDM.cdsDirector.Name, ONE_SPACE,
      'C:\Data\Xml\Director.xml', MTDM.cdsDirector.UpdateOptions.Generatorname,
      MTDM.cdsDirector.UpdateOptions.UpdateTableName);

    if not MTDM.cdsDirector.Active then
      MTDM.cdsDirector.CreateDataSet;

    // Beneficiary
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Beneficiary Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('Opening Beneficiary Table')), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(Iteration.ToString)), 0);
    VBBaseDM.GetData(8, MTDM.cdsBeneficiary, MTDM.cdsBeneficiary.Name, ONE_SPACE,
      'C:\Data\Xml\Beneficiary.xml', MTDM.cdsBeneficiary.UpdateOptions.Generatorname,
      MTDM.cdsBeneficiary.UpdateOptions.UpdateTableName);

    if not MTDM.cdsBeneficiary.Active then
      MTDM.cdsBeneficiary.CreateDataSet;

    // Vehicle
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Vehicle Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('Opening Vehicle Table')), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(Iteration.ToString)), 0);
    VBBaseDM.GetData(49, MTDM.cdsVehicle, MTDM.cdsVehicle.Name, ONE_SPACE,
      'C:\Data\Xml\Vehicle.xml', MTDM.cdsVehicle.UpdateOptions.Generatorname,
      MTDM.cdsVehicle.UpdateOptions.UpdateTableName);

    if not MTDM.cdsVehicle.Active then
      MTDM.cdsVehicle.CreateDataSet;

    // Trustee
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Trustee Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('Opening Turstee Table')), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(Iteration.ToString)), 0);
    VBBaseDM.GetData(50, MTDM.cdsTrustee, MTDM.cdsTrustee.Name, ONE_SPACE,
      'C:\Data\Xml\Trustee.xml', MTDM.cdsTrustee.UpdateOptions.Generatorname,
      MTDM.cdsTrustee.UpdateOptions.UpdateTableName);

    if not MTDM.cdsTrustee.Active then
      MTDM.cdsTrustee.CreateDataSet;

    // Director of Company
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Director of Company Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('Opening Director of Company Table')), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(Iteration.ToString)), 0);
    VBBaseDM.GetData(74, MTDM.cdsDirectorOfCompany, MTDM.cdsDirectorOfCompany.Name, ONE_SPACE,
      'C:\Data\Xml\Director Of Company.xml', MTDM.cdsDirectorOfCompany.UpdateOptions.Generatorname,
      MTDM.cdsDirectorOfCompany.UpdateOptions.UpdateTableName);

    if not MTDM.cdsDirectorOfCompany.Active then
      MTDM.cdsDirectorOfCompany.CreateDataSet;

    // Shareholder
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Shareholder Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('Opening Shareholder Table')), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(Iteration.ToString)), 0);
    VBBaseDM.GetData(76, MTDM.cdsShareHolder, MTDM.cdsShareHolder.Name, ONE_SPACE,
      'C:\Data\Xml\Shareholder.xml', MTDM.cdsShareHolder.UpdateOptions.Generatorname,
      MTDM.cdsShareHolder.UpdateOptions.UpdateTableName);

    if not MTDM.cdsShareHolder.Active then
      MTDM.cdsShareHolder.CreateDataSet;

    // Heir
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Heir Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('Opening Heir Table')), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(Iteration.ToString)), 0);
    VBBaseDM.GetData(77, MTDM.cdsHeir, MTDM.cdsHeir.Name, ONE_SPACE,
      'C:\Data\Xml\Heir.xml', MTDM.cdsHeir.UpdateOptions.Generatorname,
      MTDM.cdsHeir.UpdateOptions.UpdateTableName);

    if not MTDM.cdsHeir.Active then
      MTDM.cdsHeir.CreateDataSet;

// Open all lookup tables  -----------------------------------------------------

    // Customer type
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Customer Type Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('Opening Customer Type Table')), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(Iteration.ToString)), 0);
    VBBaseDM.GetData(15, LookupDM.cdsCustomerType, LookupDM.cdsCustomerType.Name, ONE_SPACE,
      'C:\Data\Xml\Customer Type.xml', LookupDM.cdsCustomerType.UpdateOptions.Generatorname,
      LookupDM.cdsCustomerType.UpdateOptions.UpdateTableName);

    // Customer status
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Customer Status Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('Opening Customer Status Table')), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(Iteration.ToString)), 0);
    VBBaseDM.GetData(14, LookupDM.cdsCustomerStatus, LookupDM.cdsCustomerStatus.Name, ONE_SPACE,
      'C:\Data\Xml\Customer Status.xml', LookupDM.cdsCustomerStatus.UpdateOptions.Generatorname,
      LookupDM.cdsCustomerStatus.UpdateOptions.UpdateTableName);

    // Contact type
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Contact Type Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('Opening Contact Type Table')), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(Iteration.ToString)), 0);
    VBBaseDM.GetData(11, LookupDM.cdsContactType, LookupDM.cdsContactType.Name, ONE_SPACE,
      'C:\Data\Xml\Contact Type.xml', LookupDM.cdsContactType.UpdateOptions.Generatorname,
      LookupDM.cdsContactType.UpdateOptions.UpdateTableName);

    // Salutation
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Salutation Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('Opening Salutation Table')), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(Iteration.ToString)), 0);
    VBBaseDM.GetData(23, LookupDM.cdsSalutation, LookupDM.cdsSalutation.Name, ONE_SPACE,
      'C:\Data\Xml\Slutation.xml', LookupDM.cdsSalutation.UpdateOptions.Generatorname,
      LookupDM.cdsSalutation.UpdateOptions.UpdateTableName);

    LookupDM.cdsBFSalutation.Close;
    LookupDM.cdsDirectorSalutation.Close;
    LookupDM.cdsHeirSalutation.Close;
    LookupDM.cdsSHSalutation.Close;
    LookupDM.cdsAccHolderSalutation.Close;
    LookupDM.cdsTrusteeSalutation.Close;

    LookupDM.cdsBFSalutation.Data := LookupDM.cdsSalutation.Data;
    LookupDM.cdsDirectorSalutation.Data := LookupDM.cdsSalutation.Data;
    LookupDM.cdsHeirSalutation.Data := LookupDM.cdsSalutation.Data;
    LookupDM.cdsSHSalutation.Data := LookupDM.cdsSalutation.Data;
    LookupDM.cdsAccHolderSalutation.Data := LookupDM.cdsSalutation.Data;
    LookupDM.cdsTrusteeSalutation.Data := LookupDM.cdsSalutation.Data;

    // Job function
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Job Function Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('Opening Job Function Table')), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(Iteration.ToString)), 0);
    VBBaseDM.GetData(19, LookupDM.cdsJobFunction, LookupDM.cdsJobFunction.Name, ONE_SPACE,
      'C:\Data\Xml\Job Function.xml', LookupDM.cdsJobFunction.UpdateOptions.Generatorname,
      LookupDM.cdsJobFunction.UpdateOptions.UpdateTableName);

    // Bank
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Bank Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('Opening Bank Table')), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(Iteration.ToString)), 0);
    VBBaseDM.GetData(5, LookupDM.cdsBank, LookupDM.cdsBank.Name, ONE_SPACE,
      'C:\Data\Xml\Bank.xml', LookupDM.cdsBank.UpdateOptions.Generatorname,
      LookupDM.cdsBank.UpdateOptions.UpdateTableName);

    LookupDM.cdsHeirBank.Close;
    LookupDM.cdsHeirBank.Data := LookupDM.cdsBank.Data;

    // Bank account type
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Bank Account Type Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('Opening Bank Account Type Table')), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(Iteration.ToString)), 0);
    VBBaseDM.GetData(6, LookupDM.cdsBankAccountType, LookupDM.cdsBankAccountType.Name, ONE_SPACE,
      'C:\Data\Xml\Bank Account Type.xml', LookupDM.cdsBankAccountType.UpdateOptions.Generatorname,
      LookupDM.cdsBankAccountType.UpdateOptions.UpdateTableName);

    LookupDM.cdsHeirBankAccountType.Close;
    LookupDM.cdsHeirBankAccountType.Data := LookupDM.cdsBankAccountType.Data;

    // Tax/VAT Office
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Tax/VAT Office Tables' + '|PROGRESS=' + Iteration.ToString)), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('Opening Tax/VAT Office Table')), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(Iteration.ToString)), 0);
    VBBaseDM.GetData(25, LookupDM.cdsTaxOffice, LookupDM.cdsTaxOffice.Name, ONE_SPACE,
      'C:\Data\Xml\Tax Office.xml', LookupDM.cdsTaxOffice.UpdateOptions.Generatorname,
      LookupDM.cdsTaxOffice.UpdateOptions.UpdateTableName);

    LookupDM.cdsVATOffice.Close;
    LookupDM.cdsVATOffice.Data := LookupDM.cdsTaxOffice.Data;

    // Country
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Country Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('Opening Country Table')), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(Iteration.ToString)), 0);
    VBBaseDM.GetData(12, LookupDM.cdsCountry, LookupDM.cdsCountry.Name, ONE_SPACE,
      'C:\Data\Xml\Country.xml', LookupDM.cdsCountry.UpdateOptions.Generatorname,
      LookupDM.cdsCountry.UpdateOptions.UpdateTableName);

    // Vehicle make
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Vehicle Make Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('Opening Vehicle Make Table')), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(Iteration.ToString)), 0);
    VBBaseDM.GetData(48, LookupDM.cdsVehicleMake, LookupDM.cdsVehicleMake.Name, ONE_SPACE,
      'C:\Data\Xml\Vehicle Make.xml', LookupDM.cdsVehicleMake.UpdateOptions.Generatorname,
      LookupDM.cdsVehicleMake.UpdateOptions.UpdateTableName);

    // Month of Year
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Month of Year Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('Opening Month of Year Table')), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(Iteration.ToString)), 0);
    VBBaseDM.GetData(20, LookupDM.cdsMonthOfYear, LookupDM.cdsMonthOfYear.Name, ONE_SPACE,
      'C:\Data\Xml\Month of Year.xml', LookupDM.cdsMonthOfYear.UpdateOptions.Generatorname,
      LookupDM.cdsMonthOfYear.UpdateOptions.UpdateTableName);

    LookupDM.cdsARMonthOfYear.Close;
    LookupDM.cdsVATMonth.Close;

    LookupDM.cdsARMonthOfYear.Data := LookupDM.cdsMonthOfYear.Data;
    LookupDM.cdsVATMonth.Data := LookupDM.cdsMonthOfYear.Data;

    // Company
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Company Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('Opening Company Table')), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(Iteration.ToString)), 0);
    VBBaseDM.GetData(76, LookupDM.cdsCompany, LookupDM.cdsCompany.Name, ONE_SPACE,
      'C:\Data\Xml\Company.xml', LookupDM.cdsCompany.UpdateOptions.Generatorname,
      LookupDM.cdsCompany.UpdateOptions.UpdateTableName);

    if not LookupDM.cdsCompany.Active then
      LookupDM.cdsCompany.CreateDataSet;

  finally
    ProgressFrm.Close;
    FreeAndNil(ProgressFrm);
  end;
end;

procedure TCustomerFrm.grdContactPersonEnter(Sender: TObject);
begin
  inherited;
  MTDM.DetailIndex := 2;
  actInsert.Caption := 'Add a new contact person';
  actEdit.Caption := 'Edit selected contact person';
  actDelete.Caption := 'Delete selected contact person';
  MTDM.FormCaption := 'Contact Person';
end;

procedure TCustomerFrm.grdCPContactDetailEnter(Sender: TObject);
begin
  inherited;
  MTDM.DetailIndex := 3;
  actInsert.Caption := 'Add a new person contact detail';
  actEdit.Caption := 'Edit selected person contact detail';
  actDelete.Caption := 'Delete selected person cotact detail';
  MTDM.FormCaption := 'Contact Person Details';
end;

procedure TCustomerFrm.grdCustomerEnter(Sender: TObject);
begin
  inherited;
  MTDM.DetailIndex := 12;
  FCurrentItemIndex := grpDetailGrid.ItemIndex;
  actInsert.Caption := 'Add a new customer';
  actEdit.Caption := 'Edit selected customer';
  actDelete.Caption := 'Delete selected customer';
  MTDM.FormCaption := 'Customer Details';
end;

procedure TCustomerFrm.grdCustomerExit(Sender: TObject);
begin
  inherited;
  if FCurrentItemIndex <> grpDetailGrid.ItemIndex then
    grpDetailGridTabChanged(nil);
end;

procedure TCustomerFrm.grdDirectorEnter(Sender: TObject);
begin
  inherited;
//  MTDM.DetailIndex := 5;
  actInsert.Caption := 'Add a new director';
  actEdit.Caption := 'Edit selected director';
  actDelete.Caption := 'Delete selected director';
  MTDM.FormCaption := 'Director Details';
end;

procedure TCustomerFrm.grdHeirVerticalDrawRowHeader(Sender: TObject;
  ACanvas: TcxCanvas; APainter: TcxvgPainter;
  AHeaderViewInfo: TcxCustomRowHeaderInfo; var Done: Boolean);
//var
//  ARect: TRect;
//  AColor: TColor;
begin
//  // xRow.Properties.Caption := szBuild; //<<<<<<< don't use this string
//   ACanvas.DrawTexT('Hello', AHeaderViewInfo.HeaderCellsRect, cxSingleLine or cxAlignVCenter,True);
//   Done := True;

//  ARect := AHeaderViewInfo.HeaderRect;
//  AColor := AHeaderViewInfo.ViewParams.Color;
//  ACanvas.FillRect(ARect, AColor);
//  ARect.Left := ARect.Left + 12;
//  if AHeaderViewInfo.Focused then
//    ACanvas.Font.Color := clWhite;
//  ACanvas.DrawText(TcxDBEditorRow(AHeaderViewInfo.Row).Properties.Caption, ARect, cxAlignLeft or cxAlignVCenter);
//  Done := true;
end;

procedure TCustomerFrm.grdHeirVerticalEnter(Sender: TObject);
begin
  inherited;
//  MTDM.DetailIndex := 8;
  actInsert.Caption := 'Add a new Heir';
  actEdit.Caption := 'Edit selected Heir';
  actDelete.Caption := 'Delete selected Heir';
end;

procedure TCustomerFrm.grdHeirVerticalStylesGetContentStyle(Sender: TObject;
  AEditProp: TcxCustomEditorRowProperties; AFocused: Boolean;
  ARecordIndex: Integer; var AStyle: TcxStyle);
begin
  inherited;
  if AFocused then
    AStyle := styCellBackground;
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
    7: DataSet := MTDM.cdsTrustee;
    8: DataSet := MTDM.cdsShareHolder;
    9: DataSet := MTDM.cdsHeir;
    10: DataSet := MTDM.cdsVehicle;
    11: DataSet := MTDM.cdsDirectorOfCompany;
    12: DataSet := MTDM.cdsCustomer;
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

          7: // Trustee
            begin
              if TrusteeDetailFrm = nil then
                TrusteeDetailFrm := TTrusteeDetailFrm.Create(nil);

              ModResult := TrusteeDetailFrm.ShowModal;
              if ModResult = mrOK then
              begin
                FOpenTableParam.ScriptID := 50;
                FOpenTableParam.FileName := 'C:\Data\Xml\Trustee.xml';
                FOpenTableParam.FieldName := 'FIRST_NAME';
                FOpenTableParam.LocateValue := MTDM.FFieldValue.FirstName;
              end;

              TrusteeDetailFrm.Close;
              FreeAndNil(TrusteeDetailFrm);
            end;

          8: // Shareholder
            begin
              if ShareHolderDetailFrm = nil then
                ShareHolderDetailFrm := TShareHolderDetailFrm.Create(nil);

              ModResult := ShareHolderDetailFrm.ShowModal;
              if ModResult = mrOK then
              begin
                FOpenTableParam.ScriptID := 77;
                FOpenTableParam.FileName := 'C:\Data\Xml\Shareholder.xml';
                FOpenTableParam.FieldName := 'FIRST_NAME';
                FOpenTableParam.LocateValue := MTDM.FFieldValue.FirstName;
              end;

              ShareHolderDetailFrm.Close;
              FreeAndNil(ShareHolderDetailFrm);
            end;

          9: // Heir
            begin
              if HeirDetailFrm = nil then
                HeirDetailFrm := THeirDetailFrm.Create(nil);

              ModResult := HeirDetailFrm.ShowModal;
              if ModResult = mrOK then
              begin
                FOpenTableParam.ScriptID := 78;
                FOpenTableParam.FileName := 'C:\Data\Xml\Vehicle.xml';
                FOpenTableParam.FieldName := 'FIRST_NAME';
                FOpenTableParam.LocateValue := MTDM.FFieldValue.FirstName;
              end;

              HeirDetailFrm.Close;
              FreeAndNil(HeirDetailFrm);
            end;

          10: // Vehicle
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

          12: // Customer
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

//            // If posting Director of company data
//            if MTDM.DetailIndex = 5 then
//            begin
//              if MTDM.cdsDirectorOfCompany.State in dsEditModes then
//                MTDM.cdsDirectorOfCompany.Post;
//              MTDM.cdsActivityTypeAfterDelete(MTDM.cdsDirectorOfCompany);
//            end;

            // Post the data
            try
              FDetailDataSet[MTDM.DetailIndex].Post;
              if Length(Trim(VBBaseDM.ServerErrorMsg)) > 0 then
              begin
                FDetailDataSet[MTDM.DetailIndex].AfterDelete := nil;
                try
                  FDetailDataSet[MTDM.DetailIndex].Delete;
                finally
                  FDetailDataSet[MTDM.DetailIndex].AfterDelete := MTDM.cdsActivityTypeAfterDelete;
                end;
                raise EServerError.Create('An error occurred when posting data. Server error message:' + CRLF + CRLF +
                  VBBaseDM.ServerErrorMsg);
              end;

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
          12: // Customer
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

procedure TCustomerFrm.viewCustomerFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  if AFocusedRecord = nil then
    Exit;

// Customer Types
//1	Company (Pty) Ltd
//2	Close Corporation
//3	Trust
//4	Individual
//5	Non Profit Company (NPC)
//6	Estate
//7	Sole Proprietor
//8	Internal Work

//{$IFDEF RELEASE}
  grpPersonAttribute.Visible := MTDM.cdsCustomer.FieldByName('CUSTOMER_TYPE_ID').Asinteger in [4, 7];
  litShareHolder.Visible := MTDM.cdsCustomer.FieldByName('CUSTOMER_TYPE_ID').Asinteger in [1, 2, 5, 8];
  grpDirector.Visible := MTDM.cdsCustomer.FieldByName('CUSTOMER_TYPE_ID').Asinteger in [1, 2, 5, 8];
  grpHeir.Visible := MTDM.cdsCustomer.FieldByName('CUSTOMER_TYPE_ID').Asinteger in [6];
  grpPersonAttribute.Visible := MTDM.cdsCustomer.FieldByName('CUSTOMER_TYPE_ID').Asinteger in [4, 7];
//{$ENDIF}
end;

end.

