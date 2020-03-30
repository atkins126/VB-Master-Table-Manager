unit Country_Frm;

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
  CommonFunctions,
  VBCommonValues,
  RUtils,
  Report_DM;

procedure TCountryFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Caption := 'Country';
  viewMaster.DataController.DataSource := MTDM.dtsCountry;
  navMaster.DataSource := MTDM.dtsCountry;

  VBBaseDM.GetData(12, MTDM.cdsCountry, MTDM.cdsCountry.Name, ONE_SPACE,
    'C:\Data\Xml\Country.xml', MTDM.cdsCountry.UpdateOptions.Generatorname,
    MTDM.cdsCountry.UpdateOptions.UpdateTableName);

  SetButtonVisibility(MTDM.cdsMasterList, 5);
end;

procedure TCountryFrm.navMasterButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  Screen.Cursor := crHourglass;
  ReportDM.MasterFormType := ftCountry;
  case AButtonIndex of
    NBDI_DELETE:
      begin
        VBBaseDM.QueryRequest := Format(USE_COUNT, ['SELECT COUNT(ID) AS USE_COUNT FROM CUSTOMER WHERE VAT_COUNTRY_ID = ' +
          IntToStr(MTDM.cdsCountry.FieldByName('ID').AsInteger)]);

        VBBaseDM.ItemToCount := 'Country';
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
                ReportDM.ReportFileName := MTDM.ShellResource.ReportFolder + 'MasterGenericReport.fr3';

                if not TFile.Exists(ReportDM.ReportFileName) then
                  raise EFileNotFoundException.Create('Report file: ' + ReportDM.ReportFileName + ' not found. Cannot load report.');

                ReportDM.PrintReport;
              end;

            raExcel:
              begin
                ReportDM.ExportToExcel(grdMaster, EXCEL_DOCS + 'Country Listing', cbxOpenAfterExport.Checked);
              end;

            raPDF:
              begin
                ReportDM.ReportFileName := MTDM.ShellResource.ReportFolder + 'MasterGenericReport.fr3';

                if not TFile.Exists(ReportDM.ReportFileName) then
                  raise EFileNotFoundException.Create('Report file: ' + ReportDM.ReportFileName + ' not found. Cannot load report.');

                ReportDM.ExportToPDF(PDF_DOCS + 'Country Type Listing', cbxOpenAfterExport.Checked);
              end;
          end;
        finally
          Screen.Cursor := crDefault;
        end;
      end;
  end;
end;

end.

