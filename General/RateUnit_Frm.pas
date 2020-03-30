unit RateUnit_Frm;

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
  TRateUnitFrm = class(TBaseGridFrm)
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
  RateUnitFrm: TRateUnitFrm;

implementation

{$R *.dfm}

uses
  MT_DM,
  VBBase_DM,
  CommonFunctions,
  VBCommonValues,
  RUtils,
  Report_DM;

procedure TRateUnitFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Caption := 'Activity Type';
  viewMaster.DataController.DataSource := MTDM.dtsRateUnit;
  navMaster.DataSource := MTDM.dtsRateUnit;

  VBBaseDM.GetData(38, MTDM.cdsRateUnit, MTDM.cdsRateUnit.Name, ONE_SPACE,
    'C:\Data\Xml\Rate Unit.xml', MTDM.cdsRateUnit.UpdateOptions.Generatorname,
    MTDM.cdsRateUnit.UpdateOptions.UpdateTableName);

  SetButtonVisibility(MTDM.cdsMasterList, 14);
end;

procedure TRateUnitFrm.navMasterButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  Screen.Cursor := crHourglass;
  ReportDM.MasterFormType := ftRateUnit;
  case AButtonIndex of
    NBDI_DELETE:
      begin
        VBBaseDM.QueryRequest := Format(USE_COUNT, ['SELECT COUNT(ID) AS USE_COUNT FROM TIMESHEET WHERE RATE_UNIT_ID = ' +
          IntToStr(MTDM.cdsRateUnit.FieldByName('ID').AsInteger)]);

        VBBaseDM.ItemToCount := 'Rate Unit';
        inherited;
      end;

    16, 17, 18, 19:
      begin
        inherited;
        ReportDM.ReportFileName := MTDM.ShellResource.ReportFolder + 'MasterGenericReport.fr3';
        try
          case ReportDM.ReportAction of
            raPreview, raPrint:
              begin
                if not TFile.Exists(ReportDM.ReportFileName) then
                  raise EFileNotFoundException.Create('Report file: ' + ReportDM.ReportFileName + ' not found. Cannot load report.');

                ReportDM.PrintReport;
              end;

            raExcel:
              begin
                ReportDM.ExportToExcel(grdMaster, EXCEL_DOCS + 'Rate Unit Listing', cbxOpenAfterExport.Checked);
              end;

            raPDF:
              begin
                if not TFile.Exists(ReportDM.ReportFileName) then
                  raise EFileNotFoundException.Create('Report file: ' + ReportDM.ReportFileName + ' not found. Cannot load report.');

                ReportDM.ExportToPDF(PDF_DOCS + 'Rate Unit Listing', cbxOpenAfterExport.Checked);
              end;
          end;
        finally
          Screen.Cursor := crDefault;
        end;
      end;
  end;
end;

end.

