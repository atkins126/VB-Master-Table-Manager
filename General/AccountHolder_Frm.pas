unit AccountHolder_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseLayout_Frm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  System.ImageList, Vcl.ImgList, cxImageList, dxLayoutLookAndFeels,
  System.Actions, Vcl.ActnList, cxClasses, cxStyles, dxLayoutContainer,
  dxLayoutControl, Vcl.Menus, Vcl.StdCtrls, cxButtons, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, cxContainer, cxEdit, cxGroupBox, cxRadioGroup;

type
  TAccountHolderFrm = class(TBaseLayoutFrm)
    btnOK: TcxButton;
    btnCancel: TcxButton;
    radCustomerName: TcxRadioGroup;
    grpButtons: TdxLayoutGroup;
    litNameOptions: TdxLayoutItem;
    litOK: TdxLayoutItem;
    litCancel: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure radCustomerNamePropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AccountHolderFrm: TAccountHolderFrm;

implementation

{$R *.dfm}

procedure TAccountHolderFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Caption := 'Account Holder Name';
  Self.Width := 290;
  Self.Height := 150;
  layMain.Align := alClient;
  layMain.LookAndFeel := lafCustomSkin;
  radCustomerNamePropertiesEditValueChanged(nil);
end;

procedure TAccountHolderFrm.radCustomerNamePropertiesEditValueChanged(  Sender: TObject);
begin
  inherited;
  btnOK.Enabled := radCustomerName.ItemIndex > -1;
end;

end.

