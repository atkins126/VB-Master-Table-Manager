unit CustomerType_Frm;

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
  TCustomerTypeFrm = class(TBaseGridFrm)
    edtID: TcxGridDBBandedColumn;
    viewMasterNAME: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure navMasterButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CustomerTypeFrm: TCustomerTypeFrm;

implementation

{$R *.dfm}

uses
  MT_DM,
  VBBase_DM,
  CommonFunction,
  VBCommonValues,
  RUtils, Report_DM;

procedure TCustomerTypeFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Caption := 'Customer Type';
  viewMaster.DataController.DataSource := MTDM.dtsCustomerType;
  navMaster.DataSource := MTDM.dtsCustomerType;

  VBBaseDM.GetData(15, MTDM.cdsCustomerType, MTDM.cdsCustomerType.Name, '',
    'C:\Data\Xml\Customer Type.xml', MTDM.cdsCustomerType.UpdateOptions.Generatorname,
    MTDM.cdsCustomerType.UpdateOptions.UpdateTableName);

  SetButtonVisibility(MTDM.cdsMasterList, 7);
end;

procedure TCustomerTypeFrm.navMasterButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
var
  RepFileName, ReportTypeName: string;
//  Report: TfrxReport;
//  ReportDataSet: TfrxDBDataset;
//  PrintExportReport: TVBPrintExportData;
begin
  inherited;
  case AButtonIndex of
    NBDI_DELETE:
      begin
        Beep;
        ADone := DisplayMsg(
          Application.Title,
          'Delete Confirmaiton',
          'Are you sure you want to delete the selected Cusotmer Type?' + CRLF + CRLF +
          'This action cannot be undone!',
          mtConfirmation,
          [mbYes, mbNo]
          ) = mrNo;
      end;

    16, 17, 18, 19:
      begin
        Screen.Cursor := crHourglass;
        ReportDM.MasterFormType := ftCustomerType;
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
                ReportDM.ExportToExcel(grdMaster, EXCEL_DOCS + 'Customer Type Listing', cbxOpenAfterExport.Checked);
              end;

            raPDF:
              begin
                RepFileName := MTDM.ShellResource.ReportFolder + 'MasterGenericTableTemplate.fr3';

                if not TFile.Exists(RepFileName) then
                  raise EFileNotFoundException.Create('Report file: ' + RepFileName + ' not found. Cannot load report.');

                ReportDM.ExportToPDF(PDF_DOCS + 'Customer Type Listing', cbxOpenAfterExport.Checked);
              end;
          end;
        finally
          Screen.Cursor := crDefault;
        end;
      end;
  end;
end;

end.

