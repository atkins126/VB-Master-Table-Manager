inherited DirectorDetailFrm: TDirectorDetailFrm
  Caption = 'DirectorDetailFrm'
  ClientHeight = 256
  ClientWidth = 554
  ExplicitWidth = 560
  ExplicitHeight = 285
  PixelsPerInch = 96
  TextHeight = 13
  inherited layMain: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 560
    Height = 250
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 560
    ExplicitHeight = 250
    inherited lblHeaderTitle: TcxLabel
      ExplicitWidth = 538
    end
    inherited btnOK: TcxButton
      Left = 393
      Top = 214
      TabOrder = 14
      OnClick = btnOKClick
      ExplicitLeft = 393
      ExplicitTop = 214
    end
    inherited btnCancel: TcxButton
      Left = 474
      Top = 214
      TabOrder = 15
      ExplicitLeft = 474
      ExplicitTop = 214
    end
    inherited lblLegend: TcxLabel
      Top = 218
      ExplicitTop = 218
    end
    inherited lblRequired: TcxLabel
      Top = 215
      ExplicitTop = 215
      AnchorY = 227
    end
    inherited lblSubTitle: TcxDBLabel
      ExplicitWidth = 528
      Width = 528
    end
    object edtFirstName: TcxTextEdit [6]
      Left = 98
      Top = 76
      BeepOnEnter = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 160
    end
    object lucSalutation: TcxLookupComboBox [7]
      Left = 98
      Top = 105
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
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Width = 160
    end
    object edtMobileNo: TcxTextEdit [8]
      Left = 359
      Top = 134
      BeepOnEnter = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Width = 160
    end
    object lblReq1: TcxLabel [9]
      Left = 264
      Top = 76
      Caption = '*'
      ParentFont = False
      Style.HotTrack = False
      Style.StyleController = styMandatory
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorY = 88
    end
    object lblReq2: TcxLabel [10]
      Left = 525
      Top = 76
      Caption = '*'
      ParentFont = False
      Style.HotTrack = False
      Style.StyleController = styMandatory
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorY = 88
    end
    object edtLastName: TcxTextEdit [11]
      Left = 359
      Top = 76
      BeepOnEnter = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 160
    end
    object edtOtherName: TcxTextEdit [12]
      Left = 359
      Top = 105
      BeepOnEnter = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 160
    end
    object edtTaxNo: TcxTextEdit [13]
      Left = 98
      Top = 134
      BeepOnEnter = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 160
    end
    object edtEmailAddress: TcxTextEdit [14]
      Left = 98
      Top = 161
      BeepOnEnter = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Width = 421
    end
    object lblReq3: TcxLabel [15]
      Left = 264
      Top = 105
      Caption = '*'
      ParentFont = False
      Style.HotTrack = False
      Style.StyleController = styMandatory
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorY = 117
    end
    inherited layMainGroup_Root: TdxLayoutGroup
      ItemIndex = 1
    end
    inherited grpData: TdxLayoutGroup
      ItemIndex = 2
    end
    object grpName: TdxLayoutGroup
      Parent = grpData
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object grpSalutation: TdxLayoutGroup
      Parent = grpData
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object grpMobileNo: TdxLayoutGroup
      Parent = grpData
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object litFirstName: TdxLayoutItem
      Parent = grpName
      CaptionOptions.Text = 'First Name'
      Control = edtFirstName
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litLastName: TdxLayoutItem
      Parent = grpName
      CaptionOptions.Text = 'Last Name'
      Control = edtLastName
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litSalutation: TdxLayoutItem
      Parent = grpSalutation
      CaptionOptions.Text = 'Salutation'
      Control = lucSalutation
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litTaxNo: TdxLayoutItem
      Parent = grpMobileNo
      CaptionOptions.Text = 'Tax No'
      Control = edtTaxNo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litMobileNo: TdxLayoutItem
      Parent = grpMobileNo
      CaptionOptions.Text = 'Mobile No   '
      Control = edtMobileNo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litEmailAddress: TdxLayoutItem
      Parent = grpData
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Email Address'
      Control = edtEmailAddress
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 421
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object litReq1: TdxLayoutItem
      Parent = grpName
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lblReq1
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 14
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litReq2: TdxLayoutItem
      Parent = grpName
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lblReq2
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 14
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object LitReq3: TdxLayoutItem
      Parent = grpSalutation
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lblReq3
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 14
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litOtherName: TdxLayoutItem
      Parent = grpSalutation
      CaptionOptions.Text = 'Other Name'
      Control = edtOtherName
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object spc1: TdxLayoutEmptySpaceItem
      Parent = grpMobileNo
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 14
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
  inherited repScreenTip: TdxScreenTipRepository
    PixelsPerInch = 96
  end
  inherited stySubTitle: TcxEditStyleController
    PixelsPerInch = 96
  end
  inherited styHeaderFont: TcxEditStyleController
    PixelsPerInch = 96
  end
  inherited styMandatory: TcxEditStyleController
    PixelsPerInch = 96
  end
end
