unit Report_DM;

interface

uses
  System.SysUtils, System.Classes, Winapi.Windows, Vcl.Forms, Vcl.Dialogs,

  Base_DM, VBBase_DM, CommonValues, VBCommonValues, PrintExportData,

  IPPeerClient, Data.DBXDataSnap, Data.DBXCommon, Data.DB, Data.SqlExpr,

  frxClass, frxDBSet, frxExportBaseDialog, frxExportPDF,

  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteDef,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Phys.SQLite,
  FireDAC.Stan.StorageBin,

  dxPrnDev, cxClasses, dxPrnDlg, cxGridExportLink;

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
    fdsCustomerListing: TfrxDBDataset;
    fdsPriceList: TfrxDBDataset;
    fdsBank: TfrxDBDataset;
    fdsMaster: TfrxDBDataset;
    rptCustomerListing: TfrxReport;
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
//    procedure PrintReport(SourceDataSet, TargetDataSet: TFDmemTable;
//      ReportFileName: string; Report: TfrxReport; ReportDataSet: TfrxDBDataset;
//      ReportTypeName: string);

    procedure PrintReport;
    procedure CreatePricehistory;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    FSLTheYear: TStringList;
    FReportType: TReportActions;
    FPrintExporting: Boolean;
    FReportOption: TReportOptions;
    FFormID: Integer;
    FMasterFormType: TMasterFormTypes;
//    FReportType: TReportTypes;
  public
    { Public declarations }
    property SLTheYear: TStringList read FSLTheYear write FSLTheYear;
    property ReportAction: TReportActions read FReportType write FReportType;
    property PrintExporting: Boolean read FPrintExporting write FPrintExporting;
    property ReportOption: TReportOptions read FReportOption write FReportOption;
    property FormID: Integer read FFormID write FFormID;
    property MasterFormType: TMasterFormTypes read FMasterFormType write FMasterFormType;
  end;

var
  ReportDM: TReportDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses RUtils, MT_DM;

{$R *.dfm}

{ TReportDM }

procedure TReportDM.CreatePricehistory;
var
  I: Integer;
begin
  cdsPriceHistory.FieldDefs.Count;
  cdsPriceHistory.FieldDefs.Clear;
  cdsPriceHistory.FieldDefs.Add('ID', ftInteger, 0);
  cdsPriceHistory.FieldDefs.Add('RATE_UNIT_ID', ftInteger, 0);
  cdsPriceHistory.FieldDefs.Add('NAME', ftString, 200);
  cdsPriceHistory.FieldDefs.Add('DESCRIPTION', ftString, 500);
  cdsPriceHistory.FieldDefs.Add('RATE_UNIT', ftString, 30);

  for I := 0 to FSLTheYear.Count - 1 do
    cdsPriceHistory.FieldDefs.Add(FSLTheYear[I], ftFloat, 0);

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

//procedure TReportDM.PrintReport(SourceDataSet, TargetDataSet: TFDmemTable;
//  ReportFileName: string; Report: TfrxReport; ReportDataSet: TfrxDBDataset;
//  ReportTypeName: string);

procedure TReportDM.PrintReport;
var
  PrintExportReport: TPrintExportData;
begin
  ReportDM.PrintExporting := True;
  PrintExportReport := TPrintExportData.Create;
  try
    PrintExportReport.ReportAction := ReportDM.ReportAction;
    PrintExportReport.Report := ReportDM.rptMaster;
    PrintExportReport.ReportDataSet := ReportDM.fdsMaster;
    PrintExportReport.ReportFileName := MTDM.ShellResource.ReportFolder + 'MasterGenericTableTemplate.fr3';

    case FMasterFormType of
      ftActivityType:
        begin
          PrintExportReport.SourceDataSet := MTDM.cdsActivityType;
          PrintExportReport.TargetDataSet := ReportDM.cdsActivityType;
          PrintExportReport.ReportTypeName := 'Activity Type Listing';
        end;
      ftAgePeriod:
        begin
          PrintExportReport.SourceDataSet := MTDM.cdsAgePeriod;
          PrintExportReport.TargetDataSet := ReportDM.cdsAgePeriod;
          PrintExportReport.ReportTypeName := 'Age Period Listing';
        end;
      ftBankAccountType:
        begin
          PrintExportReport.SourceDataSet := MTDM.cdsBankAccountType;
          PrintExportReport.TargetDataSet := ReportDM.cdsBankAccountType;
          PrintExportReport.ReportTypeName := 'Bank Account Type Listing';
        end;
      ftBank:
        begin
          PrintExportReport.SourceDataSet := MTDM.cdsBank;
          PrintExportReport.TargetDataSet := ReportDM.cdsBank;
          PrintExportReport.ReportTypeName := 'Bank Listing';
        end;
      ftContactType:
        begin
          PrintExportReport.SourceDataSet := MTDM.cdsContactType;
          PrintExportReport.TargetDataSet := ReportDM.cdsContactType;
          PrintExportReport.ReportTypeName := 'Contact Type Listing';
        end;
      ftCountry:
        begin
          PrintExportReport.SourceDataSet := MTDM.cdsCountry;
          PrintExportReport.TargetDataSet := ReportDM.cdsCountry;
          PrintExportReport.ReportTypeName := 'Country Listing';
        end;
      ftCustomerGroup:
        begin
          PrintExportReport.SourceDataSet := MTDM.cdsCustomerGroup;
          PrintExportReport.TargetDataSet := ReportDM.cdsCustomerGroup;
          PrintExportReport.ReportTypeName := 'Cutosmer Group Listing';
        end;
      ftCustomerStatus:
        begin
          PrintExportReport.SourceDataSet := MTDM.cdsCustomerStatus;
          PrintExportReport.TargetDataSet := ReportDM.cdsCustomerStatus;
          PrintExportReport.ReportTypeName := 'Customer Status Listing';
        end;
      ftCustomerType:
        begin
          PrintExportReport.SourceDataSet := MTDM.cdsCustomerType;
          PrintExportReport.TargetDataSet := ReportDM.cdsCustomerType;
          PrintExportReport.ReportTypeName := 'Customer Type Listing';
        end;
      ftJobFunction:
        begin
          PrintExportReport.SourceDataSet := MTDM.cdsJobFunction;
          PrintExportReport.TargetDataSet := ReportDM.cdsJobFunction;
          PrintExportReport.ReportTypeName := 'Job Function Listing';
        end;
      ftMonthOfYear:
        begin
          PrintExportReport.SourceDataSet := MTDM.cdsMonthOfYear;
          PrintExportReport.TargetDataSet := ReportDM.cdsMonthOfYear;
          PrintExportReport.ReportTypeName := 'Mont of Year Listing';
        end;
      ftRateUnit:
        begin
          PrintExportReport.SourceDataSet := MTDM.cdsRateUnit;
          PrintExportReport.TargetDataSet := ReportDM.cdsRateUnit;
          PrintExportReport.ReportTypeName := 'Rate Unit Listing';
        end;
      ftSalutation:
        begin
          PrintExportReport.SourceDataSet := MTDM.cdsSalutation;
          PrintExportReport.TargetDataSet := ReportDM.cdsSalutation;
          PrintExportReport.ReportTypeName := 'Salutation Listing';
        end;
      ftStdActivity:
        begin
          PrintExportReport.SourceDataSet := MTDM.cdsStdActivity;
          PrintExportReport.TargetDataSet := ReportDM.cdsStdActivity;
          PrintExportReport.ReportTypeName := 'Standard Activity Listing';
        end;
      ftTaxoffice:
        begin
          PrintExportReport.SourceDataSet := MTDM.cdsTaxOffice;
          PrintExportReport.TargetDataSet := ReportDM.cdsTaxOffice;
          PrintExportReport.ReportTypeName := 'Tax Office Listing';
        end;
      ftVehicleMake:
        begin
          PrintExportReport.SourceDataSet := MTDM.cdsVehicleMake;
          PrintExportReport.TargetDataSet := ReportDM.cdsVehicleMake;
          PrintExportReport.ReportTypeName := 'Vehicle Make Listing';
        end;
    end;

    PrintExportReport.PrintPreview;
//  TargetDataSet.Close;
//  TargetDataSet.Data := SourceDataSet.Data;
//  fdsMaster.DataSet := TargetDataSet;
//  Report.DataSets.Clear;
//  Report.DataSets.Add(fdsMaster);
//  Report.LoadFromFile(ReportFileName, False);
//  TfrxMemoView(Report.FindObject('lblReportTypeName')).Text := ReportTypeName;

//  case ReportAction of
//    raPreview, raPrint: // Preview & Print
//      begin
//        if ReportDM.rptMaster.PrepareReport then
//          if ReportAction = raPreview then
//            ReportDM.rptMaster.ShowPreparedReport
//          else
//          begin
//            if dlgPrint.Execute then
//            begin
//              ReportDM.rptMaster.PrintOptions.Copies :=
//                dlgPrint.DialogData.Copies;
//
//              ReportDM.rptMaster.Print;
//            end;
//          end;
//      end;
//  end;

  finally
    PrintExportReport.Free;
  end;
end;

end.

