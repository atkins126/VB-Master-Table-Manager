unit MonthOfYear_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, Vcl.ImgList, cxImageList, Vcl.ActnList, Data.DB,
  Vcl.Controls, Vcl.Dialogs, System.Actions, System.ImageList, System.IOUtils,

  BaseGrid_Frm, VBPrintExportData, CommonValues,

  frxClass, frxDBSet,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, dxDateRanges, cxDBData, dxLayoutContainer, dxLayoutLookAndFeels,
  cxClasses, cxDBNavigator, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  dxLayoutControl, cxCurrencyEdit, cxTextEdit, dxScrollbarAnnotations, dxPrnDev,
  dxPrnDlg, cxContainer, dxLayoutcxEditAdapters, cxCheckBox;

type
  TMonthOfYearFrm = class(TBaseGridFrm)
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
  MonthOfYearFrm: TMonthOfYearFrm;

implementation

{$R *.dfm}

uses
  MT_DM,
  VBBase_DM,
  CommonFunction,
  VBCommonValues,
  RUtils,
  Report_DM;

procedure TMonthOfYearFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Caption := 'Month of Year';
  viewMaster.DataController.DataSource := MTDM.dtsMonthOfyear;
  navMaster.DataSource := MTDM.dtsMonthOfyear;

  VBBaseDM.GetData(20, MTDM.cdsMonthOfYear, MTDM.cdsMonthOfYear.Name, '',
    'C:\Data\Xml\Month of Year.xml', MTDM.cdsMonthOfYear.UpdateOptions.Generatorname,
    MTDM.cdsMonthOfYear.UpdateOptions.UpdateTableName);

  SetButtonVisibility(MTDM.cdsMasterList, 9);
end;

procedure TMonthOfYearFrm.navMasterButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
var
  RepFileName: string;
  ID: Integer;
begin
  Screen.Cursor := crHourglass;
  ReportDM.MasterFormType := ftMonthOfYear;
  case AButtonIndex of
    NBDI_DELETE:
      begin
        raise EValidateException.Create('Months of year cannot be deleted from the system.');
//        VBBaseDM.QueryRequest := Format(USE_COUNT, [
//          'SELECT COUNT(ID) AS USE_COUNT FROM CUSTOMER WHERE YEAR_END_MONTH_ID = ' +
//            IntToStr(MTDM.cdsActivityType.FieldByName('ID').AsInteger) +
//
//            ' UNION ALL ' +
//            'SELECT COUNT(ID) AS USE_COUNT FROM CUSTOMER WHERE VAT_MONTH_ID = ' +
//            IntToStr(MTDM.cdsActivityType.FieldByName('ID').AsInteger) +
//
//            ' UNION ALL ' +
//            'SELECT COUNT(ID) AS USE_COUNT FROM CUSTOMER WHERE AR_MONTH_ID = ' +
//            IntToStr(MTDM.cdsActivityType.FieldByName('ID').AsInteger)
//            ]);
//
//        VBBaseDM.ItemToCount := 'Month of Year';
//        inherited;
      end;

    16, 17, 18, 19:
      begin
        inherited;
        try
          case ReportDM.ReportAction of
            raPreview, raPrint:
              begin
                RepFileName := MTDM.ShellResource.ReportFolder + 'MasterGenericTableTemplate.fr3';

                if not TFile.Exists(RepFileName) then
                  raise EFileNotFoundException.Create('Report file: ' + RepFileName + ' not found. Cannot load report.');

                ReportDM.PrintReport;
              end;

            raExcel:
              begin
                ReportDM.ExportToExcel(grdMaster, EXCEL_DOCS + 'Month of Year Listing', cbxOpenAfterExport.Checked);
              end;

            raPDF:
              begin
                RepFileName := MTDM.ShellResource.ReportFolder + 'MasterGenericTableTemplate.fr3';

                if not TFile.Exists(RepFileName) then
                  raise EFileNotFoundException.Create('Report file: ' + RepFileName + ' not found. Cannot load report.');

                ReportDM.ExportToPDF(PDF_DOCS + 'Month of Year Listing', cbxOpenAfterExport.Checked);
              end;
          end;
        finally
          Screen.Cursor := crDefault;
        end;
      end;
  end;
end;

end.

