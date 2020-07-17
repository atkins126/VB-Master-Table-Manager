unit Director_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Dialogs, System.IOUtils,
  System.ImageList, System.Actions, Vcl.ActnList, Vcl.ImgList, Vcl.Menus,
  Vcl.StdCtrls,

  BaseGrid_Frm, VBPrintExportData, CommonValues,

  frxClass, frxDBSet,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData, dxLayoutContainer,
  cxImageList, dxLayoutLookAndFeels, cxClasses, cxDBNavigator, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, dxLayoutControl, cxCurrencyEdit, cxTextEdit,
  dxScrollbarAnnotations, dxPrnDev, dxPrnDlg, cxContainer,
  dxLayoutcxEditAdapters, cxCheckBox, cxButtons;

type
  TDirectorFrm = class(TBaseGridFrm)
    edtID: TcxGridDBBandedColumn;
    edtCustomerID: TcxGridDBBandedColumn;
    edtCTableID: TcxGridDBBandedColumn;
    edtSalutationID: TcxGridDBBandedColumn;
    edtFirstName: TcxGridDBBandedColumn;
    edtLastName: TcxGridDBBandedColumn;
    edtMiddleName: TcxGridDBBandedColumn;
    edtTaxNo: TcxGridDBBandedColumn;
    edtMobileNo: TcxGridDBBandedColumn;
    edtEmailAddress: TcxGridDBBandedColumn;
    edtFullNameFirst: TcxGridDBBandedColumn;
    edtIDNumber: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure navMasterButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure DoEdit(Sender: TObject);
  private
    { Private declarations }
    procedure EditRecord;
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
  CommonFunctions,
  VBCommonValues,
  RUtils,
  Report_DM, DirectorDetail_Frm;

procedure TDirectorFrm.DoEdit(Sender: TObject);
begin
  inherited;
  EditRecord;
end;

procedure TDirectorFrm.EditRecord;
begin
  if DirectorDetailFrm = nil then
    DirectorDetailFrm := TDirectorDetailFrm.Create(nil);

  try
    if DirectorDetailFrm.ShowModal = mrCancel then
      Exit;
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

  VBBaseDM.GetData(16, MTDM.cdsDirector, MTDM.cdsDirector.Name, OrderByClause,
    'C:\Data\Xml\' + FileName + '.xml', MTDM.cdsDirector.UpdateOptions.Generatorname,
    MTDM.cdsDirector.UpdateOptions.UpdateTableName);

//  Caption := 'Activity Type';
//  viewMaster.DataController.DataSource := MTDM.dtsDirector;
//  navMaster.DataSource := MTDM.dtsDirector;
//
//  {TODO: Change this to the correct values}
//  VBBaseDM.GetData(39, MTDM.cdsActivityType, MTDM.cdsActivityType.Name, ONE_SPACE,
//    'C:\Data\Xml\Activity Type.xml', MTDM.cdsActivityType.UpdateOptions.Generatorname,
//    MTDM.cdsActivityType.UpdateOptions.UpdateTableName);

  SetButtonVisibility(MTDM.cdsMasterList, 15);
end;

procedure TDirectorFrm.navMasterButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
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
  end;

end;

end.



