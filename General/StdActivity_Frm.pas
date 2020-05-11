unit StdActivity_Frm;

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
  TStdActivityFrm = class(TBaseGridFrm)
    viewMasterID: TcxGridDBBandedColumn;
    viewMasterNAME: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure navMasterButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StdActivityFrm: TStdActivityFrm;

implementation

{$R *.dfm}

uses
  MT_DM,
  VBBase_DM,
  CommonFunctions,
  VBCommonValues,
  RUtils,
  Lookup_DM,
  Report_DM;

procedure TStdActivityFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  LookupDM.cdsStdActivity.Close;
end;

procedure TStdActivityFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Caption := 'Standard Activity Type';
  viewMaster.DataController.DataSource := MTDM.dtsStdActivityType;
  navMaster.DataSource := MTDM.dtsStdActivityType;

  VBBaseDM.GetData(52, MTDM.cdsStdActivity, MTDM.cdsStdActivity.Name, ONE_SPACE,
    'C:\Data\Xml\Std Activity Type.xml', MTDM.cdsStdActivity.UpdateOptions.Generatorname,
    MTDM.cdsStdActivity.UpdateOptions.UpdateTableName);

  LookupDM.cdsStdActivity.Data := MTDM.cdsStdActivity.Data;
  SetButtonVisibility(MTDM.cdsMasterList, 17);
end;

procedure TStdActivityFrm.navMasterButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  ReportDM.MasterFormType := ftStdActivity;

  case AButtonIndex of
    NBDI_DELETE:
      begin
        // Do the deletio here as this is not a lookup field in the Timesheet
        // table so there is no need to check if any Timesheet items contain
        // this lookup field ID.
        ADone := True;
        Beep;
        if DisplayMsg(
          Application.Title,
          'Delete Confirmaiton',
          'Are you sure you want to delete the selected Standard Activity?' + CRLF + CRLF +
          'This action cannot be undone!',
          mtConfirmation,
          [mbYes, mbNo]
          ) = mrNo then
          Exit;

        MTDM.cdsStdActivity.Delete;
      end;

    16, 17, 18, 19:
      begin
        inherited;
        Screen.Cursor := crHourglass;
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
                ReportDM.ExportToExcel(grdMaster, EXCEL_DOCS + 'Standard Activity Listing', cbxOpenAfterExport.Checked);
              end;

            raPDF:
              begin
                if not TFile.Exists(ReportDM.ReportFileName) then
                  raise EFileNotFoundException.Create('Report file: ' + ReportDM.ReportFileName + ' not found. Cannot load report.');

                ReportDM.ExportToPDF(PDF_DOCS + 'Standard Activity Listing', cbxOpenAfterExport.Checked);
              end;
          end;
        finally
          Screen.Cursor := crDefault;
        end;
      end;
  end;
end;

end.

