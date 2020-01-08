unit Salutation_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, Vcl.ImgList, cxImageList, Vcl.ActnList, Data.DB,
  Vcl.Controls, Vcl.Dialogs, System.Actions, System.ImageList, System.IOUtils,

  BaseGrid_Frm,

  frxClass, frxDBSet,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, dxDateRanges, cxDBData, dxLayoutContainer, dxLayoutLookAndFeels,
  cxClasses, cxDBNavigator, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  dxLayoutControl, cxCurrencyEdit, cxTextEdit, dxScrollbarAnnotations, dxPrnDev,
  dxPrnDlg;

type
  TSalutationFrm = class(TBaseGridFrm)
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
  SalutationFrm: TSalutationFrm;

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

procedure TSalutationFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  LookupDM.cdsSalutation.Close;
end;

procedure TSalutationFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Caption := 'Salutation';
  viewMaster.DataController.DataSource := MTDM.dtsSalutation;
  navMaster.DataSource := MTDM.dtsSalutation;

  VBBaseDM.GetData(23, MTDM.cdsSalutation, MTDM.cdsSalutation.Name, '',
    'C:\Data\Xml\Salutation.xml', MTDM.cdsSalutation.UpdateOptions.Generatorname,
    MTDM.cdsSalutation.UpdateOptions.UpdateTableName);

  LookupDM.cdsSalutation.Data := MTDM.cdsSalutation.Data;
  SetButtonVisibility(MTDM.cdsMasterList, 11);
end;

procedure TSalutationFrm.navMasterButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
var
  RepFileName, ReportTypeName: string;
  Report: TfrxReport;
  ReportDataSet: TfrxDBDataset;
begin
  inherited;
  case AButtonIndex of
    NBDI_DELETE:
      begin
        Beep;
        ADone := DisplayMsg(
          Application.Title,
          'Delete Confirmaiton',
          'Are you sure you want to delete the selected Salutation?' + CRLF + CRLF +
          'This action cannot be undone!',
          mtConfirmation,
          [mbYes, mbNo]
          ) = mrNo;
      end;

    16, 17, 18, 19:
      begin
        Screen.Cursor := crHourglass;
        try
          ReportTypeName := 'Salutation Listing';
          case AButtonIndex of
            16, 17:
              begin
                RepFileName := MTDM.ShellResource.ReportFolder + 'MasterGenericTableTemplate.fr3';

                if not TFile.Exists(RepFileName) then
                  raise EFileNotFoundException.Create('Report file: ' + RepFileName + ' not found. Cannot load report.');

                Report := ReportDM.rptMaster;
                ReportDataSet := ReportDM.fdsMaster;
                ReportDM.PrepareReport(MTDM.cdsSalutation, ReportDM.cdsSalutation, RepFileName, Report, ReportDataSet, ReportTypeName);
                PrintReport(AButtonIndex);
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

