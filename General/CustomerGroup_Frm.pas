unit CustomerGroup_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, System.ImageList, System.Actions, Vcl.ActnList,
  Vcl.ImgList, Vcl.Controls, Vcl.Dialogs, Data.DB, sYSTEM.iouTILS,

  BaseGrid_Frm,

  frxClass, frxDBSet,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, dxDateRanges, cxDBData, dxLayoutContainer, cxImageList,
  dxLayoutLookAndFeels, cxClasses, cxDBNavigator, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, cxCurrencyEdit,
  cxGridDBBandedTableView, cxGrid, dxLayoutControl, cxTextEdit, dxPrnDev, dxPrnDlg,
  dxScrollbarAnnotations;

type
  TCustomerGroupFrm = class(TBaseGridFrm)
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
  CustomerGroupFrm: TCustomerGroupFrm;

implementation

{$R *.dfm}

uses
  MT_DM,
  VBBase_DM,
  CommonFunction,
  VBCommonValues,
  RUtils,
  Report_DM;

procedure TCustomerGroupFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Caption := 'Customer Group';
  viewMaster.DataController.DataSource := MTDM.dtsCustomerGroup;
  navMaster.DataSource := MTDM.dtsCustomerGroup;

  VBBaseDM.GetData(56, MTDM.cdsCustomerGroup, MTDM.cdsCustomerGroup.Name, '',
    'C:\Data\Xml\Customer Group.xml', MTDM.cdsCustomerGroup.UpdateOptions.Generatorname,
    MTDM.cdsCustomerGroup.UpdateOptions.UpdateTableName);

  SetButtonVisibility(MTDM.cdsMasterList, 18);
end;

procedure TCustomerGroupFrm.navMasterButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
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
          'Are you sure you want to delete the selected Customer Group?' + CRLF + CRLF +
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
          ReportTypeName := 'Customer Group Listing';
          ReportDM.PrepareReport(MTDM.cdsCustomerGroup, ReportDM.cdsCustomerGroup, RepFileName, Report, ReportDataSet, ReportTypeName);
          PrintReport(AButtonIndex);
        finally
          Screen.Cursor := crDefault;
        end;
      end;
  end;
end;

end.

