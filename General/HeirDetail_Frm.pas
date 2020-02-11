unit HeirDetail_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseCustomerEdit_Frm, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxContainer, cxEdit, Vcl.Menus,
  dxLayoutControlAdapters, dxLayoutcxEditAdapters, dxScreenTip, dxCustomHint,
  cxHint, System.ImageList, Vcl.ImgList, cxImageList, dxLayoutLookAndFeels,
  System.Actions, Vcl.ActnList, cxClasses, cxStyles, dxLayoutContainer,
  cxDBLabel, Vcl.StdCtrls, cxButtons, cxLabel, dxLayoutControl;

type
  THeirDetailFrm = class(TBaseCustomerEditFrm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HeirDetailFrm: THeirDetailFrm;

implementation

{$R *.dfm}

end.
