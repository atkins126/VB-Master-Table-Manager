unit VehicleMake_Frm;

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
  TVehicleMakeFrm = class(TBaseGridFrm)
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
  VehicleMakeFrm: TVehicleMakeFrm;

implementation

{$R *.dfm}

uses
  MT_DM,
  VBBase_DM,
  CommonFunction,
  VBCommonValues,
  RUtils;

procedure TVehicleMakeFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Caption := 'Vehicle Make';
  viewMaster.DataController.DataSource := MTDM.dtsVehicleMake;
  navMaster.DataSource := MTDM.dtsVehicleMake;

  VBBaseDM.GetData(48, MTDM.cdsVehicleMake, MTDM.cdsVehicleMake.Name, '',
    'C:\Data\Xml\Vehicle Make.xml', MTDM.cdsVehicleMake.UpdateOptions.Generatorname,
    MTDM.cdsVehicleMake.UpdateOptions.UpdateTableName);

  SetButtonVisibility(MTDM.cdsMasterList, 16);
end;

procedure TVehicleMakeFrm.navMasterButtonsButtonClick(Sender: TObject;     AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;
  case AButtonIndex of
    NBDI_DELETE:
      begin
        Beep;
        ADone := DisplayMsg(
          Application.Title,
          'Delete Confirmaiton',
          'Are you sure you want to delete the selected Vehicle Make?' + CRLF + CRLF +
          'This action cannot be undone!',
          mtConfirmation,
          [mbYes, mbNo]
          ) = mrNo;
      end;
  end;
end;

end.
