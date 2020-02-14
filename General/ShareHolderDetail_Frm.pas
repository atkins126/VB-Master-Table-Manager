unit ShareHolderDetail_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseCustomerEdit_Frm, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxContainer, cxEdit, Vcl.Menus,
  dxLayoutControlAdapters, dxLayoutcxEditAdapters, dxScreenTip, dxCustomHint,
  cxHint, System.ImageList, Vcl.ImgList, cxImageList, dxLayoutLookAndFeels,
  System.Actions, Vcl.ActnList, cxClasses, cxStyles, dxLayoutContainer,
  cxDBLabel, Vcl.StdCtrls, cxButtons, cxLabel, dxLayoutControl, cxSpinEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxTextEdit;

type
  TShareHolderDetailFrm = class(TBaseCustomerEditFrm)
    edtFirstName: TcxTextEdit;
    edtLastName: TcxTextEdit;
    lucSalutation: TcxLookupComboBox;
    edtEmailAddress: TcxTextEdit;
    edtMobileNo: TcxTextEdit;
    spnPercentShare: TcxSpinEdit;
    grpName: TdxLayoutGroup;
    grpSalutation: TdxLayoutGroup;
    grpEmailAddress: TdxLayoutGroup;
    litFirstName: TdxLayoutItem;
    litLastName: TdxLayoutItem;
    litSalutation: TdxLayoutItem;
    litMobilePhone: TdxLayoutItem;
    litEmailAddress: TdxLayoutItem;
    litPercentShare: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ShareHolderDetailFrm: TShareHolderDetailFrm;

implementation

{$R *.dfm}

procedure TShareHolderDetailFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Self.Height := 230;
  Self.Width := 700;
end;

end.

