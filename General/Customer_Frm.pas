unit Customer_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, System.ImageList, Vcl.ImgList, Vcl.Controls,
  Vcl.Dialogs, System.Actions, Vcl.ActnList, System.StrUtils, Vcl.Menus,
  Vcl.StdCtrls, Data.DB,

  BaseLayout_Frm, CommonValues,

  FireDAC.Comp.Client,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxScreenTip, dxCustomHint, cxHint, cxClasses, cxStyles,
  cxImageList, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl, cxEdit,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxCurrencyEdit,
  cxDBLookupComboBox, cxTextEdit, cxInplaceContainer, cxVGrid, cxDBVGrid,
  cxDBNavigator, cxButtons, dxLayoutControlAdapters, dxLayoutcxEditAdapters,
  cxContainer, cxMemo, cxDBEdit, cxCalendar, cxCheckBox, cxLabel,
  cxGridInplaceEditForm,

  FireDAC.UI.Intf, FireDAC.VCLUI.Error,
  FireDAC.Stan.Error, FireDAC.Stan.Intf, FireDAC.Comp.UI, FireDAC.Phys.IBWrapper;

  // To handle TFDGUIxErrordialog
//  FireDAC.UI.Intf, FireDAC.VCLUI.Error,
//  FireDAC.Stan.Error, FireDAC.Stan.Intf, FireDAC.Comp.UI, FireDAC.Phys.IBDef,
//  FireDAC.Phys, FireDAC.Phys.IBBase, FireDAC.Phys.IB;

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
    procedure FormCreate(Sender: TObject);
    procedure viewContactDetailNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure FormShow(Sender: TObject);
    procedure grpDetailGridTabChanged(Sender: TObject);
    procedure viewContactDetailCoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DoInsert(Sender: TObject);
    procedure DoDelete(Sender: TObject);
    procedure grdPhysicalAddressEnter(Sender: TObject);
    procedure viewContactDetailCoDblClick(Sender: TObject);
    procedure grdCPContactDetailEnter(Sender: TObject);
    procedure grdPhysicalAddressDblClick(Sender: TObject);

    procedure viewCustomerCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);

    procedure viewContactPersonFocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);

    procedure navCustomerButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
  private
    { Private declarations }
    FDetailFriendlyName: DetailFriendlyNames;
    FDetailDataSet: DetailDataSetArray;

    procedure CmDrawBorder(var Msg: TMessage); message CM_DRAWBORDER;
    procedure OpenTables;
    procedure EditDeleteRecord(Key: Word);
    procedure FillFieldData(DetailDataSetID: Integer);

  public
    { Public declarations }
    property DetailDataSet: DetailDataSetArray read FDetailDataSet write FDetailDataSet;
    property DetailFriendlyName: DetailFriendlyNames read FDetailFriendlyName write FDetailFriendlyName;
  end;

var
  CustomerFrm: TCustomerFrm;

const
  TABLE_COUNT = 17;

implementation

{$R *.dfm}

uses
  Base_DM,
  Lookup_DM,
  MT_DM,
  MsgDialog_Frm,
  VBCommonValues,
  CustomerEdit_Frm,
  Progress_Frm,
  VBBase_DM,
  RUtils,
  CommonFunction,
  CompanyContactDetail_Frm,
  AddressDetail_Frm,
  PersonContactDetail_Frm,
  BankingDetail_Frm,
  DirectorDetail_Frm,
  BeneficiaryDetail_Frm,
  VehicleDetail_Frm, ContactPerson_Frm;

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
  Key := 0;
  case TAction(Sender).Tag of
    0:
      begin
        Key := VK_INSERT;
        MTDM.DBAction := acInsert;
      end;

    1:
      begin
        Key := VK_RETURN; // VK_F2;
        MTDM.DBAction := acModify;
      end;

    2:
      begin
        Key := VK_DELETE;
        MTDM.DBAction := acDelete;
      end;
  end;
  EditDeleteRecord(Key);
end;

procedure TCustomerFrm.DoDelete(Sender: TObject);
begin
  inherited;
//
end;

procedure TCustomerFrm.FillFieldData(DetailDataSetID: Integer);
const
  ERROR_MESSAGE =
    '%s' + CRLF + // Error type
    '%s' + CRLF + CRLF; // Detail table identifier

  ERROR_VALUES = '%s';
var
  ErrorValues: string;

begin
//  if FDetailDataSet[MTDM.DetailIndex].State in [dsEdit, dsInsert] then
//    FDetailDataSet[MTDM.DetailIndex].Cancel;

  case MTDM.DBAction of
    acInsert: FDetailDataSet[MTDM.DetailIndex].Insert;
    acModify: FDetailDataSet[MTDM.DetailIndex].Edit;
  end;

  case DetailDataSetID of
    0: // Company contact
      begin
        MTDM.cdsContactDetailCo.FieldByName('CONTACT_TYPE_ID').AsInteger := MTDM.FFieldValue.ContactTypeID;
        MTDM.cdsContactDetailCo.FieldByName('VALUE').AsString := MTDM.FFieldValue.TextValue;
        MTDM.cdsContactDetailCo.FieldByName('COMMENT').AsString := MTDm.FFieldValue.Comment;
        MTDM.ValueArray[0] := 'Contact Type:' + TAB + MTDM.FFieldValue.ContactType;
        MTDM.ValueArray[1] := 'Contact Value:' + TAB + MTDM.FFieldValue.TextValue;
        ErrorValues := Format(ERROR_VALUES, [
          MTDM.ValueArray[0] + CRLF +
            MTDM.ValueArray[1]]);

//        if CompanyContactDetailFrm <> nil then
//        begin
//          CompanyContactDetailFrm.Close;
//          FreeAndNil(CompanyContactDetailFrm);
//        end;
      end;

    1: // Address
      begin
        MTDM.cdsAddress.FieldByName('PHYSICAL1').AsString := MTDM.FFieldValue.Physical1;
        MTDM.cdsAddress.FieldByName('PHYSICAL2').AsString := CustomerEditFrm.edtPhysical2.Text;
        MTDM.cdsAddress.FieldByName('PHYSICAL3').AsString := CustomerEditFrm.edtPhysical3.Text;
        MTDM.cdsAddress.FieldByName('PHYSICAL4').AsString := CustomerEditFrm.edtPhysical4.Text;
        MTDM.cdsAddress.FieldByName('PHYSICAL_CODE').AsString := CustomerEditFrm.edtPhysicalPostalCode.Text;

        MTDM.cdsAddress.FieldByName('POSTAL1').AsString := CustomerEditFrm.edtPostal1.Text;
        MTDM.cdsAddress.FieldByName('POSTAL2').AsString := CustomerEditFrm.edtPostal2.Text;
        MTDM.cdsAddress.FieldByName('POSTAL3').AsString := CustomerEditFrm.edtPostal3.Text;
        MTDM.cdsAddress.FieldByName('POSTAL4').AsString := CustomerEditFrm.edtPostal4.Text;
        MTDM.cdsAddress.FieldByName('POSTAL_CODE').AsString := CustomerEditFrm.EdtPostalCode.Text;

        MTDM.cdsAddress.FieldByName('BILLING1').AsString := CustomerEditFrm.edtBilling1.Text;
        MTDM.cdsAddress.FieldByName('BILLING2').AsString := CustomerEditFrm.edtBilling2.Text;
        MTDM.cdsAddress.FieldByName('BILLING3').AsString := CustomerEditFrm.edtBilling3.Text;
        MTDM.cdsAddress.FieldByName('BILLING4').AsString := CustomerEditFrm.edtBilling4.Text;
        MTDM.cdsAddress.FieldByName('BILLING_CODE').AsString := CustomerEditFrm.edtBillingPostalCode.Text;
      end;

    2: // Contact person
      begin
        MTDM.cdsContactPerson.FieldByName('FIRST_NAME').AsString := CustomerEditFrm.edtPFirstName.Text;
        MTDM.cdsContactPerson.FieldByName('LAST_NAME').AsString := CustomerEditFrm.edtPLastName.Text;
        MTDM.cdsContactPerson.FieldByName('OTHER_NAME').AsString := CustomerEditFrm.edtPOtherName.Text;
        MTDM.cdsContactPerson.FieldByName('ID_NUMBER').AsString := CustomerEditFrm.edtPIDNo.Text;
        MTDM.cdsContactPerson.FieldByName('PASSPORT_NUMBER').AsString := CustomerEditFrm.edtPPassportNo.Text;
        MTDM.cdsContactPerson.FieldByName('SALUTATION_ID').AsInteger := CustomerEditFrm.lucPSalutation.EditValue;
        MTDM.cdsContactPerson.FieldByName('INITIALS').AsString := CustomerEditFrm.edtPInitials.Text;
        MTDM.cdsContactPerson.FieldByName('DOB').AsDateTime := CustomerEditFrm.lucPDOB.EditValue;
        MTDM.cdsContactPerson.FieldByName('JOB_FUNCTION_ID').AsInteger := CustomerEditFrm.lucPJobFunction.EditValue;
        MTDM.cdsContactPerson.FieldByName('IS_PRIMARY_CONTACT').AsInteger := RUtils.BooleanToInteger(CustomerEditFrm.cbxPPrimaryContact.Checked);

        MTDM.ValueArray[0] := 'First Name:' + TAB + CustomerEditFrm.edtPFirstName.Text;
        MTDM.ValueArray[1] := 'Last Name:' + TAB + CustomerEditFrm.edtPLastName.Text;
        MTDM.ValueArray[2] := 'Salutation:' + TAB + CustomerEditFrm.lucPSalutation.Text;
        ErrorValues := Format(ERROR_VALUES, [
          MTDM.ValueArray[0] + CRLF +
            MTDM.ValueArray[1] + CRLF +
            MTDM.ValueArray[1]]);
      end;

    3: // Contact details person
      begin
        MTDM.cdsContactDetailPerson.FieldByName('CONTACT_TYPE_ID').AsInteger := CustomerEditFrm.lucCDPContactType.EditValue;
        MTDM.cdsContactDetailPerson.FieldByName('VALUE').AsString := CustomerEditFrm.edtCDPValue.Text;
        MTDM.cdsContactDetailPerson.FieldByName('COMMENT').AsString := CustomerEditFrm.memCDPComment.Text;

        MTDM.ValueArray[0] := 'Contact Type:' + TAB + CustomerEditFrm.lucCDPContactType.Text;
        MTDM.ValueArray[1] := 'Contact Value:' + TAB + CustomerEditFrm.edtCDPValue.Text;
        ErrorValues := Format(ERROR_VALUES, [
          MTDM.ValueArray[0] + CRLF +
            MTDM.ValueArray[1]]);
      end;

    4: // Banking details
      begin
        MTDM.cdsBankingDetail.FieldByName('BANK_ID').AsInteger := CustomerEditFrm.lucBank.EditValue;
        MTDM.cdsBankingDetail.FieldByName('ACCOUNT_TYPE_ID').AsInteger := CustomerEditFrm.lucAccType.EditValue;
        MTDM.cdsBankingDetail.FieldByName('BRANCH_CODE').AsString := CustomerEditFrm.edtBranchCode.Text;
        MTDM.cdsBankingDetail.FieldByName('ACCOUNT_NO').AsString := CustomerEditFrm.edtAccNo.Text;
        MTDM.cdsBankingDetail.FieldByName('FIRST_NAME').AsString := CustomerEditFrm.edtBFirstName.Text;
        MTDM.cdsBankingDetail.FieldByName('LAST_NAME').AsString := CustomerEditFrm.edtBLastName.Text;

        MTDM.ValueArray[0] := 'Bank:' + TAB + CustomerEditFrm.lucBank.Text;
        MTDM.ValueArray[1] := 'Account Type:' + TAB + CustomerEditFrm.lucAccType.Text;
        MTDM.ValueArray[2] := 'Account No:' + TAB + CustomerEditFrm.edtAccNo.Text;
        ErrorValues := Format(ERROR_VALUES, [
          MTDM.ValueArray[0] + CRLF +
            MTDM.ValueArray[1] + CRLF +
            MTDM.ValueArray[2]
            ]);
      end;

    5: // Director
      begin
        MTDM.cdsDirector.FieldByName('FIRST_NAME').AsString := CustomerEditFrm.edtDFirstName.Text;
        MTDM.cdsDirector.FieldByName('LAST_NAME').AsString := CustomerEditFrm.edtDLastName.Text;
        MTDM.cdsDirector.FieldByName('MIDDLE_NAME').AsString := CustomerEditFrm.edtDOtherName.Text;
        MTDM.cdsDirector.FieldByName('EMAIL_ADDRESS').AsString := CustomerEditFrm.edtDEmailAddress.Text;
        MTDM.cdsDirector.FieldByName('SALUTATION_ID').AsInteger := CustomerEditFrm.lucDSalutation.EditValue;
        MTDM.cdsDirector.FieldByName('TAX_NO').AsString := CustomerEditFrm.edtDTaxNo.Text;
        MTDM.cdsDirector.FieldByName('MOBILE_PHONE').AsString := CustomerEditFrm.edtDMobileNo.Text;

        MTDM.ValueArray[0] := 'First Name:' + TAB + CustomerEditFrm.edtDFirstName.Text;
        MTDM.ValueArray[1] := 'Last Name:' + TAB + CustomerEditFrm.edtDLastName.Text;
        MTDM.ValueArray[2] := 'Salutation:' + TAB + CustomerEditFrm.lucDSalutation.Text;
        ErrorValues := Format(ERROR_VALUES, [
          MTDM.ValueArray[0] + CRLF +
            MTDM.ValueArray[1] + CRLF +
            MTDM.ValueArray[2]]);
      end;

    6: // Beneficiary
      begin
        MTDM.cdsBeneficiary.FieldByName('SALUTATION_ID').AsInteger := CustomerEditFrm.lucBFSalutation.EditValue;
        MTDM.cdsBeneficiary.FieldByName('FIRST_NAME').AsString := CustomerEditFrm.edtBFFirstName.Text;
        MTDM.cdsBeneficiary.FieldByName('LAST_NAME').AsString := CustomerEditFrm.edtBFLastName.Text;
        MTDM.cdsBeneficiary.FieldByName('MOBILE_PHONE').AsString := CustomerEditFrm.edtBFMobileNo.Text;
        MTDM.cdsBeneficiary.FieldByName('EMAIL_ADDRESS').AsString := CustomerEditFrm.edtBFEmailAddress.Text;

        MTDM.ValueArray[0] := 'First Name:' + TAB + CustomerEditFrm.edtBFFirstName.Text;
        MTDM.ValueArray[1] := 'Last Name:' + TAB + CustomerEditFrm.edtBFLastName.Text;
        MTDM.ValueArray[2] := 'Salutation:' + TAB + CustomerEditFrm.lucBFSalutation.Text;
        MTDM.ValueArray[3] := 'Mobile No:' + TAB + CustomerEditFrm.edtBFMobileNo.Text;
        MTDM.ValueArray[4] := 'Email Address:' + TAB + CustomerEditFrm.edtBFEmailAddress.Text;
        ErrorValues := Format(ERROR_VALUES, [
          MTDM.ValueArray[0] + CRLF +
            MTDM.ValueArray[1] + CRLF +
            MTDM.ValueArray[2] + CRLF +
            MTDM.ValueArray[3] + CRLF +
            MTDM.ValueArray[4]]);
      end;

    7: // Vehicle
      begin
        MTDM.cdsVehicle.FieldByName('THE_YEAR').AsInteger := CustomerEditFrm.edtYear.EditValue;
        MTDM.cdsVehicle.FieldByName('VEHICLE_MAKE_ID').AsString := CustomerEditFrm.lucVehicleMake.EditValue;
        MTDM.cdsVehicle.FieldByName('VEHICLE_MODEL').AsString := CustomerEditFrm.edtModel.Text;
        MTDM.cdsVehicle.FieldByName('REG_NO').AsString := CustomerEditFrm.edtRegNo.Text;
        MTDM.cdsVehicle.FieldByName('RENEWAL_DATE').AsDateTime := CustomerEditFrm.lucRenewlDate.EditValue;
        MTDM.cdsVehicle.FieldByName('MAINTENANCE_PLAN').AsInteger := RUtils.BooleanToInteger(CustomerEditFrm.cbxMaintenancePlan.Checked);
        MTDM.cdsVehicle.FieldByName('COMMENT').AsString := CustomerEditFrm.memVComment.Text;

        MTDM.ValueArray[0] := 'Make:' + TAB + TAB + CustomerEditFrm.lucVehicleMake.Text;
        MTDM.ValueArray[1] := 'Model:' + TAB + TAB + CustomerEditFrm.edtModel.Text;
        MTDM.ValueArray[2] := 'Year:' + TAB + TAB + CustomerEditFrm.edtYear.Text;
        MTDM.ValueArray[3] := 'Reg No:' + TAB + TAB + CustomerEditFrm.edtRegNo.Text;
        MTDM.ValueArray[4] := 'Renewal Date: ' + TAB + CustomerEditFrm.lucVehicleMake.Text;
        ErrorValues := Format(ERROR_VALUES, [
          MTDM.ValueArray[0] + CRLF +
            MTDM.ValueArray[1] + CRLF +
            MTDM.ValueArray[2] + CRLF +
            MTDM.ValueArray[3] + CRLF +
            MTDM.ValueArray[4]]);
      end;
  end;

  // Post the data
  try
    FDetailDataSet[MTDM.DetailIndex].Post;
//  except on E: EIBNativeException do
//  except on E: EFDDBEngineException do

//  except on E: Exception do
  except on E: EFDException do
    begin
      if MTDM.PostError then
      begin
//        Beep;
        if E.FDCode = 15 then // Duplicate record
          raise EDuplicateException.Create('Duplicate records not allowed.' + CRLF + CRLF +
            FDetailFriendlyName[MTDM.DetailIndex] + ' for ' + MTDM.cdsCustomer.FieldByName('NAME').AsString + ' already exists.' + CRLF + CRLF +
            ErrorValues
            );

//        DisplayMsg(
//          Application.Title,
//          'Data Validataion Error',
//          'One or more errors occurred in posting data.' + CRLF + CRLF +
//          E.Message + CRLF + CRLF +
//          FDetailFriendlyName[MTDM.DetailIndex] + ' for ' + MTDM.cdsCustomer.FieldByName('NAME').AsString + ' already exists.' + CRLF + CRLF +
//          ErrorValues,
//          mtError,
//          [mbOK]
//          );
      end;
    end;
  end;
end;

//procedure TCustomerFrm.FillFieldData(DetailDataSetID: Integer);
//const
//  ERROR_MESSAGE =
//    '%s' + CRLF + // Error type
//    '%s' + CRLF + CRLF; // Detail table identifier
//
//  ERROR_VALUES = '%s';
//var
//  ErrorValues: string;
//
//begin
////  if FDetailDataSet[MTDM.DetailIndex].State in [dsEdit, dsInsert] then
////    FDetailDataSet[MTDM.DetailIndex].Cancel;
//
//  case MTDM.DBAction of
//    acInsert: FDetailDataSet[MTDM.DetailIndex].Insert;
//    acModify: FDetailDataSet[MTDM.DetailIndex].Edit;
//  end;
//
//  case DetailDataSetID of
//    0: // Company contact
//      begin
//        MTDM.cdsContactDetailCo.FieldByName('CONTACT_TYPE_ID').AsInteger := CustomerEditFrm.lucContactType.EditValue;
//        MTDM.cdsContactDetailCo.FieldByName('VALUE').AsString := CustomerEditFrm.edtContactDetailValue.Text;
//        MTDM.cdsContactDetailCo.FieldByName('COMMENT').AsString := CustomerEditFrm.memContactDetailComment.Text;
//
//        MTDM.ValueArray[0] := 'Contact Type:' + TAB + CustomerEditFrm.lucContactType.Text;
//        MTDM.ValueArray[1] := 'Contact Value:' + TAB + CustomerEditFrm.edtContactDetailValue.Text;
//        ErrorValues := Format(ERROR_VALUES, [
//          MTDM.ValueArray[0] + CRLF +
//            MTDM.ValueArray[1]]);
//      end;
//
//    1: // Address
//      begin
//        MTDM.cdsAddress.FieldByName('PHYSICAL1').AsString := CustomerEditFrm.edtPhysical1.Text;
//        MTDM.cdsAddress.FieldByName('PHYSICAL2').AsString := CustomerEditFrm.edtPhysical2.Text;
//        MTDM.cdsAddress.FieldByName('PHYSICAL3').AsString := CustomerEditFrm.edtPhysical3.Text;
//        MTDM.cdsAddress.FieldByName('PHYSICAL4').AsString := CustomerEditFrm.edtPhysical4.Text;
//        MTDM.cdsAddress.FieldByName('PHYSICAL_CODE').AsString := CustomerEditFrm.edtPhysicalPostalCode.Text;
//
//        MTDM.cdsAddress.FieldByName('POSTAL1').AsString := CustomerEditFrm.edtPostal1.Text;
//        MTDM.cdsAddress.FieldByName('POSTAL2').AsString := CustomerEditFrm.edtPostal2.Text;
//        MTDM.cdsAddress.FieldByName('POSTAL3').AsString := CustomerEditFrm.edtPostal3.Text;
//        MTDM.cdsAddress.FieldByName('POSTAL4').AsString := CustomerEditFrm.edtPostal4.Text;
//        MTDM.cdsAddress.FieldByName('POSTAL_CODE').AsString := CustomerEditFrm.EdtPostalCode.Text;
//
//        MTDM.cdsAddress.FieldByName('BILLING1').AsString := CustomerEditFrm.edtBilling1.Text;
//        MTDM.cdsAddress.FieldByName('BILLING2').AsString := CustomerEditFrm.edtBilling2.Text;
//        MTDM.cdsAddress.FieldByName('BILLING3').AsString := CustomerEditFrm.edtBilling3.Text;
//        MTDM.cdsAddress.FieldByName('BILLING4').AsString := CustomerEditFrm.edtBilling4.Text;
//        MTDM.cdsAddress.FieldByName('BILLING_CODE').AsString := CustomerEditFrm.edtBillingPostalCode.Text;
//      end;
//
//    2: // Contact person
//      begin
//        MTDM.cdsContactPerson.FieldByName('FIRST_NAME').AsString := CustomerEditFrm.edtPFirstName.Text;
//        MTDM.cdsContactPerson.FieldByName('LAST_NAME').AsString := CustomerEditFrm.edtPLastName.Text;
//        MTDM.cdsContactPerson.FieldByName('OTHER_NAME').AsString := CustomerEditFrm.edtPOtherName.Text;
//        MTDM.cdsContactPerson.FieldByName('ID_NUMBER').AsString := CustomerEditFrm.edtPIDNo.Text;
//        MTDM.cdsContactPerson.FieldByName('PASSPORT_NUMBER').AsString := CustomerEditFrm.edtPPassportNo.Text;
//        MTDM.cdsContactPerson.FieldByName('SALUTATION_ID').AsInteger := CustomerEditFrm.lucPSalutation.EditValue;
//        MTDM.cdsContactPerson.FieldByName('INITIALS').AsString := CustomerEditFrm.edtPInitials.Text;
//        MTDM.cdsContactPerson.FieldByName('DOB').AsDateTime := CustomerEditFrm.lucPDOB.EditValue;
//        MTDM.cdsContactPerson.FieldByName('JOB_FUNCTION_ID').AsInteger := CustomerEditFrm.lucPJobFunction.EditValue;
//        MTDM.cdsContactPerson.FieldByName('IS_PRIMARY_CONTACT').AsInteger := RUtils.BooleanToInteger(CustomerEditFrm.cbxPPrimaryContact.Checked);
//
//        MTDM.ValueArray[0] := 'First Name:' + TAB + CustomerEditFrm.edtPFirstName.Text;
//        MTDM.ValueArray[1] := 'Last Name:' + TAB + CustomerEditFrm.edtPLastName.Text;
//        MTDM.ValueArray[2] := 'Salutation:' + TAB + CustomerEditFrm.lucPSalutation.Text;
//        ErrorValues := Format(ERROR_VALUES, [
//          MTDM.ValueArray[0] + CRLF +
//            MTDM.ValueArray[1] + CRLF +
//            MTDM.ValueArray[1]]);
//      end;
//
//    3: // Contact details person
//      begin
//        MTDM.cdsContactDetailPerson.FieldByName('CONTACT_TYPE_ID').AsInteger := CustomerEditFrm.lucCDPContactType.EditValue;
//        MTDM.cdsContactDetailPerson.FieldByName('VALUE').AsString := CustomerEditFrm.edtCDPValue.Text;
//        MTDM.cdsContactDetailPerson.FieldByName('COMMENT').AsString := CustomerEditFrm.memCDPComment.Text;
//
//        MTDM.ValueArray[0] := 'Contact Type:' + TAB + CustomerEditFrm.lucCDPContactType.Text;
//        MTDM.ValueArray[1] := 'Contact Value:' + TAB + CustomerEditFrm.edtCDPValue.Text;
//        ErrorValues := Format(ERROR_VALUES, [
//          MTDM.ValueArray[0] + CRLF +
//            MTDM.ValueArray[1]]);
//      end;
//
//    4: // Banking details
//      begin
//        MTDM.cdsBankingDetail.FieldByName('BANK_ID').AsInteger := CustomerEditFrm.lucBank.EditValue;
//        MTDM.cdsBankingDetail.FieldByName('ACCOUNT_TYPE_ID').AsInteger := CustomerEditFrm.lucAccType.EditValue;
//        MTDM.cdsBankingDetail.FieldByName('BRANCH_CODE').AsString := CustomerEditFrm.edtBranchCode.Text;
//        MTDM.cdsBankingDetail.FieldByName('ACCOUNT_NO').AsString := CustomerEditFrm.edtAccNo.Text;
//        MTDM.cdsBankingDetail.FieldByName('FIRST_NAME').AsString := CustomerEditFrm.edtBFirstName.Text;
//        MTDM.cdsBankingDetail.FieldByName('LAST_NAME').AsString := CustomerEditFrm.edtBLastName.Text;
//
//        MTDM.ValueArray[0] := 'Bank:' + TAB + CustomerEditFrm.lucBank.Text;
//        MTDM.ValueArray[1] := 'Account Type:' + TAB + CustomerEditFrm.lucAccType.Text;
//        MTDM.ValueArray[2] := 'Account No:' + TAB + CustomerEditFrm.edtAccNo.Text;
//        ErrorValues := Format(ERROR_VALUES, [
//          MTDM.ValueArray[0] + CRLF +
//            MTDM.ValueArray[1] + CRLF +
//            MTDM.ValueArray[2]
//            ]);
//      end;
//
//    5: // Director
//      begin
//        MTDM.cdsDirector.FieldByName('FIRST_NAME').AsString := CustomerEditFrm.edtDFirstName.Text;
//        MTDM.cdsDirector.FieldByName('LAST_NAME').AsString := CustomerEditFrm.edtDLastName.Text;
//        MTDM.cdsDirector.FieldByName('MIDDLE_NAME').AsString := CustomerEditFrm.edtDOtherName.Text;
//        MTDM.cdsDirector.FieldByName('EMAIL_ADDRESS').AsString := CustomerEditFrm.edtDEmailAddress.Text;
//        MTDM.cdsDirector.FieldByName('SALUTATION_ID').AsInteger := CustomerEditFrm.lucDSalutation.EditValue;
//        MTDM.cdsDirector.FieldByName('TAX_NO').AsString := CustomerEditFrm.edtDTaxNo.Text;
//        MTDM.cdsDirector.FieldByName('MOBILE_PHONE').AsString := CustomerEditFrm.edtDMobileNo.Text;
//
//        MTDM.ValueArray[0] := 'First Name:' + TAB + CustomerEditFrm.edtDFirstName.Text;
//        MTDM.ValueArray[1] := 'Last Name:' + TAB + CustomerEditFrm.edtDLastName.Text;
//        MTDM.ValueArray[2] := 'Salutation:' + TAB + CustomerEditFrm.lucDSalutation.Text;
//        ErrorValues := Format(ERROR_VALUES, [
//          MTDM.ValueArray[0] + CRLF +
//            MTDM.ValueArray[1] + CRLF +
//            MTDM.ValueArray[2]]);
//      end;
//
//    6: // Beneficiary
//      begin
//        MTDM.cdsBeneficiary.FieldByName('SALUTATION_ID').AsInteger := CustomerEditFrm.lucBFSalutation.EditValue;
//        MTDM.cdsBeneficiary.FieldByName('FIRST_NAME').AsString := CustomerEditFrm.edtBFFirstName.Text;
//        MTDM.cdsBeneficiary.FieldByName('LAST_NAME').AsString := CustomerEditFrm.edtBFLastName.Text;
//        MTDM.cdsBeneficiary.FieldByName('MOBILE_PHONE').AsString := CustomerEditFrm.edtBFMobileNo.Text;
//        MTDM.cdsBeneficiary.FieldByName('EMAIL_ADDRESS').AsString := CustomerEditFrm.edtBFEmailAddress.Text;
//
//        MTDM.ValueArray[0] := 'First Name:' + TAB + CustomerEditFrm.edtBFFirstName.Text;
//        MTDM.ValueArray[1] := 'Last Name:' + TAB + CustomerEditFrm.edtBFLastName.Text;
//        MTDM.ValueArray[2] := 'Salutation:' + TAB + CustomerEditFrm.lucBFSalutation.Text;
//        MTDM.ValueArray[3] := 'Mobile No:' + TAB + CustomerEditFrm.edtBFMobileNo.Text;
//        MTDM.ValueArray[4] := 'Email Address:' + TAB + CustomerEditFrm.edtBFEmailAddress.Text;
//        ErrorValues := Format(ERROR_VALUES, [
//          MTDM.ValueArray[0] + CRLF +
//            MTDM.ValueArray[1] + CRLF +
//            MTDM.ValueArray[2] + CRLF +
//            MTDM.ValueArray[3] + CRLF +
//            MTDM.ValueArray[4]]);
//      end;
//
//    7: // Vehicle
//      begin
//        MTDM.cdsVehicle.FieldByName('THE_YEAR').AsInteger := CustomerEditFrm.edtYear.EditValue;
//        MTDM.cdsVehicle.FieldByName('VEHICLE_MAKE_ID').AsString := CustomerEditFrm.lucVehicleMake.EditValue;
//        MTDM.cdsVehicle.FieldByName('VEHICLE_MODEL').AsString := CustomerEditFrm.edtModel.Text;
//        MTDM.cdsVehicle.FieldByName('REG_NO').AsString := CustomerEditFrm.edtRegNo.Text;
//        MTDM.cdsVehicle.FieldByName('RENEWAL_DATE').AsDateTime := CustomerEditFrm.lucRenewlDate.EditValue;
//        MTDM.cdsVehicle.FieldByName('MAINTENANCE_PLAN').AsInteger := RUtils.BooleanToInteger(CustomerEditFrm.cbxMaintenancePlan.Checked);
//        MTDM.cdsVehicle.FieldByName('COMMENT').AsString := CustomerEditFrm.memVComment.Text;
//
//        MTDM.ValueArray[0] := 'Make:' + TAB + TAB + CustomerEditFrm.lucVehicleMake.Text;
//        MTDM.ValueArray[1] := 'Model:' + TAB + TAB + CustomerEditFrm.edtModel.Text;
//        MTDM.ValueArray[2] := 'Year:' + TAB + TAB + CustomerEditFrm.edtYear.Text;
//        MTDM.ValueArray[3] := 'Reg No:' + TAB + TAB + CustomerEditFrm.edtRegNo.Text;
//        MTDM.ValueArray[4] := 'Renewal Date: ' + TAB + CustomerEditFrm.lucVehicleMake.Text;
//        ErrorValues := Format(ERROR_VALUES, [
//          MTDM.ValueArray[0] + CRLF +
//            MTDM.ValueArray[1] + CRLF +
//            MTDM.ValueArray[2] + CRLF +
//            MTDM.ValueArray[3] + CRLF +
//            MTDM.ValueArray[4]]);
//      end;
//  end;
//
//  // Post the data
//  try
//    FDetailDataSet[MTDM.DetailIndex].Post;
////  except on E: EIBNativeException do
////  except on E: EFDDBEngineException do
//
////  except on E: Exception do
//  except on E: EFDException do
//    begin
//      if MTDM.PostError then
//      begin
//        Beep;
//        if E.FDCode = 15 then // Duplicate record
//
//          DisplayMsg(
//            Application.Title,
//            'Data Validataion Error',
//            'One or more errors occurred in posting data.' + CRLF + CRLF +
//            E.Message + CRLF + CRLF +
//            FDetailFriendlyName[MTDM.DetailIndex] + ' for ' + MTDM.cdsCustomer.FieldByName('NAME').AsString + ' already exists.' + CRLF + CRLF +
//            ErrorValues,
//            mtError,
//            [mbOK]
//            );
//
////        case MTDM.DetailIndex of
////          0: // Company contact details
////            begin
////              DisplayMsg(
////                Application.Title,
////                'Data Validataion Error',
////                'One or more errors occurred in posting data.' + CRLF + CRLF +
////                E.Message + CRLF + CRLF +
////                FDetailFriendlyName[MTDM.DetailIndex] + ' for ' + MTDM.cdsCustomer.FieldByName('NAME').AsString + CRLF + CRLF +
////                ErrorValues,
//////                ERROR_VALUES,
////                mtError,
////                [mbOK]
////                );
////            end;
////
////          4: // Banking details
////            begin
////              DisplayMsg(
////                Application.Title,
////                'Data Validataion Error',
////                'One or more errors occurred in posting data.' + CRLF + CRLF +
////                E.Message + CRLF + CRLF +
////                FDetailFriendlyName[MTDM.DetailIndex] + ' for ' + MTDM.cdsCustomer.FieldByName('NAME').AsString + CRLF + CRLF +
////                ErrorValues,
//////                ERROR_VALUES,
////                mtError,
////                [mbOK]
////                );
////            end;
////        end;
//      end;
//    end;
//  end;
//end;
//

procedure TCustomerFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourglass;
  Caption := 'Customer Manager';
//  Customer := TCustomerDetail.Create;
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
  TcxLookupComboBoxProperties(lucVMakeID.Properties).ListSource := LookupDM.dtsVehicleMake;

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

  SetLength(FDetailDataSet, 8);
  FDetailDataSet[0] := MTDM.cdsContactDetailCo;
  FDetailDataSet[1] := MTDM.cdsAddress;
  FDetailDataSet[2] := MTDM.cdsContactPerson;
  FDetailDataSet[3] := MTDM.cdsContactDetailPerson;
  FDetailDataSet[4] := MTDM.cdsBankingDetail;
  FDetailDataSet[5] := MTDM.cdsDirector;
  FDetailDataSet[6] := MTDM.cdsBeneficiary;
  FDetailDataSet[7] := MTDM.cdsVehicle;

  SetLength(FDetailFriendlyName, 8);
  FDetailFriendlyName[0] := 'Company Contact Detail';
  FDetailFriendlyName[1] := 'Address';
  FDetailFriendlyName[2] := 'Contact Person Data';
  FDetailFriendlyName[3] := 'Contact Details';
  FDetailFriendlyName[4] := 'Banking Details';
  FDetailFriendlyName[5] := 'Director';
  FDetailFriendlyName[6] := 'Beneficiary';
  FDetailFriendlyName[7] := 'Vehicle';

  OpenTables;
end;

procedure TCustomerFrm.FormShow(Sender: TObject);
begin
  inherited;
  grpDetailGrid.ItemIndex := 0;
  grdCustomer.SetFocus;
  viewCustomer.Focused := True;

  if viewCustomer.DataController.RecordCount > 0 then
    viewCustomer.Controller.FocusedRecordIndex := 0;

  viewCustomer.Controller.FocusedColumn := edtName;
  Screen.Cursor := crDefault;
end;

procedure TCustomerFrm.grpDetailGridTabChanged(Sender: TObject);
begin
  inherited;
  if grpDetailGrid.ItemIndex <= 2 then
    MTDM.DetailIndex := grpDetailGrid.ItemIndex
  else
    MTDM.DetailIndex := grpDetailGrid.ItemIndex + 1;

  if Self.Showing then
  begin
    case MTDM.DetailIndex {grpDetailGrid.ItemIndex} of
      0:
        begin
          grdContactDetailCo.SetFocus;
          viewContactDetailCo.Focused := True;
          actInsert.Caption := 'Add a new company contact detail';
          actEdit.Caption := 'Edit selected contact detail';
          actDelete.Caption := 'Delete selected cotact detail';
          MTDM.FormCaption := 'Company Contact Details';
        end;

      1:
        begin
          grdPhysicalAddress.SetFocus;
          actInsert.Caption := 'Add a new address';
          actEdit.Caption := 'Edit selected address';
          actDelete.Caption := 'Delete selected address';
          MTDM.FormCaption := 'Address Details';
        end;

      2:
        begin
//          MTDM.DetailIndex := grpDetailGrid.ItemIndex;

          grdContactPerson.SetFocus;
          viewContactPerson.Focused := True;
          actInsert.Caption := 'Add a new contact person';
          actEdit.Caption := 'Edit selected contact person';
          actDelete.Caption := 'Delete selected cotact person';
          MTDM.FormCaption := 'Contact Person Details';
        end;

//      3:
//        begin
//          grdCPContactDetail.SetFocus;
//          viewCPContactDetail.Focused := True;
//          actInsert.Caption := 'Add a new contact detail';
//          actEdit.Caption := 'Edit selected contact detail';
//          actDelete.Caption := 'Delete selected contact detail';
//        end;

      4:
        begin
          grdBankingDetail.SetFocus;
          viewBankingDetail.Focused := True;
          actInsert.Caption := 'Add a new banking detail';
          actEdit.Caption := 'Edit selected banking detail';
          actDelete.Caption := 'Delete selected banking detail';
          MTDM.FormCaption := 'Banking  Details';
        end;

      5:
        begin
          grdDirector.SetFocus;
          viewDirector.Focused := True;
          actInsert.Caption := 'Add a new director';
          actEdit.Caption := 'Edit selected director';
          actDelete.Caption := 'Delete selected director';
          MTDM.FormCaption := 'Director Details';
        end;

      6:
        begin
          grdBeneficiary.SetFocus;
          viewBeneficiary.Focused := True;
          actInsert.Caption := 'Add a new beneficiary';
          actEdit.Caption := 'Edit selected beneficiary';
          actDelete.Caption := 'Delete selected beneficiary';
          MTDM.FormCaption := 'Beneficiary Details';
        end;

      7:
        begin
          grdVehicle.SetFocus;
          viewVehicle.Focused := True;
          actInsert.Caption := 'Add a new vehicle';
          actEdit.Caption := 'Edit selected vehicle';
          actDelete.Caption := 'Delete selected vehicle';
          MTDM.FormCaption := 'Vehicle Details';
        end;
    end;
  end;
end;

procedure TCustomerFrm.navCustomerButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
var
  ID: Integer;
begin
  inherited;
  case AButtonIndex of
    NBDI_REFRESH:
      begin
        ADone := True;
        ID := MTDM.cdsCustomer.FieldByName('ID').AsInteger;
        OpenTables;
        if not MTDM.cdsCustomer.Locate('ID', ID, []) then
          MTDM.cdsCustomer.First;
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

procedure TCustomerFrm.grdCPContactDetailEnter(Sender: TObject);
begin
  inherited;
  actInsert.Caption := 'Add a new person contact detail';
  actEdit.Caption := 'Edit selected person contact detail';
  actDelete.Caption := 'Delete selected person cotact detail';
  MTDM.DetailIndex := 3;
end;

procedure TCustomerFrm.grdPhysicalAddressDblClick(Sender: TObject);
begin
  inherited;
//  if TcxGridSite(TcxDBVerticalGrid(Sender)).GridView.DataController.RecordCount = 0 then
  if TcxDBVerticalGrid(Sender).DataController.RecordCount = 0 then
    EditDeleteRecord(VK_INSERT)
  else
    EditDeleteRecord({VK_F2}VK_RETURN);
end;

procedure TCustomerFrm.grdPhysicalAddressEnter(Sender: TObject);
begin
  inherited;
  actInsert.Caption := 'Add a new address';
  actEdit.Caption := 'Edit selected address';
  actDelete.Caption := 'Delete selected address';
end;

procedure TCustomerFrm.EditDeleteRecord(Key: Word);
var
//  ModResult: ShortInt;
  ErrorMessage: string;
  I, ModResult: Integer;
begin
  Screen.Cursor := crHourglass;

  case Key of
    VK_INSERT, VK_RETURN {VK_F2}:
      begin
        case Key of
          VK_INSERT: MTDM.DBAction := acInsert;
          {VK_F2}VK_RETURN: MTDM.DBAction := acModify;
        end;

        case MTDM.DetailIndex of
          0:
            begin
              if CompanyContactDetailFrm = nil then
                CompanyContactDetailFrm := TCompanyContactDetailFrm.Create(nil);

              ModResult := CompanyContactDetailFrm.ShowModal;
              if ModResult = mrOK then
              begin
              end;
              CompanyContactDetailFrm.Close;
              FreeAndNil(CompanyContactDetailFrm);
            end;

          1:
            begin
              if AddressDetailFrm = nil then
                AddressDetailFrm := TAddressDetailFrm.Create(nil);

              Modresult := AddressDetailFrm.ShowModal;
              if ModResult = mrOK then
              begin
              end;
              AddressDetailFrm.Close;
              FreeAndNil(AddressDetailFrm);
            end;

          3:
            begin
              if PersonContactDetailFrm = nil then
                PersonContactDetailFrm := TPersonContactDetailFrm.Create(nil);
              ModResult := PersonContactDetailFrm.ShowModal;
              if ModalResult = mrOK then
              begin

              end;
              PersonContactDetailFrm.Close;
              FreeAndNil(PersonContactDetailFrm);
            end;

          4:
            begin
              if BankingDetailFrm = nil then
                BankingDetailFrm := TBankingDetailFrm.Create(nil);
              ModResult := BankingDetailFrm.ShowModal;
              if ModResult = mrOK then
              begin
              end;
              BankingDetailFrm.Close;
              FreeAndNil(BankingDetailFrm);
            end;

          5:
            begin
              if DirectorDetailFrm = nil then
                DirectorDetailFrm := TDirectorDetailFrm.Create(nil);
              ModResult := DirectorDetailFrm.ShowModal;
              if ModResult = mrOK then
              begin

              end;
              DirectorDetailFrm.Close;
              FreeAndNil(DirectorDetailFrm);
            end;

          6:
            begin
              if BeneficiaryDetailFrm = nil then
                BeneficiaryDetailFrm := TBeneficiaryDetailFrm.Create(nil);
              ModResult := BeneficiaryDetailFrm.ShowModal;
              if ModResult = mrOK then
              begin

              end;
              BeneficiaryDetailFrm.Close;
              FreeAndNil(BeneficiaryDetailFrm);
            end;

          7:
            begin
              if VehicleDetailFrm = nil then
                VehicleDetailFrm := TVehicleDetailFrm.Create(nil);
              ModResult := VehicleDetailFrm.ShowModal;
              if ModResult = mrOK then
              begin

              end;
              VehicleDetailFrm.Close;
              FreeAndNil(VehicleDetailFrm);
            end;
        end;

        if ModResult = mrOK then
          FillFieldData(MTDM.DetailIndex);

        Exit;

        if CustomerEditFrm = nil then
          CustomerEditFrm := TCustomerEditFrm.Create(nil);

        CustomerEditFrm.lblHeaderTitle.Caption := FDetailFriendlyName[MTDM.DetailIndex];
        CustomerEditFrm.lblSubTitle.Caption := MTDM.cdsCustomer.FieldByName('NAME').AsString;

        MTDM.PostError := False;
//        MTDM.DetailIndex := grpDetailGrid.ItemIndex;

        try
          if CustomerEditFrm.ShowModal = mrOK then
            try
              FillFieldData(MTDM.DetailIndex);
            except on E: EFDDBEngineException do
              begin
                ErrorMessage := E.Message;
                for I := 0 to E.ErrorCount - 1 do
                  ShowMessage('Error code: ' + E.Errors[I].ErrorCode.ToString);
                Delete(ErrorMessage, 1, pos(' ', E.Message, 1));
                Beep;
                DisplayMsg(
                  Application.Title,
                  'Data Validataion Error',
                  'An error occurred in posting data.' + CRLF + CRLF +
                  ErrorMessage + CRLF + CRLF +
                  'Please ansure that all fields have been enterd and try again or Cancel to abort the transaction.',
                  mtError,
                  [mbOK]
                  );
              end;
            end;
        finally
          CustomerEditFrm.Close;
          FreeAndNil(CustomerEditFrm);
        end;

//        repeat
//          ModResult := CustomerEditFrm.ShowModal;
//          if ModResult = mrRetry then
//          begin
//            try
//              FillFieldData(MTDM.DetailIndex);
//              ModResult := mrOK;
//              CustomerEditFrm.Close;
//              FreeAndNil(CustomerEditFrm);
//            except on E: EDatabaseError do
//              begin
//                ModResult := mrRetry;
//                ErrorMessage := E.Message;
//                Delete(ErrorMessage, 1, pos(' ', E.Message, 1));
//                Beep;
//                DisplayMsg(
//                  Application.Title,
//                  'Data Validataion Error',
//                  'An error occurred in posting data.' + CRLF + CRLF +
//                  ErrorMessage + CRLF + CRLF +
//                  'Please ansure that all fields have been enterd and try again or Cancel to abort the transaction.',
//                  mtError,
//                  [mbOK]
//                  );
//
//                CustomerEditFrm.Close;
//              end;
//            end;
//          end
//          else
//            MTDM.PostError := False
//        until
//          (MTDM.PostError = False)
//          or (ModResult = mrOK);
//
//        if ModResult = mrCancel then
//          if FDetailDataSet[MTDM.DetailIndex].State in [dsEdit, dsInsert] then
//            FDetailDataSet[MTDM.DetailIndex].Cancel;
//
////        RUtils.PressKey(VK_ESCAPE, [], False);
////        RUtils.PressKey(VK_ESCAPE, [], False);
//
//        if not (ModResult = mrOK) and (MTDM.PostError) then
//        begin
//          CustomerEditFrm.Close;
//          FreeAndNil(CustomerEditFrm);
//        end;
      end;

    VK_DELETE:
      begin
        Beep;
        if DisplayMsg(
          Application.Title,
          'Delete Confirmaiton',
          'Are you sure you want to delete the selected ' + FDetailFriendlyName[MTDM.DetailIndex] + '?' + CRLF + CRLF +
          'This action cannot be undone!',
          mtConfirmation,
          [mbYes, mbNo]
          ) = mrYes then
          FDetailDataSet[MTDM.DetailIndex].Delete;
      end;
  end;
end;

procedure TCustomerFrm.viewContactDetailCoDblClick(Sender: TObject);
begin
  inherited;
  if TcxGridSite(Sender).GridView.DataController.RecordCount = 0 then
    EditDeleteRecord(VK_INSERT)
  else
    EditDeleteRecord({VK_F2}VK_RETURN);
end;

procedure TCustomerFrm.viewContactDetailCoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
//var
//  KeyPressed: Word;
begin
  inherited;
//  KeyPressed := Key;
//  case KeyPressed of
//    VK_INSERT, VK_F2, VK_DELETE:
//      begin
//        // We handle key pressed ourselves from here.
//        Key := 0;
//        if Sender is TcxDBVerticalGrid then
//          case KeyPressed of
//            VK_INSERT, VK_F2: KeyPressed := VK_F2;
//          end;
//
//        EditDeleteRecord(KeyPressed);
//      end;
//  end;
end;

procedure TCustomerFrm.viewContactDetailNavigatorButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
var
  Key: Word;
begin
  inherited;
  ADone := True;

  case AButtonIndex of
    NBDI_INSERT: Key := VK_INSERT;
    NBDI_EDIT: Key := VK_RETURN {VK_F2};
    NBDI_DELETE: Key := VK_DELETE;
  else
    Key := 0;
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
//        MTDM.DetailIndex := 0;
//        case AButtonIndex of
//          NBDI_INSERT: MTDM.DBAction := acInsert;
//          NBDI_EDIT: MTDM.DBAction := acModify;
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

