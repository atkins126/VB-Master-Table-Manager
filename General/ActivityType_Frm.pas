unit ActivityType_Frm;

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
  TActivityTypeFrm = class(TBaseGridFrm)
    edtID: TcxGridDBBandedColumn;
    edtName: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure navMasterButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ActivityTypeFrm: TActivityTypeFrm;

implementation

{$R *.dfm}

uses
  MT_DM,
  VBBase_DM,
  CommonFunction,
  VBCommonValues,
  RUtils,
  Report_DM;

procedure TActivityTypeFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Caption := 'Activity Type';
  viewMaster.DataController.DataSource := MTDM.dtsActivityType;
  navMaster.DataSource := MTDM.dtsActivityType;

  VBBaseDM.GetData(39, MTDM.cdsActivityType, MTDM.cdsActivityType.Name, '',
    'C:\Data\Xml\Activity Type.xml', MTDM.cdsActivityType.UpdateOptions.Generatorname,
    MTDM.cdsActivityType.UpdateOptions.UpdateTableName);

  SetButtonVisibility(MTDM.cdsMasterList, 15);
end;

procedure TActivityTypeFrm.navMasterButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  Screen.Cursor := crHourglass;
  ReportDM.MasterFormType := ftActivityType;
  case AButtonIndex of
    NBDI_DELETE:
      begin
        VBBaseDM.QueryRequest := Format(USE_COUNT, ['SELECT COUNT(ID) AS USE_COUNT FROM TIMESHEET WHERE ACTIVITY_TYPE_ID = ' +
          IntToStr(MTDM.cdsActivityType.FieldByName('ID').AsInteger)]);

        VBBaseDM.ItemToCount := 'Activity Type';
        inherited;
      end;

    16, 17, 18, 19:
      begin
        inherited;
        try
          ReportDM.ReportFileName := MTDM.ShellResource.ReportFolder + 'MasterGenericReport.fr3';
          case ReportDM.ReportAction of
            raPreview, raPrint:
              begin
                if not TFile.Exists(ReportDM.ReportFileName) then
                  raise EFileNotFoundException.Create('Report file: ' + ReportDM.ReportFileName + ' not found. Cannot load report.');

                ReportDM.PrintReport;
              end;

            raExcel:
              begin
                ReportDM.ExportToExcel(grdMaster, EXCEL_DOCS + 'Activity Type Listing', cbxOpenAfterExport.Checked);
              end;

            raPDF:
              begin
                if not TFile.Exists(ReportDM.ReportFileName) then
                  raise EFileNotFoundException.Create('Report file: ' + ReportDM.ReportFileName + ' not found. Cannot load report.');

                ReportDM.ExportToPDF(PDF_DOCS + 'Activity Type Listing', cbxOpenAfterExport.Checked);
              end;
          end;
        finally
          Screen.Cursor := crDefault;
        end;
      end;
  end;
end;

end.

