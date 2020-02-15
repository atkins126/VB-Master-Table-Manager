unit MT_DM;

{

Custom constraints examples
  CHAR_LENGTH(NAME) > 0

}

interface

uses
  System.SysUtils, System.Classes, Winapi.Windows, Vcl.Forms, Vcl.Dialogs,

  VBBase_DM, CommonValues, VBCommonValues,

  IPPeerClient, Data.DBXDataSnap, Data.DBXCommon, Data.DB, Data.SqlExpr,

  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteDef,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Phys.SQLite,
  FireDAC.Stan.StorageBin;

type
  MasterItemArray = array of string;
  TableReadOnlyArray = array of Boolean;
  FieldValueArray = array of string;
  HeaderCaptionArray = array of string;
  TMasterDatasets = array of TFDMemTable;

  FieldValues = record
    ContactTypeID: Integer;
    ContactType: string;
    TextValue: string;
    Comment: string;
    Physical1: string;
    Physical2: string;
    Physical3: string;
    Physical4: string;
    PhysicalCode: string;
    Postal1: string;
    Postal2: string;
    Postal3: string;
    Postal4: string;
    PostalCode: string;
    Billing1: string;
    Billing2: string;
    Billing3: string;
    Billing4: string;
    BillingCode: string;
    BankID: Integer;
    Bank: string;
    BranchCode: string;
    AccountTypeID: Integer;
    AccountType: string;
    AccountNo: string;
    FirstName: string;
    LastName: string;
    Initials: string;
    OtherName: string;
    SalutationID: Integer;
    Salutation: string;
    IDNo: string;
    PassportNo: string;
    JobFunctionID: Integer;
    JobFunction: string;
    PrimaryContact: Boolean;
    EmailAddress: string;
    TaxNo: string;
    MobileNo: string;
    DOB: TDateTime;
    VehicleMakeID: Integer;
    VehicleMake: string;
    VehicleModel: string;
    YearOfManufacture: Integer;
    VehicleRegNo: string;
    LicenceRenewalDate: TDateTime;
    MaintenancePlan: Boolean;
    // Customer
    CustomerTypeID: Integer;
    YearEndMonthID: Integer;
    TaxOfficeID: Integer;
    VATMonthID: Integer;
    VATCountryID: Integer;
    VATOfficeID: Integer;
    ARMonthID: Integer;
    StatauID: Integer;
    Name: string;
    TradingAs: string;
    BillTo: string;
    CoNo: string;
    VATNo: string;
    VATCustomsCode: string;
    PayeNo: string;
    UifNo: string;
    SDLNo: string;
    WCNo: string;
    ARCompletionDate: TDateTime;
//    ARCompletionDate: Variant;
    PasteAccCode: string;
    VBTaxAccCode: string;
    IsProvTaxPayer: Integer;
    HasLivingWill: Integer;
    IsOrganDonor: Integer;
    IsActive: Integer;
    EFiling: string;
    EFUserName: string;
    EFPassword: string;
    PercenShare: Real;
  end;

  TMTDM = class(TVBBaseDM)
    cdsActivityType: TFDMemTable;
    cdsAgePeriod: TFDMemTable;
    cdsBank: TFDMemTable;
    cdsBankAccountType: TFDMemTable;
    cdsContactType: TFDMemTable;
    cdsCustomer: TFDMemTable;
    cdsCustomerGroup: TFDMemTable;
    cdsCustomerStatus: TFDMemTable;
    cdsCustomerType: TFDMemTable;
    cdsJobFunction: TFDMemTable;
    cdsMonthOfYear: TFDMemTable;
    cdsPricelist: TFDMemTable;
    cdsRateUnit: TFDMemTable;
    cdsSalutation: TFDMemTable;
    cdsStdActivity: TFDMemTable;
    cdsTaxOffice: TFDMemTable;
    cdsVehicleMake: TFDMemTable;
    dtsActivityType: TDataSource;
    dtsAgePeriod: TDataSource;
    dtsBank: TDataSource;
    dtsBankAccountType: TDataSource;
    dtsContactType: TDataSource;
    dtsCustomer: TDataSource;
    dtsCustomerGroup: TDataSource;
    dtsCustomerStatus: TDataSource;
    dtsCustomerType: TDataSource;
    dtsJobFunction: TDataSource;
    dtsMonthOfyear: TDataSource;
    dtsPriceList: TDataSource;
    dtsRateUnit: TDataSource;
    dtsSalutation: TDataSource;
    dtsStdActivityType: TDataSource;
    dtsTaxOffice: TDataSource;
    dtsVehicleMake: TDataSource;
    FDPhysSQLiteDriverLink: TFDPhysSQLiteDriverLink;
    FDPhysFBDriverLink: TFDPhysFBDriverLink;
    FDGUIxWaitCursor: TFDGUIxWaitCursor;
    cdsBankAccountTypeID: TIntegerField;
    cdsBankAccountTypeNAME: TStringField;
    cdsBankID: TIntegerField;
    cdsBankNAME: TStringField;
    cdsContactTypeID: TIntegerField;
    cdsContactTypeNAME: TStringField;
    cdsCustomerGroupID: TIntegerField;
    cdsCustomerGroupNAME: TStringField;
    cdsCustomerStatusID: TIntegerField;
    cdsCustomerStatusNAME: TStringField;
    cdsCustomerTypeID: TIntegerField;
    cdsCustomerTypeNAME: TStringField;
    cdsJobFunctionID: TIntegerField;
    cdsJobFunctionNAME: TStringField;
    cdsMonthOfYearID: TIntegerField;
    cdsMonthOfYearNAME: TStringField;
    cdsPricelistID: TIntegerField;
    cdsPricelistRATE_UNIT_ID: TIntegerField;
    cdsPricelistNAME: TStringField;
    cdsPricelistINVOICE_DESCRIPTION: TStringField;
    cdsPricelistDESCRIPTION: TStringField;
    cdsRateUnitID: TIntegerField;
    cdsRateUnitNAME: TStringField;
    cdsSalutationID: TIntegerField;
    cdsSalutationNAME: TStringField;
    cdsStdActivityID: TIntegerField;
    cdsStdActivityNAME: TStringField;
    cdsTaxOfficeID: TIntegerField;
    cdsTaxOfficeNAME: TStringField;
    cdsVehicleMakeID: TIntegerField;
    cdsVehicleMakeNAME: TStringField;
    cdsCustomerID: TIntegerField;
    cdsCustomerCUSTOMER_TYPE_ID: TIntegerField;
    cdsCustomerYEAR_END_MONTH_ID: TIntegerField;
    cdsCustomerTAX_OFFICE_ID: TIntegerField;
    cdsCustomerVAT_MONTH_ID: TIntegerField;
    cdsCustomerVAT_COUNTRY_ID: TIntegerField;
    cdsCustomerVAT_OFFICE_ID: TIntegerField;
    cdsCustomerAR_MONTH_ID: TIntegerField;
    cdsCustomerSTATUS_ID: TIntegerField;
    cdsCustomerNAME: TStringField;
    cdsCustomerFIRST_NAME: TStringField;
    cdsCustomerLAST_NAME: TStringField;
    cdsCustomerINITIALS: TStringField;
    cdsCustomerTRADING_AS: TStringField;
    cdsCustomerBILL_TO: TStringField;
    cdsCustomerCO_NO: TStringField;
    cdsCustomerTAX_NO: TStringField;
    cdsCustomerVAT_NO: TStringField;
    cdsCustomerVAT_CUSTOMS_CODE: TStringField;
    cdsCustomerPAYE_NO: TStringField;
    cdsCustomerSDL_NO: TStringField;
    cdsCustomerWC_NO: TStringField;
    cdsCustomerAR_COMPLETION_DATE: TSQLTimeStampField;
    cdsCustomerPASTEL_ACC_CODE: TStringField;
    cdsCustomerVB_TAX_ACC_CODE: TStringField;
    cdsCustomerIS_PROV_TAX_PAYER: TIntegerField;
    cdsCustomerHAS_LIVING_WILL: TIntegerField;
    cdsCustomerIS_ORGAN_DONOR: TIntegerField;
    cdsCustomerDATE_CREATED: TSQLTimeStampField;
    cdsCustomerDATE_MODIFIED: TSQLTimeStampField;
    cdsCustomerIS_ACTIVE: TIntegerField;
    cdsCustomerEFILING: TStringField;
    cdsCustomerEF_USER_NAME: TStringField;
    cdsCustomerEF_PASSWORD: TStringField;
    cdsCustomerCUSTOMER_GROUP_ID: TIntegerField;
    cdsMasterList: TFDMemTable;
    dtsMasterList: TDataSource;
    cdsMasterListID: TIntegerField;
    cdsMasterListNAME: TStringField;
    cdsMasterListDESCRIPTION: TStringField;
    cdsMasterListIS_ACTIVE: TIntegerField;
    cdsMasterListSCRIPT_ID: TIntegerField;
    cdsCountry: TFDMemTable;
    dtsCountry: TDataSource;
    cdsPricelistRATE: TFloatField;
    cdsContactDetailCo: TFDMemTable;
    dtsContactDetailCo: TDataSource;
    cdsAddress: TFDMemTable;
    dtsAddress: TDataSource;
    cdsContactDetailPerson: TFDMemTable;
    dtsContactDetailPerson: TDataSource;
    cdsBankingDetail: TFDMemTable;
    dtsBankingDetail: TDataSource;
    cdsContactPerson: TFDMemTable;
    dtsContactPerson: TDataSource;
    cdsDirector: TFDMemTable;
    dtsDirector: TDataSource;
    cdsBeneficiary: TFDMemTable;
    dtsBeneficiary: TDataSource;
    cdsVehicle: TFDMemTable;
    dtsVehicle: TDataSource;
    cdsAddressID: TIntegerField;
    cdsAddressCUSTOMER_ID: TIntegerField;
    cdsAddressPHYSICAL1: TStringField;
    cdsAddressPHYSICAL2: TStringField;
    cdsAddressPHYSICAL3: TStringField;
    cdsAddressPHYSICAL4: TStringField;
    cdsAddressPHYSICAL_CODE: TStringField;
    cdsAddressPOSTAL1: TStringField;
    cdsAddressPOSTAL2: TStringField;
    cdsAddressPOSTAL3: TStringField;
    cdsAddressPOSTAL4: TStringField;
    cdsAddressPOSTAL_CODE: TStringField;
    cdsAddressBILLING1: TStringField;
    cdsAddressBILLING2: TStringField;
    cdsAddressBILLING3: TStringField;
    cdsAddressBILLING4: TStringField;
    cdsAddressBILLING_CODE: TStringField;
    cdsContactDetailPersonID: TIntegerField;
    cdsContactDetailPersonCONTACT_TYPE_ID: TIntegerField;
    cdsContactDetailPersonCUSTOMER_ID: TIntegerField;
    cdsContactDetailPersonCONTACT_PERSON_ID: TIntegerField;
    cdsContactDetailPersonVALUE: TStringField;
    cdsContactDetailPersonCOMMENT: TStringField;
    cdsContactPersonID: TIntegerField;
    cdsContactPersonCUSTOMER_ID: TIntegerField;
    cdsContactPersonSALUTATION_ID: TIntegerField;
    cdsContactPersonFIRST_NAME: TStringField;
    cdsContactPersonLAST_NAME: TStringField;
    cdsContactPersonINITIALS: TStringField;
    cdsContactPersonOTHER_NAME: TStringField;
    cdsContactPersonDOB: TSQLTimeStampField;
    cdsContactPersonID_NUMBER: TStringField;
    cdsContactPersonPASSPORT_NUMBER: TStringField;
    cdsContactPersonIS_PRIMARY_CONTACT: TIntegerField;
    cdsContactPersonJOB_FUNCTION_ID: TIntegerField;
    cdsBankingDetailID: TIntegerField;
    cdsBankingDetailBANK_ID: TIntegerField;
    cdsBankingDetailCUSTOMER_ID: TIntegerField;
    cdsBankingDetailBRANCH_CODE: TStringField;
    cdsBankingDetailACCOUNT_TYPE_ID: TIntegerField;
    cdsBankingDetailACCOUNT_NO: TStringField;
    cdsBankingDetailFIRST_NAME: TStringField;
    cdsBankingDetailLAST_NAME: TStringField;
    cdsDirectorID: TIntegerField;
    cdsDirectorSALUTATION_ID: TIntegerField;
    cdsDirectorFIRST_NAME: TStringField;
    cdsDirectorLAST_NAME: TStringField;
    cdsDirectorMIDDLE_NAME: TStringField;
    cdsDirectorTAX_NO: TStringField;
    cdsDirectorMOBILE_PHONE: TStringField;
    cdsDirectorEMAIL_ADDRESS: TStringField;
    cdsBeneficiaryID: TIntegerField;
    cdsBeneficiaryCUSTOMER_ID: TIntegerField;
    cdsBeneficiaryFIRST_NAME: TStringField;
    cdsBeneficiaryLAST_NAME: TStringField;
    cdsBeneficiaryMOBILE_PHONE: TStringField;
    cdsBeneficiaryEMAIL_ADDRESS: TStringField;
    cdsBeneficiarySALUTATION_ID: TIntegerField;
    cdsVehicleID: TIntegerField;
    cdsVehicleCUSTOMER_ID: TIntegerField;
    cdsVehicleTHE_YEAR: TIntegerField;
    cdsVehicleVEHICLE_MAKE_ID: TIntegerField;
    cdsVehicleVEHICLE_MODEL: TStringField;
    cdsVehicleREG_NO: TStringField;
    cdsVehicleRENEWAL_DATE: TDateField;
    cdsVehicleMAINTENANCE_PLAN: TIntegerField;
    cdsVehicleCOMMENT: TStringField;
    cdsContactDetailCoID: TIntegerField;
    cdsContactDetailCoCONTACT_TYPE_ID: TIntegerField;
    cdsContactDetailCoCUSTOMER_ID: TIntegerField;
    cdsContactDetailCoCONTACT_PERSON_ID: TIntegerField;
    cdsContactDetailCoVALUE: TStringField;
    cdsContactDetailCoCOMMENT: TStringField;
    cdsActivityTypeID: TIntegerField;
    cdsActivityTypeNAME: TStringField;
    cdsAgePeriodID: TIntegerField;
    cdsAgePeriodNAME: TStringField;
    cdsCustomerUIF_NO: TStringField;
    cdsTrustee: TFDMemTable;
    dtsTrustee: TDataSource;
    cdsTrusteeID: TIntegerField;
    cdsTrusteeCUSTOMER_ID: TIntegerField;
    cdsTrusteeSALUTATION_ID: TIntegerField;
    cdsTrusteeFIRST_NAME: TStringField;
    cdsTrusteeLAST_NAME: TStringField;
    cdsTrusteeMOBILE_PHONE: TStringField;
    cdsTrusteeEMAIL_ADDRESS: TStringField;
    dtsDirectorOfCompany: TDataSource;
    cdsDirectorOfCompany: TFDMemTable;
    cdsDirectorOfCompanyDIRECTOR_ID: TIntegerField;
    cdsDirectorOfCompanyCUSTOMER_ID: TIntegerField;
    cdsDirectorOfCompanyID: TIntegerField;
    VbdevConnection: TFDConnection;
    cdsHeir: TFDMemTable;
    cdsShareHolder: TFDMemTable;
    dtsHeir: TDataSource;
    dtsShareHolder: TDataSource;
    cdsHeirID: TIntegerField;
    cdsHeirCUSTOMER_ID: TIntegerField;
    cdsHeirFIRST_NAME: TStringField;
    cdsHeirLAST_NAME: TStringField;
    cdsHeirID_NUMBER: TStringField;
    cdsHeirPHYSICAL1: TStringField;
    cdsHeirPHYSICAL2: TStringField;
    cdsHeirPHYSICAL3: TStringField;
    cdsHeirPHYSICAL4: TStringField;
    cdsHeirPHYSICAL_CODE: TStringField;
    cdsHeirPOSTAL1: TStringField;
    cdsHeirPOSTAL2: TStringField;
    cdsHeirPOSTAL3: TStringField;
    cdsHeirPOSTAL4: TStringField;
    cdsHeirPOSTAL_CODE: TStringField;
    cdsHeirBANK_ID: TIntegerField;
    cdsHeirBRANCH_CODE: TStringField;
    cdsHeirACCOUNT_TYPE_ID: TIntegerField;
    cdsHeirACCOUNT_N0: TStringField;
    cdsShareHolderID: TIntegerField;
    cdsShareHolderCUSTOMER_ID: TIntegerField;
    cdsShareHolderFIRST_NAME: TStringField;
    cdsShareHolderLAST_NAME: TStringField;
    cdsShareHolderMOBILE_PHONE: TStringField;
    cdsShareHolderEMAIL_ADDRESS: TStringField;
    cdsShareHolderPERCENT_SHARE: TFloatField;
    cdsHeirSALUTATION_ID: TIntegerField;
    HeirTable: TFDQuery;
    HeirTableID: TIntegerField;
    HeirTableCUSTOMER_ID: TIntegerField;
    HeirTableSALUTATION_ID: TIntegerField;
    HeirTableFIRST_NAME: TStringField;
    HeirTableLAST_NAME: TStringField;
    HeirTableID_NUMBER: TStringField;
    HeirTablePHYSICAL1: TStringField;
    HeirTablePHYSICAL2: TStringField;
    HeirTablePHYSICAL3: TStringField;
    HeirTablePHYSICAL4: TStringField;
    HeirTablePHYSICAL_CODE: TStringField;
    HeirTablePOSTAL1: TStringField;
    HeirTablePOSTAL2: TStringField;
    HeirTablePOSTAL3: TStringField;
    HeirTablePOSTAL4: TStringField;
    HeirTablePOSTAL_CODE: TStringField;
    HeirTableHEIR_ACC_HOLDER_FIRST_NAME: TStringField;
    HeirTableHEIR_ACC_HOLDER_LAST_NAME: TStringField;
    HeirTableBANK_ID: TIntegerField;
    HeirTableBRANCH_CODE: TStringField;
    HeirTableACCOUNT_TYPE_ID: TIntegerField;
    HeirTableACCOUNT_N0: TStringField;
    cdsHeirHEIR_ACC_HOLDER_FIRST_NAME: TStringField;
    cdsHeirHEIR_ACC_HOLDER_LAST_NAME: TStringField;
    cdsHeirACC_HOLDER_SALUTATION_ID: TIntegerField;
    cdsShareHolderSALUTATION_ID: TIntegerField;
    cdsDirectorFULL_NAME: TStringField;
    procedure ClearFieldValueArray;

    procedure cdsActivityTypeAfterPost(DataSet: TDataSet);
    procedure cdsActivityTypeBeforePost(DataSet: TDataSet);
    procedure cdsActivityTypeAfterDelete(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsActivityTypePostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
    procedure cdsActivityTypeNewRecord(DataSet: TDataSet);
    procedure cdsDirectorOfCompanyNewRecord(DataSet: TDataSet);
    procedure cdsDirectorOfCompanyPostError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure cdsDirectorCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    FID: Integer;
    FActionTag: Integer;
    FTableReadOnlyArray: TableReadOnlyArray;
    FMasterItem: MasterItemArray;
//    FDBAction: TDBActions;
    FDetailIndex: Integer;
    FPostError: Boolean;
    FValueArray: FieldValueArray;
    FHeaderTitle: string;
    FSubTitle: string;
    FFormCaption: string;
    FHeaderCaptionArray: HeaderCaptionArray;
    FMasterDataSet: TMasterDataSets;
    FCompanyName: string;
  public
    { Public declarations }
    FFieldValue: FieldValues;

    property ActionTag: Integer read FActionTag write FActionTag;
    property MasterItem: MasterItemArray read FMasterItem write FMasterItem;
    property TableReadOnlyArray: TableReadOnlyArray read FTableReadOnlyArray write FTableReadOnlyArray;
//    property DBAction: TDBActions read FDBAction write FDBAction;
    property DetailIndex: Integer read FDetailIndex write FDetailIndex;
    property PostError: Boolean read FPostError write FPostError;
    property ValueArray: FieldValueArray read FValueArray write FValueArray;
    property HeaderTitle: string read FHeaderTitle write FHeaderTitle;
    property SubTitle: string read FSubTitle write FSubTitle;
    property FormCaption: string read FFormCaption write FFormCaption;
    procedure ClearFieldValues;
    property HeaderCaptionArray: HeaderCaptionArray read FHeaderCaptionArray write FHeaderCaptionArray;
    property MasterDataSet: TMasterDataSets read FMasterDataSet write FMasterDataSet;
    property CompanyName: string read FCompanyName write FCompanyName;
  end;

var
  MTDM: TMTDM;

const
  FIELD_VALUES = 5;
  CUSTOMER_DETAIL_COUNT = 13;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TMTDM.cdsActivityTypeBeforePost(DataSet: TDataSet);
begin
  inherited;
  FID := DataSet.FieldByName('ID').AsInteger;
end;

procedure TMTDM.cdsActivityTypeNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ID').AsInteger := 0;

  if DataSet.FindField('CUSTOMER_ID') <> nil then
    DataSet.FieldByName('CUSTOMER_ID').AsInteger := cdsCustomer.FieldByName('ID').AsInteger;

  if (TFDMemTable(DataSet) = cdsContactDetailCo) then
  begin
    DataSet.FieldByName('CONTACT_PERSON_ID').AsInteger := 0;
    DataSet.FieldByName('CONTACT_TYPE_ID').AsInteger := 0;
  end

  else if (TFDMemTable(DataSet) = cdsContactDetailPerson) then
  begin
    DataSet.FieldByName('CONTACT_PERSON_ID').AsInteger := MTDM.cdsContactPerson.FieldByName('ID').AsInteger;
    DataSet.FieldByName('CONTACT_TYPE_ID').AsInteger := 0;
  end

  else if (TFDMemTable(DataSet) = cdsContactPerson) then
    DataSet.FieldByName('IS_PRIMARY_CONTACT').AsInteger := 0

  else if (TFDMemTable(DataSet) = cdsVehicle) then
    DataSet.FieldByName('MAINTENANCE_PLAN').AsInteger := 0;

  if (TFDMemTable(DataSet) = cdsShareHolder) then
    cdsShareHolder.FieldByName('PERCENT_SHARE').AsFloat := 0;
end;

procedure TMTDM.cdsDirectorCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsDirector.FieldByName('FULL_NAME').AsString :=
    cdsDirector.FieldByName('FIRST_NAME').AsString +
    cdsDirector.FieldByName('LAST_NAME').AsString;
end;

procedure TMTDM.cdsDirectorOfCompanyNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ID').AsInteger := 0;
  DataSet.FieldByName('DIRECTOR_ID').AsInteger := cdsDirector.FieldByName('ID').AsInteger;
end;

procedure TMTDM.cdsDirectorOfCompanyPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  inherited;
//  EFDException(E).FDCode;
  MTDM.FPostError := True;

  if EFDException(E).FDCode = 15 then // Duplicate record
  begin
    DataSet.Cancel;
    raise EDuplicateException.Create('Duplicate records not allowed.' + CRLF + CRLF +
      'Company: ' + FCompanyName + CRLF +
      ' is already linked to director: ' + MTDM.cdsDirector.FieldByName('FIRST_NAME').AsString + ' ' +
      MTDM.cdsDirector.FieldByName('LAST_NAME').AsString);
//      ' is already linked to director ' + MTDM.ValueArray[0] + ' ' + MTDM.ValueArray[1]);
  end;
  DataSet.Cancel;
end;

procedure TMTDM.cdsActivityTypePostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
begin
  inherited;
//  ShowMessage('Class name: ' + E.ClassName);
//  ShowMessage('Class name: ' + EFDDBEngineException(E).Message);

  MTDM.FPostError := True;
  DataSet.Cancel;
//  Action :=  daAbort;
end;

procedure TMTDM.ClearFieldValueArray;
var
  I: Integer;
begin
  for I := 0 to FIELD_VALUES - 1 do
    FValueArray[I] := '';
end;

procedure TMTDM.ClearFieldValues;
begin
  FFieldValue.ContactTypeID := 0;
  FFieldValue.ContactType := '';
  FFieldValue.TextValue := '';
  FFieldValue.Comment := '';
  FFieldValue.Physical1 := '';
  FFieldValue.Physical2 := '';
  FFieldValue.Physical3 := '';
  FFieldValue.Physical4 := '';
  FFieldValue.PhysicalCode := '';
  FFieldValue.Postal1 := '';
  FFieldValue.Postal2 := '';
  FFieldValue.Postal3 := '';
  FFieldValue.Postal4 := '';
  FFieldValue.PostalCode := '';
  FFieldValue.Billing1 := '';
  FFieldValue.Billing2 := '';
  FFieldValue.Billing3 := '';
  FFieldValue.Billing4 := '';
  FFieldValue.BillingCode := '';
  FFieldValue.BankID := 0;
  FFieldValue.Bank := '';
  FFieldValue.BranchCode := '';
  FFieldValue.AccountTypeID := 0;
  FFieldValue.AccountType := '';
  FFieldValue.AccountNo := '';
  FFieldValue.FirstName := '';
  FFieldValue.LastName := '';
  FFieldValue.Initials := '';
  FFieldValue.OtherName := '';
  FFieldValue.SalutationID := 0;
  FFieldValue.Salutation := '';
  FFieldValue.IDNo := '';
  FFieldValue.PassportNo := '';
  FFieldValue.JobFunctionID := 0;
  FFieldValue.JobFunction := '';
  FFieldValue.PrimaryContact := False;
  FFieldValue.EmailAddress := '';
  FFieldValue.TaxNo := '';
  FFieldValue.MobileNo := '';
  FFieldValue.DOB := 0.0;
  FFieldValue.VehicleMakeID := 0;
  FFieldValue.VehicleMake := '';
  FFieldValue.VehicleModel := '';
  FFieldValue.YearOfManufacture := 0;
  FFieldValue.VehicleRegNo := '';
  FFieldValue.LicenceRenewalDate := 0.0;
  FFieldValue.MaintenancePlan := False;
  // Customer
  FFieldValue.CustomerTypeID := 0;
  FFieldValue.YearEndMonthID := 0;
  FFieldValue.TaxOfficeID := 0;
  FFieldValue.VATMonthID := 0;
  FFieldValue.VATCountryID := 0;
  FFieldValue.VATOfficeID := 0;
  FFieldValue.ARMonthID := 0;
  FFieldValue.StatauID := 0;
  FFieldValue.IsActive := 0;
  FFieldValue.TradingAs := '';
  FFieldValue.BillTo := '';
  FFieldValue.CoNo := '';
  FFieldValue.TaxNo := '';
  FFieldValue.VATNo := '';
  FFieldValue.VATCustomsCode := '';
  FFieldValue.PayeNo := '';
  FFieldValue.UifNo := '';
  FFieldValue.SDLNo := '';
  FFieldValue.WCNo := '';
  FFieldValue.ARCompletionDate := 0.0;
  FFieldValue.PasteAccCode := '';
  FFieldValue.VBTaxAccCode := '';
  FFieldValue.IsProvTaxPayer := 0;
  FFieldValue.HasLivingWill := 0;
  FFieldValue.IsOrganDonor := 0;
  FFieldValue.EFiling := '';
  FFieldValue.EFUserName := '';
  FFieldValue.EFPassword := '';
  FFieldValue.PercenShare := 0.0;
end;

procedure TMTDM.DataModuleCreate(Sender: TObject);
begin
  inherited;
  SetLength(FMasterItem, MASTER_DATASET_COUNT);
  FMasterItem[0] := 'Activity Type';
  FMasterItem[1] := 'Age Period';
  FMasterItem[2] := 'Bank';
  FMasterItem[3] := 'Bank Account Type';
  FMasterItem[4] := 'Contact Type';
  FMasterItem[5] := 'Country';
  FMasterItem[6] := 'Customer';
  FMasterItem[7] := 'Customer Group';
  FMasterItem[8] := 'Customer Status';
  FMasterItem[9] := 'Customer Type';
  FMasterItem[10] := 'Job Functio';
  FMasterItem[11] := 'Month of year';
  FMasterItem[12] := 'Price List';
  FMasterItem[13] := 'Rate Unit';
  FMasterItem[14] := 'STD Acrtivity';
  FMasterItem[15] := 'Salutaion';
  FMasterItem[16] := 'Tax Office';
  FMasterItem[17] := 'Vehicle make';

  Setlength(FHeaderCaptionArray, CUSTOMER_DETAIL_COUNT);
  FHeaderCaptionArray[0] := 'Company Contact Detail';
  FHeaderCaptionArray[1] := 'Address Information';
  FHeaderCaptionArray[2] := 'Contact Person';
  FHeaderCaptionArray[3] := 'Contact Person Detail';
  FHeaderCaptionArray[4] := 'Banking Details';
  FHeaderCaptionArray[5] := 'Director Details';
  FHeaderCaptionArray[6] := 'Beneficiary Details';
  FHeaderCaptionArray[7] := 'Trustee Details';
  FHeaderCaptionArray[8] := 'Shareholder Details';
  FHeaderCaptionArray[9] := 'Heir Details';
  FHeaderCaptionArray[10] := 'Vehicle Details';
  FHeaderCaptionArray[11] := 'Directo Company Link Details';
  FHeaderCaptionArray[12] := 'Customer Details';

//  Setlength(FHeaderCaptionArray, CUSTOMER_DETAIL_FORMS);
//  FHeaderCaptionArray[0] := 'Company Contact Detail';
//  FHeaderCaptionArray[1] := 'Address Information';
//  FHeaderCaptionArray[2] := 'Contact Person';
//  FHeaderCaptionArray[3] := 'Contact Person Detail';
//  FHeaderCaptionArray[4] := 'Banking Details';
//  FHeaderCaptionArray[5] := 'Director Details';
//  FHeaderCaptionArray[6] := 'Beneficiary Details';
//  FHeaderCaptionArray[7] := 'Veicle Details';

  SetLength(FValueArray, FIELD_VALUES);
  ClearFieldValueArray;

  SetLength(FMasterDataset, MASTER_DATASET_COUNT);
  FMasterDataSet[0] := cdsActivityType;
  FMasterDataSet[1] := cdsAgePeriod;
  FMasterDataSet[2] := cdsBank;
  FMasterDataSet[3] := cdsBankAccountType;
  FMasterDataSet[4] := cdsContactType;
  FMasterDataSet[5] := cdsCountry;
  FMasterDataSet[6] := cdsCustomer;
  FMasterDataSet[7] := cdsCustomerGroup;
  FMasterDataSet[8] := cdsCustomerStatus;
  FMasterDataSet[9] := cdsCustomerType;
  FMasterDataSet[10] := cdsJobFunction;
  FMasterDataSet[11] := cdsMonthOfYear;
  FMasterDataSet[12] := cdsPricelist;
  FMasterDataSet[13] := cdsRateUnit;
  FMasterDataSet[14] := cdsSalutation;
  FMasterDataSet[15] := cdsStdActivity;
  FMasterDataSet[16] := cdsTaxoffice;
  FMasterDataSet[17] := cdsVehicleMake;
end;

procedure TMTDM.cdsActivityTypeAfterDelete(DataSet: TDataSet);
begin
  inherited;
  SetLength(VBBaseDM.FDataSetArray, 1);
  VBBaseDM.FDataSetArray[0] := TFDMemTable(DataSet);
  VBBaseDM.ApplyUpdates(VBBaseDM.FDataSetArray, TFDMemTable(DataSet).UpdateOptions.Generatorname, TFDMemTable(DataSet).UpdateOptions.UpdateTableName);
end;

procedure TMTDM.cdsActivityTypeAfterPost(DataSet: TDataSet);
begin
  inherited;
  SetLength(VBBaseDM.FDataSetArray, 1);
  VBBaseDM.FDataSetArray[0] := TFDMemTable(DataSet);
  VBBaseDM.ApplyUpdates(VBBaseDM.FDataSetArray, TFDMemTable(DataSet).UpdateOptions.Generatorname, TFDMemTable(DataSet).UpdateOptions.UpdateTableName);
  SendMessage(Application.MainForm.Handle, WM_RECORD_ID, DWORD(PChar('REQUEST=REFRESH_DATA' + '|ID=' + FID.ToString)), 0);
end;

end.

