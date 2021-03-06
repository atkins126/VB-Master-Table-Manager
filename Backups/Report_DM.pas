unit Report_DM;

interface

uses
  System.SysUtils, System.Classes, Winapi.Windows, Vcl.Forms, Vcl.Dialogs,

  Base_DM, VBBase_DM, CommonValues, VBCommonValues, VBPrintExportData,

  IPPeerClient, Data.DBXDataSnap, Data.DBXCommon, Data.DB, Data.SqlExpr,

  frxClass, frxDBSet, frxExportBaseDialog, frxExportPDF,

  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteDef,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Phys.SQLite,
  FireDAC.Stan.StorageBin,

  dxPrnDev, cxClasses, dxPrnDlg, cxGrid, cxGridExportLink;

type
  TReportOptions = record
    SourceDataSet: TFDMemTable;
    TargetDataSet: TFDMemTable;
    Report: TfrxReport;
    ReportDataSet: TfrxDBDataset;
    ReportTypeName: string;
    ReportFileName: string;
    ReportAction: TReportActions;
  end;

  TReportDM = class(TBaseDM)
    cdsActivityType: TFDMemTable;
    cdsActivityTypeID: TIntegerField;
    cdsActivityTypeNAME: TStringField;
    cdsAgePeriod: TFDMemTable;
    cdsAgePeriodID: TIntegerField;
    cdsAgePeriodNAME: TStringField;
    cdsBank: TFDMemTable;
    cdsBankID: TIntegerField;
    cdsBankNAME: TStringField;
    cdsBankAccountType: TFDMemTable;
    cdsBankAccountTypeID: TIntegerField;
    cdsBankAccountTypeNAME: TStringField;
    cdsContactType: TFDMemTable;
    cdsContactTypeID: TIntegerField;
    cdsContactTypeNAME: TStringField;
    cdsCustomer: TFDMemTable;
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
    cdsPricelist: TFDMemTable;
    cdsPricelistID: TIntegerField;
    cdsPricelistRATE_UNIT_ID: TIntegerField;
    cdsPricelistRATE: TFloatField;
    cdsPricelistNAME: TStringField;
    cdsPricelistINVOICE_DESCRIPTION: TStringField;
    cdsPricelistDESCRIPTION: TStringField;
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
    cdsMasterList: TFDMemTable;
    cdsMasterListID: TIntegerField;
    cdsMasterListNAME: TStringField;
    cdsMasterListDESCRIPTION: TStringField;
    cdsMasterListIS_ACTIVE: TIntegerField;
    cdsMasterListREAD_ONLY: TIntegerField;
    cdsMasterListSCRIPT_ID: TIntegerField;
    dtsMasterList: TDataSource;
    cdsCountry: TFDMemTable;
    dtsCountry: TDataSource;
    cdsContactDetailCo: TFDMemTable;
    cdsContactDetailCoID: TIntegerField;
    cdsContactDetailCoCONTACT_TYPE_ID: TIntegerField;
    cdsContactDetailCoCUSTOMER_ID: TIntegerField;
    cdsContactDetailCoCONTACT_PERSON_ID: TIntegerField;
    cdsContactDetailCoVALUE: TStringField;
    cdsContactDetailCoCOMMENT: TStringField;
    dtsContactDetailCo: TDataSource;
    cdsAddress: TFDMemTable;
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
    dtsAddress: TDataSource;
    cdsContactDetailPerson: TFDMemTable;
    cdsContactDetailPersonID: TIntegerField;
    cdsContactDetailPersonCONTACT_TYPE_ID: TIntegerField;
    cdsContactDetailPersonCUSTOMER_ID: TIntegerField;
    cdsContactDetailPersonCONTACT_PERSON_ID: TIntegerField;
    cdsContactDetailPersonVALUE: TStringField;
    cdsContactDetailPersonCOMMENT: TStringField;
    dtsContactDetailPerson: TDataSource;
    cdsBankingDetail: TFDMemTable;
    cdsBankingDetailID: TIntegerField;
    cdsBankingDetailCUSTOMER_ID: TIntegerField;
    cdsBankingDetailBANK_ID: TIntegerField;
    cdsBankingDetailACCOUNT_TYPE_ID: TIntegerField;
    cdsBankingDetailBRANCH_CODE: TStringField;
    cdsBankingDetailACCOUNT_NO: TStringField;
    cdsBankingDetailFIRST_NAME: TStringField;
    cdsBankingDetailLAST_NAME: TStringField;
    dtsBankingDetail: TDataSource;
    cdsContactPerson: TFDMemTable;
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
    dtsContactPerson: TDataSource;
    cdsDirector: TFDMemTable;
    cdsDirectorID: TIntegerField;
    cdsDirectorCUSTOMER_ID: TIntegerField;
    cdsDirectorSALUTATION_ID: TIntegerField;
    cdsDirectorFIRST_NAME: TStringField;
    cdsDirectorLAST_NAME: TStringField;
    cdsDirectorMIDDLE_NAME: TStringField;
    cdsDirectorTAX_NO: TStringField;
    cdsDirectorMOBILE_PHONE: TStringField;
    cdsDirectorEMAIL_ADDRESS: TStringField;
    dtsDirector: TDataSource;
    cdsBeneficiary: TFDMemTable;
    cdsBeneficiaryID: TIntegerField;
    cdsBeneficiaryCUSTOMER_ID: TIntegerField;
    cdsBeneficiarySALUTATION_ID: TIntegerField;
    cdsBeneficiaryFIRST_NAME: TStringField;
    cdsBeneficiaryLAST_NAME: TStringField;
    cdsBeneficiaryMOBILE_PHONE: TStringField;
    cdsBeneficiaryEMAIL_ADDRESS: TStringField;
    dtsBeneficiary: TDataSource;
    cdsVehicle: TFDMemTable;
    cdsVehicleID: TIntegerField;
    cdsVehicleCUSTOMER_ID: TIntegerField;
    cdsVehicleTHE_YEAR: TIntegerField;
    cdsVehicleVEHICLE_MAKE_ID: TIntegerField;
    cdsVehicleVEHICLE_MODEL: TStringField;
    cdsVehicleREG_NO: TStringField;
    cdsVehicleRENEWAL_DATE: TDateField;
    cdsVehicleMAINTENANCE_PLAN: TIntegerField;
    cdsVehicleCOMMENT: TStringField;
    dtsVehicle: TDataSource;
    rptTimesheetByUser: TfrxReport;
    fdsTimesheetByUser: TfrxDBDataset;
    rptMaster: TfrxReport;
    fdsCustomer: TfrxDBDataset;
    fdsPriceList: TfrxDBDataset;
    fdsBank: TfrxDBDataset;
    fdsMaster: TfrxDBDataset;
    rptCustomer: TfrxReport;
    cdsPricelistRATE_UNIT: TStringField;
    dtsPriceHistory: TDataSource;
    rptPricelist: TfrxReport;
    rptPriceHistory: TfrxReport;
    fdsPriceHistory: TfrxDBDataset;
    cdsPriceHistoryYear: TFDMemTable;
    dtsPriceHistoryYear: TDataSource;
    cdsPriceHistoryYearTHE_YEAR: TIntegerField;
    cdsPriceHistory: TFDMemTable;
    frxPDFExport: TfrxPDFExport;
    dlgPrint: TdxPrintDialog;
    dlgFileSave: TFileSaveDialog;
    cdsCustomerListing: TFDMemTable;
    dtsCustomerListing: TDataSource;
    VbtestConnection: TFDConnection;
    cdsCustomerListingID: TIntegerField;
    cdsCustomerListingCUSTOMER_TYPE_ID: TIntegerField;
    cdsCustomerListingYEAR_END_MONTH_ID: TIntegerField;
    cdsCustomerListingTAX_OFFICE_ID: TIntegerField;
    cdsCustomerListingAR_MONTH_ID: TIntegerField;
    cdsCustomerListingVAT_MONTH_ID: TIntegerField;
    cdsCustomerListingVAT_COUNTRY_ID: TIntegerField;
    cdsCustomerListingVAT_OFFICE_ID: TIntegerField;
    cdsCustomerListingSTATUS_ID: TIntegerField;
    cdsCustomerListingCUSTOMER_TYPE: TStringField;
    cdsCustomerListingNAME: TStringField;
    cdsCustomerListingFIRST_NAME: TStringField;
    cdsCustomerListingLAST_NAME: TStringField;
    cdsCustomerListingINITIALS: TStringField;
    cdsCustomerListingTRADING_AS: TStringField;
    cdsCustomerListingBILL_TO: TStringField;
    cdsCustomerListingCO_NO: TStringField;
    cdsCustomerListingTAX_NO: TStringField;
    cdsCustomerListingVAT_NO: TStringField;
    cdsCustomerListingVAT_CUSTOMS_CODE: TStringField;
    cdsCustomerListingPAYE_UIF_NO: TStringField;
    cdsCustomerListingSDL_NO: TStringField;
    cdsCustomerListingWC_NO: TStringField;
    cdsCustomerListingAR_COMPLETION_DATE: TSQLTimeStampField;
    cdsCustomerListingPASTEL_ACC_CODE: TStringField;
    cdsCustomerListingVB_TAX_ACC_CODE: TStringField;
    cdsCustomerListingIS_PROV_TAX_PAYER: TIntegerField;
    cdsCustomerListingHAS_LIVING_WILL: TIntegerField;
    cdsCustomerListingIS_ORGAN_DONOR: TIntegerField;
    cdsCustomerListingDATE_CREATED: TSQLTimeStampField;
    cdsCustomerListingDATE_MODIFIED: TSQLTimeStampField;
    cdsCustomerListingIS_ACTIVE: TIntegerField;
    cdsCustomerListingEFILING: TStringField;
    cdsCustomerListingEF_USER_NAME: TStringField;
    cdsCustomerListingEF_PASSWORD: TStringField;
    cdsCustomerListingTAX_OFFICE: TStringField;
    cdsCustomerListingVAT_MONTH: TStringField;
    cdsCustomerListingVAT_COUNTRY: TStringField;
    cdsCustomerListingVAT_OFFICE: TStringField;
    cdsCustomerListingAR_MONTH: TStringField;
    cdsCustomerListingCUSTOMER_STATUS: TStringField;
    cdsCustomerListingYEAR_END_MONTH: TStringField;
    cdsCustomerID: TIntegerField;
    cdsCustomerCUSTOMER_TYPE_ID: TIntegerField;
    cdsCustomerYEAR_END_MONTH_ID: TIntegerField;
    cdsCustomerTAX_OFFICE_ID: TIntegerField;
    cdsCustomerAR_MONTH_ID: TIntegerField;
    cdsCustomerVAT_MONTH_ID: TIntegerField;
    cdsCustomerVAT_COUNTRY_ID: TIntegerField;
    cdsCustomerVAT_OFFICE_ID: TIntegerField;
    cdsCustomerSTATUS_ID: TIntegerField;
    cdsCustomerCUSTOMER_TYPE: TStringField;
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
    cdsCustomerYEAR_END_MONTH: TStringField;
    cdsCustomerTAX_OFFICE: TStringField;
    cdsCustomerVAT_MONTH: TStringField;
    cdsCustomerVAT_COUNTRY: TStringField;
    cdsCustomerVAT_OFFICE: TStringField;
    cdsCustomerAR_MONTH: TStringField;
    cdsCustomerCUSTOMER_STATUS: TStringField;
//    procedure PrintReport(SourceDataSet, TargetDataSet: TFDmemTable;
//      ReportFileName: string; Report: TfrxReport; ReportDataSet: TfrxDBDataset;
//      ReportTypeName: string);

    function PrepareReport: TVBPrintExportData;
    procedure PrintReport;
    procedure ExportToExcel(ExportGrid: TcxGrid; FileName: string; OpenAfterExport: Boolean);
    procedure ExportToPDF(FileName: string; OpenAfterExport: Boolean);
    procedure CreatePricehistory;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    FSLTheYear: TStringList;
    FReportAction: TReportActions;
    FPrintExporting: Boolean;
    FReportOption: TReportOptions;
    FFormID: Integer;
    FMasterFormType: TMasterFormTypes;
    FReportFileName: string;
  public
    { Public declarations }
    property SLTheYear: TStringList read FSLTheYear write FSLTheYear;
    property ReportAction: TReportActions read FReportAction write FReportAction;
    property PrintExporting: Boolean read FPrintExporting write FPrintExporting;
    property ReportOption: TReportOptions read FReportOption write FReportOption;
    property FormID: Integer read FFormID write FFormID;
    property MasterFormType: TMasterFormTypes read FMasterFormType write FMasterFormType;
    property ReportFileName: string read FReportFileName write FReportFileName;
  end;

var
  ReportDM: TReportDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses
  RUtils,
  MT_DM;

{$R *.dfm}

{ TReportDM }

procedure TReportDM.CreatePricehistory;
var
  I: Integer;
  LabelHeader, LabelRate: string;
begin
  cdsPriceHistory.FieldDefs.Count;
  cdsPriceHistory.FieldDefs.Clear;
  cdsPriceHistory.FieldDefs.Add('ID', ftInteger, 0);
  cdsPriceHistory.FieldDefs.Add('RATE_UNIT_ID', ftInteger, 0);
  cdsPriceHistory.FieldDefs.Add('NAME', ftString, 200);
  cdsPriceHistory.FieldDefs.Add('DESCRIPTION', ftString, 500);
  cdsPriceHistory.FieldDefs.Add('RATE_UNIT', ftString, 30);

  for I := 0 to FSLTheYear.Count - 1 do
  begin
    cdsPriceHistory.FieldDefs.Add(FSLTheYear[I], ftFloat, 0);
    LabelHeader := 'lblHeader' + (I + 1).ToString;
    TfrxMemoView(rptPriceHistory.FindObject(LabelHeader)).Text := FSLTheYear[I];
    LabelRate := 'lblRate' + (I + 1).ToString;
    TfrxMemoView(rptPriceHistory.FindObject(LabelRate)).DataField := FSLTheYear[I];
  end;

  fdsPriceHistory.Clear;
  fdsPriceHistory.AllObjects;
end;

procedure TReportDM.DataModuleCreate(Sender: TObject);
begin
  inherited;
  FSLTheYear := RUtils.CreateStringList(COMMA, DelimChar);
end;

procedure TReportDM.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(FSLTheYear);
end;

procedure TReportDM.ExportToExcel(ExportGrid: TcxGrid; FileName: string; OpenAfterExport: Boolean);
var
  PrintExportReport: TVBPrintExportData;
begin
  PrintExportReport := TVBPrintExportData.Create;
  try
    PrintExportReport.ReportAction := FReportAction;
    PrintExportReport.Grid := ExportGrid;
    PrintExportReport.ExportFileName := FileName;
    PrintExportReport.OpenAfterExport := OpenAfterExport;
    PrintExportReport.ExportToExcel;
  finally
    PrintExportReport.Free;
  end;
end;

procedure TReportDM.ExportToPDF(FileName: string; OpenAfterExport: Boolean);
var
  PrintExportReport: TVBPrintExportData;
begin
  ReportDM.PrintExporting := True;
  try
    PrintExportReport := PrepareReport;
    PrintExportReport.ExportFileName := FileName;
    PrintExportReport.OpenAfterExport := OpenAfterExport;
    PrintExportReport.ExportToPDF;
  finally
    PrintExportReport.Free;
  end;
end;

procedure TReportDM.PrintReport;
var
  PrintExportReport: TVBPrintExportData;
begin
  ReportDM.PrintExporting := True;
  try
    ReportDM.PrintExporting := True;
    PrintExportReport := PrepareReport;
    PrintExportReport.PrintPreview;
  finally
    PrintExportReport.Free;
  end;
end;

function TReportDM.PrepareReport: TVBPrintExportData;
var
  TheYear: Integer;
  YearClause, TheYearStr: string;
begin
  Result := TVBPrintExportData.Create;
  Result.ReportAction := ReportDM.ReportAction;
  Result.Report := ReportDM.rptMaster;
  Result.ReportDataSet := ReportDM.fdsMaster;
  Result.ReportFileName := {MTDM.ShellResource.ReportFolder + }ReportFileName;

  case FMasterFormType of
    ftActivityType:
      begin
        Result.SourceDataSet := MTDM.cdsActivityType;
        Result.TargetDataSet := cdsActivityType;
        Result.TargetDataSet.Data := Result.SourceDataSet.Data;
        Result.ReportTypeName := 'Activity Type Listing';
      end;

    ftAgePeriod:
      begin
        Result.SourceDataSet := MTDM.cdsAgePeriod;
        Result.TargetDataSet := cdsAgePeriod;
        Result.TargetDataSet.Data := Result.SourceDataSet.Data;
        Result.ReportTypeName := 'Age Period Listing';
      end;

    ftBank:
      begin
        Result.SourceDataSet := MTDM.cdsBank;
        Result.TargetDataSet := cdsBank;
        Result.TargetDataSet.Data := Result.SourceDataSet.Data;
        Result.ReportTypeName := 'Bank Listing';
      end;

    ftBankAccountType:
      begin
        Result.SourceDataSet := MTDM.cdsBankAccountType;
        Result.TargetDataSet := cdsBankAccountType;
        Result.TargetDataSet.Data := Result.SourceDataSet.Data;
        Result.ReportTypeName := 'Bank Account Type Listing';
      end;

    ftContactType:
      begin
        Result.SourceDataSet := MTDM.cdsContactType;
        Result.TargetDataSet := cdsContactType;
        Result.TargetDataSet.Data := Result.SourceDataSet.Data;
        Result.ReportTypeName := 'Contact Type Listing';
      end;

    ftCountry:
      begin
        Result.SourceDataSet := MTDM.cdsCountry;
        Result.TargetDataSet := cdsCountry;
        Result.TargetDataSet.Data := Result.SourceDataSet.Data;
        Result.ReportTypeName := 'Country Listing';
      end;

    ftCustomer:
      begin
        Result.SourceDataSet := MTDM.cdsCustomer;
        Result.TargetDataSet := cdsCustomer;
        Result.ReportTypeName := 'Cutosmer Listing';
      end;

    ftCustomerGroup:
      begin
        Result.SourceDataSet := MTDM.cdsCustomerGroup;
        Result.TargetDataSet := cdsCustomerGroup;
        Result.TargetDataSet.Data := Result.SourceDataSet.Data;
        Result.ReportTypeName := 'Cutosmer Group Listing';
      end;

    ftCustomerStatus:
      begin
        Result.SourceDataSet := MTDM.cdsCustomerStatus;
        Result.TargetDataSet := cdsCustomerStatus;
        Result.TargetDataSet.Data := Result.SourceDataSet.Data;
        Result.ReportTypeName := 'Customer Status Listing';
      end;

    ftCustomerType:
      begin
        Result.SourceDataSet := MTDM.cdsCustomerType;
        Result.TargetDataSet := cdsCustomerType;
        Result.TargetDataSet.Data := Result.SourceDataSet.Data;
        Result.ReportTypeName := 'Customer Type Listing';
      end;

    ftJobFunction:
      begin
        Result.SourceDataSet := MTDM.cdsJobFunction;
        Result.TargetDataSet := cdsJobFunction;
        Result.TargetDataSet.Data := Result.SourceDataSet.Data;
        Result.ReportTypeName := 'Job Function Listing';
      end;

    ftMonthOfYear:
      begin
        Result.SourceDataSet := MTDM.cdsMonthOfYear;
        Result.TargetDataSet := cdsMonthOfYear;
        Result.TargetDataSet.Data := Result.SourceDataSet.Data;
        Result.ReportTypeName := 'Month of Year Listing';
      end;

    ftPricelist:
      begin
        Result.SourceDataSet := nil;

        if ExtractFileName(ReportFileName) = 'PriceList.fr3' then
        begin
          Result.Report := ReportDM.rptPricelist;
          Result.ReportDataSet := ReportDM.fdsPriceList;
          Result.TargetDataSet := cdsPricelist;
          Result.ReportTypeName := 'Price Item Listing';
          VBBaseDM.GetData(42, Result.TargetDataSet, Result.TargetDataSet.Name, ONE_SPACE,
            'C:\Data\Xml\Price List Report.xml', Result.TargetDataSet.UpdateOptions.Generatorname,
            Result.TargetDataSet.UpdateOptions.UpdateTableName);
        end
        else
        begin
          Result.TargetDataSet := cdsPriceHistory;
          Result.Report := ReportDM.rptPriceHistory;
          Result.ReportDataSet := ReportDM.fdsPriceHistory;
        end;
      end;

    ftRateUnit:
      begin
        Result.SourceDataSet := MTDM.cdsRateUnit;
        Result.TargetDataSet := cdsRateUnit;
        Result.TargetDataSet.Data := Result.SourceDataSet.Data;
        Result.ReportTypeName := 'Rate Unit Listing';
      end;

    ftSalutation:
      begin
        Result.SourceDataSet := MTDM.cdsSalutation;
        Result.TargetDataSet := cdsSalutation;
        Result.TargetDataSet.Data := Result.SourceDataSet.Data;
        Result.ReportTypeName := 'Salutation Listing';
      end;

    ftStdActivity:
      begin
        Result.SourceDataSet := MTDM.cdsStdActivity;
        Result.TargetDataSet := cdsStdActivity;
        Result.TargetDataSet.Data := Result.SourceDataSet.Data;
        Result.ReportTypeName := 'Standard Activity Listing';
      end;

    ftTaxoffice:
      begin
        Result.SourceDataSet := MTDM.cdsTaxOffice;
        Result.TargetDataSet := cdsTaxOffice;
        Result.TargetDataSet.Data := Result.SourceDataSet.Data;
        Result.ReportTypeName := 'Tax Office Listing';
      end;

    ftVehicleMake:
      begin
        Result.SourceDataSet := MTDM.cdsVehicleMake;
        Result.TargetDataSet := cdsVehicleMake;
        Result.TargetDataSet.Data := Result.SourceDataSet.Data;
        Result.ReportTypeName := 'Vehicle Make Listing';
      end;
  end;
end;

end.


