unit AgePeriod_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Dialogs, System.IOUtils,
  System.ImageList, System.Actions, Vcl.ActnList, Vcl.ImgList,

  BaseGrid_Frm, PrintExportData,

  frxClass, frxDBSet,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData, dxLayoutContainer,
  cxImageList, dxLayoutLookAndFeels, cxClasses, cxDBNavigator, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, dxLayoutControl, cxCurrencyEdit, cxTextEdit,
  dxScrollbarAnnotations, dxPrnDev, dxPrnDlg;

type
  TAgePeriodFrm = class(TBaseGridFrm)
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
  AgePeriodFrm: TAgePeriodFrm;

implementation

{$R *.dfm}

uses MT_DM, VBBase_DM, CommonFunction, VBCommonValues, RUtils, Report_DM;

procedure TAgePeriodFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Caption := 'Age Period';
  viewMaster.DataController.DataSource := MTDM.dtsAgePeriod;
  navMaster.DataSource := MTDM.dtsAgePeriod;

  VBBaseDM.GetData(13, MTDM.cdsAgePeriod, MTDM.cdsAgePeriod.Name, '',
    'C:\Data\Xml\Age Period.xml', MTDM.cdsAgePeriod.UpdateOptions.Generatorname,
    MTDM.cdsAgePeriod.UpdateOptions.UpdateTableName);

  SetButtonVisibility(MTDM.cdsMasterList, 1);
end;

procedure TAgePeriodFrm.navMasterButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
var
  RepFileName, ReportTypeName: string;
  Report: TfrxReport;
  ReportDataSet: TfrxDBDataset;
  PrintExportReport: TPrintExportData;
begin
  inherited;
  case AButtonIndex of
    NBDI_DELETE:
      begin
        Beep;
        ADone := DisplayMsg(
          Application.Title,
          'Delete Confirmaiton',
          'Are you sure you want to delete the selected Age Period?' + CRLF + CRLF +
          'This action cannot be undone!',
          mtConfirmation,
          [mbYes, mbNo]
          ) = mrNo;
      end;

    16, 17, 18, 19:
      begin
        Screen.Cursor := crHourglass;
        ReportDM.MasterFormType := ftActivityType;
        ReportDM.PrintExporting := True;
        ReportTypeName := 'Age Period Listing';
        try
          case AButtonIndex of
            16, 17:
              begin
                RepFileName := MTDM.ShellResource.ReportFolder + 'MasterGenericTableTemplate.fr3';

                if not TFile.Exists(RepFileName) then
                  raise EFileNotFoundException.Create('Report file: ' + RepFileName + ' not found. Cannot load report.');

                PrintExportReport := TPrintExportData.Create;
                PrintExportReport.SourceDataSet := MTDM.cdsAgePeriod;
                PrintExportReport.TargetDataSet := ReportDM.cdsAgePeriod;
                PrintExportReport.Report := ReportDM.rptMaster;
                PrintExportReport.ReportDataSet := ReportDM.fdsMaster;
                PrintExportReport.ReportTypeName := ReportTypeName;
                PrintExportReport.ReportFileName := RepFileName;
                PrintExportReport.ReportAction := ReportDM.ReportAction;
                PrintExportReport.PrintPreview;
              end;

            18:
              begin
                ExportToExcel(ReportTypeName, grdMaster);
              end;

            19:
              begin

              end;
          end;
        finally
          Screen.Cursor := crDefault;
        end;
      end;
  end;
end;

end.

