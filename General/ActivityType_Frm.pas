unit ActivityType_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, Vcl.ImgList, cxImageList, Vcl.ActnList, Data.DB,
  Vcl.Controls, Vcl.Dialogs, System.Actions, System.ImageList, System.IOUtils,

  BaseGrid_Frm, CommonValues, PrintExportData,

  frxClass, frxDBSet,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, dxDateRanges, cxDBData, dxLayoutContainer, dxLayoutLookAndFeels,
  cxClasses, cxDBNavigator, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  dxLayoutControl, cxCurrencyEdit, cxTextEdit, dxScrollbarAnnotations, dxPrnDev,
  dxPrnDlg;

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
          'Are you sure you want to delete the selected Activity Type?' + CRLF + CRLF +
          'This action cannot be undone!',
          mtConfirmation,
          [mbYes, mbNo]
          ) = mrNo;
      end;

    16, 17, 18, 19:
      begin
        inherited;
        Screen.Cursor := crHourglass;
        try
          ReportDM.MasterFormType := ftActivityType;
          ReportDM.PrintExporting := True;
          ReportDM.PrintReport;
//        ReportTypeName := 'Activity Type Listing';
//        try
//          case ReportDM.ReportAction of
//            raPreview, raPrint:
//              begin
//                RepFileName := MTDM.ShellResource.ReportFolder + 'MasterGenericTableTemplate.fr3';
//
//                if not TFile.Exists(RepFileName) then
//                  raise EFileNotFoundException.Create('Report file: ' + RepFileName + ' not found. Cannot load report.');
//
//                PrintExportReport := TPrintExportData.Create;
//                PrintExportReport.SourceDataSet := MTDM.cdsActivityType;
//                PrintExportReport.TargetDataSet := ReportDM.cdsActivityType;
//                PrintExportReport.Report := ReportDM.rptMaster;
//                PrintExportReport.ReportDataSet := ReportDM.fdsMaster;
//                PrintExportReport.ReportTypeName := ReportTypeName;
//                PrintExportReport.ReportFileName := RepFileName;
//                PrintExportReport.ReportAction := ReportDM.ReportAction;
//                PrintExportReport.PrintPreview;
//              end;
//
//            raExcel:
//              begin
//                ExportToExcel(ReportTypeName, grdMaster);
//              end;
//
//            raPDF:
//              begin
//
//              end;
//          end;
        finally
//          PrintExportReport.Free;
//          ReportDM.PrintExporting := False;
          Screen.Cursor := crDefault;
        end;
      end;
  end;
end;

end.

