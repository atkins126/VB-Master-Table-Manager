program MasterTableManager;

uses
  Vcl.Forms,
  Vcl.Dialogs,
  System.Classes,
  Winapi.Windows,
  System.IOUtils,
  System.SysUtils,
  Vcl.Controls,
  System.Types,
  System.DateUtils,
  System.Win.Registry,
  Vcl.Graphics,
  Winapi.ShellApi,
  System.Variants,
  System.UITypes,
  ShlObj,
  Base_DM in '..\..\..\..\Lib\Base_DM.pas' {BaseDM: TDataModule},
  Base_Frm in '..\..\..\..\Lib\Base_Frm.pas' {BaseFrm},
  BaseLayout_Frm in '..\..\..\..\Lib\BaseLayout_Frm.pas' {BaseLayoutFrm},
  CommonFunction in '..\..\..\..\Lib\CommonFunction.pas',
  CommonMethods in '..\..\..\..\Lib\CommonMethods.pas',
  CommonValues in '..\..\..\..\Lib\CommonValues.pas',
  MsgDialog_Frm in '..\..\..\..\Lib\MsgDialog_Frm.pas' {msgDialogFrm},
  Progress_Frm in '..\..\..\..\Lib\Progress_Frm.pas' {ProgressFrm},
  RUtils in '..\..\..\..\Lib\RUtils.pas',
  MyClasses in '..\..\..\..\Lib\MyClasses.pas',
  About_Frm in '..\..\..\..\Lib\About_Frm.pas' {AboutFrm},
  VBCommonValues in '..\..\Lib\VBCommonValues.pas',
  Main_Frm in 'General\Main_Frm.pas' {MainFrm},
  MT_DM in 'Data Modules\MT_DM.pas' {MTDM: TDataModule},
  BaseGrid_Frm in '..\Lib\BaseGrid_Frm.pas' {BaseGridFrm},
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
  VBProxyClass in '..\Lib\VBProxyClass.pas';

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
    Beep;
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
      Beep;
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

