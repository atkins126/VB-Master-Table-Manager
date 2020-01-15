unit CustomerGroup_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, System.ImageList, System.Actions, Vcl.ActnList,
  Vcl.ImgList, Vcl.Controls, Vcl.Dialogs, Data.DB, sYSTEM.iouTILS,

  BaseGrid_Frm,VBPrintExportData, CommonValues,

  frxClass, frxDBSet,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, dxDateRanges, cxDBData, dxLayoutContainer, cxImageList,
  dxLayoutLookAndFeels, cxClasses, cxDBNavigator, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, cxCurrencyEdit,
  cxGridDBBandedTableView, cxGrid, dxLayoutControl, cxTextEdit, dxPrnDev, dxPrnDlg,
  dxScrollbarAnnotations, cxContainer, dxLayoutcxEditAdapters, cxCheckBox;

type
  TCustomerGroupFrm = class(TBaseGridFrm)
    edtID: TcxGridDBBandedColumn;
    edtName: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure navMasterButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CustomerGroupFrm: TCustomerGroupFrm;

implementation

{$R *.dfm}

uses
  MT_DM,
  VBBase_DM,
  CommonFunction,
  VBCommonValues,
  RUtils,
  Report_DM;

procedure TCustomerGroupFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Caption := 'Customer Group';
  viewMaster.DataController.DataSource := MTDM.dtsCustomerGroup;
  navMaster.DataSource := MTDM.dtsCustomerGroup;

  VBBaseDM.GetData(56, MTDM.cdsCustomerGroup, MTDM.cdsCustomerGroup.Name, '',
    'C:\Data\Xml\Customer Group.xml', MTDM.cdsCustomerGroup.UpdateOptions.Generatorname,
    MTDM.cdsCustomerGroup.UpdateOptions.UpdateTableName);

  SetButtonVisibility(MTDM.cdsMasterList, 18);
end;

procedure TCustomerGroupFrm.navMasterButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
var
  RepFileName: string;
begin
  Screen.Cursor := crHourglass;
  ReportDM.MasterFormType := ftCustomerGroup;
  case AButtonIndex of
    NBDI_DELETE:
      begin
        VBBaseDM.QueryRequest := Format(USE_COUNT, ['SELECT COUNT(ID) AS USE_COUNT FROM CUSTOMER WHERE CUSOTMER_GROUP_ID = ' +
          IntToStr(MTDM.cdsCustomerGroup.FieldByName('ID').AsInteger)]);

        VBBaseDM.ItemToCount := 'Customer Group';
        inherited;
      end;

    16, 17, 18, 19:
      begin
        inherited;
        try
          case ReportDM.ReportAction of
            raPreview, raPrint:
              begin
                RepFileName := MTDM.ShellResource.ReportFolder + 'MasterGenericReport.fr3';

                if not TFile.Exists(RepFileName) then
                  raise EFileNotFoundException.Create('Report file: ' + RepFileName + ' not found. Cannot load report.');

                ReportDM.PrintReport;
              end;

            raExcel:
              begin
                ReportDM.ExportToExcel(grdMaster, EXCEL_DOCS + 'Customer Group Listing', cbxOpenAfterExport.Checked);
              end;

            raPDF:
              begin
                RepFileName := MTDM.ShellResource.ReportFolder + 'MasterGenericReport.fr3';

                if not TFile.Exists(RepFileName) then
                  raise EFileNotFoundException.Create('Report file: ' + RepFileName + ' not found. Cannot load report.');

                ReportDM.ExportToPDF(PDF_DOCS + 'Customer Group Listing', cbxOpenAfterExport.Checked);
              end;
          end;
        finally
          Screen.Cursor := crDefault;
        end;
      end;
  end;
end;

end.

