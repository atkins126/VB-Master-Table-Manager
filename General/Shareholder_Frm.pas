unit Shareholder_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Dialogs, System.IOUtils,
  System.ImageList, System.Actions, Vcl.ActnList, Vcl.ImgList, Vcl.Menus,
  Vcl.StdCtrls,

  BaseGrid_Frm, VBPrintExportData, CommonValues, CommonFunctions, VBCommonValues,

  frxClass, frxDBSet,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData, dxLayoutContainer,
  cxImageList, dxLayoutLookAndFeels, cxClasses, cxDBNavigator, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, dxLayoutControl, cxCurrencyEdit, cxTextEdit,
  dxScrollbarAnnotations, dxPrnDev, dxPrnDlg, cxContainer, dxLayoutcxEditAdapters,
  cxCheckBox, cxButtons, cxDBLookupComboBox;

type
  TShareholderFrm = class(TBaseGridFrm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ShareholderFrm: TShareholderFrm;

implementation

{$R *.dfm}

uses
  MT_DM,
  VBBase_DM,
  RUtils,
  Report_DM,
  Lookup_DM,
  ShareHolderDetail_Frm;

procedure TShareholderFrm.FormCreate(Sender: TObject);
var
  OrderByClause, FileName: string;
begin
  Caption := 'Shareholder Listing';
  layMain.Align := alClient;
  layMain.LayoutLookAndFeel := lafCustomSkin;
  OrderByClause := ' ORDER BY D.CUSTOMER_ID, D.FIRST_NAME, D.LAST_NAME';
  FileName := 'Director';
  navMaster.DataSource := MTDM.dtsDirector;
  viewMaster.DataController.DataSource := MTDM.dtsDirector;
//  TcxLookupComboBoxProperties(lucSalutationID.Properties).ListSource := LookupDM.dtsDirectorSalutation;

  VBBaseDM.GetData(16, MTDM.cdsDirector, MTDM.cdsDirector.Name, OrderByClause,
    'C:\Data\Xml\' + FileName + '.xml', MTDM.cdsDirector.UpdateOptions.Generatorname,
    MTDM.cdsDirector.UpdateOptions.UpdateTableName);

  LookupDM.cdsDirectorSalutation.Close;
  LookupDM.cdsDirectorSalutationLU.Close;

  VBBaseDM.GetData(23, LookupDM.cdsSalutation, LookupDM.cdsSalutation.Name, ONE_SPACE,
    'C:\Data\Xml\Slutation.xml', LookupDM.cdsSalutation.UpdateOptions.Generatorname,
    LookupDM.cdsSalutation.UpdateOptions.UpdateTableName);

  LookupDM.cdsDirectorSalutation.Data := LookupDM.cdsSalutation.Data;
  LookupDM.cdsDirectorSalutationLU.Data := LookupDM.cdsSalutation.Data;
  SetButtonVisibility(MTDM.cdsMasterList, 15);
end;

end.

