unit Director_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Dialogs, System.IOUtils,
  System.ImageList, System.Actions, Vcl.ActnList, Vcl.ImgList, Vcl.Menus,
  Vcl.StdCtrls,

  BaseGrid_Frm, VBPrintExportData, CommonValues, CommonFunctions, VBCommonValues,

  frxClass, frxDBSet,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData, dxLayoutContainer,
  cxImageList, dxLayoutLookAndFeels, cxClasses, cxDBNavigator, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, dxLayoutControl, cxCurrencyEdit, cxTextEdit,
  dxScrollbarAnnotations, dxPrnDev, dxPrnDlg, cxContainer, dxLayoutcxEditAdapters,
  cxCheckBox, cxButtons, cxDBLookupComboBox;

type
  TDirectorFrm = class(TBaseGridFrm)
    edtID: TcxGridDBBandedColumn;
    edtCustomerID: TcxGridDBBandedColumn;
    lucSalutationID: TcxGridDBBandedColumn;
    edtFirstName: TcxGridDBBandedColumn;
    edtLastName: TcxGridDBBandedColumn;
    edtMiddleName: TcxGridDBBandedColumn;
    edtTaxNo: TcxGridDBBandedColumn;
    edtMobileNo: TcxGridDBBandedColumn;
    edtEmailAddress: TcxGridDBBandedColumn;
    edtFullNameFirst: TcxGridDBBandedColumn;
    edtIDNumber: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure navMasterButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure DoEdit(Sender: TObject);
    procedure viewMasterDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Doinsert(Sender: TObject);
  private
    { Private declarations }
    procedure EditRecord;
    procedure HandleTSAfterPost(var MyMsg: TMessage); message WM_SYNCH_DATA;
  public
    { Public declarations }
  end;

var
  DirectorFrm: TDirectorFrm;

implementation

{$R *.dfm}

uses
  MT_DM,
  VBBase_DM,
  RUtils,
  Report_DM,
  DirectorDetail_Frm,
  Lookup_DM;

procedure TDirectorFrm.DoEdit(Sender: TObject);
begin
  VBBaseDM.DBAction := acEdit;
  EditRecord;
end;

procedure TDirectorFrm.Doinsert(Sender: TObject);
begin
  VBBaseDM.DBAction := acInsert;
  EditRecord;
end;

procedure TDirectorFrm.EditRecord;
begin
  VBBaseDM.IsCustomer :=
    (VBBaseDM.DBAction = acEdit) and (MTDM.FieldValue.CustomerID > 0);

  if VBBaseDM.IsCustomer then
    MTDM.FieldValue.CustomerID := MTDM.cdsDirector.FieldByName('CUSTOMER_ID').AsInteger;

  if DirectorDetailFrm = nil then
    DirectorDetailFrm := TDirectorDetailFrm.Create(nil);

  try
    if DirectorDetailFrm.ShowModal = mrCancel then
      Exit;

    case VBBaseDM.DBAction of
      acInsert: MTDM.cdsDirector.Insert;
      acEdit:
        begin
          VBBaseDM.IsCustomer := MTDM.cdsDirector.FieldByName('CUSTOMER_ID').AsInteger > 0;
          MTDM.cdsDirector.edit;
        end;
    end;

//    VBBaseDM.IsCustomer :=
//      (VBBaseDM.DBAction = acEdit) and (MTDM.FieldValue.CustomerID > 0);
//
//  if VBBaseDM.IsCustomer then
//    MTDM.FieldValue.CustomerID := MTDM.cdsDirector.FieldByName('CUSTOMER_ID').AsInteger;

    MTDM.cdsDirector.FieldByName('SALUTATION_ID').AsInteger := MTDM.FieldValue.SalutationID;
    MTDM.cdsDirector.FieldByName('FIRST_NAME').AsString := MTDM.FieldValue.FirstName;
    MTDM.cdsDirector.FieldByName('LAST_NAME').AsString := MTDM.FieldValue.LastName;
    MTDM.cdsDirector.FieldByName('OTHER_NAME').AsString := MTDM.FieldValue.OtherName;
    MTDM.cdsDirector.FieldByName('TAX_NO').AsString := MTDM.FieldValue.TaxNo;
    MTDM.cdsDirector.FieldByName('MOBILE_PHONE').AsString := MTDM.FieldValue.MobileNumber;
    MTDM.cdsDirector.FieldByName('EMAIL_ADDRESS').AsString := MTDM.FieldValue.EmailAddress;

    if VBBaseDM.DBAction = acInsert then
      MTDM.cdsDirector.FieldByName('CUSTOMER_ID').AsInteger := MTDM.FieldValue.CustomerID;

    MTDM.cdsDirector.Post;

    if VBBaseDM.LastID > 0 then
      MTDM.UpdateIDValue(MTDM.cdsDirector, VBBaseDM.LastID);

  finally
    DirectorDetailFrm.Close;
    FreeAndNil(DirectorDetailFrm);
  end;
end;

procedure TDirectorFrm.FormCreate(Sender: TObject);
var
  OrderByClause, FileName: string;
begin
  Caption := 'Director Listing';
  layMain.Align := alClient;
  layMain.LayoutLookAndFeel := lafCustomSkin;
  OrderByClause := ' ORDER BY D.CUSTOMER_ID, D.FIRST_NAME, D.LAST_NAME';
  FileName := 'Director';
  navMaster.DataSource := MTDM.dtsDirector;
  viewMaster.DataController.DataSource := MTDM.dtsDirector;
  TcxLookupComboBoxProperties(lucSalutationID.Properties).ListSource := LookupDM.dtsDirectorSalutation;

  VBBaseDM.GetData(16, MTDM.cdsDirector, MTDM.cdsDirector.Name, OrderByClause,
    'C:\Data\Xml\' + FileName + '.xml', MTDM.cdsDirector.UpdateOptions.Generatorname,
    MTDM.cdsDirector.UpdateOptions.UpdateTableName);

  LookupDM.cdsDirectorSalutation.Close;
  LookupDM.cdsDirectorSalutationLU.Close;

  VBBaseDM.GetData(23, LookupDM.cdsSalutation, LookupDM.cdsSalutation.Name, ONE_SPACE,
    'C:\Data\Xml\Slutation.xml', LookupDM.cdsSalutation.UpdateOptions.Generatorname,
    LookupDM.cdsSalutation.UpdateOptions.UpdateTableName);

  LookupDM.cdsDirectorSalutation.Data := LookupDM.cdsSalutation.Data;
  LookupDM.cdsDirectorSalutationLU.Data := LookupDM.cdsSalutation.Data;
  SetButtonVisibility(MTDM.cdsMasterList, 15);
end;

procedure TDirectorFrm.FormShow(Sender: TObject);
begin
  grdMaster.SetFocus;
  viewMaster.Focused := True;
  if viewMaster.DataController.RecordCount > 0 then
  begin
    viewMaster.DataController.FocusedRecordIndex := 0;
    viewMaster.Controller.SelectedRecords[0].Selected := True;
    viewMaster.Controller.FocusedItemIndex := 1;
  end;
end;

procedure TDirectorFrm.navMasterButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  ReportDM.MasterFormType := ftDirector;

  case AButtonIndex of
    NBDI_INSERT, NBDI_EDIT:
      begin
        ADone := True;
        inherited;
        EditRecord;
      end;

    NBDI_DELETE:
      begin
        VBBaseDM.QueryRequest := Format(USE_COUNT, ['SELECT COUNT(ID) AS USE_COUNT FROM BANKING_DETAIL WHERE BANK_ID = ' +
            IntToStr(MTDM.cdsBank.FieldByName('ID').AsInteger)]);

        VBBaseDM.ItemToCount := 'Bank';
        inherited;
      end;

    NBDI_REFRESH:
      begin
        ADone := True;
        inherited;
      end;
  end;
end;

procedure TDirectorFrm.viewMasterDblClick(Sender: TObject);
var
  ADone: Boolean;
begin
  ADone := True;
  navMasterButtonsButtonClick(navMaster, NBDI_EDIT, ADone);
end;

procedure TDirectorFrm.HandleTSAfterPost(var MyMsg: TMessage);
var
  OrderByClause, FileName: string;
  ID: Integer;
begin
  try
    ID := MTDM.cdsDirector.FieldByName('ID').AsInteger;
    MTDM.cdsDirector.Close;

    VBBaseDM.GetData(16, MTDM.cdsDirector, MTDM.cdsDirector.Name, OrderByClause,
      'C:\Data\Xml\' + FileName + '.xml', MTDM.cdsDirector.UpdateOptions.Generatorname,
      MTDM.cdsDirector.UpdateOptions.UpdateTableName);

//    LookupDM.cdsDirectorSalutation.Close;
//    LookupDM.cdsDirectorSalutationLU.Close;
//
//    VBBaseDM.GetData(23, LookupDM.cdsSalutation, LookupDM.cdsSalutation.Name, ONE_SPACE,
//      'C:\Data\Xml\Slutation.xml', LookupDM.cdsSalutation.UpdateOptions.Generatorname,
//      LookupDM.cdsSalutation.UpdateOptions.UpdateTableName);

    if not MTDM.cdsDirector.Locate('ID', ID, []) then
      MTDM.cdsDirector.First;
  finally
    MyMsg.Result := -1;
  end;
end;

end.



