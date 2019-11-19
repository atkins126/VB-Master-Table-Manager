unit CustomerDetail_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseLayout_Frm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  System.ImageList, Vcl.ImgList, cxImageList, dxLayoutLookAndFeels,
  System.Actions, Vcl.ActnList, cxClasses, cxStyles, dxLayoutContainer,
  dxLayoutControl, dxBarBuiltInMenu, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, Vcl.Menus, cxContainer, cxEdit, cxLabel, Vcl.StdCtrls,
  cxButtons, cxPC, cxDBEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxGroupBox, dxScreenTip,
  dxCustomHint, cxHint, cxMemo, cxCheckBox, cxCalendar, cxCurrencyEdit;

type
  TCustomerDetailFrm = class(TBaseLayoutFrm)
    grpForm: TdxLayoutGroup;
    grpButtons: TdxLayoutGroup;
    pagMain: TcxPageControl;
    litPagControl: TdxLayoutItem;
    btnSave: TcxButton;
    btnCancel: TcxButton;
    litSave: TdxLayoutItem;
    litCancel: TdxLayoutItem;
    litHeaderTitle: TdxLayoutItem;
    lblHeaderTitle: TcxLabel;
    styHeaderFont: TcxEditStyleController;
    tabContactDetail: TcxTabSheet;
    tabAddress: TcxTabSheet;
    tabContactPerson: TcxTabSheet;
    tabBankingDetail: TcxTabSheet;
    tabDirector: TcxTabSheet;
    tabBeneficiary: TcxTabSheet;
    tabVehicle: TcxTabSheet;
    lucContactType: TcxDBLookupComboBox;
    lbl1: TcxLabel;
    lblContactDetailValue: TcxLabel;
    edtContactDetailValue: TcxDBTextEdit;
    grpPhysicalAddress: TcxGroupBox;
    grpPostalAddress: TcxGroupBox;
    grpBillingAddress: TcxGroupBox;
    lblPhysical1: TcxLabel;
    lblPhysical2: TcxLabel;
    lblPhysical3: TcxLabel;
    lblPhysical4: TcxLabel;
    lblPhysicalPostalCode: TcxLabel;
    lblPostal1: TcxLabel;
    lblPostal2: TcxLabel;
    lblPostal3: TcxLabel;
    lblPostal4: TcxLabel;
    lblPostalCode: TcxLabel;
    lblBilling1: TcxLabel;
    lblBilling2: TcxLabel;
    lblBilling3: TcxLabel;
    lblBilling4: TcxLabel;
    lblBillingPostalCode: TcxLabel;
    edtPhysical1: TcxDBTextEdit;
    edtPhysical2: TcxDBTextEdit;
    edtPhysical3: TcxDBTextEdit;
    edtPhysical4: TcxDBTextEdit;
    edtPhysicalPostalCode: TcxDBTextEdit;
    edtPostal1: TcxDBTextEdit;
    edtPostal2: TcxDBTextEdit;
    edtPostal3: TcxDBTextEdit;
    edtPostal4: TcxDBTextEdit;
    EdtPostalCode: TcxDBTextEdit;
    edtBilling1: TcxDBTextEdit;
    edtBilling2: TcxDBTextEdit;
    edtBilling3: TcxDBTextEdit;
    edtBilling4: TcxDBTextEdit;
    edtBillingPostalCode: TcxDBTextEdit;
    btnPhysicalToPostal: TcxButton;
    btnPostalToPhysical: TcxButton;
    btnPhysicalToBilling: TcxButton;
    btnBillingToPhysical: TcxButton;
    btnBillingToPostal: TcxButton;
    btnPostalToBilling: TcxButton;
    repScreenTip: TdxScreenTipRepository;
    tipSave: TdxScreenTip;
    tipCancel: TdxScreenTip;
    tipPhysicalToPostal: TdxScreenTip;
    styHintController: TcxHintStyleController;
    tipPostalToPhysical: TdxScreenTip;
    tipPhysicalToBilling: TdxScreenTip;
    tipBillingToPhysical: TdxScreenTip;
    tipPostalToBilling: TdxScreenTip;
    tipBillingToPostal: TdxScreenTip;
    memContactDetailComment: TcxDBMemo;
    lblComment1: TcxLabel;
    cbxPrimaryContact: TcxDBCheckBox;
    edtPFirstName: TcxDBTextEdit;
    edtPLastName: TcxDBTextEdit;
    edtPInitials: TcxDBTextEdit;
    edtPOtherName: TcxDBTextEdit;
    edtPIDNo: TcxDBTextEdit;
    edtPPassportNo: TcxDBTextEdit;
    lucPDOB: TcxDBDateEdit;
    lucPSalutation: TcxDBLookupComboBox;
    lucPJobFunction: TcxDBLookupComboBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    tabContactDetailPerson: TcxTabSheet;
    lucPContactType: TcxDBLookupComboBox;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    edtPContactDetailValue: TcxDBTextEdit;
    memPContactDetailComment: TcxDBMemo;
    cxLabel12: TcxLabel;
    edtBranchCode: TcxDBTextEdit;
    edtAccNo: TcxDBTextEdit;
    edtBFirstName: TcxDBTextEdit;
    edtBLastName: TcxDBTextEdit;
    lucBank: TcxDBLookupComboBox;
    lucAccType: TcxDBLookupComboBox;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    edtDFirstName: TcxDBTextEdit;
    edtDLastName: TcxDBTextEdit;
    edtDMiddleName: TcxDBTextEdit;
    edtDTaxNo: TcxDBTextEdit;
    edtDMobileNo: TcxDBTextEdit;
    edtDEmailAddress: TcxDBTextEdit;
    cxLabel19: TcxLabel;
    lucDSalutation: TcxDBLookupComboBox;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    cxLabel22: TcxLabel;
    cxLabel23: TcxLabel;
    cxLabel24: TcxLabel;
    cxLabel25: TcxLabel;
    edtBFFirstname: TcxDBTextEdit;
    edtBFLastName: TcxDBTextEdit;
    cxLabel26: TcxLabel;
    cxLabel27: TcxLabel;
    cxLabel28: TcxLabel;
    edtBFEmailAddress: TcxDBTextEdit;
    cxLabel29: TcxLabel;
    edtBFMobileNo: TcxDBTextEdit;
    cxLabel30: TcxLabel;
    lucBFSalutation: TcxDBLookupComboBox;
    edtModel: TcxDBTextEdit;
    edtRegNo: TcxDBTextEdit;
    edtYear: TcxDBCurrencyEdit;
    lucRenewlDate: TcxDBDateEdit;
    memVComment: TcxDBMemo;
    lucVehicleMake: TcxDBLookupComboBox;
    cbxMaintenancePlan: TcxDBCheckBox;
    cxLabel31: TcxLabel;
    cxLabel32: TcxLabel;
    cxLabel33: TcxLabel;
    cxLabel34: TcxLabel;
    cxLabel35: TcxLabel;
    cxLabel36: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FDetailIndex: Integer;

    property DetailIndex: Integer read FDetailIndex write FDetailIndex;
  end;

var
  CustomerDetailFrm: TCustomerDetailFrm;

implementation

{$R *.dfm}

uses Lookup_DM, MT_DM, VBBase_DM, VBCommonValues;

procedure TCustomerDetailFrm.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  Caption := 'Customer Detail';
  layMain.Align := alClient;
  Width := 800;
  Height := 540;
  styHintController.HintHidePause := 5000;
  styHeaderFont.Style.Font.Color := cxLookAndFeels.RootLookAndFeel.SkinPainter.DefaultContentTextColor;
  styHeaderFont.Style.TextColor := cxLookAndFeels.RootLookAndFeel.SkinPainter.DefaultContentTextColor;
//  pagMain.HideTabs := True;
//  for I := 0 to pagMain.PageCount - 1 do
//    pagMain.Pages[I].TabVisible := False;

  lucContactType.DataBinding.DataSource := MTDM.dtsContactDetailCo;
  lucContactType.Properties.ListSource := LookupDM.dtsContactType;

  lucBank.DataBinding.DataSource := LookupDM.dtsBank;
  lucAccType.DataBinding.DataSource := LookupDM.dtsBankAccountType;
  lucPSalutation.DataBinding.DataSource := LookupDM.dtsSalutation;
  lucBFSalutation.DataBinding.DataSource := LookupDM.dtsSalutation;
  lucVehicleMake.DataBinding.DataSource := LookupDM.dtsVehicleMake;
end;

procedure TCustomerDetailFrm.FormShow(Sender: TObject);
begin
  inherited;
  pagMain.Pages[FDetailIndex].Visible := True;

  case FDetailIndex of
    0:
      begin
        case MTDM.FDBAction of
          acInsert: MTDM.cdsContactDetailCo.Insert;
          acModify: MTDM.cdsContactDetailCo.Edit;
        end;
      end;
  end;
end;

end.

