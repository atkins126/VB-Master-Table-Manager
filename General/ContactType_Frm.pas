unit ContactType_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, Vcl.ImgList, cxImageList, Vcl.Controls,
  Vcl.Dialogs, System.Actions, Vcl.ActnList, Data.DB, System.IOUtils,

  BaseGrid_Frm,

  frxClass, frxDBSet,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, dxDateRanges, cxDBData, dxLayoutContainer, System.ImageList,
  dxLayoutLookAndFeels, cxClasses, cxDBNavigator, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, cxCurrencyEdit,
  cxGridDBBandedTableView, cxGrid, dxLayoutControl, cxTextEdit,
  dxScrollbarAnnotations, dxPrnDev, dxPrnDlg;

type
  TContactTypeFrm = class(TBaseGridFrm)
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
  ContactTypeFrm: TContactTypeFrm;

implementation

{$R *.dfm}

uses
  MT_DM,
  VBBase_DM,
  CommonFunction,
  VBCommonValues,
  RUtils,
  Report_DM;

procedure TContactTypeFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Caption := 'Contact Type';
  viewMaster.DataController.DataSource := MTDM.dtsContactType;
  navMaster.DataSource := MTDM.dtsContactType;

  VBBaseDM.GetData(11, MTDM.cdsContactType, MTDM.cdsContactType.Name, '',
    'C:\Data\Xml\Contact Type.xml', MTDM.cdsContactType.UpdateOptions.Generatorname,
    MTDM.cdsContactType.UpdateOptions.UpdateTableName);

  SetButtonVisibility(MTDM.cdsMasterList, 4);
end;

procedure TContactTypeFrm.navMasterButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
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
          'Are you sure you want to delete the selected Contact Type?' + CRLF + CRLF +
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
          ReportTypeName := 'Contact Type Listing';
          ReportDM.PrepareReport(MTDM.cdsContactType, ReportDM.cdsContactType, RepFileName, Report, ReportDataSet, ReportTypeName);
          PrintReport(AButtonIndex);
        finally
          Screen.Cursor := crDefault;
        end;
      end;
  end;
end;

end.

