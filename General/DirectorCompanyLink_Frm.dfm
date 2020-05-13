inherited DirectorCompanyLinkFrm: TDirectorCompanyLinkFrm
  Caption = 'DirectorCompanyLinkFrm'
  ClientHeight = 409
  ClientWidth = 623
  ExplicitWidth = 629
  ExplicitHeight = 438
  PixelsPerInch = 96
  TextHeight = 13
  inherited layMain: TdxLayoutControl
    Width = 350
    Height = 151
    ExplicitWidth = 350
    ExplicitHeight = 151
    inherited lblHeaderTitle: TcxLabel
      ExplicitWidth = 328
    end
    inherited btnOK: TcxButton
      Left = 183
      Top = 115
      TabOrder = 3
      OnClick = btnOKClick
      ExplicitLeft = 183
      ExplicitTop = 115
    end
    inherited btnCancel: TcxButton
      Left = 264
      Top = 115
      TabOrder = 4
      ExplicitLeft = 264
      ExplicitTop = 115
    end
    inherited lblSubTitle: TcxDBLabel
      ExplicitWidth = 318
      Width = 318
    end
    object lucCompany: TcxLookupComboBox [4]
      Left = 72
      Top = 76
      BeepOnEnter = False
      Properties.DropDownAutoSize = True
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      Properties.ListOptions.SyncMode = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 2
      Width = 267
    end
    inherited layMainGroup_Root: TdxLayoutGroup
      ItemIndex = 1
    end
    object litCompany: TdxLayoutItem
      Parent = grpData
      CaptionOptions.Text = 'Company'
      Control = lucCompany
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 225
      ControlOptions.ShowBorder = False
      Index = 0
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
  inherited repScreenTip: TdxScreenTipRepository
    PixelsPerInch = 96
  end
  inherited stySubTitle: TcxEditStyleController
    PixelsPerInch = 96
  end
  inherited styHeaderFont: TcxEditStyleController
    PixelsPerInch = 96
  end
end
