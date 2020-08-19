unit Lookup_DM;

interface

uses
  System.SysUtils, System.Classes,

  Base_DM,

  Data.DBXDataSnap, Data.DBXCommon, Data.DB, Data.SqlExpr, IPPeerClient,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.StorageBin,
  FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteDef, FireDAC.Phys.FBDef, FireDAC.UI.Intf,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Phys.FB,
  FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Phys.SQLiteWrapper.Stat;

type
  TLookupDM = class(TBaseDM)
    cdsCountry: TFDMemTable;
    dtsCountry: TDataSource;
    cdsCustomerGroup: TFDMemTable;
    cdsCustomerGroupID: TIntegerField;
    cdsCustomerGroupNAME: TStringField;
    cdsCustomerStatus: TFDMemTable;
    cdsCustomerStatusID: TIntegerField;
    cdsCustomerStatusNAME: TStringField;
    cdsCustomerType: TFDMemTable;
    cdsCustomerTypeID: TIntegerField;
    cdsCustomerTypeNAME: TStringField;
    cdsJobFunction: TFDMemTable;
    cdsJobFunctionID: TIntegerField;
    cdsJobFunctionNAME: TStringField;
    cdsMonthOfYear: TFDMemTable;
    cdsMonthOfYearID: TIntegerField;
    cdsMonthOfYearNAME: TStringField;
    dtsCustomerGroup: TDataSource;
    dtsCustomerStatus: TDataSource;
    dtsCustomerType: TDataSource;
    dtsJobFunction: TDataSource;
    dtsMonthOfyear: TDataSource;
    cdsRateUnit: TFDMemTable;
    cdsRateUnitID: TIntegerField;
    cdsRateUnitNAME: TStringField;
    cdsSalutation: TFDMemTable;
    cdsSalutationID: TIntegerField;
    cdsSalutationNAME: TStringField;
    cdsStdActivity: TFDMemTable;
    cdsStdActivityID: TIntegerField;
    cdsStdActivityNAME: TStringField;
    cdsTaxOffice: TFDMemTable;
    cdsTaxOfficeID: TIntegerField;
    cdsTaxOfficeNAME: TStringField;
    cdsVehicleMake: TFDMemTable;
    cdsVehicleMakeID: TIntegerField;
    cdsVehicleMakeNAME: TStringField;
    dtsRateUnit: TDataSource;
    dtsSalutation: TDataSource;
    dtsStdActivityType: TDataSource;
    dtsTaxOffice: TDataSource;
    dtsVehicleMake: TDataSource;
    FDPhysSQLiteDriverLink: TFDPhysSQLiteDriverLink;
    FDPhysFBDriverLink: TFDPhysFBDriverLink;
    FDGUIxWaitCursor: TFDGUIxWaitCursor;
    cdsBank: TFDMemTable;
    cdsBankID: TIntegerField;
    cdsBankNAME: TStringField;
    cdsBankAccountType: TFDMemTable;
    cdsBankAccountTypeID: TIntegerField;
    cdsBankAccountTypeNAME: TStringField;
    cdsContactType: TFDMemTable;
    cdsContactTypeID: TIntegerField;
    cdsContactTypeNAME: TStringField;
    dtsBank: TDataSource;
    dtsBankAccountType: TDataSource;
    dtsContactType: TDataSource;
    cdsARMonthOfYear: TFDMemTable;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    dtsARMonthOfyear: TDataSource;
    cdsVATOffice: TFDMemTable;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    dtsVATOffice: TDataSource;
    cdsBFSalutation: TFDMemTable;
    IntegerField4: TIntegerField;
    StringField4: TStringField;
    dtsBFSalutation: TDataSource;
    cdsDirectorSalutation: TFDMemTable;
    IntegerField5: TIntegerField;
    StringField5: TStringField;
    dtsDirectorSalutation: TDataSource;
    cdsVATMonth: TFDMemTable;
    IntegerField6: TIntegerField;
    StringField6: TStringField;
    dtsVATMonth: TDataSource;
    cdsCountryID: TIntegerField;
    cdsCountryNAME: TStringField;
    cdsCountryDIALING_CODE: TStringField;
    cdsCompany: TFDMemTable;
    dtsCompany: TDataSource;
    VbdevConnection: TFDConnection;
    cdsCompanyID: TIntegerField;
    cdsCompanyCUSTOMER_TYPE_ID: TIntegerField;
    cdsCompanyCOMPANY: TStringField;
    cdsHeirSalutation: TFDMemTable;
    dtsHeirSalutation: TDataSource;
    cdsHeirSalutationID: TIntegerField;
    cdsHeirSalutationNAME: TStringField;
    cdsSHSalutation: TFDMemTable;
    dtsSHSalutation: TDataSource;
    cdsSHSalutationID: TIntegerField;
    cdsSHSalutationNAME: TStringField;
    cdsAccHolderSalutation: TFDMemTable;
    IntegerField3: TIntegerField;
    StringField3: TStringField;
    dtsAccHolderSalutation: TDataSource;
    cdsHeirBank: TFDMemTable;
    dtsHeirBank: TDataSource;
    cdsHeirBankID: TIntegerField;
    cdsHeirBankNAME: TStringField;
    cdsHeirBankAccountType: TFDMemTable;
    dtsHeirBankAccountType: TDataSource;
    cdsHeirBankAccountTypeID: TIntegerField;
    cdsHeirBankAccountTypeNAME: TStringField;
    cdsTrusteeSalutation: TFDMemTable;
    dtsTrusteeSalutation: TDataSource;
    cdsTrusteeSalutationID: TIntegerField;
    cdsTrusteeSalutationNAME: TStringField;
    cdsCustomer: TFDMemTable;
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
    cdsCustomerUIF_NO: TStringField;
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
    dtsCustomer: TDataSource;
    cdsCustomerStatusRpt: TFDMemTable;
    dtsCustomerStatusRpt: TDataSource;
    cdsCustomerStatusRptID: TIntegerField;
    cdsCustomerStatusRptNAME: TStringField;
    cdsRateUnitABBREVIATION: TStringField;
    cdsDirectorCompanyLink: TFDMemTable;
    dtsDirectorCompanyLink: TDataSource;
    cdsDirectorCompanyLinkID: TIntegerField;
    cdsDirectorCompanyLinkCUSTOMER_TYPE_ID: TIntegerField;
    cdsDirectorCompanyLinkCOMPANY: TStringField;
    cdsDirectorSalutationLU: TFDMemTable;
    dtsDirectorSalutationLU: TDataSource;
    cdsDirectorSalutationLUID: TIntegerField;
    cdsDirectorSalutationLUNAME: TStringField;
    cdsCustomerLookup: TFDMemTable;
    dtsCustomerLookup: TDataSource;
    cdsCustomerLookupID: TIntegerField;
    cdsCustomerLookupCUSTOMER_ID: TIntegerField;
    cdsCustomerLookupSTaTUS_ID: TIntegerField;
    cdsCustomerLookupCUSTOMER_GROUP_ID: TIntegerField;
    cdsCustomerLookupNAME: TStringField;
    cdsCustomerLookupTRADING_AS: TStringField;
    cdsCustomerLookupCO_NO: TStringField;
    cdsCustomerLookupTAX_NO: TStringField;
    cdsCustomerLookupIS_ACTIVE: TIntegerField;
    cdsCustomerLookupFIRST_NAME: TStringField;
    cdsCustomerLookupLAST_NAME: TStringField;
    cdsCustomerLookupOTHER_NAME: TStringField;
    cdsCustomerLookupSALUTATION_ID: TIntegerField;
    cdsCustomerSALUTATION_ID: TIntegerField;
    cdsCustomerSalutation: TFDMemTable;
    dtsCustomerSalutation: TDataSource;
    cdsCustomerSalutationID: TIntegerField;
    cdsCustomerSalutationNAME: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LookupDM: TLookupDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
