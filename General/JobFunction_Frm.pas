unit JobFunction_Frm;

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
  TJobFunctionFrm = class(TBaseGridFrm)
    edtID: TcxGridDBBandedColumn;
    edtName: TcxGridDBBandedColumn;
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
  JobFunctionFrm: TJobFunctionFrm;

implementation

{$R *.dfm}

uses
  MT_DM,
  VBBase_DM,
  CommonFunction,
  VBCommonValues,
  RUtils,
  Lookup_DM,
  Report_DM;

procedure TJobFunctionFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  LookupDM.cdsJobFunction.Close;
end;

procedure TJobFunctionFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Caption := 'Job Function';
  viewMaster.DataController.DataSource := MTDM.dtsJobFunction;
  navMaster.DataSource := MTDM.dtsJobFunction;

  VBBaseDM.GetData(19, MTDM.cdsJobFunction, MTDM.cdsJobFunction.Name, '',
    'C:\Data\Xml\Job Function.xml', MTDM.cdsJobFunction.UpdateOptions.Generatorname,
    MTDM.cdsJobFunction.UpdateOptions.UpdateTableName);

  LookupDM.cdsJobFunction.Close;
  LookupDM.cdsJobFunction.Data := MTDM.cdsJobFunction.Data;
  SetButtonVisibility(MTDM.cdsMasterList, 8);
end;

procedure TJobFunctionFrm.navMasterButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  Screen.Cursor := crHourglass;
  ReportDM.MasterFormType := ftJobFunction;
  case AButtonIndex of
    NBDI_DELETE:
      begin
        VBBaseDM.QueryRequest := Format(USE_COUNT, ['SELECT COUNT(ID) AS USE_COUNT FROM CONTACT_PERSON WHERE JOB_FUNCTION_ID = ' +
          IntToStr(MTDM.cdsJobFunction.FieldByName('ID').AsInteger)]);

        VBBaseDM.ItemToCount := 'Job Function';
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
                ReportDM.ExportToExcel(grdMaster, EXCEL_DOCS + 'Job Function Listing', cbxOpenAfterExport.Checked);
              end;

            raPDF:
              begin
                if not TFile.Exists(ReportDM.ReportFileName) then
                  raise EFileNotFoundException.Create('Report file: ' + ReportDM.ReportFileName + ' not found. Cannot load report.');

                ReportDM.ExportToPDF(PDF_DOCS + 'Job Function Listing', cbxOpenAfterExport.Checked);
              end;
          end;
        finally
          Screen.Cursor := crDefault;
        end;
      end;
  end;
end;

end.

