unit AgePeriod_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseGrid_Frm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, Data.DB, cxDBData, dxLayoutContainer, System.ImageList,
  Vcl.ImgList, cxImageList, dxLayoutLookAndFeels, System.Actions, Vcl.ActnList,
  cxClasses, cxDBNavigator, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, dxLayoutControl, cxCurrencyEdit, cxTextEdit;

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

uses MT_DM, VBBase_DM, CommonFunction, VBCommonValues, RUtils;

procedure TAgePeriodFrm.FormCreate(Sender: TObject);
//var
//  ReadOnly: Boolean;
begin
  inherited;
  Caption := 'Age Period';
  viewMaster.DataController.DataSource := MTDM.dtsAgePeriod;
  navMaster.DataSource := MTDM.dtsAgePeriod;

  MTDM.cdsAgePeriod.Close;

  VBBaseDM.GetData(13, MTDM.cdsAgePeriod, MTDM.cdsAgePeriod.Name, '',
    'C:\Data\Xml\Age Period.xml', MTDM.cdsAgePeriod.UpdateOptions.Generatorname,
    MTDM.cdsAgePeriod.UpdateOptions.UpdateTableName);

//  if not MTDM.cdsMasterList.Locate('ID', 1, []) then
//    ReadOnly := True;

  SetButtonVisibility(RUtils.IntegerToBoolean(MTDM.cdsMasterList.FieldByName('READ_ONLY').AsInteger));
end;

procedure TAgePeriodFrm.navMasterButtonsButtonClick(Sender: TObject;  AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;
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
  end;
end;

end.
