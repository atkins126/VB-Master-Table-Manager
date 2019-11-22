unit StdActivity_Frm;

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
  cxGridDBBandedTableView, cxGrid, dxLayoutControl, cxCurrencyEdit;

type
  TStdActivityFrm = class(TBaseGridFrm)
    viewMasterID: TcxGridDBBandedColumn;
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
  StdActivityFrm: TStdActivityFrm;

implementation

{$R *.dfm}

uses
  MT_DM,
  VBBase_DM,
  CommonFunction,
  VBCommonValues,
  RUtils,
  Lookup_DM;

procedure TStdActivityFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Caption := 'Standard Activity Type';
  viewMaster.DataController.DataSource := MTDM.dtsStdActivityType;
  navMaster.DataSource := MTDM.dtsStdActivityType;

  VBBaseDM.GetData(52, MTDM.cdsStdActivity, MTDM.cdsStdActivity.Name, '',
    'C:\Data\Xml\Std Activity Type.xml', MTDM.cdsStdActivity.UpdateOptions.Generatorname,
    MTDM.cdsStdActivity.UpdateOptions.UpdateTableName);

  LookupDM.cdsStdActivity.Data := MTDM.cdsStdActivity.Data;
  SetButtonVisibility(MTDM.cdsMasterList, 17);
end;

procedure TStdActivityFrm.navMasterButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;
  case AButtonIndex of
    NBDI_DELETE:
      begin
        Beep;
        ADone := DisplayMsg(
          Application.Title,
          'Delete Confirmaiton',
          'Are you sure you want to delete the selected Standard Activity Type?' + CRLF + CRLF +
          'This action cannot be undone!',
          mtConfirmation,
          [mbYes, mbNo]
          ) = mrNo;
      end;
  end;
end;

end.

