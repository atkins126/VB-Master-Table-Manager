inherited NewDirectorOfCompanyFrm: TNewDirectorOfCompanyFrm
  Width = 816
  Height = 568
  AutoScroll = True
  Caption = 'NewDirectorOfCompanyFrm'
  ExplicitWidth = 816
  ExplicitHeight = 568
  PixelsPerInch = 96
  TextHeight = 13
  inherited layMain: TdxLayoutControl
    Width = 661
    Height = 331
    ExplicitWidth = 661
    ExplicitHeight = 331
    object cbxSelectFromCustomer: TcxCheckBox [0]
      Left = 11
      Top = 11
      Caption = 'Select director from and exixting customer'
      Properties.ImmediatePost = True
      Properties.OnEditValueChanged = cbxSelectFromCustomerPropertiesEditValueChanged
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 0
    end
    object lucCustomer: TcxLookupComboBox [1]
      Left = 11
      Top = 36
      Properties.ListColumns = <
        item
          Width = 250
          FieldName = 'NAME'
        end
        item
          FieldName = 'ACTIVE_STATUS'
        end>
      Properties.ListSource = TSDM.dtsCustomerLookup
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Width = 250
    end
    object edtFirstName: TcxTextEdit [2]
      Left = 231
      Top = 104
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 3
      Width = 130
    end
    object edtLastName: TcxTextEdit [3]
      Left = 396
      Top = 104
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 4
      Width = 130
    end
    object edtIDNumber: TcxTextEdit [4]
      Left = 59
      Top = 141
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 5
      Width = 582
    end
    object btnOK: TcxButton [5]
      Left = 494
      Top = 190
      Width = 75
      Height = 25
      Caption = 'OK'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
    end
    object btnCancel: TcxButton [6]
      Left = 575
      Top = 190
      Width = 75
      Height = 25
      Caption = 'Cancel'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
    end
    object lucSalutation: TcxLookupComboBox [7]
      Left = 53
      Top = 104
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 2
      Width = 100
    end
    inherited layMainGroup_Root: TdxLayoutGroup
      ItemIndex = 2
    end
    object grpDirector: TdxLayoutGroup
      Parent = layMainGroup_Root
      CaptionOptions.Text = 'New Director Information'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      Index = 2
    end
    object litFirstName: TdxLayoutItem
      Parent = grpDirectorName
      CaptionOptions.Text = 'Name: First'
      Control = edtFirstName
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 130
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litLastName: TdxLayoutItem
      Parent = grpDirectorName
      CaptionOptions.Text = 'Last'
      Control = edtLastName
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 130
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litIDNumber: TdxLayoutItem
      Parent = grpDirector
      CaptionOptions.Text = 'ID No'
      Control = edtIDNumber
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 130
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grpDirectorSource: TdxLayoutGroup
      Parent = layMainGroup_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object litDirectorSelection: TdxLayoutItem
      Parent = grpDirectorSource
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cbxSelectFromCustomer
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 266
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litDirectorList: TdxLayoutItem
      Parent = grpDirectorList
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lucCustomer
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grpDirectorList: TdxLayoutGroup
      Parent = layMainGroup_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object grpControls: TdxLayoutGroup
      Parent = layMainGroup_Root
      AlignHorz = ahRight
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object litOK: TdxLayoutItem
      Parent = grpControls
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnOK
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litCancel: TdxLayoutItem
      Parent = grpControls
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnCancel
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object sep1: TdxLayoutSeparatorItem
      Parent = layMainGroup_Root
      CaptionOptions.Text = 'Separator'
      Index = 3
    end
    object grpDirectorName: TdxLayoutGroup
      Parent = grpDirector
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object litSalutation: TdxLayoutItem
      Parent = grpDirectorName
      CaptionOptions.Text = 'Sal'
      Control = lucSalutation
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 100
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
end
