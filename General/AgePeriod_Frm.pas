unit AgePeriod_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.IOUtils,

  BaseGrid_Frm,

  frxClass, frxDBSet,

  cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, Data.DB, cxDBData, dxLayoutContainer, System.ImageList,
  Vcl.ImgList, cxImageList, dxLayoutLookAndFeels, System.Actions, Vcl.ActnList,
  cxClasses, cxDBNavigator, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, dxLayoutControl, cxCurrencyEdit, cxTextEdit,
  dxScrollbarAnnotations, dxPrnDev, dxPrnDlg;

type
  TAgePeriodFrm = class(TBaseGridFrm)
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
  AgePeriodFrm: TAgePeriodFrm;

implementation

{$R *.dfm}

uses MT_DM, VBBase_DM, CommonFunction, VBCommonValues, RUtils, Report_DM;

procedure TAgePeriodFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Caption := 'Age Period';
  viewMaster.DataController.DataSource := MTDM.dtsAgePeriod;
  navMaster.DataSource := MTDM.dtsAgePeriod;

  MTDM.cdsAgePeriod.Close;

  VBBaseDM.GetData(13, MTDM.cdsAgePeriod, MTDM.cdsAgePeriod.Name, '',
    'C:\Data\Xml\Age Period.xml', MTDM.cdsAgePeriod.UpdateOptions.Generatorname,
    MTDM.cdsAgePeriod.UpdateOptions.UpdateTableName);

  SetButtonVisibility(MTDM.cdsMasterList, 1);
end;

procedure TAgePeriodFrm.navMasterButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
var
  RepFileName, ReportTypeName: string;
  Report: TfrxReport;
  ReportDataSet: TfrxDBDataset;
begin
  case AButtonIndex of
    NBDI_DELETE:
      begin
        Beep;
        ADone := DisplayMsg(
          Application.Title,
          'Delete Confirmaiton',
          'Are you sure you want to delete the selected Age Period?' + CRLF + CRLF +
          'This action cannot be undone!',
          mtConfirmation,
          [mbYes, mbNo]
          ) = mrNo;
      end;

    16, 17, 18, 19:
      begin
        Screen.Cursor := crHourglass;
        try
          RepFileName := MTDM.ShellResource.ReportFolder + 'MasterGenericTableTemplate.fr3';

          if not TFile.Exists(RepFileName) then
            raise EFileNotFoundException.Create('Report file: ' + RepFileName + ' not found. Cannot load report.');

          Report := ReportDM.rptMaster;
          ReportDataSet := ReportDM.fdsMaster;
          ReportTypeName := 'Age Period Listing';
          ReportDM.PrepareReport(MTDM.cdsAgePeriod, ReportDM.cdsAgePeriod, RepFileName, Report, ReportDataSet, ReportTypeName);
          inherited;
        finally
          Screen.Cursor := crDefault;
        end;
      end;
  end;
end;

end.

