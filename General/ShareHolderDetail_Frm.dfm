inherited ShareHolderDetailFrm: TShareHolderDetailFrm
  Caption = 'ShareHolderDetailFrm'
  ClientHeight = 590
  ExplicitHeight = 619
  PixelsPerInch = 96
  TextHeight = 13
  inherited layMain: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 690
    Height = 200
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 690
    ExplicitHeight = 200
    inherited lblHeaderTitle: TcxLabel
      ExplicitWidth = 668
    end
    inherited btnOK: TcxButton
      Left = 523
      Top = 164
      TabOrder = 8
      ExplicitLeft = 523
      ExplicitTop = 164
    end
    inherited btnCancel: TcxButton
      Left = 604
      Top = 164
      TabOrder = 9
      ExplicitLeft = 604
      ExplicitTop = 164
    end
    inherited lblSubTitle: TcxDBLabel
      ExplicitWidth = 658
      Width = 658
    end
    object edtFirstName: TcxTextEdit [4]
      Left = 98
      Top = 76
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 2
      Width = 160
    end
    object edtLastName: TcxTextEdit [5]
      Left = 345
      Top = 76
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 3
      Width = 160
    end
    object lucSalutation: TcxLookupComboBox [6]
      Left = 98
      Top = 101
      BeepOnEnter = False
      Properties.DropDownAutoSize = True
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.PostPopupValueOnTab = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 4
      Width = 160
    end
    object edtEmailAddress: TcxTextEdit [7]
      Left = 98
      Top = 126
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 7
      Width = 565
    end
    object edtMobileNo: TcxTextEdit [8]
      Left = 345
      Top = 101
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 5
      Width = 160
    end
    object spnPercentShare: TcxSpinEdit [9]
      Left = 598
      Top = 101
      Properties.DisplayFormat = '##0.00'
      Properties.EditFormat = '##0.00'
      Properties.MaxValue = 100.000000000000000000
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.ValueType = vtFloat
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 6
      Width = 70
    end
    inherited layMainGroup_Root: TdxLayoutGroup
      ItemIndex = 1
    end
    inherited grpData: TdxLayoutGroup
      ItemIndex = 1
    end
    object grpName: TdxLayoutGroup
      Parent = grpData
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object grpSalutation: TdxLayoutGroup
      Parent = grpData
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object grpEmailAddress: TdxLayoutGroup
      Parent = grpData
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object litFirstName: TdxLayoutItem
      Parent = grpName
      CaptionOptions.Text = 'First Name'
      Control = edtFirstName
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litLastName: TdxLayoutItem
      Parent = grpName
      CaptionOptions.Text = 'Last Name'
      Control = edtLastName
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litSalutation: TdxLayoutItem
      Parent = grpSalutation
      CaptionOptions.Text = 'Salutation'
      Control = lucSalutation
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litMobilePhone: TdxLayoutItem
      Parent = grpSalutation
      CaptionOptions.Text = 'Mobile Phone'
      Control = edtMobileNo
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litEmailAddress: TdxLayoutItem
      Parent = grpEmailAddress
      CaptionOptions.Text = 'Email Address'
      Control = edtEmailAddress
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 565
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litPercentShare: TdxLayoutItem
      Parent = grpSalutation
      CaptionOptions.Text = 'Percent Share'
      Control = spnPercentShare
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 70
      ControlOptions.ShowBorder = False
      Index = 2
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
