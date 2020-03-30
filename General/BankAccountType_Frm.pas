unit BankAccountType_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Dialogs, System.ImageList,
  Vcl.ImgList, System.Actions, Vcl.ActnList, System.IOUtils,

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
  TBankAccountTypeFrm = class(TBaseGridFrm)
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
  BankAccountTypeFrm: TBankAccountTypeFrm;

implementation

{$R *.dfm}

uses
  MT_DM,
  VBBase_DM,
  CommonFunctions,
  VBCommonValues,
  RUtils,
  Report_DM;

procedure TBankAccountTypeFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Caption := 'Bank Account Type';
  viewMaster.DataController.DataSource := MTDM.dtsBankAccountType;
  navMaster.DataSource := MTDM.dtsBankAccountType;

  VBBaseDM.GetData(6, MTDM.cdsBankAccountType, MTDM.cdsBankAccountType.Name, ONE_SPACE,
    'C:\Data\Xml\Bannk Account Type.xml', MTDM.cdsBankAccountType.UpdateOptions.Generatorname,
    MTDM.cdsBankAccountType.UpdateOptions.UpdateTableName);

  SetButtonVisibility(MTDM.cdsMasterList, 3);
end;

procedure TBankAccountTypeFrm.navMasterButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  Screen.Cursor := crHourglass;
  ReportDM.MasterFormType := ftBankAccountType;
  case AButtonIndex of
    NBDI_DELETE:
      begin
        VBBaseDM.QueryRequest := Format(USE_COUNT, ['SELECT COUNT(ID) AS USE_COUNT FROM BANKING_DETAIL WHERE ACCOUNT_TYPE_ID = ' +
          IntToStr(MTDM.cdsBankAccountType.FieldByName('ID').AsInteger)]);

        VBBaseDM.ItemToCount := 'Bank Account Type';
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
                ReportDM.ExportToExcel(grdMaster, EXCEL_DOCS + 'Bank Account Type Listing', cbxOpenAfterExport.Checked);
              end;

            raPDF:
              begin
                if not TFile.Exists(ReportDM.ReportFileName) then
                  raise EFileNotFoundException.Create('Report file: ' + ReportDM.ReportFileName + ' not found. Cannot load report.');

                ReportDM.ExportToPDF(PDF_DOCS + 'Bank Account Type Listing', cbxOpenAfterExport.Checked);
              end;
          end;
        finally
          Screen.Cursor := crDefault;
        end;

//        Screen.Cursor := crHourglass;
//        ReportDM.MasterFormType := ftActivityType;
//        ReportDM.PrintExporting := True;
//        ReportTypeName := 'Bank Account Type Listing';
//        try
//          case AButtonIndex of
//            16, 17:
//              begin
//                RepFileName := MTDM.ShellResource.ReportFolder + 'MasterGenericReport.fr3';
//
//                if not TFile.Exists(RepFileName) then
//                  raise EFileNotFoundException.Create('Report file: ' + RepFileName + ' not found. Cannot load report.');
//
//                PrintExportReport := TVBPrintExportData.Create;
//                PrintExportReport.SourceDataSet := MTDM.cdsBankAccountType;
//                PrintExportReport.TargetDataSet := ReportDM.cdsBankAccountType;
//                PrintExportReport.Report := ReportDM.rptMaster;
//                PrintExportReport.ReportDataSet := ReportDM.fdsMaster;
//                PrintExportReport.ReportTypeName := ReportTypeName;
//                PrintExportReport.ReportFileName := RepFileName;
//                PrintExportReport.ReportAction := ReportDM.ReportAction;
//                PrintExportReport.PrintPreview;
//              end;
//
//            18:
//              begin
//                ExportToExcel(ReportTypeName, grdMaster);
//              end;
//
//            19:
//              begin
//
//              end;
//          end;
//        finally
//          Screen.Cursor := crDefault;
//        end;
      end;
  end;
end;

end.

