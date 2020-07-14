unit Director_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Dialogs, System.IOUtils,
  System.ImageList, System.Actions, Vcl.ActnList, Vcl.ImgList, Vcl.Menus,
  Vcl.StdCtrls,

  BaseGrid_Frm, VBPrintExportData, CommonValues,

  frxClass, frxDBSet,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData, dxLayoutContainer,
  cxImageList, dxLayoutLookAndFeels, cxClasses, cxDBNavigator, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, dxLayoutControl, cxCurrencyEdit, cxTextEdit,
  dxScrollbarAnnotations, dxPrnDev, dxPrnDlg, cxContainer,
  dxLayoutcxEditAdapters, cxCheckBox, cxButtons;

type
  TDirectorFrm = class(TBaseGridFrm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DirectorFrm: TDirectorFrm;

implementation

{$R *.dfm}

uses
  MT_DM,
  VBBase_DM,
  CommonFunctions,
  VBCommonValues,
  RUtils,
  Report_DM;

procedure TDirectorFrm.FormCreate(Sender: TObject);
var
  OrderByClause, FileName: string;
begin
  OrderByClause := ' ORDER BY D.CUSTOMER_ID, D.FIRST_NAME, D.LAST_NAME';
  FileName := 'Director';

  VBBaseDM.GetData(16, MTDM.cdsDirector, MTDM.cdsDirector.Name, OrderByClause,
    'C:\Data\Xml\' + FileName + '.xml', MTDM.cdsDirector.UpdateOptions.Generatorname,
    MTDM.cdsDirector.UpdateOptions.UpdateTableName);

//  Caption := 'Activity Type';
//  viewMaster.DataController.DataSource := MTDM.dtsDirector;
//  navMaster.DataSource := MTDM.dtsDirector;
//
//  {TODO: Change this to the correct values}
//  VBBaseDM.GetData(39, MTDM.cdsActivityType, MTDM.cdsActivityType.Name, ONE_SPACE,
//    'C:\Data\Xml\Activity Type.xml', MTDM.cdsActivityType.UpdateOptions.Generatorname,
//    MTDM.cdsActivityType.UpdateOptions.UpdateTableName);

  SetButtonVisibility(MTDM.cdsMasterList, 15);
end;

end.

