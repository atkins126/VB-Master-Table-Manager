inherited AccountHolderFrm: TAccountHolderFrm
  BorderStyle = bsDialog
  Caption = 'AccountHolderFrm'
  ClientHeight = 158
  ClientWidth = 305
  ExplicitWidth = 311
  ExplicitHeight = 187
  PixelsPerInch = 96
  TextHeight = 13
  inherited layMain: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 275
    Height = 125
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 275
    ExplicitHeight = 125
    object btnOK: TcxButton [0]
      Left = 108
      Top = 83
      Width = 75
      Height = 25
      Caption = 'OK'
      Default = True
      ModalResult = 1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
    object btnCancel: TcxButton [1]
      Left = 189
      Top = 83
      Width = 75
      Height = 25
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object radCustomerName: TcxRadioGroup [2]
      Left = 11
      Top = 11
      Caption = 'Use this name as account holder name'
      ParentBackground = False
      ParentColor = False
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Caption = 'Customer Name'
        end
        item
          Caption = 'Trading As'
        end>
      Properties.OnEditValueChanged = radCustomerNamePropertiesEditValueChanged
      Style.Color = 16053234
      Style.TransparentBorder = False
      TabOrder = 0
      Height = 66
      Width = 253
    end
    inherited layMainGroup_Root: TdxLayoutGroup
      ItemIndex = 1
    end
    object grpButtons: TdxLayoutGroup
      Parent = layMainGroup_Root
      AlignHorz = ahRight
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object litNameOptions: TdxLayoutItem
      Parent = layMainGroup_Root
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = radCustomerName
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 66
      ControlOptions.OriginalWidth = 251
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litOK: TdxLayoutItem
      Parent = grpButtons
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnOK
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litCancel: TdxLayoutItem
      Parent = grpButtons
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnCancel
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited styRepository: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited lafLayoutList: TdxLayoutLookAndFeelList
    inherited lafCustomSkin: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited img16: TcxImageList
    FormatVersion = 1
  end
  inherited img32: TcxImageList
    FormatVersion = 1
  end
end
