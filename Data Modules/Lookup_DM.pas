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
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async;

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
    VbliveConnection: TFDConnection;
    cdsARMonthOfYear: TFDMemTable;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    dtsARMonthOfyear: TDataSource;
    cdsVATOffice: TFDMemTable;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    dtsVATOffice: TDataSource;
    FDMemTable1: TFDMemTable;
    IntegerField3: TIntegerField;
    StringField3: TStringField;
    DataSource1: TDataSource;
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
