unit CustomerStatus_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, System.ImageList, System.Actions, Vcl.ActnList,
  Vcl.ImgList, Vcl.Controls, Vcl.Dialogs, System.IOUtils, Data.DB,

  BaseGrid_Frm,

  frxClass, frxDBSet,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, dxDateRanges, cxDBData, dxLayoutContainer, cxImageList,
  dxLayoutLookAndFeels, cxClasses, cxDBNavigator, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, cxCurrencyEdit,
  cxGridDBBandedTableView, cxGrid, dxLayoutControl, dxPrnDev, dxPrnDlg,
  dxScrollbarAnnotations;

type
  TCustomerStatusFrm = class(TBaseGridFrm)
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
  CustomerStatusFrm: TCustomerStatusFrm;

implementation

{$R *.dfm}

uses
  MT_DM,
  VBBase_DM,
  CommonFunction,
  VBCommonValues,
  RUtils,
  Report_DM;

procedure TCustomerStatusFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Caption := 'Customer  Status';
  viewMaster.DataController.DataSource := MTDM.dtsCustomerStatus;
  navMaster.DataSource := MTDM.dtsCustomerStatus;

  VBBaseDM.GetData(14, MTDM.cdsCustomerStatus, MTDM.cdsCustomerStatus.Name, '',
    'C:\Data\Xml\Customer Status.xml', MTDM.cdsCustomerStatus.UpdateOptions.Generatorname,
    MTDM.cdsCustomerStatus.UpdateOptions.UpdateTableName);

  SetButtonVisibility(MTDM.cdsMasterList, 13);
end;

procedure TCustomerStatusFrm.navMasterButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
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
          'Are you sure you want to delete the selected Customer Status?' + CRLF + CRLF +
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
          ReportTypeName := 'Customer Status Listing';
          ReportDM.PrepareReport(MTDM.cdsCustomerStatus, ReportDM.cdsCustomerStatus, RepFileName, Report, ReportDataSet, ReportTypeName);
          PrintReport(AButtonIndex);
        finally
          Screen.Cursor := crDefault;
        end;
      end;
  end;
end;

end.

