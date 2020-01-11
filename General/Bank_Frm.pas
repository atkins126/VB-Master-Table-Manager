unit Bank_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, System.ImageList, System.Actions, Vcl.ActnList,
  Vcl.ImgList,
  Vcl.Controls, Vcl.Dialogs, System.IOUtils,

  BaseGrid_Frm, VBPrintExportData, CommonValues,

  frxClass, frxDBSet,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData, dxLayoutContainer,
  cxImageList, dxLayoutLookAndFeels, cxClasses, cxDBNavigator, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, dxLayoutControl, cxCurrencyEdit, cxTextEdit,
  dxScrollbarAnnotations, dxPrnDev, dxPrnDlg, dxLayoutcxEditAdapters,
  cxContainer, cxCheckBox;

type
  TBankFrm = class(TBaseGridFrm)
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
  BankFrm: TBankFrm;

implementation

{$R *.dfm}

uses
  MT_DM,
  CommonFunction,
  VBCommonValues,
  VBBase_DM,
  RUtils,
  Report_DM;

procedure TBankFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Caption := 'Bank';
  viewMaster.DataController.DataSource := MTDM.dtsBank;
  navMaster.DataSource := MTDM.dtsBank;

  VBBaseDM.GetData(5, MTDM.cdsBank, MTDM.cdsBank.Name, '',
    'C:\Data\Xml\Bannk.xml', MTDM.cdsBank.UpdateOptions.Generatorname,
    MTDM.cdsBank.UpdateOptions.UpdateTableName);

  SetButtonVisibility(MTDM.cdsMasterList, 2);
end;

procedure TBankFrm.navMasterButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
var
  RepFileName, ReportTypeName: string;
  PrintExportReport: TVBPrintExportData;
begin
  inherited;
  case AButtonIndex of
    NBDI_DELETE:
      begin
        Beep;
        ADone := DisplayMsg(
          Application.Title,
          'Delete Confirmaiton',
          'Are you sure you want to delete the selected Bank?' + CRLF + CRLF +
          'This action cannot be undone!',
          mtConfirmation,
          [mbYes, mbNo]
          ) = mrNo;
      end;

    16, 17, 18, 19:
      begin
        Screen.Cursor := crHourglass;
        ReportDM.MasterFormType := ftBank;
        ReportDM.PrintExporting := True;

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
                ReportDM.ExportToExcel(grdMaster, EXCEL_DOCS + 'Bank Listing', cbxOpenAfterExport.Checked);
              end;

            raPDF:
              begin
                RepFileName := MTDM.ShellResource.ReportFolder + 'MasterGenericTableTemplate.fr3';

                if not TFile.Exists(RepFileName) then
                  raise EFileNotFoundException.Create('Report file: ' + RepFileName + ' not found. Cannot load report.');

                ReportDM.ExportToPDF(PDF_DOCS + 'Bank Listing', cbxOpenAfterExport.Checked);
              end;
          end;
        finally
          Screen.Cursor := crDefault;
        end;
      end;
  end;
end;

end.

