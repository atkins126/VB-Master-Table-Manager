program MasterTableManager;

uses
  Vcl.Forms,
  System.SysUtils,
  Vcl.Dialogs,
  Winapi.Windows,
  System.UITypes,
  Base_DM in '..\..\..\..\Lib\Base_DM.pas' {BaseDM: TDataModule},
  Base_Frm in '..\..\..\..\Lib\Base_Frm.pas' {BaseFrm},
  BaseLayout_Frm in '..\..\..\..\Lib\BaseLayout_Frm.pas' {BaseLayoutFrm},
  CommonFunctions in '..\..\..\..\Lib\CommonFunctions.pas',
  CommonMethods in '..\..\..\..\Lib\CommonMethods.pas',
  CommonValues in '..\..\..\..\Lib\CommonValues.pas',
  MsgDialog_Frm in '..\..\..\..\Lib\MsgDialog_Frm.pas' {msgDialogFrm},
  Progress_Frm in '..\..\..\..\Lib\Progress_Frm.pas' {ProgressFrm},
  RUtils in '..\..\..\..\Lib\RUtils.pas',
  About_Frm in '..\..\..\..\Lib\About_Frm.pas' {AboutFrm},
  VBCommonValues in '..\..\Lib\VBCommonValues.pas',
  Main_Frm in 'General\Main_Frm.pas' {MainFrm},
  MT_DM in 'Data Modules\MT_DM.pas' {MTDM: TDataModule},
  ActivityType_Frm in 'General\ActivityType_Frm.pas' {ActivityTypeFrm},
  AgePeriod_Frm in 'General\AgePeriod_Frm.pas' {AgePeriodFrm},
  Bank_Frm in 'General\Bank_Frm.pas' {BankFrm},
  BankAccountType_Frm in 'General\BankAccountType_Frm.pas' {BankAccountTypeFrm},
  ContactType_Frm in 'General\ContactType_Frm.pas' {ContactTypeFrm},
  Country_Frm in 'General\Country_Frm.pas' {CountryFrm},
  CustomerGroup_Frm in 'General\CustomerGroup_Frm.pas' {CustomerGroupFrm},
  CustomerStatus_Frm in 'General\CustomerStatus_Frm.pas' {CustomerStatusFrm},
  CustomerType_Frm in 'General\CustomerType_Frm.pas' {CustomerTypeFrm},
  JobFunction_Frm in 'General\JobFunction_Frm.pas' {JobFunctionFrm},
  MonthOfYear_Frm in 'General\MonthOfYear_Frm.pas' {MonthOfYearFrm},
  PriceList_Frm in 'General\PriceList_Frm.pas' {PriceListFrm},
  RateUnit_Frm in 'General\RateUnit_Frm.pas' {RateUnitFrm},
  Salutation_Frm in 'General\Salutation_Frm.pas' {SalutationFrm},
  StdActivity_Frm in 'General\StdActivity_Frm.pas' {StdActivityFrm},
  TaxOffice_Frm in 'General\TaxOffice_Frm.pas' {TaxOfficeFrm},
  VehicleMake_Frm in 'General\VehicleMake_Frm.pas' {VehicleMakeFrm},
  VBBase_DM in '..\..\Lib\VBBase_DM.pas' {VBBaseDM: TDataModule},
  Lookup_DM in 'Data Modules\Lookup_DM.pas' {LookupDM: TDataModule},
  Customer_Frm in 'General\Customer_Frm.pas' {CustomerFrm},
  BaseCustomerEdit_Frm in '..\..\Lib\BaseCustomerEdit_Frm.pas' {BaseCustomerEditFrm},
  CompanyContactDetail_Frm in 'General\CompanyContactDetail_Frm.pas' {CompanyContactDetailFrm},
  AddressDetail_Frm in 'General\AddressDetail_Frm.pas' {AddressDetailFrm},
  PersonContactDetail_Frm in 'General\PersonContactDetail_Frm.pas' {PersonContactDetailFrm},
  BankingDetail_Frm in 'General\BankingDetail_Frm.pas' {BankingDetailFrm},
  DirectorDetail_Frm in 'General\DirectorDetail_Frm.pas' {DirectorDetailFrm},
  BeneficiaryDetail_Frm in 'General\BeneficiaryDetail_Frm.pas' {BeneficiaryDetailFrm},
  VehicleDetail_Frm in 'General\VehicleDetail_Frm.pas' {VehicleDetailFrm},
  ContactPerson_Frm in 'General\ContactPerson_Frm.pas' {ContactPersonFrm},
  Report_DM in 'Data Modules\Report_DM.pas' {ReportDM: TDataModule},
  MyClasses in '..\..\..\..\Lib\Classes\MyClasses.pas',
  VBPrintExportData in '..\..\Lib\VBPrintExportData.pas',
  BaseGrid_Frm in 'Lib\BaseGrid_Frm.pas' {BaseGridFrm},
  CustomerReportSelection_Frm in 'General\CustomerReportSelection_Frm.pas' {CustomerReportSelectionFrm},
  AccountHolder_Frm in 'General\AccountHolder_Frm.pas' {AccountHolderFrm},
  CustomerEdit_Frm in 'General\CustomerEdit_Frm.pas' {CustomerEditFrm},
  TrusteeDetail_Frm in 'General\TrusteeDetail_Frm.pas' {TrusteeDetailFrm},
  ShareHolderDetail_Frm in 'General\ShareHolderDetail_Frm.pas' {ShareHolderDetailFrm},
  HeirDetail_Frm in 'General\HeirDetail_Frm.pas' {HeirDetailFrm},
  DirectorCompanyLink_Frm in 'General\DirectorCompanyLink_Frm.pas' {DirectorCompanyLinkFrm},
  Director_Frm in 'General\Director_Frm.pas' {DirectorFrm},
  VBProxyClasses in '..\Lib\VBProxyClasses.pas',
  Shareholder_Frm in 'General\Shareholder_Frm.pas' {ShareholderFrm};

{$R *.res}

var
  SwitchPrefix: TSysCharSet;
  LaunchDrive: string;

const
  APP_NAME = 'MasterTableManager.exe';

begin
{$IFDEF DEBUG}
  ReportMemoryLeaksOnShutdown := True;
{$ENDIF}
  Application.Title := 'Master Table Manager';
  LaunchDrive := ExtractFileDrive(Application.ExeName);
  SwitchPrefix := ['/'];
{$IFDEF RELEASE}
  if not FindCmdLineSwitch('VB_SHELL', SwitchPrefix, True) then
  begin
    System.SysUtils.Beep;
    TaskMessageDlg('Task Launch Error',
      Application.Title + ' can only run through VB Shell.' + CRLF +
      'Please launch RC Shell to access this task.',
      mtError,
      [mbOK], 0);

    Application.Terminate;
    Application.ShowMainForm := False;
  end
  else
{$ENDIF}if (AnsiCompareText(LaunchDrive, 'C:') <> 0) then
    begin
      System.SysUtils.Beep;
      TaskMessageDlg('Applicaton Launch Error',
        'You cannot run ' + Application.Title + ' from drive ' + LaunchDrive, mtError,
        [mbOK], 0);
      Application.Terminate;
      Application.ShowMainForm := False;
    end
    else
    begin
      Application.Initialize;
      Application.MainFormOnTaskbar := True;
      Application.CreateForm(TMainFrm, MainFrm);
      Application.Run;
    end;
end.


