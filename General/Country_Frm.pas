unit Country_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, Vcl.ImgList, cxImageList, Vcl.ActnList, Data.DB,
  Vcl.Controls, Vcl.Dialogs, System.Actions, System.ImageList, System.IOUtils,

  BaseGrid_Frm, PrintExportData,

  frxClass, frxDBSet,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, dxDateRanges, cxDBData, dxLayoutContainer, dxLayoutLookAndFeels,
  cxClasses, cxDBNavigator, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  dxLayoutControl, cxCurrencyEdit, cxTextEdit, dxScrollbarAnnotations, dxPrnDev,
  dxPrnDlg;

type
  TCountryFrm = class(TBaseGridFrm)
    edtID: TcxGridDBBandedColumn;
    edtName: TcxGridDBBandedColumn;
    edtDialingCode: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure navMasterButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CountryFrm: TCountryFrm;

implementation

{$R *.dfm}

uses
  MT_DM,
  VBBase_DM,
  CommonFunction,
  VBCommonValues,
  RUtils,
  Report_DM;

procedure TCountryFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Caption := 'Country';
  viewMaster.DataController.DataSource := MTDM.dtsCountry;
  navMaster.DataSource := MTDM.dtsCountry;

  VBBaseDM.GetData(12, MTDM.cdsCountry, MTDM.cdsCountry.Name, '',
    'C:\Data\Xml\Country.xml', MTDM.cdsCountry.UpdateOptions.Generatorname,
    MTDM.cdsCountry.UpdateOptions.UpdateTableName);

  SetButtonVisibility(MTDM.cdsMasterList, 5);
end;

procedure TCountryFrm.navMasterButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
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
        Screen.Cursor := crHourglass;
        try
          ReportTypeName := 'Country Listing';
          case AButtonIndex of
            16, 17:
              begin
                RepFileName := MTDM.ShellResource.ReportFolder + 'MasterGenericTableTemplate.fr3';

                if not TFile.Exists(RepFileName) then
                  raise EFileNotFoundException.Create('Report file: ' + RepFileName + ' not found. Cannot load report.');

                PrintExportReport := TPrintExportData.Create;
                PrintExportReport.SourceDataSet := MTDM.cdsCountry;
                PrintExportReport.TargetDataSet := ReportDM.cdsCountry;
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

