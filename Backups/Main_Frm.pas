unit Main_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, System.ImageList, Vcl.ImgList, Vcl.Controls,
  Vcl.Dialogs, System.Actions, Vcl.ActnList, System.StrUtils,

  VBProxyClass, BaseLayout_Frm,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxImageList, dxLayoutLookAndFeels, cxClasses, cxStyles,
  dxLayoutContainer, dxLayoutControl, dxStatusBar, dxSkinsForm, dxBar, cxPC,
  dxBarBuiltInMenu, cxContainer, cxEdit, cxCheckBox, dxBarExtItems, dxScreenTip,
  dxCustomHint, cxHint, cxTextEdit;

type
  TMainFrm = class(TBaseLayoutFrm)
    grpMain: TdxLayoutGroup;
    litToolbar: TdxLayoutItem;
    litGrid: TdxLayoutItem;
    barManager: TdxBarManager;
    docToolbar: TdxBarDockControl;
    barToolbar: TdxBar;
    btnExit: TdxBarLargeButton;
    btnMasterList: TdxBarLargeButton;
    btnClosemasterTable: TdxBarLargeButton;
    sknController: TdxSkinController;
    sbrMain: TdxStatusBar;
    pagMain: TcxPageControl;
    cntShowMasterList: TdxBarControlContainerItem;
    cbxShowMasterList: TcxCheckBox;
    actExitApp: TAction;
    actCloseScreen: TAction;
    actActivityType: TAction;
    actAgePeriod: TAction;
    actBank: TAction;
    actBankAccountType: TAction;
    actContactType: TAction;
    actCountry: TAction;
    actCustomer: TAction;
    actCustomerGroup: TAction;
    actCustomerStatus: TAction;
    actCustomerType: TAction;
    actJobFunction: TAction;
    actMonthOfYear: TAction;
    actPriceList: TAction;
    actRateUnit: TAction;
    actSalutation: TAction;
    actSTDActivity: TAction;
    actTaxOffice: TAction;
    actVehicleMake: TAction;
    actLaunchMasterTable: TAction;
    repScreenTip: TdxScreenTipRepository;
    tipExit: TdxScreenTip;
    tipCloseScreen: TdxScreenTip;
    tipLaunchMasterTableManager: TdxScreenTip;
    styHintController: TcxHintStyleController;
    popMasterTable: TdxBarPopupMenu;
    btnActivityType: TdxBarButton;
    btnAgePeriod: TdxBarButton;
    btnBankAccountType: TdxBarButton;
    btnBank: TdxBarButton;
    btnContactType: TdxBarButton;
    btnCountry: TdxBarButton;
    btnCustomerGroup: TdxBarButton;
    btnCustomerStatus: TdxBarButton;
    btnCustomerType: TdxBarButton;
    btnJobFunction: TdxBarButton;
    btnMonthOfyear: TdxBarButton;
    btnPriceList: TdxBarButton;
    btnRateUnit: TdxBarButton;
    btnStdActivity: TdxBarButton;
    btnSalutaion: TdxBarButton;
    btnTaxOffice: TdxBarButton;
    btnVehicleMake: TdxBarButton;
    btnCustomer: TdxBarButton;
    function CreateNewTabSheet(TabSheetName, TabSheetCaption: string; PageControl: TcxPageControl; Action: TAction): TcxTabSheet;
    procedure UpdateApplicationSkin(SkinResourceFileName, SkinName: string);
    procedure CloseTheForm(PageIndex: Integer; FormToClose: TForm; ActionTag: Integer; Action: TAction);

    procedure FormCreate(Sender: TObject);
    procedure DoLaunchMasterTable(Sender: TObject);
    procedure pagMainChange(Sender: TObject);
    procedure DoExitApp(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DoActivityType(Sender: TObject);
    procedure btnMasterListClick(Sender: TObject);
    procedure DoCloseScreen(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainFrm: TMainFrm;

implementation

{$R *.dfm}

uses
  MT_DM,
  MsgDialog_Frm,
  // Master table forms.
  ActivityType_Frm,
  AgePeriod_Frm,
  Bank_Frm,
  BankAccountType_Frm,
  ContactType_Frm,
  Country_Frm,
  CustomerGroup_Frm,
  CustomerStatus_Frm,
  CustomerType_Frm,
  JobFunction_Frm,
  MonthOfYear_Frm,
  PriceList_Frm,
  RateUnit_Frm,
  Salutation_Frm,
  StdActivity_Frm,
  TaxOffice_Frm,
  VehicleMake_Frm,
  RUtils,
  CommonMethods,
  VBCommonValues,
  CommonFunction,
  VBBase_DM,
  Base_Frm,
  Lookup_DM, Customer_Frm;

procedure TMainFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Caption := 'Master Table Manager';
  layMain.LayoutLookAndFeel := lafCustomSkin;
  cntShowMasterList.Control := cbxShowMasterList;
  styHintController.HintHidePause :=  5000;
end;

procedure TMainFrm.FormShow(Sender: TObject);
var
  VBShell, ErrorMsg: string;
  SkinResourceFileName, SkinName: string;
  ReleaseVersion: Boolean;
  Day, Month, Year: Word;
begin
  inherited;
  Screen.Cursor := crHourglass;

//  FLoadingForm := True;
  dxBarMakeInactiveImagesDingy := False;
  FSwitchPrefix := ['/'];
//  FCallingFromShell := FindCmdLineSwitch('RC_SHELL', RCShell, True, [clstValueNextParam, clstValueAppended]);

//  sbrMain.Panels[0].Text := 'VB Apps Ver: ' +
//    RUtils.GetBuildInfo(Application.ExeName, rbLongFormat) + ' - ' +
//    verInfo.StringFileInfo['LegalTrademarks'];

//    sbrMain.Panels[0].Text := 'Master Table Manager Ver: ' +
//      RUtils.GetBuildInfo(Application.ExeName, rbLongFormat);

  if MsgDialogFrm = nil then
    MsgDialogFrm := TMsgDialogFrm.Create(nil);

  try
{$IFDEF DEBUG}
    ErrorMsg := '';
    if not LocalDSServerIsRunning(LOCAL_VB_SHELL_DS_SERVER, ErrorMsg) then
    begin
//      sbrMain.Panels[1].Text := 'Not Connected to Datasnap server';
      Beep;
      DisplayMsg(
        Application.Title,
        Application.Title + ' - Datasnap Server Connection Error',
        'Could not establish a connection to the requested Datasnap server.' + CRLF + CRLF +
        ErrorMsg
        + CRLF + CRLF + 'Please ensure that the local ' + Application.Title + ' Datasnap '
        + CRLF + 'server is running and try again.',
        mtError,
        [mbOK]
        );
    end;
{$ENDIF}
    ReleaseVersion := True;
{$IFDEF DEBUG}
    ReleaseVersion := False;
{$ENDIF}

    if VBBaseDM = nil then
      VBBaseDM := TVBBaseDM.Create(nil);

    if MTDM = nil then
      MTDM := TMTDM.Create(nil);

    if LookupDM = nil then
      LookupDM := TLookupDM.Create(nil);

    sbrMain.Panels[1].Text := 'User: ' + VBBaseDM.FUserData.UserName;
    VBBaseDM.SetConnectionProperties;
    VBBaseDM.sqlConnection.Open;
    VBBaseDM.FClient := TVBServerMethodsClient.Create(VBBaseDM.sqlConnection.DBXConnection);

    MTDM.FShellResource := VBBaseDM.GetShellResource;
    SkinResourceFileName := {MTDM.ShellResource.RootFolder + }RESOURCE_FOLDER + SKIN_RESOURCE_FILE;
    SkinName := MTDM.ShellResource.SkinName;

    if Length(Trim(SkinName)) = 0 then
      SkinName := DEFAULT_SKIN_NAME;

    UpdateApplicationSkin(SkinResourceFileName, SkinName);

    if BaseFrm = nil then
      BaseFrm := TBaseFrm.Create(nil);

    DecodeDate(Date, Year, Month, Day);
    VBBaseDM.FCurrentPeriod := Year * 100 + Month;
    VBBaseDM.FCurrentMonth := VBBaseDM.FCurrentPeriod mod 100;

    VBBaseDM.GetData(35, MTDM.cdsMasterList, MTDM.cdsMasterList.Name, '',
      'C:\Data\Xml\Master list.xml', MTDM.cdsMasterList.UpdateOptions.Generatorname,
      MTDM.cdsMasterList.UpdateOptions.UpdateTableName);

    if FCallingFromShell then
      SendTheMessage(WM_APP_READY, 0, 0)
    else
      WindowState := wsMaximized;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TMainFrm.pagMainChange(Sender: TObject);
begin
  inherited;
//
end;

procedure TMainFrm.UpdateApplicationSkin(SkinResourceFileName, SkinName: string);
begin
  sknController.BeginUpdate;
  try
    sknController.NativeStyle := False;
    sknController.UseSkins := True;
    if dxSkinsUserSkinLoadFromFile(SkinResourceFileName, SkinName) then
    begin
      sknController.SkinName := 'UserSkin';
      RootLookAndFeel.SkinName := 'UserSkin';
      barManager.LookAndFeel.SkinName := 'UserSkin';
      lafCustomSkin.LookAndFeel.SkinName := 'UserSkin';
    end
    else
    begin
      sknController.SkinName := DEFAULT_SKIN_NAME;
      RootLookAndFeel.SkinName := DEFAULT_SKIN_NAME;
      barManager.LookAndFeel.SkinName := DEFAULT_SKIN_NAME;
      lafCustomSkin.LookAndFeel.SkinName := DEFAULT_SKIN_NAME;
    end;
  finally
    sknController.Refresh;
    sknController.EndUpdate;
  end;
end;

procedure TMainFrm.DoActivityType(Sender: TObject);
begin
  inherited;
  MTDM.FActionTag := TAction(Sender).Tag;
  TAction(Sender).Enabled := False;
  actLaunchMasterTable.Execute;
end;

procedure TMainFrm.DoCloseScreen(Sender: TObject);
var
  ActionTag: Integer;
begin
  inherited;
  ActionTag := StrToInt(AnsiRightStr(pagMain.ActivePage.Name, 2));
  case ActionTag of
    0: CloseTheForm(pagMain.ActivePageIndex, ActivityTypeFrm, actActivityType.Tag, actActivityType);
    1: CloseTheForm(pagMain.ActivePageIndex, AgePeriodFrm, actAgePeriod.Tag, actAgePeriod);
    2: CloseTheForm(pagMain.ActivePageIndex, BankFrm, actBank.Tag, actBank);
    3: CloseTheForm(pagMain.ActivePageIndex, BankAccountTypeFrm, actBankAccountType.Tag, actBankAccountType);
    4: CloseTheForm(pagMain.ActivePageIndex, ContactTypeFrm, actContactType.Tag, actContactType);
    5: CloseTheForm(pagMain.ActivePageIndex, CountryFrm, actCountry.Tag, actCountry);
    6: CloseTheForm(pagMain.ActivePageIndex, CustomerFrm, actCustomer.Tag, actCustomer);
    7: CloseTheForm(pagMain.ActivePageIndex, CustomerGroupFrm, actCustomerGroup.Tag, actCustomerGroup);
    8: CloseTheForm(pagMain.ActivePageIndex, CustomerStatusFrm, actCustomerStatus.Tag, actCustomerStatus);
    9: CloseTheForm(pagMain.ActivePageIndex, CustomerTypeFrm, actCustomerType.Tag, actCustomerType);
    10: CloseTheForm(pagMain.ActivePageIndex, JobFunctionFrm, actJobFunction.Tag, actJobFunction);
    11: CloseTheForm(pagMain.ActivePageIndex, MonthOfYearFrm, actMonthOfYear.Tag, actMonthOfYear);
    12: CloseTheForm(pagMain.ActivePageIndex, PriceListFrm, actPriceList.Tag, actPriceList);
    13: CloseTheForm(pagMain.ActivePageIndex, RateUnitFrm, actRateUnit.Tag, actRateUnit);
    14: CloseTheForm(pagMain.ActivePageIndex, SalutationFrm, actSalutation.Tag, actSalutation);
    15: CloseTheForm(pagMain.ActivePageIndex, StdActivityFrm, actSTDActivity.Tag, actSTDActivity);
    16: CloseTheForm(pagMain.ActivePageIndex, TaxOfficeFrm, actTaxOffice.Tag, actTaxOffice);
    17: CloseTheForm(pagMain.ActivePageIndex, VehicleMakeFrm, actVehicleMake.Tag, actVehicleMake);
  end;

//  case MTDM.FActionTag of
//    0: CloseTheForm(pagMain.ActivePageIndex, ActivityTypeFrm, 0, actActivityType);
//    1: CloseTheForm(pagMain.ActivePageIndex, AgePeriodFrm, 0, actAgePeriod);
////    2: CloseTheForm(pagMain.ActivePageIndex, BILIFrm, 0, actBILI);
////    3: CloseTheForm(pagMain.ActivePageIndex, SDALFrm, 0, actSDAL);
////    4: CloseTheForm(pagMain.ActivePageIndex, PPHIFrm, 0, actPPHI);
////    5: CloseTheForm(pagMain.ActivePageIndex, WUSEFrm, 0, actWUSE);
////    6: CloseTheForm(pagMain.ActivePageIndex, CoExecPlanFrm, 0, actCoExecPlan);
////    8: CloseTheForm(pagMain.ActivePageIndex, MOPicklistFrm, 0, actGetMOPicklist);
//  end;

  if pagMain.PageCount = 0 then
    RUtils.PressKey(VK_HOME, [], False);

  actCloseScreen.Enabled := pagMain.PageCount > 0;
  //    lucFSTool.SetFocus();
end;

procedure TMainFrm.DoExitApp(Sender: TObject);
begin
  inherited;
  if MsgDialogFrm <> nil then
    FreeAndNil(MsgDialogFrm);
  MainFrm.Close;
end;

procedure TMainFrm.DoLaunchMasterTable(Sender: TObject);
var
  NewTabSheet: TcxTabSheet;
  TabSheetName: string;
begin
  inherited;
  TabSheetName := RUtils.LPad(MTDM.FActionTag.ToString, '0', 2);
  case MTDM.FActionTag of
    0: // Avtivity Type
      begin
        try
          NewTabSheet := CreateNewTabSheet('ACTIVITY_TYPE' + TabSheetName, 'Activity Type', pagMain, actActivityType);

          if ActivityTypeFrm <> nil then
            FreeAndNil(ActivityTypeFrm);

          if ActivityTypeFrm = nil then
            ActivityTypeFrm := TActivityTypeFrm.Create(NewTabSheet);

          pagMain.ActivePageIndex := pagMain.PageCount - 1;
          ActivityTypeFrm.BorderStyle := bsNone;
          ActivityTypeFrm.Parent := NewTabSheet;
          ActivityTypeFrm.ManualDock(pagMain);
          ActivityTypeFrm.Align := alClient;
          ActivityTypeFrm.Show;
        finally
          NewTabSheet.Visible := True;
          NewTabSheet.TabVisible := True;
          pagMain.Repaint;
          docToolbar.Enabled := True;
          Screen.Cursor := crDefault;
        end;
      end;

    1: // Age Period
      begin
        try
          NewTabSheet := CreateNewTabSheet('AGE_PERIOD' + TabSheetName, 'Age Period', pagMain, actAgePeriod);

          if AgePeriodFrm <> nil then
            FreeAndNil(AgePeriodFrm);

          if AgePeriodFrm = nil then
            AgePeriodFrm := TAgePeriodFrm.Create(NewTabSheet);

          pagMain.ActivePageIndex := pagMain.PageCount - 1;
          AgePeriodFrm.BorderStyle := bsNone;
          AgePeriodFrm.Parent := NewTabSheet;
          AgePeriodFrm.ManualDock(pagMain);
          AgePeriodFrm.Align := alClient;
          AgePeriodFrm.Show;
        finally
          NewTabSheet.Visible := True;
          NewTabSheet.TabVisible := True;
          pagMain.Repaint;
          docToolbar.Enabled := True;
          Screen.Cursor := crDefault;
        end;
      end;

    2: // Bank
      begin
        try
          NewTabSheet := CreateNewTabSheet('BANK' + TabSheetName, 'Bank', pagMain, actBankAccountType);

          if BankFrm <> nil then
            FreeAndNil(BankFrm);

          if BankFrm = nil then
            BankFrm := TBankFrm.Create(NewTabSheet);

          pagMain.ActivePageIndex := pagMain.PageCount - 1;
          BankFrm.BorderStyle := bsNone;
          BankFrm.Parent := NewTabSheet;
          BankFrm.ManualDock(pagMain);
          BankFrm.Align := alClient;
          BankFrm.Show;
        finally
          NewTabSheet.Visible := True;
          NewTabSheet.TabVisible := True;
          pagMain.Repaint;
          docToolbar.Enabled := True;
          Screen.Cursor := crDefault;
        end;
      end;

    3: // Bank Account Type
      begin
        try
          NewTabSheet := CreateNewTabSheet('BANK_ACCOUNT_TYPE' + TabSheetName, 'Bank Account Type', pagMain, actBankAccountType);

          if BankAccountTypeFrm <> nil then
            FreeAndNil(BankAccountTypeFrm);

          if BankAccountTypeFrm = nil then
            BankAccountTypeFrm := TBankAccountTypeFrm.Create(NewTabSheet);

          pagMain.ActivePageIndex := pagMain.PageCount - 1;
          BankAccountTypeFrm.BorderStyle := bsNone;
          BankAccountTypeFrm.Parent := NewTabSheet;
          BankAccountTypeFrm.ManualDock(pagMain);
          BankAccountTypeFrm.Align := alClient;
          BankAccountTypeFrm.Show;
        finally
          NewTabSheet.Visible := True;
          NewTabSheet.TabVisible := True;
          pagMain.Repaint;
          docToolbar.Enabled := True;
          Screen.Cursor := crDefault;
        end;
      end;

    4: // Contact Type
      begin
        try
          NewTabSheet := CreateNewTabSheet('CONTACT_TYPE' + TabSheetName, 'Contact Type', pagMain, actContactType);

          if ContactTypeFrm <> nil then
            FreeAndNil(ContactTypeFrm);

          if ContactTypeFrm = nil then
            ContactTypeFrm := TContactTypeFrm.Create(NewTabSheet);

          pagMain.ActivePageIndex := pagMain.PageCount - 1;
          ContactTypeFrm.BorderStyle := bsNone;
          ContactTypeFrm.Parent := NewTabSheet;
          ContactTypeFrm.ManualDock(pagMain);
          ContactTypeFrm.Align := alClient;
          ContactTypeFrm.Show;
        finally
          NewTabSheet.Visible := True;
          NewTabSheet.TabVisible := True;
          pagMain.Repaint;
          docToolbar.Enabled := True;
          Screen.Cursor := crDefault;
        end;
      end;

    5: // Country
      begin
        try
          NewTabSheet := CreateNewTabSheet('COUNTRY' + TabSheetName, 'Country', pagMain, actCountry);

          if CountryFrm <> nil then
            FreeAndNil(CountryFrm);

          if CountryFrm = nil then
            CountryFrm := TCountryFrm.Create(NewTabSheet);

          pagMain.ActivePageIndex := pagMain.PageCount - 1;
          CountryFrm.BorderStyle := bsNone;
          CountryFrm.Parent := NewTabSheet;
          CountryFrm.ManualDock(pagMain);
          CountryFrm.Align := alClient;
          CountryFrm.Show;
        finally
          NewTabSheet.Visible := True;
          NewTabSheet.TabVisible := True;
          pagMain.Repaint;
          docToolbar.Enabled := True;
          Screen.Cursor := crDefault;
        end;
      end;

    6: // Customer
      begin
        try
          NewTabSheet := CreateNewTabSheet('CUSTOMER' + TabSheetName, 'Customer', pagMain, actCustomer);

          if CustomerFrm <> nil then
            FreeAndNil(CustomerFrm);

          if CustomerFrm = nil then
            CustomerFrm := TCustomerFrm.Create(NewTabSheet);

          pagMain.ActivePageIndex := pagMain.PageCount - 1;
          CustomerFrm.BorderStyle := bsNone;
          CustomerFrm.Parent := NewTabSheet;
          CustomerFrm.ManualDock(pagMain);
          CustomerFrm.Align := alClient;
          CustomerFrm.Show;
        finally
          NewTabSheet.Visible := True;
          NewTabSheet.TabVisible := True;
          pagMain.Repaint;
          docToolbar.Enabled := True;
          Screen.Cursor := crDefault;
        end;
      end;

    7: // Customer Group
      begin
        try
          NewTabSheet := CreateNewTabSheet('CUSTOMER_GROUP' + TabSheetName, 'Customer Group', pagMain, actCustomerGroup);

          if CustomerGroupFrm <> nil then
            FreeAndNil(CustomerGroupFrm);

          if CustomerGroupFrm = nil then
            CustomerGroupFrm := TCustomerGroupFrm.Create(NewTabSheet);

          pagMain.ActivePageIndex := pagMain.PageCount - 1;
          CustomerGroupFrm.BorderStyle := bsNone;
          CustomerGroupFrm.Parent := NewTabSheet;
          CustomerGroupFrm.ManualDock(pagMain);
          CustomerGroupFrm.Align := alClient;
          CustomerGroupFrm.Show;
        finally
          NewTabSheet.Visible := True;
          NewTabSheet.TabVisible := True;
          pagMain.Repaint;
          docToolbar.Enabled := True;
          Screen.Cursor := crDefault;
        end;
      end;

    8: // Customer Status
      begin
        try
          NewTabSheet := CreateNewTabSheet('CUSTOMER_STATUS' + TabSheetName, 'Customer Status', pagMain, actCustomerStatus);

          if CustomerStatusFrm <> nil then
            FreeAndNil(CustomerStatusFrm);

          if CustomerStatusFrm = nil then
            CustomerStatusFrm := TCustomerStatusFrm.Create(NewTabSheet);

          pagMain.ActivePageIndex := pagMain.PageCount - 1;
          CustomerStatusFrm.BorderStyle := bsNone;
          CustomerStatusFrm.Parent := NewTabSheet;
          CustomerStatusFrm.ManualDock(pagMain);
          CustomerStatusFrm.Align := alClient;
          CustomerStatusFrm.Show;
        finally
          NewTabSheet.Visible := True;
          NewTabSheet.TabVisible := True;
          pagMain.Repaint;
          docToolbar.Enabled := True;
          Screen.Cursor := crDefault;
        end;
      end;

    9: // Customer Type
      begin
        try
          NewTabSheet := CreateNewTabSheet('CUSTOMER_TYPE' + TabSheetName, 'Customer Type', pagMain, actCustomerType);

          if CustomerTypeFrm <> nil then
            FreeAndNil(CustomerTypeFrm);

          if CustomerTypeFrm = nil then
            CustomerTypeFrm := TCustomerTypeFrm.Create(NewTabSheet);

          pagMain.ActivePageIndex := pagMain.PageCount - 1;
          CustomerTypeFrm.BorderStyle := bsNone;
          CustomerTypeFrm.Parent := NewTabSheet;
          CustomerTypeFrm.ManualDock(pagMain);
          CustomerTypeFrm.Align := alClient;
          CustomerTypeFrm.Show;
        finally
          NewTabSheet.Visible := True;
          NewTabSheet.TabVisible := True;
          pagMain.Repaint;
          docToolbar.Enabled := True;
          Screen.Cursor := crDefault;
        end;
      end;

    10: // Job Function
      begin
        try
          NewTabSheet := CreateNewTabSheet('JOB_FUNCTION' + TabSheetName, 'Job Function', pagMain, actJobFunction);

          if JobFunctionFrm <> nil then
            FreeAndNil(JobFunctionFrm);

          if JobFunctionFrm = nil then
            JobFunctionFrm := TJobFunctionFrm.Create(NewTabSheet);

          pagMain.ActivePageIndex := pagMain.PageCount - 1;
          JobFunctionFrm.BorderStyle := bsNone;
          JobFunctionFrm.Parent := NewTabSheet;
          JobFunctionFrm.ManualDock(pagMain);
          JobFunctionFrm.Align := alClient;
          JobFunctionFrm.Show;
        finally
          NewTabSheet.Visible := True;
          NewTabSheet.TabVisible := True;
          pagMain.Repaint;
          docToolbar.Enabled := True;
          Screen.Cursor := crDefault;
        end;
      end;

    11: // Month of Year
      begin
        try
          NewTabSheet := CreateNewTabSheet('MONTH_OF_YEAR' + TabSheetName, 'Month of Year', pagMain, actMonthOfYear);

          if MonthOfYearFrm <> nil then
            FreeAndNil(MonthOfYearFrm);

          if MonthOfYearFrm = nil then
            MonthOfYearFrm := TMonthOfYearFrm.Create(NewTabSheet);

          pagMain.ActivePageIndex := pagMain.PageCount - 1;
          MonthOfYearFrm.BorderStyle := bsNone;
          MonthOfYearFrm.Parent := NewTabSheet;
          MonthOfYearFrm.ManualDock(pagMain);
          MonthOfYearFrm.Align := alClient;
          MonthOfYearFrm.Show;
        finally
          NewTabSheet.Visible := True;
          NewTabSheet.TabVisible := True;
          pagMain.Repaint;
          docToolbar.Enabled := True;
          Screen.Cursor := crDefault;
        end;
      end;

    12: // Price List
      begin
        try
          NewTabSheet := CreateNewTabSheet('PRICE_LIST' + TabSheetName, 'Price List', pagMain, actPriceList);

          if PriceListFrm <> nil then
            FreeAndNil(PriceListFrm);

          if PriceListFrm = nil then
            PriceListFrm := TPriceListFrm.Create(NewTabSheet);

          pagMain.ActivePageIndex := pagMain.PageCount - 1;
          PriceListFrm.BorderStyle := bsNone;
          PriceListFrm.Parent := NewTabSheet;
          PriceListFrm.ManualDock(pagMain);
          PriceListFrm.Align := alClient;
          PriceListFrm.Show;
        finally
          NewTabSheet.Visible := True;
          NewTabSheet.TabVisible := True;
          pagMain.Repaint;
          docToolbar.Enabled := True;
          Screen.Cursor := crDefault;
        end;
      end;

    13: // Rate Unit
      begin
        try
          NewTabSheet := CreateNewTabSheet('RATE_UNIT' + TabSheetName, 'Rate Unit', pagMain, actRateUnit);

          if RateUnitFrm <> nil then
            FreeAndNil(RateUnitFrm);

          if RateUnitFrm = nil then
            RateUnitFrm := TRateUnitFrm.Create(NewTabSheet);

          pagMain.ActivePageIndex := pagMain.PageCount - 1;
          RateUnitFrm.BorderStyle := bsNone;
          RateUnitFrm.Parent := NewTabSheet;
          RateUnitFrm.ManualDock(pagMain);
          RateUnitFrm.Align := alClient;
          RateUnitFrm.Show;
        finally
          NewTabSheet.Visible := True;
          NewTabSheet.TabVisible := True;
          pagMain.Repaint;
          docToolbar.Enabled := True;
          Screen.Cursor := crDefault;
        end;
      end;

    14: // Salutaion
      begin
        try
          NewTabSheet := CreateNewTabSheet('SALUTATION' + TabSheetName, 'Salutation', pagMain, actSalutation);

          if SalutationFrm <> nil then
            FreeAndNil(SalutationFrm);

          if SalutationFrm = nil then
            SalutationFrm := TSalutationFrm.Create(NewTabSheet);

          pagMain.ActivePageIndex := pagMain.PageCount - 1;
          SalutationFrm.BorderStyle := bsNone;
          SalutationFrm.Parent := NewTabSheet;
          SalutationFrm.ManualDock(pagMain);
          SalutationFrm.Align := alClient;
          SalutationFrm.Show;
        finally
          NewTabSheet.Visible := True;
          NewTabSheet.TabVisible := True;
          pagMain.Repaint;
          docToolbar.Enabled := True;
          Screen.Cursor := crDefault;
        end;
      end;

    15: // STD Activity
      begin
        try
          NewTabSheet := CreateNewTabSheet('STD_ACTIVITY' + TabSheetName, 'Standard Activity', pagMain, actSTDActivity);

          if StdActivityFrm <> nil then
            FreeAndNil(StdActivityFrm);

          if StdActivityFrm = nil then
            StdActivityFrm := TStdActivityFrm.Create(NewTabSheet);

          pagMain.ActivePageIndex := pagMain.PageCount - 1;
          StdActivityFrm.BorderStyle := bsNone;
          StdActivityFrm.Parent := NewTabSheet;
          StdActivityFrm.ManualDock(pagMain);
          StdActivityFrm.Align := alClient;
          StdActivityFrm.Show;
        finally
          NewTabSheet.Visible := True;
          NewTabSheet.TabVisible := True;
          pagMain.Repaint;
          docToolbar.Enabled := True;
          Screen.Cursor := crDefault;
        end;
      end;

    16: // Tax Office
      begin
        try
          NewTabSheet := CreateNewTabSheet('TX_OFFICE' + TabSheetName, 'Tax Office', pagMain, actTaxOffice);

          if TaxOfficeFrm <> nil then
            FreeAndNil(TaxOfficeFrm);

          if TaxOfficeFrm = nil then
            TaxOfficeFrm := TTaxOfficeFrm.Create(NewTabSheet);

          pagMain.ActivePageIndex := pagMain.PageCount - 1;
          TaxOfficeFrm.BorderStyle := bsNone;
          TaxOfficeFrm.Parent := NewTabSheet;
          TaxOfficeFrm.ManualDock(pagMain);
          TaxOfficeFrm.Align := alClient;
          TaxOfficeFrm.Show;
        finally
          NewTabSheet.Visible := True;
          NewTabSheet.TabVisible := True;
          pagMain.Repaint;
          docToolbar.Enabled := True;
          Screen.Cursor := crDefault;
        end;
      end;

    17: // Vehicle Make
      begin
        try
          NewTabSheet := CreateNewTabSheet('VEHICLE_MAKE' + TabSheetName, 'Vehicle Make', pagMain, actVehicleMake);

          if VehicleMakeFrm <> nil then
            FreeAndNil(VehicleMakeFrm);

          if VehicleMakeFrm = nil then
            VehicleMakeFrm := TVehicleMakeFrm.Create(NewTabSheet);

          pagMain.ActivePageIndex := pagMain.PageCount - 1;
          VehicleMakeFrm.BorderStyle := bsNone;
          VehicleMakeFrm.Parent := NewTabSheet;
          VehicleMakeFrm.ManualDock(pagMain);
          VehicleMakeFrm.Align := alClient;
          VehicleMakeFrm.Show;
        finally
          NewTabSheet.Visible := True;
          NewTabSheet.TabVisible := True;
          pagMain.Repaint;
          docToolbar.Enabled := True;
          Screen.Cursor := crDefault;
        end;
      end;
  end;
end;

procedure TMainFrm.btnMasterListClick(Sender: TObject);
var
  NewTabSheet: TcxTabSheet;
  aControl: TdxBarItemControl;
  L, B: Integer;
  APopupPoint: TPoint;
begin
  inherited;
  aControl := TdxBarButton(Sender).ClickItemLink.Control;
  APopupPoint := Point(aControl.ItemBounds.Left, aControl.ItemBounds.Bottom);
  APopupPoint := aControl.Parent.ClientToScreen(APopupPoint);
  popMasterTable.Popup(APopupPoint.X, APopupPoint.Y);
end;

procedure TMainFrm.CloseTheForm(PageIndex: Integer; FormToClose: TForm;
  ActionTag: Integer; Action: TAction);
begin
  if Assigned(pagMain.Pages[PageIndex]) then
    try
      TForm(FormToClose).Close;

      case ActionTag of
        0: // Activity Type
          begin
            FreeAndNil(ActivityTypeFrm);
            actActivityType.Enabled := True;
          end;

        1: // Age Period
          begin
            FreeAndNil(AgePeriodFrm);
            actAgePeriod.Enabled := True;
          end;

        2: // Bank
          begin
            FreeAndNil(BankFrm);
            btnBank.Enabled := True;
          end;

        3: // Bank Account Type
          begin
            FreeAndNil(BankAccountTypeFrm);
            btnBankAccountType.Enabled := True;
          end;

        4: // Contact Type
          begin
            FreeAndNil(ContactTypeFrm);
            btnContactType.Enabled := True;
          end;

        5: // Country
          begin
            FreeAndNil(CountryFrm);
            btnCountry.Enabled := True;
          end;

        6: // Customer
          begin
            FreeAndNil(CustomerFrm);
            btnCustomer.Enabled := True;
          end;

        7: // Customer Group
          begin
            FreeAndNil(CustomerGroupFrm);
            btnCustomerGroup.Enabled := True;
          end;

        8: // Customer Status
          begin
            FreeAndNil(CustomerStatusFrm);
            btnCustomerStatus.Enabled := True;
          end;

        9: // Customer Type
          begin
            FreeAndNil(CustomerTypeFrm);
            btnCustomerType.Enabled := True;
          end;

        10: // Job Funciton
          begin
            FreeAndNil(JobFunctionFrm);
            btnJobFunction.Enabled := True;
          end;

        11: // Month of Year
          begin
            FreeAndNil(MonthOfYearFrm);
            btnMonthOfyear.Enabled := True;
          end;

        12: // Price List
          begin
            FreeAndNil(PriceListFrm);
            btnPriceList.Enabled := True;
          end;

        13: // Rate Unit
          begin
            FreeAndNil(RateUnitFrm);
            btnRateUnit.Enabled := True;
          end;

        14: // Salutation
          begin
            FreeAndNil(SalutationFrm);
            btnSalutaion.Enabled := True;
          end;

        15: // Standard Activity
          begin
            FreeAndNil(StdActivityFrm);
            btnStdActivity.Enabled := True;
          end;

        16: // Tax Office
          begin
            FreeAndNil(TaxOfficeFrm);
            btnTaxOffice.Enabled := True;
          end;

        17: // Vehicle Make
          begin
            FreeAndNil(VehicleMakeFrm);
            btnVehicleMake.Enabled := True;
          end;
      end;

      pagMain.Pages[PageIndex].Free;
      actCloseScreen.Enabled := pagMain.PageCount > 0;
    finally
      Action.Enabled := True;
      Screen.Cursor := crDefault;
    end;
end;

function TMainFrm.CreateNewTabSheet(TabSheetName, TabSheetCaption: string;
  PageControl: TcxPageControl; Action: TAction): TcxTabSheet;
begin
  pagMain.OnChange := nil;
  try
    Result := TcxTabSheetClass.Create(PageControl);
    Result.Tag := MTDM.FActionTag;
    Result.Name := TabSheetName;
    Result.Caption := TabSheetCaption;
    Result.Tag := MTDM.FActionTag;
    Result.ShowHint := False;
    Result.PageControl := PageControl;
    Result.Visible := False;
    Result.TabVisible := False;
    Result.ParentCustomHint := False;
    Result.ParentShowHint := False;

    case MTDM.FActionTag of
      0: tipCloseScreen.Description.Text := 'Close Activity Type screen';
      1: tipCloseScreen.Description.Text := 'Close Age Period screen';
      2: tipCloseScreen.Description.Text := 'Close Bank Account Type screen';
//      3: tipCloseScreen.Description.Text := 'Close SDAL screen';
//      4: tipCloseScreen.Description.Text := 'Close PPHI screen';
//      5: tipCloseScreen.Description.Text := 'Close WUSE screen';
//      6: tipCloseScreen.Description.Text := 'Close Customer Order Exec Plan screen';
//      8: tipCloseScreen.Description.Text := 'Close MO Picklist screen';
    end;
  finally
    pagMain.OnChange := pagMainChange;
    actCloseScreen.Enabled := pagMain.PageCount > 0;
  end;
end;

end.

