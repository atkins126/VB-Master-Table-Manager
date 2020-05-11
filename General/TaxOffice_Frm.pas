unit TaxOffice_Frm;

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
  TTaxOfficeFrm = class(TBaseGridFrm)
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
  TaxOfficeFrm: TTaxOfficeFrm;

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

procedure TTaxOfficeFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Caption := 'Activity Type';
  viewMaster.DataController.DataSource := MTDM.dtsTaxOffice;
  navMaster.DataSource := MTDM.dtsTaxOffice;

  VBBaseDM.GetData(25, MTDM.cdsTaxOffice, MTDM.cdsTaxOffice.Name, ONE_SPACE,
    'C:\Data\Xml\Tax Office.xml', MTDM.cdsTaxOffice.UpdateOptions.Generatorname,
    MTDM.cdsTaxOffice.UpdateOptions.UpdateTableName);

  SetButtonVisibility(MTDM.cdsMasterList, 12);
end;

procedure TTaxOfficeFrm.navMasterButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  ReportDM.MasterFormType := ftTaxoffice;

  case AButtonIndex of
    NBDI_DELETE:
      begin
        VBBaseDM.QueryRequest := Format(USE_COUNT, [
          'SELECT COUNT(ID) AS USE_COUNT FROM CONTACT_PERSON WHERE SALUTATION_ID = ' +
            IntToStr(MTDM.cdsSalutation.FieldByName('ID').AsInteger) +

          ' UNION ALL ' +
            'SELECT COUNT(ID) AS USE_COUNT FROM DIRECTOR WHERE SALUTATION_ID = ' +
            IntToStr(MTDM.cdsSalutation.FieldByName('ID').AsInteger) +

          ' UNION ALL ' +
            'SELECT COUNT(ID) AS USE_COUNT FROM BENEFICIARY WHERE SALUTATION_ID = ' +
            IntToStr(MTDM.cdsSalutation.FieldByName('ID').AsInteger)
            ]);

        VBBaseDM.ItemToCount := 'Salutation';
        inherited;
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
                ReportDM.ExportToExcel(grdMaster, EXCEL_DOCS + 'Tax Office Listing', cbxOpenAfterExport.Checked);
              end;

            raPDF:
              begin
                if not TFile.Exists(ReportDM.ReportFileName) then
                  raise EFileNotFoundException.Create('Report file: ' + ReportDM.ReportFileName + ' not found. Cannot load report.');

                ReportDM.ExportToPDF(PDF_DOCS + 'Tax Office Listing', cbxOpenAfterExport.Checked);
              end;
          end;
        finally
          Screen.Cursor := crDefault;
        end;
      end;
  end;
end;

end.

