unit CustomerEdit_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Dialogs, Vcl.ComCtrls,
  System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.StdCtrls,
  Data.DB,

  BaseLayout_Frm, VBCommonValues,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxImageList, dxLayoutLookAndFeels, cxClasses, cxStyles,
  dxLayoutContainer, dxLayoutControl, dxBarBuiltInMenu, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, Vcl.Menus, cxContainer, cxEdit, cxLabel, cxButtons,
  cxDBEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxGroupBox, dxScreenTip, cxPC, dxCustomHint, cxHint, cxMemo,
  cxCheckBox, cxCalendar, cxCurrencyEdit, cxCustomData, cxFilter, cxData, cxGrid,
  cxDataStorage, cxNavigator, dxDateRanges, cxDBData, cxGridLevel, cxDateUtils,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, cxGridCustomView,
  cxGridDBBandedTableView, dxCore;

type
  TCustomerEditFrm = class(TBaseLayoutFrm)
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
    btnPhysicalToPostal: TcxButton;
    btnPostalToPhysical: TcxButton;
    btnPhysicalToBilling: TcxButton;
    btnBillingToPostal: TcxButton;
    btnPostalToBilling: TcxButton;
    repScreenTip: TdxScreenTipRepository;
    styHintController: TcxHintStyleController;
    sep1: TdxLayoutSeparatorItem;
    sep2: TdxLayoutSeparatorItem;
    imgNav16: TcxImageList;
    lucContactType: TcxLookupComboBox;
    lucPSalutation: TcxLookupComboBox;
    lucPJobFunction: TcxLookupComboBox;
    lucBank: TcxLookupComboBox;
    lucAccType: TcxLookupComboBox;
    lucDSalutation: TcxLookupComboBox;
    lucBFSalutation: TcxLookupComboBox;
    lucVehicleMake: TcxLookupComboBox;
    edtContactDetailValue: TcxTextEdit;
    edtPhysical1: TcxTextEdit;
    edtPhysical2: TcxTextEdit;
    edtPhysical3: TcxTextEdit;
    edtPhysical4: TcxTextEdit;
    edtPhysicalPostalCode: TcxTextEdit;
    edtPostal1: TcxTextEdit;
    edtPostal2: TcxTextEdit;
    edtPostal3: TcxTextEdit;
    edtPostal4: TcxTextEdit;
    EdtPostalCode: TcxTextEdit;
    edtBilling1: TcxTextEdit;
    edtBilling2: TcxTextEdit;
    edtBilling3: TcxTextEdit;
    edtBilling4: TcxTextEdit;
    edtBillingPostalCode: TcxTextEdit;
    edtPFirstName: TcxTextEdit;
    edtPLastName: TcxTextEdit;
    edtPInitials: TcxTextEdit;
    edtPOtherName: TcxTextEdit;
    edtPIDNo: TcxTextEdit;
    edtPPassportNo: TcxTextEdit;
    edtBranchCode: TcxTextEdit;
    edtAccNo: TcxTextEdit;
    edtBFirstName: TcxTextEdit;
    edtBLastName: TcxTextEdit;
    edtDFirstName: TcxTextEdit;
    edtDLastName: TcxTextEdit;
    edtDOtherName: TcxTextEdit;
    edtDTaxNo: TcxTextEdit;
    edtDMobileNo: TcxTextEdit;
    edtDEmailAddress: TcxTextEdit;
    edtBFFirstName: TcxTextEdit;
    edtBFLastName: TcxTextEdit;
    edtBFEmailAddress: TcxTextEdit;
    edtBFMobileNo: TcxTextEdit;
    edtModel: TcxTextEdit;
    edtRegNo: TcxTextEdit;
    memContactDetailComment: TcxMemo;
    memVComment: TcxMemo;
    lucPDOB: TcxDateEdit;
    lucRenewlDate: TcxDateEdit;
    cbxPPrimaryContact: TcxCheckBox;
    cbxMaintenancePlan: TcxCheckBox;
    edtYear: TcxCurrencyEdit;
    lblReq1: TcxLabel;
    styMandatory: TcxEditStyleController;
    lblReq2: TcxLabel;
    lblReq3: TcxLabel;
    lblReq4: TcxLabel;
    lblReq5: TcxLabel;
    litLegend: TdxLayoutItem;
    lblLegend: TcxLabel;
    litRequired: TdxLayoutItem;
    grpRequired: TdxLayoutGroup;
    lblRequired: TcxLabel;
    lblReq8: TcxLabel;
    lblReq9: TcxLabel;
    lblreq10: TcxLabel;
    lblReq11: TcxLabel;
    lblReq12: TcxLabel;
    lblReq13: TcxLabel;
    lblReq14: TcxLabel;
    lblReq15: TcxLabel;
    lblReq16: TcxLabel;
    lblReq17: TcxLabel;
    lblReq18: TcxLabel;
    lblReq19: TcxLabel;
    lblReq20: TcxLabel;
    lblReq21: TcxLabel;
    lblReq22: TcxLabel;
    lblReq23: TcxLabel;
    lblReq24: TcxLabel;
    lblReq25: TcxLabel;
    lblReq26: TcxLabel;
    tabContactDetailPerson: TcxTabSheet;
    lucCDPContactType: TcxLookupComboBox;
    edtCDPValue: TcxTextEdit;
    memCDPComment: TcxMemo;
    lblReq6: TcxLabel;
    lblReq7: TcxLabel;
    layVehicle: TdxLayoutControl;
    layVehicleGroup_Root: TdxLayoutGroup;
    grpMake: TdxLayoutGroup;
    grpRegNo: TdxLayoutGroup;
    grpMaintenancePlan: TdxLayoutGroup;
    grpComment: TdxLayoutGroup;
    litMake: TdxLayoutItem;
    litModel: TdxLayoutItem;
    litRegNo: TdxLayoutItem;
    litYear: TdxLayoutItem;
    litMaintenancePlan: TdxLayoutItem;
    litRenewalDate: TdxLayoutItem;
    litVComment: TdxLayoutItem;
    litMand22: TdxLayoutItem;
    litMand23: TdxLayoutItem;
    litMand24: TdxLayoutItem;
    litMand25: TdxLayoutItem;
    litMand26: TdxLayoutItem;
    layContactDetails: TdxLayoutControl;
    layContactDetailsGroup_Root: TdxLayoutGroup;
    grpContactType: TdxLayoutGroup;
    grpContactValue: TdxLayoutGroup;
    litContactType: TdxLayoutItem;
    litContactValue: TdxLayoutItem;
    litContactComment: TdxLayoutItem;
    litMand1: TdxLayoutItem;
    litMand2: TdxLayoutItem;
    layContactPerson: TdxLayoutControl;
    layContactPersonGroup_Root: TdxLayoutGroup;
    grpCPName: TdxLayoutGroup;
    grpCPSalutation: TdxLayoutGroup;
    grpCPDOB: TdxLayoutGroup;
    grpCPIDNo: TdxLayoutGroup;
    litCPFirstName: TdxLayoutItem;
    litCPLasNname: TdxLayoutItem;
    litCPSalutation: TdxLayoutItem;
    litCPInitials: TdxLayoutItem;
    litCPOtherName: TdxLayoutItem;
    litCPDOB: TdxLayoutItem;
    litCPIDNo: TdxLayoutItem;
    litCPJobFunction: TdxLayoutItem;
    litCPPassportNo: TdxLayoutItem;
    litCPPrimaryContact: TdxLayoutItem;
    grpJobFunction: TdxLayoutGroup;
    litMand3: TdxLayoutItem;
    litMand4: TdxLayoutItem;
    litMand5: TdxLayoutItem;
    spc2: TdxLayoutEmptySpaceItem;
    spc3: TdxLayoutEmptySpaceItem;
    spc4: TdxLayoutEmptySpaceItem;
    spc6: TdxLayoutEmptySpaceItem;
    spc7: TdxLayoutEmptySpaceItem;
    layContactDetailsPerson: TdxLayoutControl;
    layContactDetailsPersonGroup_Root: TdxLayoutGroup;
    grpCDPContactType: TdxLayoutGroup;
    grpCDPValue: TdxLayoutGroup;
    litCDPContactType: TdxLayoutItem;
    litCDPValue: TdxLayoutItem;
    litCDPComment: TdxLayoutItem;
    litReq6: TdxLayoutItem;
    litReq7: TdxLayoutItem;
    layBankingDetails: TdxLayoutControl;
    layBankingDetailsGroup_Root: TdxLayoutGroup;
    grpBank: TdxLayoutGroup;
    grpAccountHolderName: TdxLayoutGroup;
    grpAccountType: TdxLayoutGroup;
    litBankName: TdxLayoutItem;
    litBranchCode: TdxLayoutItem;
    litAccountType: TdxLayoutItem;
    litAccountNo: TdxLayoutItem;
    litFirstName: TdxLayoutItem;
    litLastName: TdxLayoutItem;
    litReq8: TdxLayoutItem;
    litlitlitReq9: TdxLayoutItem;
    litlitlitReq10: TdxLayoutItem;
    litReq11: TdxLayoutItem;
    litlitlitReq12: TdxLayoutItem;
    litReq13: TdxLayoutItem;
    btnBillingToPhysical: TcxButton;
    layDirector: TdxLayoutControl;
    layDirectorGroup_Root: TdxLayoutGroup;
    grpDFirstName: TdxLayoutGroup;
    grpDSalutation: TdxLayoutGroup;
    grpTaxNo: TdxLayoutGroup;
    litDFirstName: TdxLayoutItem;
    litDLastName: TdxLayoutItem;
    litDSalutation: TdxLayoutItem;
    litDTaxNo: TdxLayoutItem;
    litDMobileNo: TdxLayoutItem;
    litDEmailAddress: TdxLayoutItem;
    litDOtherName: TdxLayoutItem;
    litReq14: TdxLayoutItem;
    litReq15: TdxLayoutItem;
    litReq16: TdxLayoutItem;
    spc1: TdxLayoutEmptySpaceItem;
    layBeneficiary: TdxLayoutControl;
    layBeneficiaryGroup_Root: TdxLayoutGroup;
    grpBFName: TdxLayoutGroup;
    grpBFSalutation: TdxLayoutGroup;
    litBFFirstName: TdxLayoutItem;
    litBFLastName: TdxLayoutItem;
    litBFMobileNo: TdxLayoutItem;
    litBFEmailAddress: TdxLayoutItem;
    litReq17: TdxLayoutItem;
    litReq18: TdxLayoutItem;
    litReq19: TdxLayoutItem;
    litReq21: TdxLayoutItem;
    grpBFEmailAddress: TdxLayoutGroup;
    litReq20: TdxLayoutItem;
    layAddress: TdxLayoutControl;
    layAddressGroup_Root: TdxLayoutGroup;
    grpPhysicalPostal: TdxLayoutGroup;
    grpPhysical: TdxLayoutGroup;
    grpPostal: TdxLayoutGroup;
    grpPhysPostalControls: TdxLayoutGroup;
    grpBilling: TdxLayoutGroup;
    grpBilliingControls: TdxLayoutGroup;
    litlitPhysical: TdxLayoutItem;
    litPostal: TdxLayoutItem;
    litBilling: TdxLayoutItem;
    litPhysicalTopostal: TdxLayoutItem;
    litPostalToPhysical: TdxLayoutItem;
    litPhysicalToBilling: TdxLayoutItem;
    litBillingToPhysical: TdxLayoutItem;
    spc5: TdxLayoutEmptySpaceItem;
    litBillingToPostal: TdxLayoutItem;
    litPostalToBilling: TdxLayoutItem;
    spc8: TdxLayoutEmptySpaceItem;
    tipPhysicalToPostal: TdxScreenTip;
    tipPostalToPhysical: TdxScreenTip;
    tipPhysicalToBilling: TdxScreenTip;
    tipBillingToPhysical: TdxScreenTip;
    tipBillingToPostal: TdxScreenTip;
    tipPostalToBillling: TdxScreenTip;
    litSubTitle: TdxLayoutItem;
    stySubTitle: TcxEditStyleController;
    lblSubTitle: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lucContactTypePropertiesChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnPhysicalToPostalClick(Sender: TObject);
    procedure btnPostalToPhysicalClick(Sender: TObject);
    procedure btnPhysicalToBillingClick(Sender: TObject);
    procedure btnBillingToPhysicalClick(Sender: TObject);
    procedure btnBillingToPostalClick(Sender: TObject);
    procedure btnPostalToBillingClick(Sender: TObject);
    procedure edtRegNoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    FMadeChanges: Boolean;

    procedure PopulateControls(DBActionType: TDBActions; DetailID: Integer);
    procedure ValidateData(DetailID: Integer);
  public
    { Public declarations }
  end;

var
  CustomerEditFrm: TCustomerEditFrm;

implementation

{$R *.dfm}

uses
  Lookup_DM,
  MT_DM,
  VBBase_DM, CommonFunction;

procedure TCustomerEditFrm.btnPhysicalToPostalClick(Sender: TObject);
begin
  inherited;
  edtPostal1.Text := edtPhysical1.Text;
  edtPostal2.Text := edtPhysical2.Text;
  edtPostal3.Text := edtPhysical3.Text;
  edtPostal4.Text := edtPhysical4.Text;
  EdtPostalCode.Text := edtPhysicalPostalCode.Text;
end;

procedure TCustomerEditFrm.btnPostalToPhysicalClick(Sender: TObject);
begin
  inherited;
  edtPhysical1.Text := edtPostal1.Text;
  edtPhysical2.Text := edtPostal2.Text;
  edtPhysical3.Text := edtPostal3.Text;
  edtPhysical4.Text := edtPostal4.Text;
  edtPhysicalPostalCode.Text := EdtPostalCode.Text;
end;

procedure TCustomerEditFrm.edtRegNoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
//  if not (Key in [' ']) then
  Key := UpCase(Key);
end;

procedure TCustomerEditFrm.btnPhysicalToBillingClick(Sender: TObject);
begin
  inherited;
  edtBilling1.Text := edtPhysical1.Text;
  edtBilling2.Text := edtPhysical2.Text;
  edtBilling3.Text := edtPhysical3.Text;
  edtBilling4.Text := edtPhysical4.Text;
  edtBillingPostalCode.Text := edtPhysicalPostalCode.Text;
end;

procedure TCustomerEditFrm.btnBillingToPhysicalClick(Sender: TObject);
begin
  inherited;
  edtPhysical1.Text := edtBilling1.Text;
  edtPhysical2.Text := edtBilling2.Text;
  edtPhysical3.Text := edtBilling3.Text;
  edtPhysical4.Text := edtBilling4.Text;
  edtPhysicalPostalCode.Text := edtBillingPostalCode.Text;
end;

procedure TCustomerEditFrm.btnBillingToPostalClick(Sender: TObject);
begin
  inherited;
  edtPostal1.Text := edtBilling1.Text;
  edtPostal2.Text := edtBilling2.Text;
  edtPostal3.Text := edtBilling3.Text;
  edtPostal4.Text := edtBilling4.Text;
  EdtPostalCode.Text := edtBillingPostalCode.Text;
end;

procedure TCustomerEditFrm.btnPostalToBillingClick(Sender: TObject);
begin
  inherited;
  edtBilling1.Text := edtPostal1.Text;
  edtBilling2.Text := edtPostal2.Text;
  edtBilling3.Text := edtPostal3.Text;
  edtBilling4.Text := edtPostal4.Text;
  edtBillingPostalCode.Text := EdtPostalCode.Text;
end;

procedure TCustomerEditFrm.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  Caption := 'Customer Detail';
  Width := 750;
  Height := 610;
  layContactDetails.Align := alClient;
  layContactDetails.Align := alClient;
  layMain.Align := alClient;
  layVehicle.LayoutLookAndFeel := lafCustomSkin;
  layContactDetails.LayoutLookAndFeel := lafCustomSkin;
  layContactDetailsPerson.LayoutLookAndFeel := lafCustomSkin;
  layBankingDetails.LayoutLookAndFeel := lafCustomSkin;
  layDirector.LayoutLookAndFeel := lafCustomSkin;
  layBeneficiary.LayoutLookAndFeel := lafCustomSkin;
  layVehicle.LayoutLookAndFeel := lafCustomSkin;
  layContactPerson.LayoutLookAndFeel := lafCustomSkin;
  layAddress.LayoutLookAndFeel := lafCustomSkin;

//  btnPhysicalToPostal.Font.Color := RootLookAndFeel.SkinPainter.DefaultContentColor;

  styHintController.HintHidePause := 5000;
  styHeaderFont.Style.Font.Color := cxLookAndFeels.RootLookAndFeel.SkinPainter.DefaultContentTextColor;
  styHeaderFont.Style.TextColor := cxLookAndFeels.RootLookAndFeel.SkinPainter.DefaultContentTextColor;
  stySubTitle.Style.Font.Color := cxLookAndFeels.RootLookAndFeel.SkinPainter.DefaultContentTextColor;
  stySubTitle.Style.TextColor := cxLookAndFeels.RootLookAndFeel.SkinPainter.DefaultContentTextColor;
  pagMain.Align := alClient;
  pagMain.HideTabs := True;
  btnSave.Enabled := False;

  for I := 0 to pagMain.PageCount - 1 do
    pagMain.Pages[I].TabVisible := False;

  lucContactType.Properties.ListSource := LookupDM.dtsContactType;
  lucBank.Properties.ListSource := LookupDM.dtsBank;
  lucAccType.Properties.ListSource := LookupDM.dtsBankAccountType;
  lucPSalutation.Properties.ListSource := LookupDM.dtsSalutation;
  lucBFSalutation.Properties.ListSource := LookupDM.dtsSalutation;
  lucVehicleMake.Properties.ListSource := LookupDM.dtsVehicleMake;
  lucPJobFunction.Properties.ListSource := LookupDM.dtsJobFunction;
  lucDSalutation.Properties.ListSource := LookupDM.dtsDirectorSalutation;
  PopulateControls(MTDM.FDBAction, MTDM.FDetailIndex);
  MTDM.ClearFieldValueArray;
  FMadeChanges := False;
end;

procedure TCustomerEditFrm.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  Confirmation: Integer;
begin
  inherited;
  if (Key = VK_RETURN) or ((ssCtrl in Shift) and (Key in [83, 115])) then
  begin
    if btnSave.Enabled then
      ModalResult := mrOK;
  end

  else if Key = VK_ESCAPE then
    if FMadeChanges then
    begin
      Beep;
      Confirmation :=
        DisplayMsg(
        Application.Title,
        'Save Data Confirmation',
        'Changes have been made. Do you want to save changes before closing?',
        mtConfirmation,
        [mbYes, mbNo]
        );

      case Confirmation of
        mrNo: ModalResult := mrCancel;
        mrCancel: ModalResult := mrNone;
        mrYes:
          if btnSave.Enabled then
            ModalResult := mrOK
          else
          begin
            ModalResult := mrNone;
            Beep;
            DisplayMsg(
              Application.Title,
              'Incomplete Data',
              'One or more required fields has not been entered. Please enter all mandatory fields and try again or cancel the operation.',
              mtError,
              [mbOK]
              );
          end;
      end;
    end
    else
      ModalResult := mrCancel;
end;

procedure TCustomerEditFrm.FormShow(Sender: TObject);
begin
  inherited;
  pagMain.Pages[MTDM.FDetailIndex].Visible := True;

  case MTDM.FDetailIndex of
    0:
      begin
        if lucContactType.CanFocus then
          lucContactType.SetFocus;

//          Height :=  400;
//          Width := 650;

//        case MTDM.FDBAction of
//          acInsert:
//          begin
//
//          end;
//          acModify: MTDM.cdsContactDetailCo.Edit;
//        end;
      end;

    1:
      begin
        if edtPhysical1.CanFocus then
          edtPhysical1.SetFocus;
//        case MTDM.FDBAction of
//          acInsert: MTDM.cdsAddress.Insert;
//          acModify: MTDM.cdsAddress.Edit;
//        end;
      end;

    2:
      begin
        if edtPFirstName.CanFocus then
          edtPFirstName.SetFocus;
//        case MTDM.FDBAction of
//          acInsert: MTDM.cdsContactPerson.Insert;
//          acModify: MTDM.cdsContactPerson.Edit;
//        end;

//        case MTDM.FDetailSubIndex of
//          2:
//            begin
//              case MTDM.FDBAction of
//                acInsert: MTDM.cdsContactPerson.Insert;
//                acModify: MTDM.cdsContactPerson.Edit;
//              end;
//            end;
//          3:
//            begin
//              case MTDM.FDBAction of
//                acInsert: MTDM.cdsContactDetailPerson.Insert;
//                acModify: MTDM.cdsContactDetailPerson.Edit;
//              end;
//            end;
//        end;
      end;

//    3:
//      begin
//      end;

    3:
      begin
        if lucCDPContactType.CanFocus then
          lucCDPContactType.SetFocus;
//        case MTDM.FDBAction of
//          acInsert: MTDM.cdsBankingDetail.Insert;
//          acModify: MTDM.cdsBankingDetail.Edit;
//        end;
      end;

    4:
      begin
        if lucBank.CanFocus then
          lucBank.SetFocus;
//        case MTDM.FDBAction of
//          acInsert: MTDM.cdsBankingDetail.Insert;
//          acModify: MTDM.cdsBankingDetail.Edit;
//        end;
      end;

    5:
      begin
        if edtDFirstName.CanFocus then
          edtDFirstName.SetFocus;
//        case MTDM.FDBAction of
//          acInsert: MTDM.cdsDirector.Insert;
//          acModify: MTDM.cdsDirector.Edit;
//        end;
      end;

    6:
      begin
        if edtBFirstName.CanFocus then
          edtBFFirstName.SetFocus;
//        case MTDM.FDBAction of
//          acInsert: MTDM.cdsBeneficiary.Insert;
//          acModify: MTDM.cdsBeneficiary.Edit;
//        end;
      end;

    7:
      begin
        if lucVehicleMake.CanFocus then
          lucVehicleMake.SetFocus;
//        case MTDM.FDBAction of
//          acInsert: MTDM.cdsVehicle.Insert;
//          acModify: MTDM.cdsVehicle.Edit;
//        end;
      end;
  end;
  Screen.Cursor := crDefault;
end;

procedure TCustomerEditFrm.lucContactTypePropertiesChange(Sender: TObject);
begin
  inherited;
  FMadeChanges := True;
  ValidateData(MTDM.FDetailIndex);
end;

procedure TCustomerEditFrm.PopulateControls(DBActionType: TDBActions; DetailID: Integer);
begin
  case DBActionType of
    acInsert:
      begin
        case DetailID of
          0: // Company contact
            begin
              lucContactType.Clear;
              edtContactDetailValue.Clear;
              memContactDetailComment.Clear;
            end;

          1: // Address
            begin
              edtPhysical1.Clear;
              edtPhysical2.Clear;
              edtPhysical3.Clear;
              edtPhysical4.Clear;
              edtPhysicalPostalCode.Clear;

              edtPostal1.Clear;
              edtPostal2.Clear;
              edtPostal3.Clear;
              edtPostal4.Clear;
              EdtPostalCode.Clear;

              edtBilling1.Clear;
              edtBilling2.Clear;
              edtBilling3.Clear;
              edtBilling4.Clear;
              edtBillingPostalCode.Clear;
            end;

          2: // Contact person
            begin
              edtPFirstName.Clear;
              edtPLastName.Clear;
              edtPOtherName.Clear;
              edtPIDNo.Clear;
              edtPPassportNo.Clear;
              lucPSalutation.Clear;
              edtPInitials.Clear;
              lucPDOB.Clear;
              lucPJobFunction.Clear;
              cbxPPrimaryContact.Checked := False;
            end;

          3: // Contact details person
            begin
              lucCDPContactType.Clear;
              edtCDPValue.Clear;
              memCDPComment.Clear;
            end;

          4: // Banking details
            begin
              lucBank.Clear;
              edtBranchCode.Clear;
              lucAccType.Clear;
              edtAccNo.Clear;
              edtBFirstName.Clear;
              edtBLastName.Clear;
            end;

          5: // Director
            begin
              edtDFirstName.Clear;
              edtDLastName.Clear;
              edtDOtherName.Clear;
              edtDEmailAddress.Clear;
              lucDSalutation.Clear;
              edtDTaxNo.Clear;
              edtDMobileNo.Clear;
            end;

          6: // Beneficiary
            begin
              edtBFFirstName.Clear;
              edtBFLastName.Clear;
              edtBFMobileNo.Clear;
              edtBFEmailAddress.Clear;
            end;

          7: // Vehicle
            begin
              edtYear.Clear;
              lucVehicleMake.Clear;
              edtModel.Clear;
              edtRegNo.Clear;
              lucRenewlDate.Clear;
              cbxMaintenancePlan.Checked := False;
              memVComment.Clear;
            end;
        end;
      end;
    acModify:
      begin
        case DetailID of
          0: // Company contact
            begin
              lucContactType.EditValue := MTDM.cdsContactDetailCo.FieldByName('CONTACT_TYPE_ID').AsInteger;
              edtContactDetailValue.Text := MTDM.cdsContactDetailCo.FieldByName('VALUE').AsString;
              memContactDetailComment.Text := MTDM.cdsContactDetailCo.FieldByName('COMMENT').AsString;
            end;

          1: // Address
            begin
              edtPhysical1.Text := MTDM.cdsAddress.FieldByName('PHYSICAL1').AsString;
              edtPhysical2.Text := MTDM.cdsAddress.FieldByName('PHYSICAL2').AsString;
              edtPhysical3.Text := MTDM.cdsAddress.FieldByName('PHYSICAL3').AsString;
              edtPhysical4.Text := MTDM.cdsAddress.FieldByName('PHYSICAL4').AsString;
              edtPhysicalPostalCode.Text := MTDM.cdsAddress.FieldByName('PHYSICAL_CODE').AsString;

              edtPostal1.Text := MTDM.cdsAddress.FieldByName('POSTAL1').AsString;
              edtPostal2.Text := MTDM.cdsAddress.FieldByName('POSTAL2').AsString;
              edtPostal3.Text := MTDM.cdsAddress.FieldByName('POSTAL3').AsString;
              edtPostal4.Text := MTDM.cdsAddress.FieldByName('POSTAL4').AsString;
              EdtPostalCode.Text := MTDM.cdsAddress.FieldByName('POSTAL_CODE').AsString;

              edtBilling1.Text := MTDM.cdsAddress.FieldByName('BILLING1').AsString;
              edtBilling2.Text := MTDM.cdsAddress.FieldByName('BILLING2').AsString;
              edtBilling3.Text := MTDM.cdsAddress.FieldByName('BILLING3').AsString;
              edtBilling4.Text := MTDM.cdsAddress.FieldByName('BILLING4').AsString;
              edtBillingPostalCode.Text := MTDM.cdsAddress.FieldByName('BILLING_CODE').AsString;
            end;

          2: // Contact person
            begin
              edtPFirstName.Text := MTDM.cdsContactPerson.FieldByName('FIRST_NAME').AsString;
              edtPLastName.Text := MTDM.cdsContactPerson.FieldByName('LAST_NAME').AsString;
              edtPOtherName.Text := MTDM.cdsContactPerson.FieldByName('OTHER_NAME').AsString;
              edtPIDNo.Text := MTDM.cdsContactPerson.FieldByName('ID_NUMBER').AsString;
              edtPPassportNo.Text := MTDM.cdsContactPerson.FieldByName('PASSPORT_NUMBER').AsString;
              lucPSalutation.EditValue := MTDM.cdsContactPerson.FieldByName('SALUTATION_ID').AsInteger;
              edtPInitials.Text := MTDM.cdsContactPerson.FieldByName('INITIALS').AsString;
              lucPDOB.EditValue := MTDM.cdsContactPerson.FieldByName('DOB').AsDateTime;
              lucPJobFunction.EditValue := MTDM.cdsContactPerson.FieldByName('JOB_FUNCTION_ID').AsInteger;
              cbxPPrimaryContact.Checked := MTDM.cdsContactPerson.FieldByName('IS_PRIMARY_CONTACT').AsInteger = 1;
            end;

          3: // Contact details person
            begin
              lucCDPContactType.EditValue := MTDM.cdsContactDetailPerson.FieldByName('CONTACT_TYPE_ID').AsInteger;
              edtCDPValue.Text := MTDM.cdsContactDetailPerson.FieldByName('VALUE').AsString;
              memCDPComment.Text := MTDM.cdsContactDetailPerson.FieldByName('COMMENT').AsString;
            end;

          4: // Banking details
            begin
              lucBank.EditValue := MTDM.cdsBankingDetail.FieldByName('BANK_ID').AsInteger;
              lucAccType.EditValue := MTDM.cdsBankingDetail.FieldByName('ACCOUNT_TYPE_ID').AsInteger;
              edtBranchCode.Text := MTDM.cdsBankingDetail.FieldByName('BRANCH_CODE').AsString;
              edtAccNo.Text := MTDM.cdsBankingDetail.FieldByName('ACCOUNT_NO').AsString;
              edtBFirstName.Text := MTDM.cdsBankingDetail.FieldByName('FIRST_NAME').AsString;
              edtBLastName.Text := MTDM.cdsBankingDetail.FieldByName('LAST_NAME').AsString;
            end;

          5: // Director
            begin
              edtDFirstName.Text := MTDM.cdsDirector.FieldByName('FIRST_NAME').AsString;
              edtDLastName.Text := MTDM.cdsDirector.FieldByName('LAST_NAME').AsString;
              edtDOtherName.Text := MTDM.cdsDirector.FieldByName('MIDDLE_NAME').AsString;
              edtDEmailAddress.Text := MTDM.cdsDirector.FieldByName('EMAIL_ADDRESS').AsString;
              lucDSalutation.EditValue := MTDM.cdsDirector.FieldByName('SALUTATION_ID').AsInteger;
              edtDTaxNo.Text := MTDM.cdsDirector.FieldByName('TAX_NO').AsString;
              edtDMobileNo.Text := MTDM.cdsDirector.FieldByName('MOBILE_PHONE').AsString;
            end;

          6: // Beneficiary
            begin
              lucBFSalutation.EditValue := MTDM.cdsBeneficiary.FieldByName('SALUTATION_ID').AsInteger;
              edtBFFirstName.Text := MTDM.cdsBeneficiary.FieldByName('FIRST_NAME').AsString;
              edtBFLastName.Text := MTDM.cdsBeneficiary.FieldByName('LAST_NAME').AsString;
              edtBFMobileNo.Text := MTDM.cdsBeneficiary.FieldByName('MOBILE_PHONE').AsString;
              edtBFEmailAddress.Text := MTDM.cdsBeneficiary.FieldByName('EMAIL_ADDRESS').AsString;
            end;

          7: // Vehicle
            begin
              edtYear.Text := IntToStr(MTDM.cdsVehicle.FieldByName('THE_YEAR').AsInteger);
              lucVehicleMake.EditValue := MTDM.cdsVehicle.FieldByName('VEHICLE_MAKE_ID').AsString;
              edtModel.Text := MTDM.cdsVehicle.FieldByName('VEHICLE_MODEL').AsString;
              edtRegNo.Text := MTDM.cdsVehicle.FieldByName('REG_NO').AsString;
              lucRenewlDate.EditValue := MTDM.cdsVehicle.FieldByName('RENEWAL_DATE').AsDateTime;
              cbxMaintenancePlan.Checked := MTDM.cdsVehicle.FieldByName('MAINTENANCE_PLAN').AsInteger = 1;
              memVComment.Text := MTDM.cdsVehicle.FieldByName('COMMENT').AsString;
            end;
        end;
      end;
  end;

end;

procedure TCustomerEditFrm.ValidateData(DetailID: Integer);
begin
  case DetailID of
    0: // Company contact
      begin
        btnSave.Enabled :=
          (Length(Trim(lucContactType.Text)) > 0)
          and (Length(Trim(edtContactDetailValue.Text)) > 0);
      end;

    1: // Address
      begin
        // As long as one field is captured it's OK to post.
        btnSave.Enabled :=
          (Length(Trim(edtPhysical1.Text)) > 0)
          or (Length(Trim(edtPhysical2.Text)) > 0)
          or (Length(Trim(edtPhysical3.Text)) > 0)
          or (Length(Trim(edtPhysical4.Text)) > 0)
          or (Length(Trim(edtPhysicalPostalCode.Text)) > 0)
          or (Length(Trim(edtPostal1.Text)) > 0)
          or (Length(Trim(edtPostal2.Text)) > 0)
          or (Length(Trim(edtPostal3.Text)) > 0)
          or (Length(Trim(edtPostal4.Text)) > 0)
          or (Length(Trim(EdtPostalCode.Text)) > 0)
          or (Length(Trim(edtBilling1.Text)) > 0)
          or (Length(Trim(edtBilling2.Text)) > 0)
          or (Length(Trim(edtBilling3.Text)) > 0)
          or (Length(Trim(edtBilling4.Text)) > 0)
          or (Length(Trim(edtBillingPostalCode.Text)) > 0);
      end;

    2: // Contact person
      begin
        btnSave.Enabled :=
          (Length(Trim(edtPFirstName.Text)) > 0)
          and (Length(Trim(edtPLastName.Text)) > 0)
          and (Length(Trim(lucPSalutation.Text)) > 0);
      end;

    3: // Contact details Person
      begin
        btnSave.Enabled :=
          (Length(Trim(lucCDPContactType.Text)) > 0)
          and (Length(Trim(edtCDPValue.Text)) > 0);
      end;

    4: // Banking details
      begin
        btnSave.Enabled :=
          (Length(Trim(lucBank.Text)) > 0)
          and (Length(Trim(lucAccType.Text)) > 0)
          and (Length(Trim(edtAccNo.Text)) > 0);
      end;

    5: // Director
      begin
        btnSave.Enabled :=
          (Length(Trim(edtDFirstName.Text)) > 0)
          and (Length(Trim(edtDLastName.Text)) > 0)
          and (Length(Trim(lucDSalutation.Text)) > 0);
//          and (Length(Trim(edtDMobileNo.Text)) > 0);
      end;

    6: // Beneficiary
      begin
        btnSave.Enabled :=
          (Length(Trim(lucBFSalutation.Text)) > 0)
          and (Length(Trim(edtBFFirstName.Text)) > 0)
          and (Length(Trim(edtBFLastName.Text)) > 0)
          and (Length(Trim(edtBFMobileNo.Text)) > 0)
          and (Length(Trim(edtBFEmailAddress.Text)) > 0)
      end;

    7: // Vehicle
      begin
        btnSave.Enabled :=
          (Length(Trim(edtYear.Text)) > 0)
          and (Length(Trim(lucVehicleMake.Text)) > 0)
          and (Length(Trim(edtModel.Text)) > 0)
          and (Length(Trim(edtRegNo.Text)) > 0)
          and (Length(Trim(lucRenewlDate.Text)) > 0)
      end;
  end;
end;

end.

