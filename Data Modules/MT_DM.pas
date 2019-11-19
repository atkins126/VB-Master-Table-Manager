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
  TableNameArray = array of string;
  TableReadOnlyArray = array of Boolean;
  FieldValueArray = array of string;

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
    PrimaryContact: Integer;
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
    MaintenancePlan: Integer;
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
    cdsCustomerPAYE_UIF_NO: TStringField;
    cdsCustomerSDL_NO: TStringField;
    cdsCustomerWC_NO: TStringField;
    cdsCustomerAR_COMPLETION_DATE: TSQLTimeStampField;
    cdsCustomerSARS_AUTHORIZATION_SHEET: TStringField;
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
    cdsMasterListREAD_ONLY: TIntegerField;
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
    cdsDirectorCUSTOMER_ID: TIntegerField;
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
    procedure ClearFieldValueArray;

    procedure cdsActivityTypeAfterPost(DataSet: TDataSet);
    procedure cdsActivityTypeBeforePost(DataSet: TDataSet);
    procedure cdsActivityTypeAfterDelete(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsActivityTypePostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
    procedure cdsActivityTypeNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    FID: Integer;
    FActionTag: Integer;
    FTableReadOnlyArray: TableReadOnlyArray;
    FTableNameArray: TableNameArray;
    FDBAction: TDBActions;
    FDetailIndex: Integer;
    FPostError: Boolean;
    FValueArray: FieldValueArray;
    FHeaderTitle: string;
    FSubTitle: string;
    FFormCaption: string;
  public
    { Public declarations }
    FFieldValue: FieldValues;

    property ActionTag: Integer read FActionTag write FActionTag;
    property TableNameArray: TableNameArray read FTableNameArray write FTableNameArray;
    property TableReadOnlyArray: TableReadOnlyArray read FTableReadOnlyArray write FTableReadOnlyArray;
    property DBAction: TDBActions read FDBAction write FDBAction;
    property DetailIndex: Integer read FDetailIndex write FDetailIndex;
    property PostError: Boolean read FPostError write FPostError;
    property ValueArray: FieldValueArray read FValueArray write FValueArray;
    property HeaderTitle: string read FHeaderTitle write FHeaderTitle;
    property SubTitle: string read FSubTitle write FSubTitle;
    property FormCaption: string read FFormCaption write FFormCaption;
    procedure ClearFieldValues;
  end;

var
  MTDM: TMTDM;

const
  FIELD_VALUES = 5;
  CUSTOMER_DETAIL_FORMS = 8;

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
  DataSet.FieldByName('CUSTOMER_ID').AsInteger := cdsCustomer.FieldByName('ID').AsInteger;

  if (TFDMemTable(DataSet) = cdsContactDetailCo) then
  begin
    DataSet.FieldByName('CONTACT_PERSON_ID').AsInteger := 0;
    DataSet.FieldByName('CONTACT_TYPE_ID').AsInteger := 0;
  end;

  if (TFDMemTable(DataSet) = cdsContactDetailPerson) then
  begin
    DataSet.FieldByName('CONTACT_PERSON_ID').AsInteger := MTDM.cdsContactPerson.FieldByName('ID').AsInteger;
    DataSet.FieldByName('CONTACT_TYPE_ID').AsInteger := 0;
  end;

  if (TFDMemTable(DataSet) = cdsContactPerson) then
    DataSet.FieldByName('IS_PRIMARY_CONTACT').AsInteger := 0;

  if (TFDMemTable(DataSet) = cdsContactDetailPerson) then
    DataSet.FieldByName('CONTACT_PERSON_ID').AsInteger := MTDM.cdsContactPerson.FieldByName('ID').AsInteger;

  if (TFDMemTable(DataSet) = cdsVehicle) then
    DataSet.FieldByName('MAINTENANCE_PLAN').AsInteger := 0;
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
  FFieldValue.PrimaryContact := 0;
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
  FFieldValue.MaintenancePlan := 0;
end;

procedure TMTDM.DataModuleCreate(Sender: TObject);
begin
  inherited;
  SetLength(FTableNameArray, 18);
  FTableNameArray[0] := 'Activity Type';
  FTableNameArray[1] := 'Age Period';
  FTableNameArray[2] := 'Bank';
  FTableNameArray[3] := 'Bank Account Type';
  FTableNameArray[4] := 'Contact Type';
  FTableNameArray[5] := 'Country';
  FTableNameArray[6] := 'Customer';
  FTableNameArray[7] := 'Customer Group';
  FTableNameArray[8] := 'Customer Status';
  FTableNameArray[9] := 'Customer Type';
  FTableNameArray[10] := 'Job Functio';
  FTableNameArray[11] := 'Month of year';
  FTableNameArray[12] := 'Price List';
  FTableNameArray[13] := 'Rate Unit';
  FTableNameArray[14] := 'STD Acrtivity';
  FTableNameArray[15] := 'Salutaion';
  FTableNameArray[16] := 'Tax Office';
  FTableNameArray[17] := 'Vehicle make';

  SetLength(FValueArray, FIELD_VALUES);
  ClearFieldValueArray;
end;

procedure TMTDM.cdsActivityTypeAfterDelete(DataSet: TDataSet);
begin
  inherited;
  SetLength(VBBaseDM.FDataSetArray, 1);
  VBBaseDM.FDataSetArray[0] := TFDMemTable(DataSet);
  VBBaseDM.ApplyUpdates(VBBaseDM.FDataSetArray, TFDMemTable(DataSet).UpdateOptions.Generatorname, TFDMemTable(DataSet).UpdateOptions.UpdateTableName);
end;

procedure TMTDM.cdsActivityTypeAfterPost(DataSet: TDataSet);
var
  DataSetState: TDatasetState;
begin
  inherited;
//  DataSetState := DataSet.State;
//  DataSet := cdsTimesheet;

  SetLength(VBBaseDM.FDataSetArray, 1);
  VBBaseDM.FDataSetArray[0] := TFDMemTable(DataSet);
  VBBaseDM.ApplyUpdates(VBBaseDM.FDataSetArray, TFDMemTable(DataSet).UpdateOptions.Generatorname, TFDMemTable(DataSet).UpdateOptions.UpdateTableName);
  SendMessage(Application.MainForm.Handle, WM_RECORD_ID, DWORD(PChar('REQUEST=REFRESH_DATA' + '|ID=' + FID.ToString)), 0);
end;

end.

