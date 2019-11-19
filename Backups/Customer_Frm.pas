unit Customer_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, System.ImageList, Vcl.ImgList, Vcl.Controls,
  Vcl.Dialogs, System.Actions, Vcl.ActnList,

  BaseLayout_Frm, CommonValues, FireDAC.Comp.Client,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxScreenTip, dxCustomHint, cxHint, cxClasses, cxStyles,
  cxImageList, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, Data.DB, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, cxCurrencyEdit, cxDBLookupComboBox,
  cxTextEdit, cxInplaceContainer, cxVGrid, cxDBVGrid, cxDBNavigator, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, dxLayoutControlAdapters, dxLayoutcxEditAdapters,
  cxContainer, cxMemo, cxDBEdit, cxCalendar, cxCheckBox, cxLabel,
  cxGridInplaceEditForm,
  // To handle TFDGUIxErrordialog
  FireDAC.UI.Intf, FireDAC.VCLUI.Error,
  FireDAC.Stan.Error, FireDAC.Stan.Intf, FireDAC.Comp.UI;

type
  DetailDataSetArray = array of TFDMemTable;
  DetailFriendlyNames = array of string;

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
    edtStatusID: TcxGridDBBandedColumn;
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
    lucBankDBankID: TcxGridDBBandedColumn;
    lucBankDAccountTypeID: TcxGridDBBandedColumn;
    edtBankDBranchCode: TcxGridDBBandedColumn;
    edtBankDAccountNo: TcxGridDBBandedColumn;
    edtBankDFirstName: TcxGridDBBandedColumn;
    edtBankDLastName: TcxGridDBBandedColumn;
    grdDirector: TcxGrid;
    viewDirector: TcxGridDBBandedTableView;
    lvlDirector: TcxGridLevel;
    edtDrID: TcxGridDBBandedColumn;
    edtDrCustomerID: TcxGridDBBandedColumn;
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
    lucBFSalutationID: TcxGridDBBandedColumn;
    edtBFFirstName: TcxGridDBBandedColumn;
    edtBFLaastName: TcxGridDBBandedColumn;
    edtBFMobileNo: TcxGridDBBandedColumn;
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
    edtARMonth: TcxDBEditorRow;
    grpTaxInformation: TcxCategoryRow;
    grpVATInformation: TcxCategoryRow;
    grpSARS: TcxCategoryRow;
    grpMiscellaneous: TcxCategoryRow;
    popDBAction: TPopupMenu;
    actDB: TActionList;
    actInsert: TAction;
    actEdit: TAction;
    actDelete: TAction;
    Addnewcontactdetail1: TMenuItem;
    Editselectedcontactdetail1: TMenuItem;
    Deleteselectedcontactdetail1: TMenuItem;
    litLegend: TdxLayoutItem;
    lblLegend: TcxLabel;
    styLegend: TcxEditStyleController;
    grpAddress: TdxLayoutGroup;
    edtVVATNo: TcxDBEditorRow;
    lucVVATOffice: TcxDBEditorRow;
    lucVVATMonth: TcxDBEditorRow;
    lucVCountry: TcxDBEditorRow;
    edtVCustomsCode: TcxDBEditorRow;
    edtVPAYEUIF: TcxDBEditorRow;
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
    procedure CmDrawBorder(var Msg: TMessage); message CM_DRAWBORDER;
    procedure OpenTables;
    procedure EditDeleteRecord(Key: Word);

    procedure FormCreate(Sender: TObject);
    procedure viewContactDetailNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure FormShow(Sender: TObject);
    procedure viewCustomerCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure grpDetailGridTabChanged(Sender: TObject);
    procedure viewContactDetailCoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DoInsert(Sender: TObject);
    procedure DoDelete(Sender: TObject);
    procedure grdPhysicalAddressEnter(Sender: TObject);
    procedure viewContactDetailCoDblClick(Sender: TObject);
    procedure viewContactPersonFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
  private
    { Private declarations }
    FDetailDataSet: DetailDataSetArray;
    FDetailFriendlyName: DetailFriendlyNames;

    property DetailDataSet: DetailDataSetArray read FDetailDataSet write FDetailDataSet;
    property DetailFriendlyName: DetailFriendlyNames read FDetailFriendlyName write FDetailFriendlyName;
  public
    { Public declarations }

  end;

var
  CustomerFrm: TCustomerFrm;

const
  TABLE_COUNT = 16;

implementation

{$R *.dfm}

uses
  Lookup_DM,
  MsgDialog_Frm,
  MT_DM,
  VBCommonValues,
  CustomerEdit_Frm,
  Progress_Frm,
  VBBase_DM, RUtils, CommonFunction;

procedure TCustomerFrm.CmDrawBorder(var Msg: TMessage);
begin
  if (TObject(Msg.WParam) is TcxCanvas)
    and (TObject(Msg.LParam) is TcxGridTableDataCellViewInfo) then
    TcxCanvas(Msg.WParam).DrawComplexFrame(TcxGridTableDataCellViewInfo(Msg.LParam).ClientBounds, clRed, clRed, cxBordersAll, 1);
end;

procedure TCustomerFrm.DoInsert(Sender: TObject);
var
  Key: Integer;
begin
  inherited;
  case TAction(Sender).Tag of
    0:
      begin
        Key := VK_INSERT;
        MTDM.FDBAction := acInsert;
      end;

    1:
      begin
        Key := VK_F2;
        MTDM.FDBAction := acModify;
      end;

    2:
      begin
        Key := VK_DELETE;
        MTDM.FDBAction := acDelete;
      end;
  end;
  EditDeleteRecord(Key);
end;

procedure TCustomerFrm.DoDelete(Sender: TObject);
begin
  inherited;
//
end;

procedure TCustomerFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourglass;
  Caption := 'Customer Manager';
  litLegend.LayoutLookAndFeel := lafCustomSkin;
  styLegend.Style.Font.Color := cxLookAndFeels.RootLookAndFeel.SkinPainter.DefaultContentTextColor;
  styLegend.Style.TextColor := cxLookAndFeels.RootLookAndFeel.SkinPainter.DefaultContentTextColor;

  viewCustomer.DataController.DataSource := MTDM.dtsCustomer;
  grdVCustomer.DataController.DataSource := MTDM.dtsCustomer;
  navCustomer.DataSource := MTDM.dtsCustomer;
  navVCustomer.DataSource := MTDM.dtsCustomer;
  TcxLookupComboBoxProperties(lucCustomerType.Properties).ListSource := LookupDM.dtsCustomerType;
  TcxLookupComboBoxProperties(lucCustomerType.Properties).Buttons.Items[0].Visible := False;
  TcxLookupComboBoxProperties(lucCDContactTypeID.Properties).ListSource := LookupDM.dtsContactType;
  TcxLookupComboBoxProperties(lucCDContactTypeID.Properties).Buttons.Items[0].Visible := False;

  TcxLookupComboBoxProperties(lucCPSalutation.Properties).ListSource := LookupDM.dtsSalutation;
  TcxLookupComboBoxProperties(lucDrSalutation.Properties).ListSource := LookupDM.dtsDirectorSalutation;
  TcxLookupComboBoxProperties(lucBFSalutationID.Properties).ListSource := LookupDM.dtsBFSalutation;

  TcxLookupComboBoxProperties(lucCPJobFunction.Properties).ListSource := LookupDM.dtsJobFunction;
  TcxLookupComboBoxProperties(lucCPContactDetailTypeID.Properties).ListSource := LookupDM.dtsContactType;
  TcxLookupComboBoxProperties(lucBankDBankID.Properties).ListSource := LookupDM.dtsBank;
  TcxLookupComboBoxProperties(lucBankDAccountTypeID.Properties).ListSource := LookupDM.dtsBankAccountType;
  TcxLookupComboBoxProperties(lucVCustomerType.Properties.EditProperties).ListSource := LookupDM.dtsCustomerType;
  TcxLookupComboBoxProperties(lucVStatus.Properties.EditProperties).ListSource := LookupDM.dtsCustomerStatus;
  TcxLookupComboBoxProperties(lucVYearEndmonth.Properties.EditProperties).ListSource := LookupDM.dtsMonthOfyear;
  TcxLookupComboBoxProperties(lucVYearEndmonth.Properties.EditProperties).ListSource := LookupDM.dtsARMonthOfyear;
  TcxLookupComboBoxProperties(lucVTaxOffice.Properties.EditProperties).ListSource := LookupDM.dtsTaxOffice;
  TcxLookupComboBoxProperties(lucVVATOffice.Properties.EditProperties).ListSource := LookupDM.dtsVATOffice;
  TcxLookupComboBoxProperties(lucVVATMonth.Properties.EditProperties).ListSource := LookupDM.dtsVATMonth;
  TcxLookupComboBoxProperties(lucVCountry.Properties.EditProperties).ListSource := LookupDM.dtsCountry;

  viewContactDetailCo.DataController.DataSource := MTDM.dtsContactDetailCo;
  viewContactPerson.DataController.DataSource := MTDM.dtsContactPerson;
  viewCPContactDetail.DataController.DataSource := MTDM.dtsContactDetailPerson;
  viewBankingDetail.DataController.DataSource := MTDM.dtsBankingDetail;
  viewDirector.DataController.DataSource := MTDM.dtsDirector;
  viewBeneficiary.DataController.DataSource := MTDM.dtsBeneficiary;
  viewVehicle.DataController.DataSource := MTDM.dtsVehicle;
//  FDetailDataSet[0] := MTDM.cdsContactDetailCo;
//  FDetailDataSet[1] := MTDM.cdsAddress;
//  FDetailDataSet[2] := MTDM.cdsContactPerson;
//  FDetailDataSet[3] := MTDM.cdsContactDetailPerson;
//  FDetailDataSet[4] := MTDM.cdsBankingDetail;
//  FDetailDataSet[5] := MTDM.cdsDirector;
//  FDetailDataSet[6] := MTDM.cdsBeneficiary;
//  FDetailDataSet[7] := MTDM.cdsVehicle;

  SetLength(FDetailDataSet, 7);
  FDetailDataSet[0] := MTDM.cdsContactDetailCo;
  FDetailDataSet[1] := MTDM.cdsAddress;
  FDetailDataSet[2] := MTDM.cdsContactPerson;
  FDetailDataSet[3] := MTDM.cdsBankingDetail;
  FDetailDataSet[4] := MTDM.cdsDirector;
  FDetailDataSet[5] := MTDM.cdsBeneficiary;
  FDetailDataSet[6] := MTDM.cdsVehicle;

  SetLength(FDetailFriendlyName, 7);
  FDetailFriendlyName[0] := 'Company Contact Detail';
  FDetailFriendlyName[1] := 'Address';
  FDetailFriendlyName[2] := 'Contact Person';
  FDetailFriendlyName[3] := 'Banking Detail';
  FDetailFriendlyName[4] := 'Director';
  FDetailFriendlyName[5] := 'Beneficiary';
  FDetailFriendlyName[6] := 'Vehicle';

  OpenTables;
end;

procedure TCustomerFrm.FormShow(Sender: TObject);
begin
  inherited;
  grpDetailGrid.ItemIndex := 0;
  grdCustomer.SetFocus;
  viewCustomer.Focused := True;
//  grdContactDetailCo.SetFocus;
//  viewContactDetailCo.Focused := True;
  Screen.Cursor := crDefault;
end;

procedure TCustomerFrm.grpDetailGridTabChanged(Sender: TObject);
begin
  inherited;
  MTDM.FDetailIndex := grpDetailGrid.ItemIndex;
  if Showing then
  begin
    case MTDM.FDetailIndex {grpDetailGrid.ItemIndex} of
      0:
        begin
          grdContactDetailCo.SetFocus;
          viewContactDetailCo.Focused := True;
          actInsert.Caption := 'Add a new company contact detail';
          actEdit.Caption := 'Edit selected contact detail';
          actDelete.Caption := 'Delete selected cotact detail';
        end;

      1:
        begin
          grdPhysicalAddress.SetFocus;
          actInsert.Caption := 'Add a new address';
          actEdit.Caption := 'Edit selected address';
          actDelete.Caption := 'Delete selected address';
        end;

      2:
        begin
          MTDM.FDetailIndex := grpDetailGrid.ItemIndex;

          grdContactPerson.SetFocus;
          viewContactPerson.Focused := True;
          actInsert.Caption := 'Add a new contact person';
          actEdit.Caption := 'Edit selected contact person';
          actDelete.Caption := 'Delete selected cotact person';
        end;

//      3:
//        begin
//          grdCPContactDetail.SetFocus;
//          viewCPContactDetail.Focused := True;
//          actInsert.Caption := 'Add a new contact detail';
//          actEdit.Caption := 'Edit selected contact detail';
//          actDelete.Caption := 'Delete selected contact detail';
//        end;

      3:
        begin
          grdBankingDetail.SetFocus;
          viewBankingDetail.Focused := True;
          actInsert.Caption := 'Add a new banking detail';
          actEdit.Caption := 'Edit selected banking detail';
          actDelete.Caption := 'Delete selected banking detail';
        end;

      4:
        begin
          grdDirector.SetFocus;
          viewDirector.Focused := True;
          actInsert.Caption := 'Add a new director';
          actEdit.Caption := 'Edit selected director';
          actDelete.Caption := 'Delete selected director';
        end;

      5:
        begin
          grdBeneficiary.SetFocus;
          viewBeneficiary.Focused := True;
          actInsert.Caption := 'Add a new company beneficiary';
          actEdit.Caption := 'Edit selected beneficiary';
          actDelete.Caption := 'Delete selected beneficiary';
        end;

      6:
        begin
          grdVehicle.SetFocus;
          viewVehicle.Focused := True;
          actInsert.Caption := 'Add a new company vehicle';
          actEdit.Caption := 'Edit selected vehicle';
          actDelete.Caption := 'Delete selected vehicle';
        end;
    end;
  end;
end;

procedure TCustomerFrm.OpenTables;
var
  Counter: Integer;
  Iteration: Extended;
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
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Customer Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    VBBaseDM.GetData(3, MTDM.cdsCustomer, MTDM.cdsCustomer.Name, ONE_SPACE,
      'C:\Data\Xml\Customer.xml', MTDM.cdsCustomer.UpdateOptions.Generatorname,
      MTDM.cdsCustomer.UpdateOptions.UpdateTableName);

    if not MTDM.cdsCustomer.Active then
      MTDM.cdsCustomer.CreateDataSet;

    // Contact Dtail Co
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Company Contact Detail Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    VBBaseDM.GetData(9, MTDM.cdsContactDetailCo, MTDM.cdsContactDetailCo.Name, ONE_SPACE,
      'C:\Data\Xml\Contact Detail Co.xml', MTDM.cdsContactDetailCo.UpdateOptions.Generatorname,
      MTDM.cdsContactDetailCo.UpdateOptions.UpdateTableName);

    if not MTDM.cdsContactDetailCo.Active then
      MTDM.cdsContactDetailCo.CreateDataSet;

    // Address
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Address Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    VBBaseDM.GetData(4, MTDM.cdsAddress, MTDM.cdsAddress.Name, ONE_SPACE,
      'C:\Data\Xml\Address.xml', MTDM.cdsAddress.UpdateOptions.Generatorname,
      MTDM.cdsAddress.UpdateOptions.UpdateTableName);

    if not MTDM.cdsAddress.Active then
      MTDM.cdsAddress.CreateDataSet;

    // Contact Person
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Contact Person Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    VBBaseDM.GetData(10, MTDM.cdsContactPerson, MTDM.cdsContactPerson.Name, ONE_SPACE,
      'C:\Data\Xml\Contact Person.xml', MTDM.cdsContactPerson.UpdateOptions.Generatorname,
      MTDM.cdsContactPerson.UpdateOptions.UpdateTableName);

    if not MTDM.cdsContactPerson.Active then
      MTDM.cdsContactPerson.CreateDataSet;

    // Contact Detail Person
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Contact Detail Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    VBBaseDM.GetData(37, MTDM.cdsContactDetailPerson, MTDM.cdsContactDetailPerson.Name, ONE_SPACE,
      'C:\Data\Xml\Contact Detail PersonCustomer.xml', MTDM.cdsContactDetailPerson.UpdateOptions.Generatorname,
      MTDM.cdsContactDetailPerson.UpdateOptions.UpdateTableName);

    if not MTDM.cdsContactDetailPerson.Active then
      MTDM.cdsContactDetailPerson.CreateDataSet;

    // Banking Details
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Banking Detail Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    VBBaseDM.GetData(7, MTDM.cdsBankingDetail, MTDM.cdsBankingDetail.Name, ONE_SPACE,
      'C:\Data\Xml\Banking Detail.xml', MTDM.cdsBankingDetail.UpdateOptions.Generatorname,
      MTDM.cdsBankingDetail.UpdateOptions.UpdateTableName);

    if not MTDM.cdsBankingDetail.Active then
      MTDM.cdsBankingDetail.CreateDataSet;

    // Director
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Director Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    VBBaseDM.GetData(16, MTDM.cdsDirector, MTDM.cdsDirector.Name, ONE_SPACE,
      'C:\Data\Xml\Director.xml', MTDM.cdsDirector.UpdateOptions.Generatorname,
      MTDM.cdsDirector.UpdateOptions.UpdateTableName);

    if not MTDM.cdsDirector.Active then
      MTDM.cdsDirector.CreateDataSet;

    // Beneficiary
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Beneficiary Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    VBBaseDM.GetData(8, MTDM.cdsBeneficiary, MTDM.cdsBeneficiary.Name, ONE_SPACE,
      'C:\Data\Xml\Beneficiary.xml', MTDM.cdsBeneficiary.UpdateOptions.Generatorname,
      MTDM.cdsBeneficiary.UpdateOptions.UpdateTableName);

    if not MTDM.cdsBeneficiary.Active then
      MTDM.cdsBeneficiary.CreateDataSet;

    // Vehicle
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Vehicle Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    VBBaseDM.GetData(49, MTDM.cdsVehicle, MTDM.cdsVehicle.Name, ONE_SPACE,
      'C:\Data\Xml\Vehicle.xml', MTDM.cdsVehicle.UpdateOptions.Generatorname,
      MTDM.cdsVehicle.UpdateOptions.UpdateTableName);

    if not MTDM.cdsVehicle.Active then
      MTDM.cdsVehicle.CreateDataSet;

// Open all lookup tables  -----------------------------------------------------

    // Contact type
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Contact Type Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    VBBaseDM.GetData(11, LookupDM.cdsContactType, LookupDM.cdsContactType.Name, ONE_SPACE,
      'C:\Data\Xml\Contact Type.xml', LookupDM.cdsContactType.UpdateOptions.Generatorname,
      LookupDM.cdsContactType.UpdateOptions.UpdateTableName);

    // Salutation
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Salutation Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    VBBaseDM.GetData(23, LookupDM.cdsSalutation, LookupDM.cdsSalutation.Name, ONE_SPACE,
      'C:\Data\Xml\Slutation.xml', LookupDM.cdsSalutation.UpdateOptions.Generatorname,
      LookupDM.cdsSalutation.UpdateOptions.UpdateTableName);

    LookupDM.cdsBFSalutation.Close;
    LookupDM.cdsDirectorSalutation.Close;

    LookupDM.cdsBFSalutation.Data := LookupDM.cdsSalutation.Data;
    LookupDM.cdsDirectorSalutation.Data := LookupDM.cdsSalutation.Data;

   // Job function
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Job Function Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    VBBaseDM.GetData(19, LookupDM.cdsJobFunction, LookupDM.cdsJobFunction.Name, ONE_SPACE,
      'C:\Data\Xml\Job Function.xml', LookupDM.cdsJobFunction.UpdateOptions.Generatorname,
      LookupDM.cdsJobFunction.UpdateOptions.UpdateTableName);

    // Bank
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Bank Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    VBBaseDM.GetData(5, LookupDM.cdsBank, LookupDM.cdsBank.Name, ONE_SPACE,
      'C:\Data\Xml\Bank.xml', LookupDM.cdsBank.UpdateOptions.Generatorname,
      LookupDM.cdsBank.UpdateOptions.UpdateTableName);

    // Bank account type
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Bank Account Type Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    VBBaseDM.GetData(6, LookupDM.cdsBankAccountType, LookupDM.cdsBankAccountType.Name, ONE_SPACE,
      'C:\Data\Xml\Bank Account Type.xml', LookupDM.cdsBankAccountType.UpdateOptions.Generatorname,
      LookupDM.cdsBankAccountType.UpdateOptions.UpdateTableName);

    // Vehicle make
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Vehicle Make Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    VBBaseDM.GetData(48, LookupDM.cdsVehicleMake, LookupDM.cdsVehicleMake.Name, ONE_SPACE,
      'C:\Data\Xml\Vehicle Make.xml', LookupDM.cdsVehicleMake.UpdateOptions.Generatorname,
      LookupDM.cdsVehicleMake.UpdateOptions.UpdateTableName);

    // onth of Year
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Month of Year Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    VBBaseDM.GetData(20, LookupDM.cdsMonthOfYear, LookupDM.cdsMonthOfYear.Name, ONE_SPACE,
      'C:\Data\Xml\Month of Year.xml', LookupDM.cdsMonthOfYear.UpdateOptions.Generatorname,
      LookupDM.cdsMonthOfYear.UpdateOptions.UpdateTableName);

    LookupDM.cdsARMonthOfYear.Close;
    LookupDM.cdsVATMonth.Close;

    LookupDM.cdsARMonthOfYear.Data := LookupDM.cdsSalutation.Data;
    LookupDM.cdsVATMonth.Data := LookupDM.cdsSalutation.Data;
  finally
    ProgressFrm.Close;
    FreeAndNil(ProgressFrm);
  end;

end;

procedure TCustomerFrm.grdPhysicalAddressEnter(Sender: TObject);
begin
  inherited;
  actInsert.Caption := 'Add a new address';
  actEdit.Caption := 'Edit selected address';
  actDelete.Caption := 'Delete selected address';

//  case TcxDBVerticalGrid(Sender).Tag of
//    0:
//      begin
//        actInsert.Caption := 'Add a new address';
//        actEdit.Caption := 'Edit selected address';
//        actDelete.Caption := 'Delete selected address';
//      end;
//
//    1:
//      begin
//        actInsert.Caption := 'Add a new postal address';
//        actEdit.Caption := 'Edit selected postal address';
//        actDelete.Caption := 'Delete selected postal address';
//      end;
//
//    2:
//      begin
//        actInsert.Caption := 'Add a new billing address';
//        actEdit.Caption := 'Edit selected billing address';
//        actDelete.Caption := 'Delete selected billing address';
//
//      end;
//  end;
end;

procedure TCustomerFrm.EditDeleteRecord(Key: Word);
var
  ModResult: ShortInt;
begin
  case Key of
    VK_INSERT, VK_F2:
      begin
        case Key of
          VK_INSERT: MTDM.FDBAction := acInsert;
          VK_F2: MTDM.FDBAction := acModify;
        end;

        if CustomerEditFrm = nil then
          CustomerEditFrm := TCustomerEditFrm.Create(nil);
        CustomerEditFrm.lblHeaderTitle.Caption := FDetailFriendlyName[MTDM.FDetailIndex] + ' for ' +
          MTDM.cdsCustomer.FieldByName('NAME').AsString;

        MTDM.FPostError := False;

//    if FDetailDataSet[MTDM.FDetailIndex].State in [dsEdit, dsInsert] then
//      FDetailDataSet[MTDM.FDetailIndex].Cancel;

        MTDM.FDetailIndex := grpDetailGrid.ItemIndex;

        repeat
          ModResult := CustomerEditFrm.ShowModal;
          if ModResult = mrRetry then
          begin
            try
              MTDM.cdsContactDetailCo.Post;
            except on E: EDatabaseError do
              begin
              CustomerEditFrm.Close;
//                CustomerEditFrm.ShowModal;
//                CustomerEditFrm.ShowModal;
              end;
            end;
          end
          else
            MTDM.FPostError := False
//            if MTDM.FPostError then
//            begin
//                CustomerEditFrm.Close;
//                 CustomerEditFrm.ShowModal;
//            end;
        until
          (MTDM.FPostError = False)
          or (ModResult = mrOK);

//        if CustomerEditFrm.ShowModal = mrOK then
//        begin
////          try
//          MTDM.cdsContactDetailCo.Post;
////          if MTDM.FPostError then
//
////            FDetailDataSet[MTDM.FDetailIndex].Post;
////          except on E: Exception do
////            begin
////
////            end;
////          end;
//
////     if Key = VK_INSERT then
////      case MTDM.FDetailIndex {grpDetailGrid.ItemIndex} of
////        0:
////          begin
////            ShowMessage('Insert Contact detail Co');
////          end;
////      end;
//        end
//        else if FDetailDataSet[MTDM.FDetailIndex].State in [dsEdit, dsInsert] then
//          FDetailDataSet[MTDM.FDetailIndex].Cancel;

//        RUtils.PressKey(VK_ESCAPE, [], False);
//        RUtils.PressKey(VK_ESCAPE, [], False);

        if not MTDM.FPostError then
        begin
          CustomerEditFrm.Close;
          FreeAndNil(CustomerEditFrm);
        end;
      end;

    VK_DELETE:
      begin
        Beep;
        if DisplayMsg(
          Application.Title,
          'Delete Confirmaiton',
          'Are you sure you want to delete the selected ' + FDetailFriendlyName[MTDM.FDetailIndex] + '?' + CRLF + CRLF +
          'This action cannot be undone!',
          mtConfirmation,
          [mbYes, mbNo]
          ) = mrYes then
          FDetailDataSet[MTDM.FDetailIndex].Delete;
      end;
  end;
end;

procedure TCustomerFrm.viewContactDetailCoDblClick(Sender: TObject);
begin
  inherited;
//  if TcxGridDBBandedTableView(Sender).DataController.DataSet.IsEmpty then
//    EditDeleteRecord(VK_INSERT)
//  else

  EditDeleteRecord(VK_F2);
end;

procedure TCustomerFrm.viewContactDetailCoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  KeyPressed: Word;
begin
  inherited;
  KeyPressed := Key;
  case KeyPressed of
    VK_INSERT, VK_F2, VK_DELETE:
      begin
        // We handle key pressed ourselves from here.
        Key := 0;
        if Sender is TcxDBVerticalGrid then
          case KeyPressed of
            VK_INSERT, VK_F2: KeyPressed := VK_F2;
          end;

        EditDeleteRecord(KeyPressed);
      end;
  end;
end;

procedure TCustomerFrm.viewContactDetailNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
var
  Key: Word;
begin
  inherited;
  ADone := True;

  case AButtonIndex of
    NBDI_INSERT: Key := VK_INSERT;
    NBDI_EDIT: Key := VK_F2;
    NBDI_DELETE: Key := VK_DELETE;
  end;

  EditDeleteRecord(Key);

//  case AButtonIndex of
//    NBDI_DELETE:
//      begin
//        Beep;
//        ADone := DisplayMsg(
//          Application.Title,
//          'Delete Confirmaiton',
//          'Are you sure you want to delete the selected Activity Type?' + CRLF + CRLF +
//          'This action cannot be undone!',
//          mtConfirmation,
//          [mbYes, mbNo]
//          ) = mrNo;
//      end;
//
//    NBDI_INSERT, NBDI_EDIT:
//      begin
//        if CustomerEditFrm = nil then
//          CustomerEditFrm := TCustomerEditFrm.Create(nil);
//
//        MTDM.FDetailIndex := 0;
//        case AButtonIndex of
//          NBDI_INSERT: MTDM.FDBAction := acInsert;
//          NBDI_EDIT: MTDM.FDBAction := acModify;
//        end;
//
//        if CustomerEditFrm.ShowModal = mrOK then
//          MTDM.cdsContactDetailCo.Post
//        else if MTDM.cdsContactDetailCo.State in [dsEdit, dsInsert] then
//          MTDM.cdsContactDetailCo.Cancel;
//
//        CustomerEditFrm.Close;
//        FreeAndNil(CustomerEditFrm);
//      end;
//  end;
end;

procedure TCustomerFrm.viewContactPersonFocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
//  if AFocusedRecord <> nil then
//  begin
  viewCPContactDetail.OnKeyDown := viewContactDetailCoKeyDown;
  viewCPContactDetail.OnDblClick := viewContactDetailCoDblClick;
  viewCPContactDetail.Navigator.Visible := viewContactPerson.DataController.RecordCount > 0;

  if viewContactPerson.DataController.RecordCount = 0 then
  begin
    viewCPContactDetail.OnKeyDown := nil;
    viewCPContactDetail.OnDblClick := nil;
  end;

//    viewContactPerson.OptionsData.Inserting := viewContactPerson.DataController.RecordCount > 0;
//    viewContactPerson.OptionsData.Editing := viewContactPerson.OptionsData.Inserting;
//  end;
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

end.

