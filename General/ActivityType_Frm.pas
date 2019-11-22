unit ActivityType_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, Vcl.ImgList, cxImageList, Vcl.ActnList,
  Vcl.Controls, Vcl.Dialogs, System.Actions, System.ImageList, Data.DB,

  BaseGrid_Frm,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, dxDateRanges, cxDBData, dxLayoutContainer, dxLayoutLookAndFeels,
  cxClasses, cxDBNavigator, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  dxLayoutControl, cxCurrencyEdit, cxTextEdit;

type
  TActivityTypeFrm = class(TBaseGridFrm)
    edtID: TcxGridDBBandedColumn;
    edtName: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure navMasterButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ActivityTypeFrm: TActivityTypeFrm;

implementation

{$R *.dfm}

uses
  MT_DM,
  VBBase_DM,
  CommonFunction,
  VBCommonValues,
  RUtils;

procedure TActivityTypeFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Caption := 'Activity Type';
  viewMaster.DataController.DataSource := MTDM.dtsActivityType;
  navMaster.DataSource := MTDM.dtsActivityType;

  VBBaseDM.GetData(39, MTDM.cdsActivityType, MTDM.cdsActivityType.Name, '',
    'C:\Data\Xml\Activity Type.xml', MTDM.cdsActivityType.UpdateOptions.Generatorname,
    MTDM.cdsActivityType.UpdateOptions.UpdateTableName);

  SetButtonVisibility(MTDM.cdsMasterList, 15);
end;

procedure TActivityTypeFrm.navMasterButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;
  case AButtonIndex of
    NBDI_DELETE:
      begin
        Beep;
        ADone := DisplayMsg(
          Application.Title,
          'Delete Confirmaiton',
          'Are you sure you want to delete the selected Activity Type?' + CRLF + CRLF +
          'This action cannot be undone!',
          mtConfirmation,
          [mbYes, mbNo]
          ) = mrNo;
      end;
  end;
end;

end.

