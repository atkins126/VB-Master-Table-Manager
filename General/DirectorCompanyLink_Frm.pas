unit DirectorCompanyLink_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,

  VBBase_DM, BaseCustomerEdit_Frm, CommonValues,

  cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxContainer, cxEdit, Vcl.Menus,
  dxLayoutControlAdapters, dxLayoutcxEditAdapters, dxScreenTip, dxCustomHint,
  cxHint, System.ImageList, Vcl.ImgList, cxImageList, dxLayoutLookAndFeels,
  System.Actions, Vcl.ActnList, cxClasses, cxStyles, dxLayoutContainer,
  cxDBLabel, Vcl.StdCtrls, cxButtons, cxLabel, dxLayoutControl, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TDirectorCompanyLinkFrm = class(TBaseCustomerEditFrm)
    lucCompany: TcxLookupComboBox;
    litCompany: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
    procedure Validate;
  public
    { Public declarations }
  end;

var
  DirectorCompanyLinkFrm: TDirectorCompanyLinkFrm;

implementation

{$R *.dfm}

uses
  MT_DM,
  Lookup_DM;

procedure TDirectorCompanyLinkFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Self.Width := 350;
  Self.Height := 185;
  lucCompany.Properties.ListSource := LookupDM.dtsDirectorCompanyLink;

  if VBBaseDM.DBAction = acModify then
    lucCompany.EditValue := LookupDM.cdsDirectorCompanyLink.FieldByName('ID').AsInteger;

  lucCompany.Properties.OnChange := ValueChanged;
end;

procedure TDirectorCompanyLinkFrm.btnOKClick(Sender: TObject);
begin
  inherited;
  Validate;
end;

procedure TDirectorCompanyLinkFrm.Validate;
begin
  if SameText(lucCompany.Text, '') then
    raise EValidateException.Create('Please select a company to link to this director');

  MTDM.FFieldValue.CompanyID := VarAsType(lucCompany.EditValue, varInteger);

  ModalResult := mrOK;
end;

end.

